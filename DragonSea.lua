

	-- Locals
local Events = game:GetService("ReplicatedStorage"):WaitForChild("Events")
local namecall
local ScriptLoaded = false
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:wait()
local Humanoid = Character:WaitForChild("Humanoid")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Lighting = game:GetService("Lighting")
local OriginalWalkspeed = LocalPlayer.Character.Humanoid.WalkSpeed
local OriginalJumpPower = LocalPlayer.Character.Humanoid.JumpPower
local OriginalJumpHeight = LocalPlayer.Character.Humanoid.JumpHeight
local OriginalLowGravity = game.Workspace.Gravity
local ModifiedWalkspeed = 50
local ModifiedJumpPower = 100
local ModifiedJumpHeight = 100
local ModifiedLowGravity = 50

local function Noclip(State)
		LocalPlayer.Character.HumanoidRootPart.CanCollide = State
		for i, v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("MeshPart") then
				v.CanCollide = State
			end
		end
	end

function TP(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function Click()
    game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
    game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
end

function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end

_G.ColorESP = Color3.new(0,255,255)

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateBfEsp() 
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if DevilFruitESP then
                if string.find(v.Name, "Fruit") then   
                    if not v.Handle:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v.Handle)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = _G.ColorESP
                        name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    else
                        v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end)
    end
end

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateDBEsp() 
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if DragonBallESP then
                if string.find(v.Name, "DB1") or string.find(v.Name, "DB2") or string.find(v.Name, "DB3") or string.find(v.Name, "DB4") or string.find(v.Name, "DB5") or string.find(v.Name, "DB6") or string.find(v.Name, "DB7") then   
                    if not v.Handle:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v.Handle)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = _G.ColorESP
                        name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    else
                        v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end)
    end
end


function UnEquipWeapon(ToolSess)
    if game.Players.LocalPlayer.Character:FindFirstChild(ToolSess) then
        getgenv().toolun = game.Players.LocalPlayer.Character:FindFirstChild(ToolSess)
        wait()
        game.Players.LocalPlayer.Character.Humanoid:UnequipTools(toolun)
    end
end

_G.Color = Color3.fromRGB(255,0,0)
_G.Logo = 15094837583
wait(0.1)

local Weaponlist = {}
function Update()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        table.insert(Weaponlist,v.Name)
    end   
end

Update()


function CheckQuest()
    local Level = game:GetService("Players").LocalPlayer.Data.Levels.Value
    if Level == 1 or Level <= 49 then
        QuestN = "Lv1Quest"
        Num = 1
    elseif Level == 50 or Level <= 99 then
        Nume = 1
        QuestN = "Lv50Quest"
        Num = 2
    elseif Level == 100 or Level <= 149 then
        Num2 = 2
        QuestN = "Lv100Quest"
        Num = 3
    elseif Level == 150 or Level <= 199 then
        Nume = 3
        QuestN = "Lv150Quest"
        Num = 4
    elseif Level == 200 or Level <= 249 then
        Nume = 4
        QuestN = "Lv200Quest"
        Num = 5
    elseif Level == 250 or Level <= 299 then
        Nume = 5
        QuestN = "Lv250Quest"
        Num = 6
    elseif Level == 300 or Level <= 349 then
        Nume = 6
        QuestN = "Lv300Quest"
        Num = 7
    elseif Level == 350 or Level <= 399 then
        Nume = 7
        QuestN = "Lv350Quest"
        Num = 8
    elseif Level == 400 or Level <= 499 then
        Nume = 8
        QuestN = "Lv400Quest"
        Num = 9
    elseif Level == 500 or Level <= 549 then
        Nume = 9
        QuestN = "Lv500Quest"
        Num = 10
    elseif Level == 550 or Level <= 599 then
        Nume = 10
        QuestN = "Lv550Quest"
        Num = 11
    elseif Level == 600 or Level <= 649 then
        Nume = 11
        QuestN = "Lv600Quest"
        Num = 12
    elseif Level == 650 or Level <= 699 then
        Nume = 12
        QuestN = "Lv650Quest"
        Num = 13
    elseif Level == 700 or Level <= 749 then
        Nume = 13
        QuestN = "Lv700Quest"
        Num = 14
    elseif Level == 750 or Level <= 799 then
        Nume = 14
        QuestN = "Lv750Quest"
        Num = 15
    elseif Level == 800 or Level <= 849 then
        Nume = 15
        QuestN = "Lv800Quest"
        Num = 16
    elseif Level == 850 or Level <= 899 then
        Nume = 16
        QuestN = "Lv850Quest"
        Num = 17
    elseif Level == 900 or Level <= 999 then
        Nume = 17
        QuestN = "Lv900Quest"
        Num = 18
    elseif Level == 1000 or Level <= 1049 then
        Nume = 18
        QuestN = "Lv1000Quest"
        Num = 19
    elseif Level == 1050 or Level <= 1099 then
        Nume = 19
        QuestN = "Lv1050Quest"
        Num = 20
    elseif Level == 1100 or Level <= 1299 then
        Nume = 20
        QuestN = "Lv1100Quest"
        Num = 21
    elseif Level == 1300 or Level <= 1349 then
        Nume = 21
        QuestN = "Lv1300Quest"
        Num = 22
    elseif Level == 1350 or Level <= 1399 then
        Nume = 22
        QuestN = "Lv1350Quest"
        Num = 23
    elseif Level == 1400 or Level <= 1449 then
        Nume = 23
        QuestN = "Lv1400Quest"
        Num = 24
    elseif Level == 1450 or Level <= 1499 then
        Nume = 24
        QuestN = "Lv1450Quest"
        Num = 25
    elseif Level == 1500 or Level <= 1549 then
        Nume = 25
        QuestN = "Lv1500Quest"
        Num = 26
    elseif Level == 1550 or Level <= 1599 then
        Nume = 26
        QuestN = "Lv1550Quest"
        Num = 27
    elseif Level == 1600 or Level <= 1649 then
        Nume = 27
        QuestN = "Lv1600Quest"
        Num = 28
    elseif Level == 1650 or Level <= 1699 then
        Nume = 28
        QuestN = "Lv1650Quest"
        Num = 29
    elseif Level == 1700 or Level <= 1749 then
        Nume = 29
        QuestN = "Lv1700Quest"
        Num = 30
    elseif Level == 1750 or Level <= 1799 then
        Nume = 30
        QuestN = "Lv1750Quest"
        Num = 31
    elseif Level == 1800 or Level <= 1849 then
        Nume = 31
        QuestN = "Lv1800Quest"
        Num = 32
    elseif Level == 1850 or Level <= 1899 then
        Nume = 32
        QuestN = "Lv1850Quest"
        Num = 33
    elseif Level == 1900 or Level <= 1949 then
        Nume = 33
        QuestN = "Lv1900Quest"
        Num = 34
    elseif Level == 1950 or Level <= 2001 then
        Nume = 34
        QuestN = "Lv1950Quest"
        Num = 35
    end
