-- Specify delimiters for each type of output
function Math(m)
  -- For markdown->markdown cleaning
  if m.mathtype == "InlineMath" then
    return pandoc.RawInline('markdown', '$' .. m.text .. '$')
  else
    return pandoc.RawInline('html', '\n<span class="math display">\n\\begin{align*}'.. m.text .. '\\end{align*}\n<span>')
  end
end

-- Delete macro inclusions 
function RawBlock(el)
  if FORMAT:match "markdown" then
    if string.find(el.text, "newcommand") or string.find(el.text, "DeclareMath") then
      --print("Found newcommand")
      return pandoc.Para("")
    else
      return el
    end
  end
end
