-- LinkWrangler - Atlas Loot Classic : https://www.curseforge.com/wow/addons/atlaslootclassic

LinkWrangler.RegisterCallback(
    "AtlasLoot",
    function(_event)
        if AtlasLoot and AtlasLoot.Tooltip then
            LinkWrangler.RegisterCallback(
                "AtlasLoot.Tooltip",
                function(tip)
                    AtlasLoot.Tooltip:AddTooltipSource(tip:GetName())
                end,
                "allocate",
                "allocatecomp"
            )
        end
    end,
    "gameactive"
)
