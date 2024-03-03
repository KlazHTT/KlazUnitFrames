--------------------------------------------------------------------------------
-- # MODULES > HIDE TEXT
--------------------------------------------------------------------------------

PlayerFrame:HookScript("OnEvent", function()
  -- hide player damage and healing received text
  PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.HitIndicator.HitText:Hide()
end)
