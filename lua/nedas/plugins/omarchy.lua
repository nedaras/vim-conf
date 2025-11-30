return {
  "nedaras/omarchy-themer",
  dependencies = {
    { "nedaras/LightVim", name = "LazyVim" },
  },
  opts = {
    theme_module = "nedas.plugins.theme",
    theme_changed = function ()
      ApplyTransparency()
    end,
  },
}
