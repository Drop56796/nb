local function CreateESP(door, doorNumber)
    local ESP = Drawing.new("Text")
    ESP.Text = 'Door ' .. doorNumber
    ESP.Color = Color3.fromRGB(255, 255, 255)
    ESP.Size = 18
    ESP.Center = true
    ESP.Outline = true
    ESP.Visible = false

    local function Update()
        local doorPosition = door.Position
        local vector, onScreen = workspace.CurrentCamera:WorldToViewportPoint(doorPosition)
        if onScreen then
            ESP.Position = Vector2.new(vector.X, vector.Y)
            ESP.Visible = true
        else
            ESP.Visible = false
        end
    end

    door:GetPropertyChangedSignal("Position"):Connect(Update)
    Update()
end

-- Find all doors and apply ESP with numbers
local doorCount = 0
for _, door in pairs(workspace:GetDescendants()) do
    if door:IsA("BasePart") and door.Name == "Door" then
        doorCount = doorCount + 1
        CreateESP(door, doorCount)
    end
end
