package.path = package.path .. ';' .. '/home/zack/.pandoc/filters/?.lua;'
require "utilities"

-- In markdown, changes
--
-- :::{.theorem title="abcde" ref=:thm:123"} 
-- ...
-- :::
--
-- into 
--
-- \begin{theorem}["abcde"]
-- \label{thm:123}
-- ...
-- \end{theorem}
--
-- Supports math within the title. 

function Div(el)
  -- For markdown cleaning, just leave as-is
  el.classes[#el.classes+1] = "proofenv" 

   --Prepend to this blocks contents \begin{env}[...]\label{}...
  --beginString = "\n\\begin{" .. el.classes[1] .. "}"

  --if el.attributes["title"]~=nil then 
    --beginString = beginString .. "[" .. el.attributes["title"] .. "]"
  --end
  
  --if el.attributes["ref"]~=nil then 
    --beginString = beginString .. "\\label{" .. el.attributes["ref"] .. "}"
  --end

   --Prepend above string to open
  --table.insert(
    --el.content, 1,
    --pandoc.RawBlock("", beginString)
  --)

   --Append at *end* of table to close
  --table.insert(
      --el.content,
      --pandoc.RawBlock("latex", "\\end{" .. el.classes[1] .. "}")
    --)

  return el
end
