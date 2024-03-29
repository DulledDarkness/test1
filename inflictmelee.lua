local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local TestPName = "some_mobile"
local TestP:Player = Players:FindFirstChild(TestPName)

local Character = TestP.Character or TestP.CharacterAdded:Wait() or Player.Character or Player.CharacterAdded:Wait()
local Tool = Character:FindFirstChildWhichIsA("Tool")

if Tool ~= nil then
	local ModuleSetting = Tool:FindFirstChild("Setting")
	if ModuleSetting then
		local RequiredModule = require(ModuleSetting)
		local GunScript_Server = Tool:FindFirstChild("GunScript_Server")
		if GunScript_Server then
			local InflictMelee:RemoteFunction = GunScript_Server.InflictTargetMelee or GunScript_Server:WaitForChild("InflictTargetMelee")
			
			local THumanoid = Character:FindFirstChildWhichIsA("Humanoid")
			local TTorso = Character.Torso or Character:WaitForChild("Torso")
			
			local A1 = {RequiredModule.MeleeDamage, RequiredModule.MeleeHeadshotEnabled, RequiredModule.MeleeHeadshotDamageMultiplier}
			local A2_1 = {RequiredModule.MeleeKnockback, RequiredModule.MeleeLifesteal, RequiredModule.MeleeAffliction, RequiredModule.MeleeAfflictionName, RequiredModule.MeleeAfflictChance}
			local A2_2 = {RequiredModule.MeleeKnockback, RequiredModule.MeleeLifesteal, RequiredModule.MeleeAffliction, "IcifyScript", RequiredModule.MeleeAfflictChance}
			local A3 = {RequiredModule.MeleeCriticalDamageEnabled, RequiredModule.MeleeCriticalBaseChance, RequiredModule.MeleeCriticalDamageMultiplier}
			local Hit = TTorso
						
			coroutine.resume(coroutine.create((function()
				InflictMelee:InvokeServer(RequiredModule, THumanoid, TTorso, A1, A2_2, A3, Hit)
			end)))
		end
	end
end