end
CheckQuest()

local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
local Window = ArrayField:CreateWindow({
   Name = "Dragon Sea",
   LoadingTitle = "Dragon Sea",
   LoadingSubtitle = "by tranhoangvu2013",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "ArrayField"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
      Actions = {
            [1] = {
                Text = 'Click here to copy the key link <--',
                OnPress = function()
                    print('Pressed')
                end,
                }
            },
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

ArrayField:Notify({
   Title = "Script",
   Content = "The Script Has Been Load Succesfully!",
   Duration = 5,
   Image = 7040391851,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Ok",
         Callback = function()

      end
   },
 },
})



local Tab = Window:CreateTab("Main", 7040391851) -- Title, Image

local Section = Tab:CreateSection("Main")

local Toggle = Tab:CreateToggle({
   Name = "Killaura Mob",
   CurrentValue = false,
   Flag = "KillauraMob", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   Killaura = value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Killaura Zamasu",
   CurrentValue = false,
   Flag = "KillauraZamasu", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   KillauraZamasu = value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Farm Level",
   CurrentValue = false,
   Flag = "AutoFarmLevel", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   Farm = value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Fast Attack",
   CurrentValue = false,
   Flag = "FastAttack", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   CBLRaid2 = value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Super Fast Attack",
   CurrentValue = false,
   Flag = "SuperFastAttack", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   CBLRaid = value
   end,
})

local Section = Tab:CreateSection("Config")

local Toggle = Tab:CreateToggle({
   Name = "Dupe Farm",
   CurrentValue = false,
   Flag = "DupeFarm", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   Dupe = value
   end,
})

local Dropdown = Tab:CreateDropdown({
   Name = "Select Method Farm",
   Options = {"Normal","Fast","Super Fast"},
   CurrentOption = {"Normal"},
   MultipleOptions = false,
   Flag = "SelectMethodFarm", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   Method = value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Distance Farm",
   Range = {0, 100},
   Increment = 1,
   Suffix = "Distance",
   CurrentValue = 1,
   Flag = "DistanceFarm", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   DistanceMob = value
   end,
})

local Dropdown = Tab:CreateDropdown({
   Name = "Select Weapon",
   Options = Weaponlist,
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "SelectWeapon", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   Weapon = value
   end,
})

local Button = Tab:CreateButton({
   Name = "Refresh Weapon",
   Callback = function()
   table.clear(Weaponlist)
   for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
   if v:IsA("Tool") then
   table.insert(Weaponlist,v.Name)
   end
   end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Equip Weapon",
   CurrentValue = false,
   Flag = "AutoEquipWeapon", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   AutoEquipWeapon = value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto UnEquip Weapon",
   CurrentValue = false,
   Flag = "AutoUnEquipWeapon", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   AutoUnEquipWeapon = value
   end,
})


local Tab = Window:CreateTab("Misc", 9613645002) -- Title, Image

local Section = Tab:CreateSection("Misc")

local Toggle = Tab:CreateToggle({
   Name = "Esp Fruit",
   CurrentValue = false,
   Flag = "EspFruit", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   DevilFruitESP = value
    while DevilFruitESP do wait()
        UpdateBfEsp()
    end 
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Esp Dragon Ball",
   CurrentValue = false,
   Flag = "EspDragonBall", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   DragonBallESP = va
    while DragonBallESP do wait()
        UpdateDBEsp() 
    end
   end,
})


local Button = Tab:CreateButton({
   Name = "Grab Fruit",
   Callback = function()
   pcall(function()
        for _,v in pairs(game.workspace:GetChildren()) do
            if string.find(v.Name,"Fruit") then
                if v:IsA("Tool") then
                    v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end)
   end,
})

