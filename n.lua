local function CreateESP(door, doorNumber)
    local box = Instance.new("BoxHandleAdornment")
    box.Size = door.Size
    box.Adornee = door
    box.Color3 = Color3.fromRGB(255, 0, 0)
    box.AlwaysOnTop = true
    box.ZIndex = 5
    box.Transparency = 0.5
    box.Parent = door

    local espUI = Instance.new("BillboardGui", door)
    espUI.Size = UDim2.new(0, 100, 0, 50)
    espUI.Adornee = door
    espUI.AlwaysOnTop = true
    espUI.StudsOffset = Vector3.new(0, 2, 0)

    local nameLabel = Instance.new("TextLabel", espUI)
    nameLabel.Text = door.Name .. " " .. doorNumber
    nameLabel.Size = UDim2.new(1, 0, 1, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.TextColor3 = Color3.new(1, 1, 1)
    nameLabel.TextStrokeTransparency = 0
end

-- Find all doors and apply ESP with numbers
local doorCount = 0
for _, door in pairs(workspace:GetDescendants()) do
    if door:IsA("BasePart") and door.Name == "Door" then
        doorCount = doorCount + 1
        CreateESP(door, doorCount)
    end
end
