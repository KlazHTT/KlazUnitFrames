--------------------------------------------------------------------------------
-- # MODULES > CAST BAR TIMERS
--------------------------------------------------------------------------------

local f = CreateFrame('Frame')
f:RegisterEvent('PLAYER_ENTERING_WORLD')
f:SetScript('OnEvent', function(self, event)
 -- player cast bar timer
 PlayerCastingBarFrame.timer = PlayerCastingBarFrame:CreateFontString(nil, nil, 'GameFontHighlightSmall')
 PlayerCastingBarFrame.timer:SetPoint('BOTTOMRIGHT', PlayerCastingBarFrame, 'BOTTOMRIGHT', -4, -11)
 PlayerCastingBarFrame.update = .1
 PlayerCastingBarFrame:HookScript('OnUpdate', function(self, elapsed)
   if not self.timer then return end

   if self.update and self.update < elapsed then
     if self.casting then
       self.timer:SetText(format('%2.1f/%1.1f', max(self.maxValue - self.value, 0), self.maxValue))
     elseif self.channeling then
       self.timer:SetText(format('%.1f', max(self.value, 0)))
     else
       self.timer:SetText('')
     end
     self.update = .1
   else
     self.update = self.update - elapsed
   end
 end)

 -- target cast bar timer
 TargetFrameSpellBar.timer = TargetFrameSpellBar:CreateFontString(nil, nil, 'GameFontHighlightSmall')
 TargetFrameSpellBar.timer:SetPoint('BOTTOMRIGHT', TargetFrameSpellBar, 'BOTTOMRIGHT', -4, -11)
 TargetFrameSpellBar.update = .1
 TargetFrameSpellBar:HookScript('OnUpdate', function(self, elapsed)
   if not self.timer then return end

   if self.update and self.update < elapsed then
     if self.casting then
       self.timer:SetText(format('%2.1f/%1.1f', max(self.maxValue - self.value, 0), self.maxValue))
     elseif self.channeling then
       self.timer:SetText(format('%.1f', max(self.value, 0)))
     else
       self.timer:SetText('')
     end
     self.update = .1
   else
     self.update = self.update - elapsed
   end
 end)
end)
