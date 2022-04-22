local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Drags UH Gui", "Ocean")

local AllTab = Window:NewTab("All")

local AllSection = AllTab:NewSection("All")

local SelfTab = Window:NewTab("Self")

local SelfSection = SelfTab:NewSection("Self")

local SettingsTab = Window:NewTab("Settings")

local SettingsSection = SettingsTab:NewSection("Settings")

SettingsSection:NewTextBox("Message", "the message you send when you tp", function(txt)
    getgenv().Message = txt
    print(getgenv().Message)
end)


AllSection:NewButton("Cash All", "teleports to everyone and gives money", function()
    game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
    "Reload",
    {
       Name = "[Revolver]",
       Ammo = {Value = math.huge*9e9},
       MaxAmmo = {Value = 0}
    }
    )
    task.wait(2)
    for i, v in pairs(game.Players:GetChildren()) do
        if v ~= game.Players.LocalPlayer then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(getgenv().Message,"All")
                p1.CFrame = game.Players[v.name].Character.HumanoidRootPart.CFrame
                game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
                    "Reload",
                    {
                        Name = "[Revolver]",
                        Ammo = game:GetService("Players")[v.name].DataFolder.Currency,
                        MaxAmmo = {Value = 999999999999999999}
                    }
                )
                task.wait(2.3)
        end
    end
end)

AllSection:NewButton("HeadlessAll", "gives everyone headless", function()
    game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
        "Reload",
        {
            Name = "[Revolver]",
            Ammo = {Value = math.huge*9e9},
            MaxAmmo = {Value = 0}
        }
        )
    task.wait(2)

    for i, v in pairs(game.Players:GetChildren()) do
        if v ~= game.Players.LocalPlayer then
                 game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(getgenv().Message,"All")
                 p1.CFrame = game.Players[v.name].Character.HumanoidRootPart.CFrame
                 game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
                    "Reload",
                    {
                        Name = "[Revolver]",
                        Ammo = workspace.Players[v.name].Humanoid["HeadScale"],
                        MaxAmmo = {Value = -1}
                    }
                 )
                 task.wait(2.3)
        end
     end
end)

SelfSection:NewButton("Get Cash", "gives you cash", function()
    game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
        "Reload",
        {
            Name = "[Revolver]",
            Ammo = {Value = math.huge*9e9},
            MaxAmmo = {Value = 0}
        }
        )
    task.wait(2)

    game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
        "Reload",
        {
            Name = "[Revolver]",
            Ammo = game:GetService("Players")[game.Players.LocalPlayer].DataFolder.Currency,
            MaxAmmo = {Value = 999999999999999999}
        }
    )
end)

SelfSection:NewButton("Headless", "gives you headless", function()
    game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
        "Reload",
        {
            Name = "[Revolver]",
            Ammo = {Value = math.huge*9e9},
            MaxAmmo = {Value = 0}
        }
        )
    task.wait(2)

    game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
        "Reload",
        {
            Name = "[Revolver]",
            Ammo = workspace.Players[game.Players.LocalPlayer].Humanoid["HeadScale"],
            MaxAmmo = {Value = -1}
        }
    )
end)