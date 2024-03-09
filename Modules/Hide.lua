--------------------------------------------------------------------------------
-- # MODULES > HIDE TEXT
--------------------------------------------------------------------------------

local hiddenFrame = CreateFrame('Frame')
hiddenFrame:Hide()

PlayerFrame:HookScript('OnEvent', function()
  -- hide player damage and healing received text
  PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.HitIndicator.HitText:Hide()

  -- hide combat glow on unit frames
  PlayerFrame.PlayerFrameContainer.FrameFlash:SetParent(hiddenFrame)
  TargetFrame.TargetFrameContainer.Flash:SetParent(hiddenFrame)
  FocusFrame.TargetFrameContainer.Flash:SetParent(hiddenFrame)
  PetFrameFlash:SetParent(hiddenFrame)
  PetAttackModeTexture:SetParent(hiddenFrame)

  -- hide reputation background
  TargetFrame.TargetFrameContent.TargetFrameContentMain.ReputationColor:Hide()
  FocusFrame.TargetFrameContent.TargetFrameContentMain.ReputationColor:Hide()
end)
