local line_begin = require("luasnip.extras.expand_conditions").line_begin
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local in_mathzone = function()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

local get_visual = function(args, parent)
  if #parent.snippet.env.LS_SELECT_RAW > 0 then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else
    return sn(nil, i(1))
  end
end

return {
  s(
    {
      trig = "beg",
      snippetType = "autosnippet",
    },
    fmta(
      [[
      \begin{<>}
        <>
      \end{<>}
      ]],
      {
        i(1),
        i(0),
        rep(1),
      }
    ),
    { condition = line_begin }
  ),

  s(
    {
      trig = "mk",
      snippetType = "autosnippet",
    },
    fmta(
      [[
      $<>$ <>
      ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "dm",
      snippetType = "autosnippet",
    },
    fmta(
      [[
      \[
        <>
      .\]
      ]],
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "table",
    },
    fmta(
      [[
      \begin{longtable}[c]{<>}
	      \caption{<>}
	      \label{<>} \\
		    \toprule
		    <> \\
		    \midrule
		    <> \\
        \bottomrule
      \end{longtable}
      <>
      ]],
      { i(1), i(4), i(5), i(2), i(3), i(0) }
    )
  ),

  s(
    {
      trig = "fig",
    },
    fmta(
      [[
      \begin{figure}[H]
	      \centering
	      \includegraphics[width=<>]{figures/<>}
	      \caption{<>}
	      \label{<>}
      \end{figure}
      <>
      ]],
      { i(1), i(2), i(3), i(4), i(0) }
    )
  ),

  s(
    {
      trig = "enum",
      snippetType = "autosnippet",
      desc = "Enumerate Item",
    },
    fmta(
      [[
      \begin{enumerate}
        \item <>
      \end{enumerate}
      ]],
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "(%s)item",
      snippetType = "autosnippet",
      regTrig = true,
    },
    fmta(
      [[
      \begin{item}
        \item <>
      \end{item}
      ]],
      { i(0) }
    )
  ),

  s(
    {
      trig = "desc",
    },
    fmta(
      [[
      \begin{description}
        \item [<>] <>
      \end{description}
      ]],
      { i(1), i(2) }
    )
  ),

  s(
    {
      trig = "Def",
    },
    fmta(
      [[
      \begin{definition}
        
        <>

        \begin{align*}
          <>
        \end{align*}

      \end{definition}
      <>
      ]],
      { i(1), i(2), i(0) }
    )
  ),

  s(
    {
      trig = "COR",
    },
    fmta(
      [[
      \begin{COROLLAIRE}
        
        <>

        \begin{align*}
          <>
        \end{align*}

      \end{COROLLAIRE}
      \begin{proof}
        <>
      \\ \leq
      \end{proof}
      <>
      ]],
      { i(1), i(2), i(3), i(0) }
    )
  ),

  s(
    {
      trig = "THR",
    },
    fmta(
      [[
      \begin{THRM}
        
        <>

        \begin{align*}
          <>
        \end{align*}

      \end{THRM}
      \begin{proof}
        <>
      \\ \leq
      \end{proof}
      <>
      ]],
      { i(1), i(2), i(3), i(0) }
    )
  ),

  s(
    {
      trig = "EXP",
    },
    fmta(
      [[
      \begin{exemple}
        
        <>

      \end{exemple}
      <>
      ]],
      { i(1), i(0) }
    )
  ),

  s(
    {
      trig = "EXE",
    },
    fmta(
      [[
      \begin{exercice}
        
        <>

      \end{exercice}
      <>
      ]],
      { i(1), i(0) }
    )
  ),

  s(
    {
      trig = "it",
    },
    fmta(
      [[
      \textit{<>} <>
      ]],
      { d(1, get_visual), i(0) }
    )
  ),

  s(
    {
      trig = "bf",
    },
    fmta(
      [[
      \textbf{<>} <>
      ]],
      { d(1, get_visual), i(0) }
    )
  ),

  s(
    {
      trig = "und",
    },
    fmta(
      [[
      \underline{<>} <>
      ]],
      { d(1, get_visual), i(0) }
    )
  ),

  s(
    {
      trig = "case",
    },
    fmta(
      [[
      \begin{cases}
        <>, & if <> 
      \end{cases}
      <>
      ]],
      { d(1, get_visual), i(2), i(0) }
    )
  ),
}
