local function removeUI()
    for _, door in pairs(workspace:GetDescendants()) do
        if door:IsA("BasePart") and door.Name == "Door" then
            local adornment = door:FindFirstChildOfClass("BoxHandleAdornment")
            local billboard = door:FindFirstChildOfClass("BillboardGui")
            
            if adornment then
                adornment:Destroy()
            end
            if billboard then
                billboard:Destroy()
            end
        end
    end
    print("All door ESPs removed")
end