local Button = Tab:CreateButton({
   Name = "Grab Dragon Ball",
   Callback = function()
   pcall(function()
        for _,v in pairs(game.workspace:GetChildren()) do
            if string.find(v.Name,"DB1") or string.find(v.Name, "DB2") or string.find(v.Name, "DB3") or string.find(v.Name, "DB4") or string.find(v.Name, "DB5") or string.find(v.Name, "DB6") or string.find(v.Name, "DB7") then
                if v:IsA("Tool") then
                    v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end)
   end,
})

local Button = Tab:CreateButton({
   Name = "FlyGui",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Reiji0001/Fly-Gui/main/Fly-Gui_Source"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Super Low Mode",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/crystalnerd/ScriptLinhTinh/main/AntiLag2"))()
   end,
})

local Section = Tab:CreateSection("Stats")

local Label = Tab:CreateLabel("Tips: Max Level Stats Is 2000")

local Toggle = Tab:CreateToggle({
   Name = "Auto Stats (Melee)",
   CurrentValue = false,
   Flag = "AutoStatsMelee", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   Melee = value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Stats (Defense)",
   CurrentValue = false,
   Flag = "AutoStatsDefense", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   Defense = value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Stats (Sword)",
   CurrentValue = false,
   Flag = "AutoStatsSword", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   Sword = value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Stats (Devil Fruit)",
   CurrentValue = false,
   Flag = "AutoStatsDevilFruit", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   DevilFruit = value
   end,
})

local Button = Tab:CreateButton({
   Name = "Reset Stats",
   Callback = function()
   game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Stats2.ResetStats.Click.Fire:FireServer()
   end,
})

local Tab = Window:CreateTab("Player", 11447069304) -- Title, Image

local Section = Tab:CreateSection("Player")

local Slider = Tab:CreateSlider({
   Name = "Walk Speed",
   Range = {0, 500},
   Increment = 50,
   Suffix = "Speed",
   CurrentValue = 50,
   Flag = "WalkSpeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   ModifiedWalkspeed = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Jump Power",
   Range = {0, 500},
   Increment = 100,
   Suffix = "Jump",
   CurrentValue = 100,
   Flag = "JumpPower", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   ModifiedJumpPower = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Jump Height",
   Range = {0, 500},
   Increment = 100,
   Suffix = "Jump",
   CurrentValue = 100,
   Flag = "JumpHeight", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   ModifiedJumpHeight = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Low Gravity",
   Range = {0, 100},
   Increment = 50,
   Suffix = "Gravity",
   CurrentValue = 50,
   Flag = "LowGravity", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   ModifiedLowGravity = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Enable Walk Speed",
   CurrentValue = false,
   Flag = "EnableWalkSpeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value == true then
				OriginalWalkspeed = LocalPlayer.Character.Humanoid.WalkSpeed
				LocalPlayer.Character.Humanoid.WalkSpeed = ModifiedWalkspeed
			else
				LocalPlayer.Character.Humanoid.WalkSpeed = OriginalWalkspeed
			end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Enable Jump Power",
   CurrentValue = false,
   Flag = "EnableJumpPower", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value == true then
				OriginalJumpPower = LocalPlayer.Character.Humanoid.JumpPower
				LocalPlayer.Character.Humanoid.JumpPower = ModifiedJumpPower
				LocalPlayer.Character.Humanoid.UseJumpPower = Value
			else
				LocalPlayer.Character.Humanoid.JumpPower = OriginalJumpPower
			end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Enable Jump Height",
   CurrentValue = false,
   Flag = "EnableJumpHeight", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value == true then
				OriginalJumpHeight = LocalPlayer.Character.Humanoid.JumpHeight
				LocalPlayer.Character.Humanoid.JumpHeight = ModifiedJumpHeight
			else
				LocalPlayer.Character.Humanoid.JumpHeight = OriginalJumpHeight
			end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Enable Low Gravity",
   CurrentValue = false,
   Flag = "EnableLowGravity", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value == true then
				OriginalJumpHeight = game.Workspace.Gravity
				game.Workspace.Gravity = ModifiedLowGravity
			else
				game.Workspace.Gravity = OriginalLowGravity
			end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Noclip",
   CurrentValue = false,
   Flag = "NoClip", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().Noclipping = Value
			if Noclipping == true then
				spawn(function()
					while Noclipping == true do
						Noclip(false)
						task.wait(0.01)
					end
				end)
			end
			if Noclipping == false then
				Noclip(true)
			end
   end,
})

local Button = Tab:CreateButton({
   Name = "God Mode Script",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/zephyr10101/ignore-touchinterests/main/main",true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Anti AFK",
   Callback = function()
    local VirtualUser = game:GetService("VirtualUser")
    local character = game.Players.LocalPlayer.Character

    game.Players.LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
   end,
})

local Tab = Window:CreateTab("Quest (Sea 1)", 11446859498) -- Title, Image

local Section = Tab:CreateSection("Quest (Sea 1)")


