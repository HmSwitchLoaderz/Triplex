--[[

        Triplex™
        @ev6k
        Version 1.0.0
        Source CODE!! WOW
        BEAR YOUR EYES FOR THIS
        UNREADABLE AHH CODING

]]


local Players = game:GetService("Players")
local player = Players.LocalPlayer
local Settings = {
    ProximityPrompt = {
        Duration = 3
    }
}
local v4 = game:GetService("Players")
local v116 = v4.LocalPlayer
local AutoFarming = true

player.Chatted:Connect(function(message)
    local commandPrefix = "/v "
    if string.sub(message, 1, #commandPrefix) == commandPrefix then
        local valueStr = string.sub(message, #commandPrefix + 1)
        local number = tonumber(valueStr)

        if number then
            Settings.ProximityPrompt.Duration = number
            print("Duration set to:", number)
        else
            warn("Invalid number entered with /v command.")
        end
    end
end)

_G.HeadSize = 5
_G.Disabled = true
_G.Transparency = 0.9
_G.Color = "White"
_G.HitPart = "Head"
_G.Material = Enum.Material.Neon

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

RunService.RenderStepped:Connect(function()
    if _G.Disabled then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                pcall(function()
                    local character = player.Character
                    local head = character and character:FindFirstChild(_G.HitPart)

                    if head then
                        
                        head.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                        head.Transparency = _G.Transparency
                        head.BrickColor = BrickColor.new("White")
                        head.Material = _G.Material
                        head.CanCollide = false
                    end
                end)
            end
        end
    end
end)

print("Made By ZEEK")







local Player = game.Players.LocalPlayer
local Teleporting = false
local TweenService = game:GetService("TweenService")
local Positions = {
    Vector3.new(93418.40625, 14486.5791015625, 564.6784057617188),
    Vector3.new(93434.4921875, 14485.75, 563.6395874023438),
    Vector3.new(93434.4921875, 14485.75, 563.6395874023438)
}



local function SmoothTeleport()
    local Character = Player.Character
    if not Character then return end

    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    if not HumanoidRootPart then return end

    local Index = 1

    while Teleporting do 

        local TargetPos = Positions[Index] + Vector3.new(math.random(-1, 1), math.random(0, 2), math.random(-1, 1))
        HumanoidRootPart.CFrame = CFrame.new(TargetPos)

        Index = Index % #Positions + 1
        task.wait(30)
    end
end












local ScreenGui = Instance.new("ScreenGui")
local AutoFarmin = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")



ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

AutoFarmin.Name = "AutoFarmin"
AutoFarmin.Parent = ScreenGui
AutoFarmin.BackgroundColor3 = Color3.new(0, 0, 0)
AutoFarmin.BorderColor3 = Color3.new(0, 0, 0)
AutoFarmin.BorderSizePixel = 0
AutoFarmin.Size = UDim2.new(1, 0, 1, 0)
AutoFarmin.Visible = false

TextLabel.Parent = AutoFarmin
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.308429122, 0, 0.449186981, 0)
TextLabel.Size = UDim2.new(0.383141756, 0, 0.101626016, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Nigga zeek Cooked Wit This 😂😂😂👌⭐🤷‍♂️"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
TextLabel.Visible = false

local RunService = game:GetService("RunService")

RunService.Heartbeat:Connect(function()
    if not Teleporting then
     AutoFarmin.Visible = false 
     TextLabel.Visible = false
    elseif Teleporting == true then
          AutoFarmin.Visible = true
          TextLabel.Visible = true
    end    
end)

local repo


local function FireAllProximityPrompts()
    for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v:IsA("ProximityPrompt") then
           
            local prompt = v
            if prompt.Enabled and prompt.ObjectText == "Take" then
                fireproximityprompt(v)
            end
        end
    end
end



local TweenService = game:GetService("TweenService")
local Player = game.Players.LocalPlayer

local BronxMarketPos = Vector3.new(-408.1044006347656, 340.34051513671875, -556.4286499023438)
local BackPackStorePos = Vector3.new(-707.79931640625, 253.59814453125, -678.9235229492188)
local ThaShopPos = Vector3.new(-1520.12890625, 272.49530029296875, -984.732177734375)

local function SmoothTeleportToPosition(TargetPos)
    local Character = Player.Character
    if not Character then return end

    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    if not HumanoidRootPart then return end

    local Target = TargetPos + Vector3.new(math.random(-1, 1), math.random(0, 2), math.random(-1, 1))
    local tweenInfo = TweenInfo.new(5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = { CFrame = CFrame.new(Target) }
    local tween = TweenService:Create(HumanoidRootPart, tweenInfo, goal)

    tween:Play()
    tween.Completed:Wait()
end

local function BronxMarket()
    SmoothTeleportToPosition(BronxMarketPos)
end

local function BackPackStore()
    SmoothTeleportToPosition(BackPackStorePos)
end

local function ThaShopp()
    SmoothTeleportToPosition(ThaShopPos)
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = game.Workspace.CurrentCamera
local Spectating = false

local function TeleportEffect()
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    if not PlayerGui then return end

    local BlackoutGui = Instance.new("ScreenGui")
    BlackoutGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
    BlackoutGui.IgnoreGuiInset = true
    BlackoutGui.Name = "TeleportBlackout"
    BlackoutGui.Parent = PlayerGui

    local BlackoutFrame = Instance.new("ImageLabel")
    BlackoutFrame.Size = UDim2.new(1, 0, 1, 0)
    BlackoutFrame.Position = UDim2.new(0, 0, 0, 0)
    BlackoutFrame.Image = "rbxassetid://86894228162813"
    BlackoutFrame.BackgroundTransparency = 1
    BlackoutFrame.ZIndex = 5
    BlackoutFrame.Parent = BlackoutGui

    local LoadingText = Instance.new("TextLabel")
    LoadingText.Size = UDim2.new(0.5, 0, 0.2, 0)
    LoadingText.Position = UDim2.new(0.25, 0, 0.55, 0)
    LoadingText.ZIndex = 10
    LoadingText.Text = "Estimated Percentage Change 26.73%"
    LoadingText.TextColor3 = Color3.new(1, 1, 1)
    LoadingText.TextScaled = true
    LoadingText.BackgroundTransparency = 1
    LoadingText.Font = Enum.Font.SourceSansBold
    LoadingText.Parent = BlackoutFrame

    local LoadingIcon = Instance.new("ImageLabel")
    LoadingIcon.Size = UDim2.new(0.3, 0, 0.5, 0)
    LoadingIcon.Position = UDim2.new(0.35, 0, 0.15, 0)
    LoadingIcon.Image = "rbxassetid://109201694563424"
    LoadingIcon.ZIndex = 10
    LoadingIcon.BackgroundTransparency = 1
    LoadingIcon.Parent = BlackoutFrame

    task.spawn(function()
        for Rotation = 0, 360, 5 do
            if not BlackoutGui.Parent then break end
            LoadingIcon.Rotation = Rotation
            task.wait(0.02)
        end
    end)

    task.delay(1, function()
        if BlackoutGui then
            BlackoutGui:Destroy()
        end
    end)
end

local function TeleportTo(Position)
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    if Character and Character:FindFirstChild("HumanoidRootPart") then
        local RootPart = Character.HumanoidRootPart
        TeleportEffect()
        task.wait(0.5)
        RootPart.CFrame = CFrame.new(Position)
        RootPart.Anchored = false
        task.wait(0.5)
        getgenv().FreeFallMethod = false
    else
        warn("[ERROR] Character or HumanoidRootPart not found!")
    end
end

local function SpectatePlayer(Target)
    if Spectating then
        Camera.CameraSubject = Target.Character and Target.Character:FindFirstChild("Humanoid") or Target
    else
        Camera.CameraSubject = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") or LocalPlayer
    end
end



if game:GetService("UserInputService").TouchEnabled or game:GetService("UserInputService").GamepadEnabled then
    repo = 'https://raw.githubusercontent.com/LionTheGreatRealFrFr/MobileLinoriaLib/main/'
else
    repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'
end
    local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
    local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
    local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
    local Window = Library:CreateWindow({Title = 'Triplex v1.3 | Tha Bronx 🏗️', Center = true, AutoShow = true})
    
    
    
local AimbotTab = Window:AddTab('Main')
