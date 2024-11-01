return {
  "ellisonleao/glow.nvim",
  cmd = "Glow",
  config = function()
	require('glow').setup({
	  width = 100,
	  height = 100,
	  width_ratio = 0.5, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
	  height_ratio = 0.5,
	})
  end,
}
