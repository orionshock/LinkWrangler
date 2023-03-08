-- LinkWrangler - MobInfo2 : https://www.curseforge.com/wow/addons/mobinfo2

LinkWrangler.RegisterCallback(
    "MobInfo2",
    function(_event)
        if MI2_BuildItemDataTooltip then
            LinkWrangler.RegisterCallback(
                "MobInfo2.MI2_BuildItemDataTooltip",
                function(tip)
                    tip:AddLine(" ")
                    MI2_BuildItemDataTooltip(tip, select(2, tip:GetItem()))
                end,
                "item"
            )
        end
    end,
    "gameactive"
)
