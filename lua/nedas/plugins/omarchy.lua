return {
  "nedaras/omarchy-themer",
  dependencies = {
    { dir = "/home/nedas/Work/LightVim", name = "LazyVim" },
  },
  opts = {
    post_process = function ()
      ApplyTransparency()
    end,
  },
}
