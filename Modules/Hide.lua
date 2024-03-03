--------------------------------------------------------------------------------
-- # MODULES > HIDE TEXT
--------------------------------------------------------------------------------

PlayerFrame:HookScript("OnEvent", function()
  -- hide player leader icon
  PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.HitIndicator.HitText:Hide()
end)
