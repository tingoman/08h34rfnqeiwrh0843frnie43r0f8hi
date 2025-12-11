local m = game:GetService("MarketplaceService")
local success, p = pcall(function()
    return m:GetProductInfo(game.PlaceId)
end)

if success and p and string.find(string.lower(p.Name), "da hood") then
    repeat
        task.wait()
        if tick() - tick() > 30 then
            warn("Timeout waiting for required objects.")
            return
        end
    until workspace:FindFirstChild("Ignored")
        and workspace.Ignored:FindFirstChild("Siren")
        and workspace.Ignored.Siren:FindFirstChild("Radius")
        and game.Players.LocalPlayer.Character
        and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

    loadstring(game:HttpGet("https://raw.githubusercontent.com/tingoman/08h34rfnqeiwrh0843frnie43r0f8hi1/main/rze.lua"))()
end

