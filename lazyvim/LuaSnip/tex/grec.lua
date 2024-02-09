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

return {
  s({
    trig = "alph",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\alpha "),
  }, { condition = in_mathzone }),

  s({
    trig = "beta",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\beta "),
  }, { condition = in_mathzone }),

  s({
    trig = "gamma",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\gamma "),
  }, { condition = in_mathzone }),

  s({
    trig = "Gamma",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\Gamma "),
  }, { condition = in_mathzone }),

  s({
    trig = "delt",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\delta "),
  }, { condition = in_mathzone }),

  s({
    trig = "Delt",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\Delta "),
  }, { condition = in_mathzone }),

  s({
    trig = "eps",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\varepsilon "),
  }, { condition = in_mathzone }),

  s({
    trig = "Eps",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\epsilon "),
  }, { condition = in_mathzone }),

  s({
    trig = "zeta",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\zeta "),
  }, { condition = in_mathzone }),

  s({
    trig = "eta",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\eta "),
  }, { condition = in_mathzone }),

  s({
    trig = "theta",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\theta "),
  }, { condition = in_mathzone }),

  s({
    trig = "Theta",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\Theta "),
  }, { condition = in_mathzone }),

  s({
    trig = "iota",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\iota "),
  }, { condition = in_mathzone }),

  s({
    trig = "lbd",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\lambda "),
  }, { condition = in_mathzone }),

  s({
    trig = "LBD",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\Lambda "),
  }, { condition = in_mathzone }),

  s({
    trig = "mu ",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\mu "),
  }, { condition = in_mathzone }),

  s({
    trig = "nu",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\nu "),
  }, { condition = in_mathzone }),

  s({
    trig = "xi",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\xi "),
  }, { condition = in_mathzone }),

  s({
    trig = "Xi",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\Xi "),
  }, { condition = in_mathzone }),

  s({
    trig = "pi",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\pi "),
  }, { condition = in_mathzone }),

  s({
    trig = "Pi",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\Pi "),
  }, { condition = in_mathzone }),

  s({
    trig = "rho",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\rho "),
  }, { condition = in_mathzone }),

  s({
    trig = "sgm",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\sigma "),
  }, { condition = in_mathzone }),

  s({
    trig = "SGM",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\Sigma "),
  }, { condition = in_mathzone }),

  s({
    trig = "tau",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\tau "),
  }, { condition = in_mathzone }),

  s({
    trig = "phi",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\varphi "),
  }, { condition = in_mathzone }),

  s({
    trig = "Phi",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\phi "),
  }, { condition = in_mathzone }),

  s({
    trig = "chi",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\chi "),
  }, { condition = in_mathzone }),

  s({
    trig = "psi",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\psi "),
  }, { condition = in_mathzone }),

  s({
    trig = "omega",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\omega "),
  }, { condition = in_mathzone }),

  s({
    trig = "ohm",
    regTrig = true,
    wordTrig = true,
    snippetType = "autosnippet",
  }, {
    t("\\Omega "),
  }, { condition = in_mathzone }),
}
