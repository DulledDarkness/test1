--// @_x4yz

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local UserInput = game:GetService("UserInputService")

local Buttons = workspace:WaitForChild("Buttons")
local Items = workspace:WaitForChild("Items")
local Entities = workspace:WaitForChild("Entities")

if workspace:FindFirstChild("__PlatformPart") then 
	workspace:FindFirstChild("__PlatformPart"):Destroy()
end

local PlatformPart = Instance.new("Part")
PlatformPart.Anchored = true 
PlatformPart.Size = Vector3.new(50, 2, 50)
PlatformPart.CFrame = CFrame.new(750, 500, 750)
PlatformPart.CanCollide = true
PlatformPart.Name = "__PlatformPart"
PlatformPart.Parent = workspace

local PlatformTele = CFrame.new(750, 504, 750)
local OldPos = nil

local ItemLoopActive = false
local ButtonLoopActive = false

local ItemTableB = {}
local ButtonTableB = {}

if _G["__Input"] ~= nil then 
	_G["__Input"]:Disconnect()
end

local function FindPrompt(Obj)
	local Found = false
	local Prompt = nil 
	
	if Obj ~= nil and typeof(Obj) == "Instance" then
		for _, v in ipairs(Obj:GetDescendants()) do
			if v ~= nil and v.Parent then 
				if v:IsA("ProximityPrompt") then 
					Prompt = v
					Found = true
				end
			end
			
			task.wait()
		end
	end
	
	return Found, Prompt
end

local function IsEntityCloseTo(Obj)
	if Obj ~= nil and typeof(Obj) == "Instance" and Obj:IsA("BasePart") then
		for _, v in ipairs(Entities:GetChildren()) do
			if v ~= nil and v.Parent then 
				local HRP = v:FindFirstChild("HumanoidRootPart")
				
				if HRP then 
					local Distance = (HRP.Position - Obj.Position).Magnitude
					
					if Distance >= 7 then 
						return false
					elseif Distance < 7 then
						return true
					end
				end
			end
			
			task.wait()
		end
	end
	return true
end

local function LoopThroughItems()
	if Player.Character and Player.Character.Parent then 
		local PChar = Player.Character 
		local HRP = PChar:FindFirstChild("HumanoidRootPart") or PChar:WaitForChild("HumanoidRootPart", 2)
		
		if HRP then 
			ItemLoopActive = true
			OldPos = HRP.CFrame
			
			for i, v in ipairs(Items:GetChildren()) do
				if v ~= nil and v.Parent then 
					local FPrompt, Prompt = FindPrompt(v)
					
					if FPrompt and Prompt ~= nil and Prompt.Parent then
						local PPart = Prompt.Parent
						
						if not IsEntityCloseTo(PPart) then
							HRP.CFrame = PPart.CFrame + Vector3.new(0, 3, 0)
							task.wait(0.1)
							fireproximityprompt(Prompt)
							
							HRP.CFrame = PlatformTele
							task.wait()
						elseif IsEntityCloseTo(PPart) then 
							table.insert(ItemTableB, {[1] = PPart, [2] = Prompt})
						end
					end
				end
				
				task.wait()
			end
			
			HRP.CFrame = PlatformTele
			
			if #ItemTableB ~= 0 and #ItemTableB ~= nil then
				for _, v in ipairs(ItemTableB) do 
					if v ~= nil and typeof(v) == "table" then 
						repeat
							task.wait()
						until not IsEntityCloseTo(v[1]) or v[1] == nil or v[1].Parent == nil or v[2] == nil or v[2].Parent == nil
						
						if v[1] ~= nil and v[2].Parent ~= nil then 
							HRP.CFrame = PPart.CFrame + Vector3.new(0, 3, 0)
							task.wait(0.1)
							fireproximityprompt(Prompt)
							
							HRP.CFrame = PlatformTele
							task.wait()
						end
					end
				end
			end
			
			HRP.CFrame = OldPos
			ItemLoopActive = false
		end
	end
	
	ItemLoopActive = false
	return false
end

local function LoopThroughButtons()
	if Player.Character and Player.Character.Parent then 
		local PChar = Player.Character 
		local HRP = PChar:FindFirstChild("HumanoidRootPart") or PChar:WaitForChild("HumanoidRootPart", 2)
		
		if HRP then 
			ButtonLoopActive = true
			OldPos = HRP.CFrame
			
			for i, v in ipairs(Buttons:GetChildren()) do
				if v ~= nil and v.Parent then 
					local FPrompt, Prompt = FindPrompt(v)
					
					if FPrompt and Prompt ~= nil and Prompt.Parent then
						local PPart = Prompt.Parent
						
						if not IsEntityCloseTo(PPart) then
							HRP.CFrame = PPart.CFrame + Vector3.new(0, 3, 0)
							task.wait(0.1)
							fireproximityprompt(Prompt)
							
							HRP.CFrame = PlatformTele
							task.wait()
						elseif IsEntityCloseTo(PPart) then 
							table.insert(ButtonTableB, {PPart, Prompt})
						end
					end
				end
				
				task.wait()
			end
			
			HRP.CFrame = PlatformTele
			
			if #ButtonTableB ~= 0 and #ButtonTableB ~= nil then
				for _, v in ipairs(ButtonTableB) do 
					if v ~= nil and typeof(v) == "table" then 
						repeat
							task.wait()
						until not IsEntityCloseTo(v[1]) or v[1] == nil or v[1].Parent == nil or v[2] == nil or v[2].Parent == nil
						
						if v[1] ~= nil and v[2].Parent ~= nil then 
							HRP.CFrame = PPart.CFrame + Vector3.new(0, 3, 0)
							task.wait(0.1)
							fireproximityprompt(Prompt)
							
							HRP.CFrame = PlatformTele
							task.wait()
						end
					end
				end
			end
			
			HRP.CFrame = OldPos
			ButtonLoopActive = false
		end
	end
	
	ButtonLoopActive = false
	return false
end

_G["__Input"] = UserInput.InputBegan:Connect(function(Key, Process)
	if Key.KeyCode == Enum.KeyCode.G and not Process then 
		ItemLoopActive = true
		LoopThroughItems()
	elseif Key.KeyCode == Enum.KeyCode.H and not Process then 
		ButtonLoopActive = true
		LoopThroughItems()
	end
end)