local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1",
   CurrentValue = false,
   Flag = "AutoQuestLv1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 50",
   CurrentValue = false,
   Flag = "AutoQuestLevel50", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 100",
   CurrentValue = false,
   Flag = "AutoQuestLv100", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel100 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 150",
   CurrentValue = false,
   Flag = "AutoQuestLevel150", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel150 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 200",
   CurrentValue = false,
   Flag = "AutoQuestLv200", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel200 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 250",
   CurrentValue = false,
   Flag = "AutoQuestLevel250", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel250 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 300",
   CurrentValue = false,
   Flag = "AutoQuestLv300", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel300 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 350",
   CurrentValue = false,
   Flag = "AutoQuestLevel350", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel350 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 400",
   CurrentValue = false,
   Flag = "AutoQuestLv400", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel400 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 450",
   CurrentValue = false,
   Flag = "AutoQuestLevel450", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 500",
   CurrentValue = false,
   Flag = "AutoQuestLv500", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel500 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 550",
   CurrentValue = false,
   Flag = "AutoQuestLevel550", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel550 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 600",
   CurrentValue = false,
   Flag = "AutoQuestLv600", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel600 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 650",
   CurrentValue = false,
   Flag = "AutoQuestLevel650", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel650 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 700",
   CurrentValue = false,
   Flag = "AutoQuestLv700", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel700 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 750",
   CurrentValue = false,
   Flag = "AutoQuestLevel750", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel750 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 800",
   CurrentValue = false,
   Flag = "AutoQuestLv800", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel800 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 850",
   CurrentValue = false,
   Flag = "AutoQuestLevel850", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel850 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 900",
   CurrentValue = false,
   Flag = "AutoQuestLv900", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel900 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1000",
   CurrentValue = false,
   Flag = "AutoQuestLv1000", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1000 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1050",
   CurrentValue = false,
   Flag = "AutoQuestLevel1050", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1050 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1100",
   CurrentValue = false,
   Flag = "AutoQuestLv1100", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1100 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1300",
   CurrentValue = false,
   Flag = "AutoQuestLevel1300", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1300 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1350",
   CurrentValue = false,
   Flag = "AutoQuestLv1350", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1350 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1400",
   CurrentValue = false,
   Flag = "AutoQuestLevel1400", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1400 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1450",
   CurrentValue = false,
   Flag = "AutoQuestLv1450", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1450 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1500",
   CurrentValue = false,
   Flag = "AutoQuestLevel1500", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1500 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1550",
   CurrentValue = false,
   Flag = "AutoQuestLv1550", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1550 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1600",
   CurrentValue = false,
   Flag = "AutoQuestLevel650", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1600 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1650",
   CurrentValue = false,
   Flag = "AutoQuestLv1650", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1650 = Value
   end,
})

local Tab = Window:CreateTab("Quest (Sea 2)", 11446859498) -- Title, Image

local Section = Tab:CreateSection("Quest (Sea 2)")

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1700",
   CurrentValue = false,
   Flag = "AutoQuestLevel1700", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1700 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1750",
   CurrentValue = false,
   Flag = "AutoQuestLevel1750", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1750 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1800",
   CurrentValue = false,
   Flag = "AutoQuestLevel1800", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1800 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1850",
   CurrentValue = false,
   Flag = "AutoQuestLevel1850", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1850 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1900",
   CurrentValue = false,
   Flag = "AutoQuestLevel1900", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1900 = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Quest Level 1950",
   CurrentValue = false,
   Flag = "AutoQuestLevel1950", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoQuestLevel1950 = Value
   end,
})

local Tab = Window:CreateTab("Teleport", 9606628205) -- Title, Image

local Section = Tab:CreateSection("Teleport (Sea 1)") -- The 2nd argument is to tell if its only a Title and doesnt contain element


local Dropdown = Tab:CreateDropdown({
   Name = "Select Island To Teleport",
   Options = {"Start Island","Sand Island","Roshi Island","Snow Island","Pink Island","NameK Island","IDK Island","DontKnowThisIsland","Sky Island","Sky2 Island","Magma Island","Broly Island","Snuw Island","Secret House","Zamasu Island","Boss Broly Island","Sea Beast Island","3 Sword Island"},
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "SelectIslandToTeleport", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(a)
    if a == "Start Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(288.5455017089844, 63.84864807128906, 115.04229736328125)
    elseif a == "Sand Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1400.95068, 107.864403, -366.769592, 0.173624337, 0, 0.984811902, 0, 1, 0, -0.984811902, 0, 0.173624337)
    elseif a == "Roshi Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-700.902893, 100.1214142, -1429.79468, 0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, 0.499959469)
    elseif a == "Snow Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(400.063232, 104.515747, -2343.72412, 0.152966559, 0, 0.988231361, 0, 1, 0, -0.988231361, 0, 0.152966559)
    elseif a == "Pink Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2700.44238, 99.3593597, -2515.00439, 0.344021738, -0, -0.938961744, 0, 1, -0, 0.938961744, 0, 0.344021738)
    elseif a == "NameK Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-492.455078, 87.4435577, 2207.8479, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    elseif a == "IDK Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(702.585754, 200.011795, 4200.17188, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    elseif a =="DontKnowThisIsland" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3599.39429, 76.961422, -1500.0415, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    elseif a =="Sky Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2313.02148, 1100.74725, -2486.85059, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    elseif a =="Snuw Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1292.31323, 120.282104, 4108.2207, 0, 0, 1, 0, -1, 0, 1, 0, -0)
    elseif a =="Magma Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1223.66321, 100.9973755, -3480.50439, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    elseif a =="Sky2 Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9930.25977, 9992.77637, -9.17041016, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    elseif a =="Broly Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3344.97827, 88.4703445, 324.548096, -0.226463541, -2.25652652e-08, -0.974019647, 3.46116096e-08, 1, -3.12144977e-08, 0.974019647, -4.07813339e-08, -0.226463541)
    elseif a =="Secret House" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9900.36719, 10126.2021, 209.791992, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    elseif a =="Zamasu Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3334.58179, 79.9945602, 1399.63916, 0.207508251, -9.89531443e-08, 0.978233278, -3.65285189e-08, 1, 1.08903592e-07, -0.978233278, -5.83318069e-08, 0.207508251)
    elseif a =="Boss Broly Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5945.77246, 86.3899689, 3287.37573, 0.0122147491, -6.73873046e-08, 0.999925375, -7.53682343e-08, 1, 6.83130068e-08, -0.999925375, -7.61970398e-08, 0.0122147491)
    elseif a =="Sea Beast Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2290.80273, 83.3219299, 1260.94067, -0.0748878866, 3.82371255e-08, -0.997191966, 3.24806386e-08, 1, 3.59055434e-08, 0.997191966, -2.97005407e-08, -0.0748878866)
    elseif a =="3 Sword Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-952.4598999023438, 74.61917114257812, -3595.201904296875)
    end
   end,
})

