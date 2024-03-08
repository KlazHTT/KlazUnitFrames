--------------------------------------------------------------------------------
-- # MODULES > DARKER TEXTURES
--------------------------------------------------------------------------------

local f = CreateFrame('Frame')
f:RegisterEvent('PLAYER_ENTERING_WORLD')
f:SetScript('OnEvent', function(self, event)

  for i, v in pairs ({
    -- player frame
    PlayerFrame.PlayerFrameContainer.FrameTexture,
    PlayerFrame.PlayerFrameContainer.AlternatePowerFrameTexture,
    PlayerFrame.PlayerFrameContainer.VehicleFrameTexture,
    PlayerCastingBarFrame.Border,
    PetFrameTexture,

    -- target frame
    TargetFrame.TargetFrameContainer.FrameTexture,
    TargetFrameSpellBar.Border,
    TargetFrameToT.FrameTexture,

    -- focus frame
    FocusFrame.TargetFrameContainer.FrameTexture,
    FocusFrameSpellBar.Border,
    FocusFrameToT.FrameTexture,
  }) do
      v:SetVertexColor(0.1, 0.1, 0.1, 1)
  end

  TargetFrame.TargetFrameContent.TargetFrameContentMain.ReputationColor:Hide()
  FocusFrame.TargetFrameContent.TargetFrameContentMain.ReputationColor:Hide()

  for i, v in pairs ({
    -- paladin holy power
    PaladinPowerBarFrame.Background,    -- no holy power
    PaladinPowerBarFrame.ActiveTexture, -- with holy power
  }) do
    v:SetVertexColor(0.4, 0.4, 0.4)
  end
end)
