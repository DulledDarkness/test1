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
					local TTorso = Char.Torso or Char:WaitForChild("Torso")
					
					local A1 = {0, RequiredModule.MeleeHeadshotEnabled, RequiredModule.MeleeHeadshotDamageMultiplier}
					local A2_1 = {RequiredModule.MeleeKnockback, RequiredModule.MeleeLifesteal, RequiredModule.MeleeAffliction, RequiredModule.MeleeAfflictionName, RequiredModule.MeleeAfflictChance}
					local A2_2 = {RequiredModule.MeleeKnockback, RequiredModule.MeleeLifesteal, true, "IgniteScript", 100}
					local A3 = {RequiredModule.MeleeCriticalDamageEnabled, RequiredModule.MeleeCriticalBaseChance, RequiredModule.MeleeCriticalDamageMultiplier}
					local Hit = TTorso

					InflictMelee:InvokeServer(RequiredModule, THumanoid, TTorso, A1, A2_2, A3, Hit)
					print("Fired on player: "..tostring(v.Name))
				end
			end
		end		
	end
end
