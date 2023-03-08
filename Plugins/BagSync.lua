-- LinkWrangler - BagSync : https://www.curseforge.com/wow/addons/bagsync

LinkWrangler.RegisterCallback(
    "BagSync",
    function(_event)
        local AceAddon = LibStub and LibStub("AceAddon-3.0", true)
        local BagSync = AceAddon and AceAddon:GetAddon("BagSync", true)
        local BagSync_Tooltip = BagSync and BagSync:GetModule("Tooltip", true)
        if BagSync_Tooltip then
            LinkWrangler.RegisterCallback(
                "BagSync.HookTooltip",
                function(tip)
                    BagSync_Tooltip:HookTooltip(tip)
                end,
                "allocate",
                "allocatecomp"
            )
        end
    end,
    "gameactive"
)
