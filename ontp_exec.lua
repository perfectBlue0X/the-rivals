queue_on_teleport([[
    local players = game:GetService("Players")
    local player = players.LocalPlayer
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(0, 400, 0, 50)
    textLabel.Position = UDim2.new(0.5, -200, 0.5, -25)  -- Centered in the middle
    textLabel.Text = "Waiting for game to load..."
    textLabel.TextSize = 24
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.Font = Enum.Font.Gotham
    textLabel.Parent = screenGui

    local tweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true)

    local tween = tweenService:Create(textLabel, tweenInfo, {TextTransparency = 0.5})
    tween:Play()

    while not game:IsLoaded() do
        wait(1)
    end

    loadstring(game:HttpGet('https://raw.githubusercontent.com/riruru111/the-rivals/refs/heads/main/main.lua', true))()
    screenGui:Destroy()
]])
