-- LinkWrangler -Gargul : https://www.curseforge.com/wow/addons/gargul

LinkWrangler.RegisterCallback(
    "Gargul",
    function(_event)
        if Gargul and Gargul.onTooltipSetItemFunc then
            LinkWrangler.RegisterCallback(
                "Gargul.onTooltipSetItemFunc",
                function(tip)
                    Gargul.onTooltipSetItemFunc(tip)
                end,
                "item"
            )
        end
    end,
    "gameactive"
)