local Dropdown = Tab:CreateDropdown({
   Name = "Select NPC To Teleport",
   Options = {"Combat NPC","Dark Blade NPC","Wooden Sword NPC","Black Leg NPC","Speed Nimbus NPC","Random Race NPC","Dark Blade Awake NPC","Diamond Sword NPC","Flower Sword NPC","Soul Scythe Sword Npc","Dragon Ball NPC","Reset Fruit NPC","Race V2 NPC","Electro NPC","Dragon Combat NPC","Dark Sword NPC","Devil Fruit NPC","? NPC","Flame Sword NPC","Legendary Combat NPC","Awakening Fruit NPC","Mini Blade NPC","Lucky Random NPC (Ruby)"},
   CurrentOption = "" or {"",""},
   MultiSelection = false, -- If MultiSelections is allowed
   Flag = "SelectNPCToTelport", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(a)
    if a == "Combat NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(324.491699, 95.0442429, 640.770386, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    elseif a == "Dark Blade NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(323.68243408203125, 63.84864807128906, 103.55596923828125)
    elseif a == "Wooden Sword NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(436.5184020996094, 63.61470031738281, 140.999267578125)
    elseif a == "Black Leg NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1353.80566, 69.2778931, -410.218567, 0.202771068, 0, 0.979226172, 0, 1, 0, -0.979226172, 0, 0.202771068)
    elseif a == "Speed Nimbus NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-683.739441, 66.8792419, -1508.07739, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    elseif a == "Random Race NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2525.24731, 83.6779327, 1329.15759, -0.999616385, -2.39192877e-06, 0.0277067125, 2.39192877e-06, 1, 0.000172627479, -0.0277067125, 0.000172627479, -0.999616385)
    elseif a =="Dark Blade Awake NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9897.81738, 10108.9648, 159.725479, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    elseif a =="Diamond Sword NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(332.367798, 73.7791748, -2189.32666, 0.870833814, 0, 0.491577566, 0, 1, 0, -0.491577566, 0, 0.870833814)
    elseif a =="Flower Sword NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2753.55688, 132.597, -2810.2124, 0.870833814, 0, 0.491577566, 0, 1, 0, -0.491577566, 0, 0.870833814)
    elseif a =="Dragon Ball NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-364.716034, 208.071259, 2480.65845, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    elseif a =="Reset Fruit NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(280.2803649902344, 81.32337951660156, 410.35626220703125)
    elseif a =="Race V2 NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-215.362549, 149.672379, 2573.77271, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    elseif a =="Electro NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3720.87817, 71.5120239, -1512.24292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    elseif a =="Dragon Combat NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1212.63647, 62.8808861, -3430.13574, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    elseif a =="Dark Sword NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3978.69727, 175.450104, 55.7550926, 0.2798419, 0.774647951, 0.567105949, -0.166371077, 0.620899677, -0.766031504, -0.94552058, 0.120017737, 0.302632749)
    elseif a =="Devil Fruit NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(345.72784423828125, 63.61470031738281, 182.60421752929688)
    elseif a =="? NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3750.03247, 89.1133957, 484.051758, 0.974033058, -0, -0.226405889, 0, 1, -0, 0.226405889, 0, 0.974033058)
    elseif a =="Flame Sword NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2480.08716, 1037.58276, -2659.84473, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
    elseif a =="Legendary Combat NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1402.45935, 121.164917, 4284.67285, 0.0653696954, 6.20536582e-08, 0.997861087, -1.76270714e-08, 1, -6.10319262e-08, -0.997861087, -1.35997302e-08, 0.0653696954)
    elseif a =="Awakening Fruit NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1207.09473, 76.1849365, 3944.9873, -0.056713324, 6.12705904e-08, -0.998390496, 4.28006039e-08, 1, 5.89380882e-08, 0.998390496, -3.93891391e-08, -0.056713324)
    elseif a =="Mini Blade NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3281.55371, 69.3005295, 22.631422, -0.946952462, 1.50558872e-08, 0.321373612, -3.67973629e-09, 1, -5.76911781e-08, -0.321373612, -5.58133735e-08, -0.946952462)
    elseif a =="Lucky Random NPC (Ruby)" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3272.34326, 89.0924606, -204.238068, 0.526233375, -9.13948455e-08, -0.850340188, 2.92853137e-08, 1, -8.93571013e-08, 0.850340188, 2.21202114e-08, 0.526233375)
    elseif a =="Soul Scythe Sword Npc" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3673.686767578125, 80.19754791259766, 1334.6556396484375)
    end
   end,
})

