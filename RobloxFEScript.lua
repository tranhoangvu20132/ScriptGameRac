

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

local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
local Window = ArrayField:CreateWindow({
   Name = "Roblox FE Script",
   LoadingTitle = "Roblox FE Script",
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
						task.wait()
					end
				end)
			end
			if Noclipping == false then
				Noclip(true)
			end
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
