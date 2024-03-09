--------------------------------------------------------------------------------
-- # MODULES > HIDE TEXT
--------------------------------------------------------------------------------

PlayerFrame:HookScript("OnEvent", function()
  -- hide player damage and healing received text
  PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.HitIndicator.HitText:Hide()

  -- hide reputation background
  TargetFrame.TargetFrameContent.TargetFrameContentMain.ReputationColor:Hide()
  FocusFrame.TargetFrameContent.TargetFrameContentMain.ReputationColor:Hide()
end)