local Section = Tab:CreateSection("Teleport (Sea 2)") -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Dropdown = Tab:CreateDropdown({
   Name = "Select Island To Teleport",
   Options = {"Start Island","Chirstmas Island"},
   CurrentOption = "" or {"",""},
   MultiSelection = false, -- If MultiSelections is allowed
   Flag = "SelectIslandToTeleportSea2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(a)
    if a == "Start Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(535.3236694335938, 249.785888671875, 458.905517578125)
    elseif a == "Chirstmas Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(3895.69384765625, 195.41709899902344, 1836.4102783203125)
    end
   end,
})

local Dropdown = Tab:CreateDropdown({
   Name = "Select NPC To Teleport (Coming Soon)",
   Options = {"",""},
   CurrentOption = "" or {"",""},
   MultiSelection = false, -- If MultiSelections is allowed
   Flag = "SelectNPCToTeleportSea2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(a)
   -- The function that takes place when the selected option is changed
   -- The variable (Option) is a string for the value that the dropdown was changed to
   end,
})

local Section = Tab:CreateSection("Sea")

local Button = Tab:CreateButton({
   Name = "Teleport to Place Sea 2",
   Interact = 'Click',
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(751.607421875, 65.19896697998047, 170.67616271972656)
   end,
})

local Tab = Window:CreateTab("Raid", 14477598542) -- Title, Image

local Section = Tab:CreateSection("Raid") -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Toggle = Tab:CreateToggle({
   Name = "Killaura Raid (Stop Wave 5)",
   CurrentValue = false,
   Flag = "KillauraRaid", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   KillauraRaid = value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Raid",
   CurrentValue = false,
   Flag = "AutoRaid", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
   CC = value
   end,
})

local Button = Tab:CreateButton({
   Name = "God Mode",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/zephyr10101/ignore-touchinterests/main/main",true))()
   end,
})


local Button = Tab:CreateButton({
   Name = "Teleport to Raid",
   Interact = 'Click',
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2299.685791015625, 1035.02490234375, -2715.144775390625)
   end,
})

function fixQuest()
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("QuestTake") then
        for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
            if v.Name == "QuestTake" then
                v.Decline.Size = UDim2.new(0, 10000, 0, 10000)
                v.Decline.Position = UDim2.new(-2, 0, -5, 0)
                v.Decline.BackgroundTransparency = 1
            end
        end   
        wait(.5)
        Click()
    end
