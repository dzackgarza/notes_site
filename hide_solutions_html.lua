local system = require 'pandoc.system'
package.path = package.path .. ';' .. '/home/zack/.pandoc/filters/?.lua;'
require "utilities"

function debug_print(some_str)
  myf = io.open("/home/zack/lua_filters.log", "a")
  io.output(myf)
  io.write(some_str)
  io.write("\n")
  io.close(myf)
end
debug_print("Starting")

local hide_proofs = true

function enable_hide_proofs(meta)
  if meta["hide_proofs"] ~= nil then
    hide_proofs = true
  end
end

-- Hide solution environments in HTML output using <details> <summary> ... construct
function hide_solutions(el)
    if not ( 
      has_value(el.classes, "solution") 
      or has_value(el.classes, "proof") 
      or has_value(el.classes, "strategy")
      or has_value(el.classes, "concept")
    ) then
      return el
    end
    
    debug_print("Is proof? " .. tostring( has_value(el.classes, "proof")))
    debug_print("Hide proofs?" .. tostring( hide_proofs))
    debug_print("Kill proofs?" .. tostring( kill_proofs))
    debug_print("Is solution? " .. tostring( has_value(el.classes, "solution")))
    if kill_proofs then
      debug_print "Proof omitted"
      --return pandoc.Emph {pandoc.Str "Hello, World"}
      --return pandoc.RawBlock('html','<div>Proof/solution omitted.</div>')
      return pandoc.RawBlock('html','<div></div>')
    end
    if not hide_proofs then
      return el
    end
    local env_name = ""
    if has_value(el.classes, "solution") then
      env_name = "solution"
    elseif has_value(el.classes, "proof") then
      env_name = "proof"
    elseif has_value(el.classes, "concept") then
      env_name = "concept"
    elseif has_value(el.classes, "strategy") then
      env_name = "strategy"
    end
      table.insert(
        el.content, 1,
        pandoc.RawBlock("markdown", "<details><summary><i>(Click to expand "..env_name..")</i></summary>")
      )
      table.insert(
        el.content,
        pandoc.RawBlock("markdown", "</details>")
      )

    return el
  end
-- Run in this order.
return {
  { Meta = enable_hide_proofs },  -- (1)
  { Div = hide_solutions }     -- (2)
}
