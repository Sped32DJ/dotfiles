local present, color = pcall(require, "colorizer")
if not present then
  return
end

color.setup {
    "*",
    css = {rgb_fn = true;}
-- Under useless because defaults are good enough
--	RGB      = true;         -- #RGB hex codes
--	RRGGBB   = true;         -- #RRGGBB hex codes
--	names    = true;         -- "Name" codes like Blue Black Orange Magenta
--	RRGGBBAA = true;         -- #RRGGBBAA hex codes #cc6666
--	rgb_fn   = false;        -- CSS rgb() and rgba() functions
--	hsl_fn   = false;        -- CSS hsl() and hsla() functions
--	css      = true;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB #7FFFD4
--	css_fn   = false;        -- Enable all CSS *functions*: rgb_fn, hsl_fn css = { rgb_fn = true; }

}