end
spawn(function()
    while wait() do
        if Farm then
            pcall(function()
                CheckQuest()
                if game:GetService("Players").LocalPlayer.Quest.Num.Value == 0 then
                    CheckQuest()
                    Fast = false
                    for _,v in pairs(game.workspace.QuestFolder:GetChildren()) do
                        if v.Name == QuestN then			
                            TP(v.ClickPart.CFrame * CFrame.new(0,0,3))
                            wait(0.1)
                            Fast = false
                            fireclickdetector(v.ClickPart.ClickDetector)					
                        end
                    end
                    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("QuestTake") then
                    local Event = game:GetService("Players").LocalPlayer.PlayerGui.QuestTake.Accept.RemoteEvent:FireServer()
                    Event:FireServer()
                end 
                elseif game:GetService("Players").LocalPlayer.Quest.Num.Value == Num then
                    CheckQuest()
                    spawn(function()
                        fixQuest()
                    end)
                    for i,x in pairs(game:GetService("Workspace").Npc:GetChildren()) do
                        if x:FindFirstChild("Data") then
                            if Num ~= 1 and x.Data.Num.Value ~= 1 and Dupe then
                                if x.Data.Num.Value == Num then
                                    if x:FindFirstChild("Humanoid") and x:FindFirstChild("Humanoid").Health ~= 0 and x:FindFirstChild("HumanoidRootPart") then
                                        repeat game:GetService("RunService").Heartbeat:wait()
                                            EquipWeapon(Weapon)
                                            if Method == "Normal"then
                                                Click()
                                            elseif Method == "Fast" then
                                                Fast = true
                                            elseif Method == "Super Fast" then
                                                SuperFast = true
                                            else
                                                Click()   
                                            end
                                            TP(x.HumanoidRootPart.CFrame * CFrame.new(0,9,DistanceMob))
                                        until x:FindFirstChild("Humanoid").Health <= 0 or not Farm or not x.Parent or game:GetService("Players").LocalPlayer.Quest.Num.Value == 0
                                    end
                                else
                                    if x.Data.Num.Value == Nume then
                                        if x:FindFirstChild("Humanoid") and x:FindFirstChild("Humanoid").Health ~= 0 and x:FindFirstChild("HumanoidRootPart") then
                                            repeat game:GetService("RunService").Heartbeat:wait()
                                                EquipWeapon(Weapon)
                                                if Method == "Normal"then
                                                    Click()
                                                elseif Method == "Fast" then
                                                    Fast = true
                                                elseif Method == "Super Fast" then
                                                    SuperFast = true
                                                else
                                                    Click()
                                                end
                                                TP(x.HumanoidRootPart.CFrame * CFrame.new(0,9,DistanceMob))
                                            until x:FindFirstChild("Humanoid").Health <= 0 or not Farm or not x.Parent or game:GetService("Players").LocalPlayer.Quest.Num.Value == 0
                                        end
                                    end
                                end
                            else
                                if x.Data.Num.Value == Num then
                                    if x:FindFirstChild("Humanoid") and x:FindFirstChild("Humanoid").Health ~= 0 and x:FindFirstChild("HumanoidRootPart") then
                                        repeat game:GetService("RunService").Heartbeat:wait()
                                            EquipWeapon(Weapon)
                                            if Method == "Normal"then
                                                Click()
                                            elseif Method == "Fast" then
                                                Fast = true
                                            elseif Method == "Super Fast" then
                                                SuperFast = true
                                            else
                                                Click()  
                                            end
                                            TP(x.HumanoidRootPart.CFrame * CFrame.new(0,9,DistanceMob))
                                        until x:FindFirstChild("Humanoid").Health <= 0 or not Farm or not x.Parent or game:GetService("Players").LocalPlayer.Quest.Num.Value == 0
                                    end
                                end
                            end
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Quest.Num.Value ~= Num and game:GetService("Players").LocalPlayer.Quest.Num.Value ~= 0 then
                    UnEquipWeapon(Weapon)
                    CheckQuest()
                    Fast = false

                    spawn(function()
                        fixQuest()
                    end)

                    if game:GetService("Players").LocalPlayer.Quest.Num.Value ~= Num then
                        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("QuestBar") then
                            local Event = game:GetService("Players").LocalPlayer.PlayerGui.QuestBar.Background.Cancle.RemoteEvent:FireServer()
                            Event:FireServer()
                        end
                    end
                    wait()
                    for _,v in pairs(game.workspace.QuestFolder:GetChildren()) do
                        if v.Name == QuestN then			
                            TP(v.ClickPart.CFrame * CFrame.new(0,0,3))
                            Fast = false
                            wait(0.1)
                        end
                    end
                end
            end)
        else
            Fast = false
        end
    end
end)
spawn(function()
    while wait(0.01) do
        if CBLRaid or SuperFast then
            pcall(function()
                local args = {
                    [1] = 1,
                    [2] = game:GetService("Players").LocalPlayer
                }
                if game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("HackerSo1TheGioi") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].HackerSo1TheGioi.RemoteEvent:FireServer(unpack(args))
                elseif game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("Attack") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].Attack.RemoteEvent:FireServer(unpack(args))
                elseif game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("UaAloLaSaoZ") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].UaAloLaSaoZ.RemoteEvent:FireServer(unpack(args))
                elseif game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("DungCoHackNua") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].DungCoHackNua.RemoteEvent:FireServer(unpack(args))
                elseif game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("XaiLaBiBanAcc") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].XaiLaBiBanAcc.RemoteEvent:FireServer(unpack(args))
                end
            end) 
        end
    end
end)

spawn(function()
    while wait(1) do
        if CBLRaid2 or Fast then
            pcall(function()
                local args = {
                    [1] = 1,
                    [2] = game:GetService("Players").LocalPlayer
                }
                if game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("HackerSo1TheGioi") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].HackerSo1TheGioi.RemoteEvent:FireServer(unpack(args))
                elseif game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("Attack") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].Attack.RemoteEvent:FireServer(unpack(args))
                elseif game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("UaAloLaSaoZ") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].UaAloLaSaoZ.RemoteEvent:FireServer(unpack(args))
                elseif game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("DungCoHackNua") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].DungCoHackNua.RemoteEvent:FireServer(unpack(args))
                elseif game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("XaiLaBiBanAcc") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].XaiLaBiBanAcc.RemoteEvent:FireServer(unpack(args))
                end
            end) 
        end
    end
end)

spawn(function()
    while wait() do
        if CC then
            pcall(function()
                spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function()
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-68.81217956542969, 138.3164520263672, 40.44826889038086)
                            setfflag("HumanoidParallelRemoveNoPhysics", "False")
                            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                        end
                    end)
                end)
            end)
        end
    end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1 then
