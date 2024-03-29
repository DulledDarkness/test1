-- @_x4yz
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local UserInput = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

if _G["inputthing"] then
    _G["inputthing"]:Disconnect()
end

_G["inputthing"] = UserInput.InputBegan:Connect(function(Key, Process)
    if Key.KeyCode == Enum.KeyCode.Q and not Process then
        print("click")
        local function Shoot()
            local args = {
                [1] = {
                    ["YMax"] = -5,
                    ["XMax"] = -2,
                    ["TacticalReloadAnimationSpeed"] = 1,
                    ["CanSpinPart"] = false,
                    ["AngleX_Min"] = 1,
                    ["Lifesteal"] = 0,
                    ["MeleeCriticalDamageEnabled"] = false,
                    ["SilenceEffect"] = false,
                    ["ExplosionCraterFadeTime"] = 1,
                    ["DropAllRemainingBullets"] = false,
                    ["GoreSoundVolume"] = 1,
                    ["HitCharSndPitchMin"] = 1,
                    ["DropVelocity"] = 10,
                    ["ChargingSoundIncreasePitch"] = true,
                    ["WhizDistance"] = 25,
                    ["ProjectileMotion"] = false,
                    ["SelfDamage"] = false,
                    ["ReloadAnimationSpeed"] = 1,
                    ["Gravity"] = Vector2.new(0, 1000),
                    ["SpreadRedutionS"] = 0.6,
                    ["VisibleTime"] = 0.01,
                    ["HoldDownAnimationSpeed"] = 0.5,
                    ["Acceleration"] = Vector3.zero,
                    ["HoldingTime"] = 1,
                    ["HeatPerFireMax"] = 8,
                    ["MeleeBloodEnabled"] = true,
                    ["FlamingBullet"] = false,
                    ["MeleeKnockback"] = 0,
                    ["CustomExplosion"] = false,
                    ["EquippedAnimationID"] = 4336787230,
                    ["MeleeBloodWoundTexture"] = {
                        [1] = 2078626
                    },
                    ["EasingStyleNAD"] = Enum.EasingStyle.Quint,
                    ["SecondaryShotgunPumpinAnimationSpeed"] = 1,
                    ["BulletHoleVisibleTime"] = 3,
                    ["AimIdleAnimationSpeed"] = 1,
                    ["MeleeHitSoundIDs"] = {
                        [1] = 6000828622
                    },
                    ["PreShotgunReload"] = false,
                    ["BulletPerBurst"] = 3,
                    ["MeleeHitSoundPitchMin"] = 1,
                    ["ShotsForDepletion"] = 12,
                    ["HitmarkerSoundID"] = {
                        [1] = 3748776946,
                        [2] = 3748777642,
                        [3] = 3748780065
                    },
                    ["MarkerEffectEnabled"] = true,
                    ["Keyboard"] = {
                        ["HoldDown"] = Enum.KeyCode.E,
                        ["Switch"] = Enum.KeyCode.V,
                        ["Inspect"] = Enum.KeyCode.F,
                        ["ToogleAim"] = Enum.KeyCode.Q,
                        ["Reload"] = Enum.KeyCode.R
                    },
                    ["DualEnabled"] = true,
                    ["RecoilRedution"] = 0.5,
                    ["EasingStyle"] = Enum.EasingStyle.Quint,
                    ["HitmarkerColorHS"] = Color3.new(1, 0, 0),
                    ["SpinY"] = 0,
                    ["MeleeLifesteal"] = 0,
                    ["DisappearTime"] = 5,
                    ["ExplosionSoundIDs"] = {
                        [1] = 163064102
                    },
                    ["BloodWoundPartColor"] = true,
                    ["AutoReload"] = true,
                    ["ExplosionKnockbackMultiplierOnPlayer"] = 2,
                    ["ADSLerpAlpha"] = 0.25,
                    ["PenetrationAmount"] = 0,
                    ["Velocity"] = 50,
                    ["PenetrationType"] = "HumanoidPenetration",
                    ["DropXMax"] = 5,
                    ["HitSoundPitchMin"] = 1,
                    ["LowAmmo"] = true,
                    ["BulletShellRotVelocity"] = 40,
                    ["MeleeBloodWoundFadeTime"] = 1,
                    ["ADSCFrame"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                    ["EasingDirectionNAD"] = Enum.EasingDirection.Out,
                    ["Auto"] = false,
                    ["LightBrightness"] = 4,
                    ["HitmarkerFadeTime"] = 0.4,
                    ["SelfKnockbackMultiplier"] = 2,
                    ["BulletHoleFadeTime"] = 1,
                    ["MaximumTime"] = 1,
                    ["ChargingTime"] = 1,
                    ["InspectAnimationSpeed"] = 1,
                    ["BulletSpeed"] = 2400,
                    ["SelfKnockback"] = false,
                    ["MeleeHitCharSndPitchMax"] = 1,
                    ["CrossScaleIS"] = 0.6,
                    ["IronsightEnabled"] = true,
                    ["SpreadPattern"] = {
                        [1] = {
                            [1] = 0,
                            [2] = -0.4
                        },
                        [2] = {
                            [1] = -0.35,
                            [2] = 0.2
                        },
                        [3] = {
                            [1] = 0.35,
                            [2] = 0.2
                        },
                        [4] = {
                            [1] = 0,
                            [2] = 1
                        },
                        [5] = {
                            [1] = 0.95,
                            [2] = 0.31
                        },
                        [6] = {
                            [1] = 0.59,
                            [2] = -0.81
                        },
                        [7] = {
                            [1] = -0.59,
                            [2] = -0.81
                        },
                        [8] = {
                            [1] = -0.95,
                            [2] = 0.31
                        }
                    },
                    ["SmokeTrailEnabled"] = false,
                    ["MeleeAttackEnabled"] = false,
                    ["HeadshotEnabled"] = true,
                    ["WalkSpeedRedution"] = 6,
                    ["AngleZ_Max"] = 1,
                    ["MinigunRevDownAnimationSpeed"] = 1,
                    ["FirstPersonArms"] = false,
                    ["FieldOfViewIS"] = 50,
                    ["IdleAnimationSpeed"] = 1,
                    ["DelayBeforeFiring"] = 1,
                    ["ScopeSwayDamper"] = 0.65,
                    ["AimFireAnimationSpeed"] = 1,
                    ["TimeBeforeCooldown"] = 3,
                    ["MouseSensitiveS"] = 0.2,
                    ["Controller"] = {
                        ["HoldDown"] = Enum.KeyCode.DPadUp,
                        ["Inspect"] = Enum.KeyCode.DPadDown,
                        ["Switch"] = Enum.KeyCode.DPadRight,
                        ["Fire"] = Enum.KeyCode.ButtonR1,
                        ["ToogleAim"] = Enum.KeyCode.ButtonL1,
                        ["Reload"] = Enum.KeyCode.ButtonX
                    },
                    ["SelfKnockbackPower"] = 50,
                    ["EquipTime"] = 0,
                    ["BurstFireEnabled"] = false,
                    ["XMin"] = -4,
                    ["MarkerPartColor"] = true,
                    ["MarkerEffectTexture"] = {
                        [1] = 2078626
                    },
                    ["FireAnimationID"] = 4336770212,
                    ["TweenLengthNAD"] = 0.8,
                    ["Drag"] = 1,
                    ["MaxCount"] = 200,
                    ["CriticalBaseChance"] = 5,
                    ["GoreSoundPitchMin"] = 1,
                    ["MeleeBloodWoundEnabled"] = true,
                    ["GoreEffectEnabled"] = false,
                    ["HoldDownAnimationID"] = 1637489010,
                    ["MeleeBloodWoundPartColor"] = true,
                    ["BurstRate"] = 0.075,
                    ["ShellTextureID"] = 95391833,
                    ["BulletHoleTexture"] = {
                        [1] = 2078626
                    },
                    ["AimAnimationsEnabled"] = false,
                    ["Recoil"] = 35,
                    ["MeleeAttackRange"] = 4,
                    ["HitCharSndPitchMax"] = 1,
                    ["BloodEnabled"] = true,
                    ["MaxHeat"] = 100,
                    ["FirstPersonArmADS"] = false,
                    ["DropYMax"] = 0,
                    ["DropYMin"] = -0.1,
                    ["DropXMin"] = -5,
                    ["ScopeKnockbackSpeed"] = 15,
                    ["FireModeTexts"] = {
                        [1] = "SEMI-AUTO",
                        [2] = "2-ROUND-BURST",
                        [3] = "3-ROUND-BURST",
                        [4] = "AUTO"
                    },
                    ["ShotgunPumpinAnimationSpeed"] = 1,
                    ["HitEffectEnabled"] = true,
                    ["MeleeHeadshotEnabled"] = true,
                    ["WhizSoundEnabled"] = true,
                    ["HoldAndReleaseEnabled"] = false,
                    ["AngleX_Max"] = 1,
                    ["Level1ChargingTime"] = 1,
                    ["SelectiveFireEnabled"] = false,
                    ["CriticalDamageEnabled"] = false,
                    ["AllowCollide"] = false,
                    ["BatteryEnabled"] = false,
                    ["ShotgunEnabled"] = false,
                    ["EasingDirection"] = Enum.EasingDirection.Out,
                    ["MouseSensitiveIS"] = 0.2,
                    ["Knockback"] = 0,
                    ["AimSecondaryFireAnimationSpeed"] = 1,
                    ["FullyGibbedLimbChance"] = 50,
                    ["ExplosionCraterEnabled"] = true,
                    ["ShotgunPump"] = false,
                    ["MaxRotationSpeed"] = 360,
                    ["MarkerEffectSize"] = 0.5,
                    ["HitSoundPitchMax"] = 1.5,
                    ["MinigunEnabled"] = false,
                    ["Shockwave"] = true,
                    ["MeleeCriticalBaseChance"] = 5,
                    ["BloodWoundVisibleTime"] = 3,
                    ["WhizSoundVolume"] = 1,
                    ["ScopeSensitive"] = 0.25,
                    ["DamageBasedOnDistance"] = false,
                    ["ChargingAnimationSpeed"] = 1,
                    ["HitCharSndVolume"] = 1,
                    ["MarkerEffectFadeTime"] = 1,
                    ["MeleeCriticalDamageMultiplier"] = 3,
                    ["MeleeAttackAnimationSpeed"] = 1,
                    ["ZeroDamageDistance"] = 10000,
                    ["ShotgunClipinAnimationSpeed"] = 1,
                    ["ChargedShotEnabled"] = false,
                    ["HitCharSndIDs"] = {
                        [1] = 3802437008,
                        [2] = 3802437361,
                        [3] = 3802437696,
                        [4] = 3802440043,
                        [5] = 3802440388,
                        [6] = 3802442962
                    },
                    ["FullDamageDistance"] = 1000,
                    ["CrossDamper"] = 0.8,
                    ["ExplosionSoundPitchMax"] = 1.5,
                    ["LightColor"] = Color3.new(1, 1.1098039150238037, 0),
                    ["WhizSoundPitchMax"] = 1,
                    ["ShellScale"] = Vector3.new(1.5, 1.5, 1.5),
                    ["FireRates"] = {
                        [1] = 0.125,
                        [2] = 0.5,
                        [3] = 0.5,
                        [4] = 0.1
                    },
                    ["ChargingSoundPitchRange"] = {
                        [1] = 1,
                        [2] = 1.5
                    },
                    ["MeleeHeadshotDamageMultiplier"] = 2,
                    ["CriticalDamageMultiplier"] = 3,
                    ["ExplosiveEnabled"] = false,
                    ["CrossSpeed"] = 15,
                    ["RemoveOldAtMax"] = false,
                    ["SelfKnockbackRedution"] = 0.8,
                    ["MeleeHitSoundPitchMax"] = 1.5,
                    ["MeleeHitSoundVolume"] = 1,
                    ["MeleeBloodWoundSize"] = 0.5,
                    ["MeleeAffliction"] = false,
                    ["ScopeDelay"] = 0,
                    ["SecondaryFireAnimationEnabled"] = true,
                    ["CooldownRate"] = 1,
                    ["PartColor"] = true,
                    ["IcifyChance"] = 100,
                    ["SmokeTrailRateIncrement"] = 1,
                    ["YMin"] = -6,
                    ["TacticalReloadTime"] = 3,
                    ["GoreSoundIDs"] = {
                        [1] = 1930359546
                    },
                    ["SecondaryFireAnimationSpeed"] = 1,
                    ["EchoEffect"] = true,
                    ["HitSoundIDs"] = {
                        [1] = 186809061,
                        [2] = 186809249,
                        [3] = 186809250,
                        [4] = 186809252
                    },
                    ["Ammo"] = math.huge,
                    ["ExplosionKnockback"] = false,
                    ["HitSoundVolume"] = 1,
                    ["TacticalReloadAnimationEnabled"] = false,
                    ["SpinX"] = 3,
                    ["RaisePitch"] = false,
                    ["WalkSpeedRedutionEnabled"] = false,
                    ["ProjectileType"] = "NewBullet",
                    ["BulletHoleEnabled"] = true,
                    ["ExplosionCraterPartColor"] = false,
                    ["ExplosionCraterVisibleTime"] = 3,
                    ["MaxDepletion"] = 4,
                    ["HoldDownEnabled"] = true,
                    ["MuzzleLightEnabled"] = true,
                    ["BloodWoundTextureColor"] = Color3.new(1, 0, 0),
                    ["MeleeHitCharSndVolume"] = 1,
                    ["HitmarkerFadeTimeHS"] = 0.4,
                    ["ReduceSelfDamageOnAirOnly"] = false,
                    ["HitmarkerSoundPitchHS"] = 1,
                    ["CrossExpansion"] = 100,
                    ["MuzzleFlashEnabled"] = true,
                    ["LightRange"] = 15,
                    ["ExplosionSoundPitchMin"] = 1,
                    ["AdvancedChargingTime"] = 5,
                    ["MeleeBloodWoundTextureColor"] = Color3.new(1, 0, 0),
                    ["OverheatAnimationSpeed"] = 1,
                    ["MaximumRate"] = 4,
                    ["SwitchAnimationSpeed"] = 1,
                    ["TweenLength"] = 0.8,
                    ["GoreSoundPitchMax"] = 1.5,
                    ["ExplosionSoundVolume"] = 1,
                    ["ShotgunPattern"] = false,
                    ["ExplosionSoundEnabled"] = true,
                    ["SpreadRedutionIS"] = 0.6,
                    ["FieldOfViewS"] = 12.5,
                    ["PenetrationDepth"] = 0,
                    ["ShellMeshID"] = 95392019,
                    ["ScopeKnockbackDamper"] = 0.65,
                    ["MaxAmmo"] = math.huge,
                    ["BulletPerShot"] = 8,
                    ["MeleeAfflictionName"] = "",
                    ["ChargingAnimationEnabled"] = false,
                    ["MeleeHitEffectEnabled"] = true,
                    ["MinigunRevUpAnimationSpeed"] = 1,
                    ["ReloadTime"] = 3,
                    ["WhizSoundID"] = {
                        [1] = 3809084884,
                        [2] = 3809085250,
                        [3] = 3809085650,
                        [4] = 3809085996,
                        [5] = 3809086455
                    },
                    ["BulletShellVelocity"] = 17,
                    ["ShotgunReload"] = false,
                    ["HitmarkerSoundPitch"] = 1,
                    ["ChargedShotAdvanceEnabled"] = false,
                    ["AngleY_Min"] = 0,
                    ["SecondaryFireAnimationID"] = 4336764076,
                    ["PreShotgunReloadAnimationSpeed"] = 1,
                    ["SecondaryShotgunPump"] = false,
                    ["PreShotgunReloadSpeed"] = 0.5,
                    ["ExplosionKnockbackMultiplierOnTarget"] = 2,
                    ["FireModes"] = {
                        [1] = 1,
                        [2] = 2,
                        [3] = 3,
                        [4] = true
                    },
                    ["CameraRecoilingEnabled"] = true,
                    ["HitmarkerEnabled"] = true,
                    ["ExplosionCraterTexture"] = {
                        [1] = 53875997
                    },
                    ["BurstRates"] = {
                        [1] = 0,
                        [2] = 0.075,
                        [3] = 0.075,
                        [4] = 0
                    },
                    ["BloodWoundTexture"] = {
                        [1] = 2078626
                    },
                    ["ScopeKnockbackMultiplier"] = 5,
                    ["CrossScaleS"] = 0,
                    ["RecoilSpeed"] = 15,
                    ["LightShadows"] = true,
                    ["HitmarkerColor"] = Color3.new(1, 1, 1),
                    ["SniperEnabled"] = false,
                    ["CooldownTime"] = 0.05,
                    ["BulletHoleSize"] = 0.5,
                    ["MeleeBloodWoundVisibleTime"] = 3,
                    ["FreezingBullet"] = false,
                    ["CustomHitEffect"] = false,
                    ["Range"] = 5000,
                    ["ShellClipinSpeed"] = 0.5,
                    ["AngleY_Max"] = 0,
                    ["AngleZ_Min"] = -1,
                    ["Level2ChargingTime"] = 2,
                    ["Spread"] = 9,
                    ["BaseDamage"] = 4,
                    ["LerpAlpha"] = 0.25,
                    ["ExplosionKnockbackPower"] = 50,
                    ["CustomMeleeHitEffect"] = false,
                    ["MarkerEffectVisibleTime"] = 3,
                    ["WhizSoundPitchMin"] = 1,
                    ["Accuracy"] = 0.1,
                    ["MeleeAfflictChance"] = 100,
                    ["Ejection"] = true,
                    ["LimitedAmmoEnabled"] = true,
                    ["SecondaryShotgunPumpinSpeed"] = 0.5,
                    ["RecoilDamper"] = 0.65,
                    ["FireAnimationSpeed"] = 1,
                    ["ScopeSwaySpeed"] = 15,
                    ["MeleeHitCharSndIDs"] = {
                        [1] = 6398015798,
                        [2] = 6398016125,
                        [3] = 6398016391,
                        [4] = 6398016618
                    },
                    ["EquippedAnimationSpeed"] = 1,
                    ["AmmoPerMag"] = 20,
                    ["MeleeDamage"] = 20,
                    ["ExplosionRadius"] = 8,
                    ["FireRate"] = 0.125,
                    ["BloodWoundSize"] = 0.5,
                    ["DamageDropOffEnabled"] = false,
                    ["ExplosionCraterSize"] = 3,
                    ["ChargeAlterTable"] = {},
                    ["ShellSize"] = Vector3.new(0.20000000298023224, 0.20000000298023224, 0.3199999928474426),
                    ["MagCartridge"] = false,
                    ["AimChargingAnimationSpeed"] = 1,
                    ["BloodWoundFadeTime"] = 1,
                    ["BloodWoundEnabled"] = true,
                    ["HeadshotDamageMultiplier"] = 1.5,
                    ["MeleeHitCharSndPitchMin"] = 1,
                    ["InspectAnimationEnabled"] = false,
                    ["SpinZ"] = 0,
                    ["DelayAfterFiring"] = 1,
                    ["ShotgunPumpinSpeed"] = 0.5,
                    ["BulletShellDelay"] = 0,
                    ["HeatPerFireMin"] = 7,
                    ["MinDepletion"] = 2,
                    ["OverheatTime"] = 2.5,
                    ["BulletShellEnabled"] = true,
                    ["IgniteChance"] = 100,
                    ["SelfDamageRedution"] = 0.5,
                    ["CrossSize"] = 9,
                    ["SwitchTime"] = 0.25
                },
                [2] = Player.Character.pistols,
                [3] = Player.Character.pistols.Handle,
                [4] = {
                    [1] = workspace.CurrentCamera.CFrame.LookVector
                },
                [5] = Player.Character.Head.HatAttachment,
                [6] = {
                    [1] = true,
                    [2] = {} --[[DUPLICATE]],
                    [3] = 5.005000500050005e+35,
                    [4] = 5.005000500050005e+35,
                    [5] = 5.005000500050005e+35,
                    [6] = ReplicatedStorage:WaitForChild("igp"):WaitForChild("nuke"):WaitForChild("NuclearCircleFire"),
                    [7] = true
                },
                [7] = {
                    [1] = true,
                    [2] = {} --[[DUPLICATE]],
                    [3] = 5000,
                    [4] = Color3.new(0, 0, 0),
                    [5] = 5000,
                    [6] = ReplicatedStorage:WaitForChild("igp"):WaitForChild("nuke"):WaitForChild("NuclearCircleFire"),
                    [7] = {
                        [1] = true,
                        [2] = 0.5,
                        [3] = {
                            [1] = 13369663140
                        },
                        [4] = Color3.new(1, 0, 0),
                        [5] = 3,
                        [6] = 1,
                        [7] = true
                    }
                },
                [8] = {
                    [1] = true,
                    [2] = 0.5,
                    [3] = {
                        [1] = 13369663140
                    },
                    [4] = true,
                    [5] = 3,
                    [6] = 1
                },
                [9] = {
                    [1] = true,
                    [2] = 1000000000,
                    [3] = true,
                    [4] = {
                        [1] = 1840297374
                    },
                    [5] = 1,
                    [6] = 1.5,
                    [7] = 1,
                    [8] = true,
                    [9] = ReplicatedStorage:WaitForChild("igp"):WaitForChild("nuke"):WaitForChild("NuclearCircleFire"),
                    [10] = true,
                    [11] = true,
                    [12] = 500,
                    [13] = {
                        [1] = 13369663140
                    },
                    [14] = true,
                    [15] = 10000000,
                    [16] = 1,
                    [17] = true,
                    [18] = 50,
                    [19] = 2,
                    [20] = 2,
                    [21] = true,
                    [22] = 0.5,
                    [23] = true
                },
                [10] = {
                    [1] = "BusterLvl3",
                    [2] = 2400,
                    [3] = Vector3.zero,
                    [4] = 5000,
                    [5] = "HumanoidPenetration",
                    [6] = false,
                    [7] = 3,
                    [8] = 0,
                    [9] = 0,
                    [10] = 0,
                    [11] = 0
                },
                [11] = {
                    [1] = true,
                    [2] = {
                        [1] = 1840297374,
                        [2] = 1840297374,
                        [3] = 1840297374,
                        [4] = 1840297374,
                        [5] = 1840297374
                    },
                    [3] = 1,
                    [4] = 1,
                    [5] = 25,
                    [6] = 1
                }
            }
            args[6][2] = args[1].HitSoundIDs
            args[7][2] = args[1].HitCharSndIDs
            print("readying")
            ReplicatedStorage:WaitForChild("GunKit"):WaitForChild("Remotes"):WaitForChild("VisualizeBullet"):FireServer(unpack(args))
            print("fired")

            local args2 = {
                [1] = {
                    ["Pitch"] = 1,
                    ["MaxDistance"] = 100000000000,
                    ["Volume"] = 1000,
                    ["Silenced"] = false,
                    ["SoundId"] = "rbxassetid://1840297374",
                    ["Origin"] = Player:GetMouse().Target,
                    ["Echo"] = true,
                    ["EmitterSize"] = 700000
                },
                [2] = {
                    ["Pitch"] = 1,
                    ["Origin"] = Player:GetMouse().Target,
                    ["CurrentAmmo"] = 19,
                    ["AmmoPerMag"] = 20,
                    ["Volume"] = 1000,
                    ["SoundId"] = "rbxassetid://1840297374",
                    ["MaxDistance"] = 100000000000,
                    ["Enabled"] = true,
                    ["EmitterSize"] = 700000 
                }
            }
            local args2_1 = {
                [1] = {
                    ["Pitch"] = 1,
                    ["MaxDistance"] = 100000000000,
                    ["Volume"] = 1000,
                    ["Silenced"] = false,
                    ["SoundId"] = "rbxassetid://6314881739",
                    ["Origin"] = Player:GetMouse().Target,
                    ["Echo"] = true,
                    ["EmitterSize"] = 700000
                },
                [2] = {
                    ["Pitch"] = 1,
                    ["Origin"] = Player:GetMouse().Target,
                    ["CurrentAmmo"] = 19,
                    ["AmmoPerMag"] = 20,
                    ["Volume"] = 1000,
                    ["SoundId"] = "rbxassetid://6314881739",
                    ["MaxDistance"] = 100000000000,
                    ["Enabled"] = true,
                    ["EmitterSize"] = 700000 
                }
            }
            coroutine.resume(coroutine.create(function() 
                ReplicatedStorage:WaitForChild("GunKit"):WaitForChild("Remotes"):WaitForChild("PlayAudio"):FireServer(unpack(args2_1))
                task.wait(2)
                ReplicatedStorage:WaitForChild("GunKit"):WaitForChild("Remotes"):WaitForChild("PlayAudio"):FireServer(unpack(args2))
            end)) 
        end 
        for Loop = 1, 10 do 
            coroutine.resume(coroutine.create(function() 
                Shoot() 
                print("func shoot")
            end)) 
        end 
    end 
end) 
