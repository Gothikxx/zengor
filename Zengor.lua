local coreGui = game:GetService("CoreGui")
local robloxGui = coreGui:FindFirstChild("RobloxGui")
if robloxGui then
    local endTime = tick() + 1
    while tick() < endTime do
        local notificationFrame = robloxGui:FindFirstChild("NotificationFrame")
        if notificationFrame then
            for _, child in ipairs(notificationFrame:GetChildren()) do
                if child:IsA("Frame") then
                    child:Destroy()
                end
            end
        end
        wait(0.05)
    end
end

local miAssetID = 100390260385968 

game.StarterGui:SetCore("SendNotification", {
    Title = "Zengor",
    Text = "Injected! Thanks for choosing Zengor.",
    Icon = "rbxassetid://" .. miAssetID, -- Se forma la ruta completa aquí
    Duration = 5
})
