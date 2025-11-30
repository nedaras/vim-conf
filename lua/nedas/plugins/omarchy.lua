return {
  "nedaras/omarchy-themer",
  dependencies = {
    { "nedaras/LightVim", name = "LazyVim" },
  },
  opts = {
    post_process = function ()
      ApplyTransparency()
    end,
  },
}
