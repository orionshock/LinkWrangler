-- LinkWrangler -Profession Master - Guild Trade Skills: https://www.curseforge.com/wow/addons/profession-master

LinkWrangler.RegisterCallback(
    "ProfessionMaster",
    function(_event)
        if ProfessionMasterAddon and TooltipService then
            LinkWrangler.RegisterCallback(
                "ProfessionMaster.TooltipService",
                function(tip)
                    TooltipService:CheckTooltip(tip)
                end,
                "refresh"
            )
        end
    end,
    "gameactive"
)
