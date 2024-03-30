-- @_x4yz

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local Character = Player.Character or Player.CharacterAdded:Wait()

local function IcifyTarget(Target:Player)
	if Target ~= nil and typeof(Target) == "Instance" and Target:IsA("Player") and Target.Name ~= tostring(Player.Name) and Target.Character and Player.Character then
		local Char = Target.Character
		local Tool = Player.Backpack:FindFirstChild("pistols") or Player.Backpack:FindFirstChild("sniper") or Player.Backpack:FindFirstChild("flamethrower") or Character:FindFirstChildWhichIsA("Tool")

		if Tool ~= nil then
			local ModuleSetting = Tool:FindFirstChild("Setting")
			if ModuleSetting then
				local RequiredModule = require(ModuleSetting)
				local GunScript_Server = Tool:FindFirstChild("GunScript_Server")
				if GunScript_Server then
					local InflictMelee:RemoteFunction = GunScript_Server.InflictTargetMelee or GunScript_Server:WaitForChild("InflictTargetMelee")

					local THumanoid = Char:FindFirstChildWhichIsA("Humanoid")
					local TTorso = Char.Torso or Char:WaitForChild("Torso")

					local A1_1 = {RequiredModule.MeleeDamage, RequiredModule.MeleeHeadshotEnabled, RequiredModule.MeleeHeadshotDamageMultiplier} -- Original
					local A1_2 = {0, RequiredModule.MeleeHeadshotEnabled, RequiredModule.MeleeHeadshotDamageMultiplier}

					local A2_1 = {RequiredModule.MeleeKnockback, RequiredModule.MeleeLifesteal, RequiredModule.MeleeAffliction, RequiredModule.MeleeAfflictionName, RequiredModule.MeleeAfflictChance} -- Original
					local A2_2 = {RequiredModule.MeleeKnockback, RequiredModule.MeleeLifesteal, true, "IcifyScript", 100}

					local A3_1 = {RequiredModule.MeleeCriticalDamageEnabled, RequiredModule.MeleeCriticalBaseChance, RequiredModule.MeleeCriticalDamageMultiplier} -- Original
					local A3_2 = {RequiredModule.MeleeCriticalDamageEnabled, RequiredModule.MeleeCriticalBaseChance, RequiredModule.MeleeCriticalDamageMultiplier}

					local Hit = TTorso

					InflictMelee:InvokeServer(RequiredModule, THumanoid, TTorso, A1_2, A2_2, A3_2, Hit)
					print("Fired on player: "..tostring(Target.Name))
					
					return true
				elseif not GunScript_Server then
					return false
				end
			elseif not ModuleSetting then
				return false
			end
		elseif Tool == nil then
			return false
		end	
	else
		return false
	end
end

Player.Chatted:Connect(function(Message)
	if Message ~= nil and typeof(Message) == "string" then
		local SplitMessage = Message:split(" ")
		
		if SplitMessage[1] == "/e" and (string.lower(SplitMessage[2])) == "icify" then
			local TargetName = string.lower(SplitMessage[3])
			local Target
			
			local Found = false
			
			for i, v in pairs(Players:GetPlayers()) do 
				if v ~= nil and string.lower(v.Name) == TargetName or string.lower(v.DisplayName) == TargetName then
					Found = true
					Target = v
					break
				end
			end
			
			if not Found then
				for i, v in pairs(Players:GetPlayers()) do 
					if v ~= nil then
						local PlayerName = string.lower(tostring(v.Name))
						local DisplayName = string.lower(tostring(v.DisplayName))
						
						if string.match(DisplayName, TargetName) or string.match(PlayerName, TargetName) then
							Found = true
							Target = v
							break
						end
					end
				end
			end
			
			if Found then
				return IcifyTarget(Target)
			elseif not Found then
				return false
			end
		end
	end
end)
