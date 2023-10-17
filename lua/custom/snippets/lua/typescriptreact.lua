local ls = require "luasnip"

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local function firstToUpper(str)
  return (str:gsub("^%l", string.upper))
end
return {
  s({
    trig = "rfc",
    filetype = "typescriptreact",
    name = "React functional component",
  }, {
    t { "const " },
    i(1),
    t { ": React.FC<" },
    i(2),
    t { "> = (" },
    i(3),
    t { ") => {", "" },
    t { "  return " },
    i(4, "<div></div>"),
    t { "", "} ", "", "export default " },
    rep(1),
  }),
  s({
    trig = "us",
    filetype = "typescriptreact",
    name = "React useState() hook",
  }, {
    t { "const [" },
    i(1),
    t { ", set" },
    f(function(args)
      return firstToUpper(args[1][1])
    end, { 1 }),
    t { "] = useState(" },
    i(2),
    t { ")" },
  }),
  s({
    trig = "ue",
    name = "React useEffect() hook",
  }, {
    t { "useEffect((" },
    i(1, "params"),
    t { ") => {", "" },
    i(2),
    t { "", "}, [" },
    i(3, "deps"),
    t "])",
  }),
  s({
    trig = "uc",
    name = "React useCallback hook",
  }, {
    t("const "),
    i(0),
    t {" =", " useCallback((" },
    i(1),
    t { ") => {)", "" },
    i(2),
    t { "", "}, [" },
    i(3),
    t "])",
  }),
}
