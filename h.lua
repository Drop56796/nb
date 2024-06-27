local function removeUI()
    local playerGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
    local doorESPUI = playerGui:FindFirstChild("DoorESPUI")
    
    if doorESPUI then
        doorESPUI:Destroy()
        print("UI Removed")
    else
        print("UI not found")
    end
end
