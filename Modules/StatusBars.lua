--------------------------------------------------------------------------------
-- # MODULES > STATUS BARS
--------------------------------------------------------------------------------
-- Changes health bars to class and target reaction colours

hooksecurefunc('UnitFrameHealthBar_Update', function(self)
  local r, g, b

  if UnitIsPlayer(self.unit) then
    local _, englishClass = UnitClass(self.unit)
    r, g, b = GetClassColor(englishClass)
  else
    local reaction = UnitReaction(self.unit, 'player')
    if reaction then
      r, g, b = FACTION_BAR_COLORS[reaction].r, FACTION_BAR_COLORS[reaction].g, FACTION_BAR_COLORS[reaction].b
    else
      r, g, b = 1, 1, 1
    end
  end

  self:SetStatusBarDesaturated(true)
  self:SetStatusBarColor(r, g, b)
end)
