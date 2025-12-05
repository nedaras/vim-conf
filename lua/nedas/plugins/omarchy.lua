return {
  "nedpranson/omarchy-themer",
  dependencies = {
    { dir = "/home/nedas/Work/LightVim", name = "LazyVim" },
  },
  opts = {
    theme_module = "nedas.plugins.theme",
    theme_changed = function ()
      ApplyTransparency()
    end,
  },
}
