-- On PLAYER_ENTERING_WORLD event (when load)
local loadingFrame = CreateFrame("Frame");
loadingFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
loadingFrame:SetScript("OnEvent", function()
    -- Combat Log
    FCF_UnDockFrame(ChatFrame2);
    ChatFrame2:Hide();
    ChatFrame2Tab:Hide();

    -- Raid-Style Party Frames
    CompactPartyFrameTitle:Hide();
    CompactPartyFrameMember1:Hide();

    -- Warlock
    WarlockPowerFrame:Hide();

    -- Paladin
    PaladinPowerBarFrame:Hide();
end);

-- Raid-Style Party Frames
-- Removes self from the party frames
CompactPartyFrameTitle:SetScript("OnShow", CompactPartyFrameTitle.Hide);
CompactPartyFrameMember1:SetScript("OnShow", CompactPartyFrameMember1.Hide);