pcall(function()
workspace.QuestFolder.Lv1Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel50 then
pcall(function()
workspace.QuestFolder.Lv150Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel100 then
pcall(function()
workspace.QuestFolder.Lv100Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)


spawn(function()
while wait(0.1) do
if AutoQuestLevel150 then
pcall(function()
workspace.QuestFolder.Lv150Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel200 then
pcall(function()
workspace.QuestFolder.Lv200Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel250 then
pcall(function()
workspace.QuestFolder.Lv250Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)


spawn(function()
while wait(0.1) do
if AutoQuestLevel300 then
pcall(function()
workspace.QuestFolder.Lv300Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel350 then
pcall(function()
workspace.QuestFolder.Lv350Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel400 then
pcall(function()
workspace.QuestFolder.Lv400Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel450 then
pcall(function()
workspace.QuestFolder.Lv450Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)


spawn(function()
while wait(0.1) do
if AutoQuestLevel500 then
pcall(function()
workspace.QuestFolder.Lv500Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel550 then
pcall(function()
workspace.QuestFolder.Lv550Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel600 then
pcall(function()
workspace.QuestFolder.Lv600.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel650 then
pcall(function()
workspace.QuestFolder.Lv650Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)


spawn(function()
while wait(0.1) do
if AutoQuestLevel700 then
pcall(function()
workspace.QuestFolder.Lv700Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel750 then
pcall(function()
workspace.QuestFolder.Lv750Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel800 then
pcall(function()
workspace.QuestFolder.Lv800Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel850 then
pcall(function()
workspace.QuestFolder.Lv850Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)


spawn(function()
while wait(0.1) do
if AutoQuestLevel900 then
pcall(function()
workspace.QuestFolder.Lv900Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1000 then
pcall(function()
workspace.QuestFolder.Lv1000Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)


spawn(function()
while wait(0.1) do
if AutoQuestLevel1050 then
pcall(function()
workspace.QuestFolder.Lv1050Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1100 then
pcall(function()
workspace.QuestFolder.Lv1100Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)


spawn(function()
while wait(0.1) do
if AutoQuestLevel1300 then
pcall(function()
workspace.QuestFolder.Lv1300Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1350 then
pcall(function()
workspace.QuestFolder.Lv1350Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1400 then
pcall(function()
workspace.QuestFolder.Lv1400Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)


spawn(function()
while wait(0.1) do
if AutoQuestLevel1450 then
pcall(function()
workspace.QuestFolder.Lv1450Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1500 then
pcall(function()
workspace.QuestFolder.Lv1500Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1550 then
pcall(function()
workspace.QuestFolder.Lv1550Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1600 then
pcall(function()
workspace.QuestFolder.Lv1600Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1650 then
pcall(function()
workspace.QuestFolder.Lv1650Quest.ClickPart.QuestTake.QuestTake.Accept.RemoteEvent:FireServer()
end)
end
end
end)


spawn(function()
while wait(0.1) do
if AutoQuestLevel1700 then
pcall(function()
workspace.QuestFolder.Lv1700Quest.ClickPart.QuestTake.QuestTake.Frame.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1750 then
pcall(function()
workspace.QuestFolder.Lv1750Quest.ClickPart.QuestTake.QuestTake.Frame.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1800 then
pcall(function()
workspace.QuestFolder.Lv1800Quest.ClickPart.QuestTake.QuestTake.Frame.Accept.RemoteEvent:FireServer()
end)
end
end
end)


spawn(function()
while wait(0.1) do
if AutoQuestLevel1850 then
pcall(function()
workspace.QuestFolder.Lv1850Quest.ClickPart.QuestTake.QuestTake.Frame.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1900 then
pcall(function()
workspace.QuestFolder.Lv1900Quest.ClickPart.QuestTake.QuestTake.Frame.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
while wait(0.1) do
if AutoQuestLevel1950 then
pcall(function()
workspace.QuestFolder.Lv1950Quest.ClickPart.QuestTake.QuestTake.Frame.Accept.RemoteEvent:FireServer()
end)
end
end
end)

spawn(function()
    while wait() do
        if Killaura then
            if game.workspace:FindFirstChild("Npc") then
                check = game.Workspace.Npc
            end
            wait()
            for i,v in pairs(check:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
                    pcall(function()
                        repeat wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.Transparency = 0.8
                        until not Killaura or not v.Parent or v.Humanoid.Health <= 1
                    end)
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if KillauraZamasu then
            for i,v in pairs(game.Workspace.FusedZamasu:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
                    pcall(function()
                        repeat wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.Transparency = 0.8
                        until not KillauraZamasu or not v.Parent or v.Humanoid.Health <= 1
                    end)
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if KillauraRaid then
            for i,v in pairs(game.Workspace.SpawnEnemy:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
                    pcall(function()
                        repeat wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.Transparency = 1000
                        until not KillauraRaid or not v.Parent or v.Humanoid.Health <= 1
                    end)
                end
            end
        end
    end
end)


spawn(function()
while wait() do
if AutoEquipWeapon then
pcall(function()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))
end)
end
end
end)


spawn(function()
while wait() do
if AutoUnEquipWeapon then
pcall(function()
game.Players.LocalPlayer.Character.Humanoid:UnequipTools(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))
end)
end
end
end)

spawn(function()
    while wait(0.01) do
        if Melee then
            pcall(function()
                local args = {
                    [1] = "Melee"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("StatSystem"):WaitForChild("Points"):FireServer(unpack(args))
            end)
        end
    end
end)

spawn(function()
    while wait(0.01) do
        if Defense then
            pcall(function()
                local args = {
                   [1] = "MaxHealth"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("StatSystem"):WaitForChild("Points"):FireServer(unpack(args))
            end)
        end
    end
end)

spawn(function()
    while wait(0.01) do
        if Sword then
            pcall(function()
                local args = {
                    [1] = "Sword"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("StatSystem"):WaitForChild("Points"):FireServer(unpack(args))
            end)
        end
    end
end)

spawn(function()
    while wait(0.01) do
        if DevilFruit then
            pcall(function()
                local args = {
                    [1] = "DevilFruit"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("StatSystem"):WaitForChild("Points"):FireServer(unpack(args))
            end)
        end
    end
end)


game.Players.LocalPlayer.Character.ChildAdded:Connect(function(tools)
    if tools:IsA("Tool") then
        if tools:FindFirstChild("HackerSo1TheGioi") or tools:FindFirstChild("Attack") or tools:FindFirstChild("UaAloLaSaoZ") or tools:FindFirstChild("DungCoHackNua") or tools:FindFirstChild("XaiLaBiBanAcc") then 
            Vtool = tools.Name
        end
    end
end)
