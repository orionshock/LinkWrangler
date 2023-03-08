-- LinkWrangler --Auctionator: https://www.curseforge.com/wow/addons/auctionator

LinkWrangler.RegisterCallback(
    "Auctionator",
    function(_event)
        if Auctionator then
            LinkWrangler.RegisterCallback("Auctionator.Tooltip.ShowTipWithPricing", Auctionator.Tooltip.ShowTipWithPricing, "item")
        end
    end,
    "gameactive"
)
