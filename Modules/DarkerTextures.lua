--------------------------------------------------------------------------------
-- # MODULES > DARKER TEXTURES
--------------------------------------------------------------------------------

local f = CreateFrame('Frame')
f:RegisterEvent('PLAYER_ENTERING_WORLD')
f:SetScript('OnEvent', function(self, event)
  for i, v in pairs ({
    -- paladin holy power
    PaladinPowerBarFrame.Background,    -- no holy power
    PaladinPowerBarFrame.ActiveTexture, -- with holy power
  }) do
    v:SetVertexColor(0.4, 0.4, 0.4)
  end
end)
