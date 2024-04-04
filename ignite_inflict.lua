-- @_x4yz

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local Character = Player.Character or Player.CharacterAdded:Wait()

for i, v in pairs(Players:GetChildren()) do 
	if v.Name ~= tostring(Player.Name) and v.Character then
		local Char = v.Character
		local Tool = Character:FindFirstChildWhichIsA("Tool")

		if Tool ~= nil then
			local ModuleSetting = Tool:FindFirstChild("Setting")
			if ModuleSetting then
				local RequiredModule = require(ModuleSetting)
				local GunScript_Server = Tool:FindFirstChild("GunScript_Server")
				if GunScript_Server then
					local InflictMelee:RemoteFunction = GunScript_Server.InflictTargetMelee or GunScript_Server:WaitForChild("InflictTargetMelee")
					
					local THumanoid = Char:FindFirstChildWhichIsA("Humanoid")
					local TTorso = Char:FindFirstChild("Torso")
					if not TTorso then
						TTorso = Char:WaitForChild("UpperTorso")
					end
					
					local A1_1 = {RequiredModule.MeleeDamage, RequiredModule.MeleeHeadshotEnabled, RequiredModule.MeleeHeadshotDamageMultiplier} -- Original
					local A1_2 = {0, RequiredModule.MeleeHeadshotEnabled, RequiredModule.MeleeHeadshotDamageMultiplier}

					local A2_1 = {RequiredModule.MeleeKnockback, RequiredModule.MeleeLifesteal, RequiredModule.MeleeAffliction, RequiredModule.MeleeAfflictionName, RequiredModule.MeleeAfflictChance} -- Original
					local A2_2 = {RequiredModule.MeleeKnockback, RequiredModule.MeleeLifesteal, true, "IgniteScript", 100}

					local A3_1 = {RequiredModule.MeleeCriticalDamageEnabled, RequiredModule.MeleeCriticalBaseChance, RequiredModule.MeleeCriticalDamageMultiplier} -- Original
					local A3_2 = {RequiredModule.MeleeCriticalDamageEnabled, RequiredModule.MeleeCriticalBaseChance, RequiredModule.MeleeCriticalDamageMultiplier}

					local Hit = TTorso

					InflictMelee:InvokeServer(RequiredModule, THumanoid, TTorso, A1_2, A2_2, A3_2, Hit)
					print("Fired on player: "..tostring(v.Name))
				end
			end
		end		
	end
end
