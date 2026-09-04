local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stonetalon Mountains (23-24)',
  {
    image = ZGV.IMAGESDIR .. 'Stonetalon Mountains',
    condition_suggested = function()
      return level >= 23 and level <= 24 and not completedq(1056)
    end,
    next = 'Leveling Guides\\Ashenvale (24-24)',
    hardcore = true,
  },
  [[
step
Follow the path up |goto Ashenvale 36.76,71.36 < 30 |only if walking and not zone("Stonetalon Mountains")
Run through the tunnel to Stonetalon Mountains |goto Ashenvale 42.27,71.09 < 15 |only if walking and not zone("Stonetalon Mountains")
Enter the building |goto Stonetalon Mountains 59.04,62.24 < 10 |walk
talk Ziz Fizziks##4201
|tip Inside the building.
accept Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.60
step
Follow the path up around the cliff |goto Stonetalon Mountains 60.06,70.00 < 40 |only if walking
talk Kaela Shadowspear##4080
accept On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.90,66.85
step
talk Gaxim Rustfizzle##4077
turnin On Guard in Stonetalon##1085 |goto Stonetalon Mountains 59.52,67.15
accept A Gnome's Respite##1071 |goto Stonetalon Mountains 59.52,67.15
stickystart "Kill_Venture_Co_Loggers"
stickystart "Kill_Venture_Co_Deforesters"
step
kill Venture Co. Operator##3988+
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Venture Co. Deforesters are casters that aggro from a wide range and deal heavy damage. |only if hardcore |notinsticky
collect Super Reaper 6000 Blueprints##5734 |q 1093/1 |goto Stonetalon Mountains 62.33,53.49
You can find more around: |notinsticky
[66.16,52.01]
[66.49,45.90]
[70.97,43.13]
[73.02,49.47]
[74.68,55.44]
step
label "Kill_Venture_Co_Loggers"
kill 10 Venture Co. Logger##3989 |q 1071/1 |goto Stonetalon Mountains 60.44,52.78
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Venture Co. Deforesters are casters that aggro from a wide range and deal heavy damage. |only if hardcore |notinsticky
You can find more around: |notinsticky
[71.20,56.50]
[70.01,48.11]
[64.24,46.72]
step
label "Kill_Venture_Co_Deforesters"
kill 10 Venture Co. Deforester##3991 |q 1071/2 |goto Stonetalon Mountains 60.44,52.78
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[71.20,56.50]
[70.01,48.11]
[64.24,46.72]
step
Kill enemies around this area
|tip You should already be level 24, or very close.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Venture Co. Deforesters are casters that aggro from a wide range and deal heavy damage. |only if hardcore |notinsticky
ding 24 |goto Stonetalon Mountains 60.44,52.78
You can find more around: |notinsticky
[71.20,56.50]
[70.01,48.11]
[64.24,46.72]
step
Enter the building |goto Stonetalon Mountains 59.04,62.24 < 10 |walk
talk Ziz Fizziks##4201
|tip Inside the building.
turnin Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.60
step
Follow the path up around the cliff |goto Stonetalon Mountains 60.06,70.00 < 40 |only if walking
talk Gaxim Rustfizzle##4077
turnin A Gnome's Respite##1071 |goto Stonetalon Mountains 59.52,67.15
accept An Old Colleague##1072 |goto Stonetalon Mountains 59.52,67.15
accept A Scroll from Mauren##1075 |goto Stonetalon Mountains 59.52,67.15
step
Kill Pridewing enemies around this area
'|kill Pridewing Wyvern##4012, Pridewing Consort##4014, Pridewing Skyhunter##4013, Young Pridewing##4011, Pridewing Patriarch##4015
|tip They look like wyverns.
collect 12 Pridewing Venom Sac##5808 |q 1134/1 |goto Stonetalon Mountains 51.55,45.08
You can find more around: |notinsticky
[54.89,42.08]
[54.05,39.63]
[45.90,46.08]
step
Follow the path to Stonetalon Peak |goto Stonetalon Mountains 46.86,31.45 < 30 |only if walking and not subzone("Stonetalon Peak")
talk Keeper Albagorm##3994
turnin Journey to Stonetalon Peak##1056 |goto Stonetalon Mountains 37.10,8.10
step
talk Teloren##4407
fpath Stonetalon Peak |goto Stonetalon Mountains 36.44,7.18
step
cast Teleport: Moonglade##18960
trainer Loganaar##12042 |goto Moonglade/0 52.50,40.54 |q 1134
|tip Go to Moonglade and train your spells, then hearth once it is off cooldown.
|only if Druid and C_Container.GetItemCooldown(6948) <= 100
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stonetalon Mountains (29-29)',
  {
    image = ZGV.IMAGESDIR .. 'Stonetalon Mountains',
    condition_suggested = function()
      return level == 29 and not completedq(1059)
    end,
    next = 'Leveling Guides\\Ashenvale (29-30)',
    hardcore = true,
  },
  [[
step
_Note_
This questing area is one of the slower ones.
|tip There are not many better quests right now that are safe to do.
|tip This is one of the few times dungeons are faster than questing.
|tip It is acceptable to do dungeons until level 30.50 and skip this guide, there are no important chains missed.
|tip If you skip ahead, your next guide is Wetlands (30-31)
Click Here to Continue |confirm
step
talk Keeper Albagorm##3994
accept Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.10,8.10
stickystart "Kill_Bloodfury_Ambushers"
stickystart "Kill_Bloodfury_Slayers"
stickystart "Kill_Bloodfury_Roguefeathers"
stickystart "Collect_Crystalized_Scales"
step
Leave Stonetalon Peak |goto Stonetalon Mountains 41.61,15.98 < 30 |only if walking and subzone("Stonetalon Peak")
Follow the path into the Charred Vale |goto Stonetalon Mountains 42.57,42.44 < 30 |only if walking and not subzone("The Charred Vale")
kill 7 Bloodfury Harpy##4022 |q 1057/1 |goto Stonetalon Mountains 34.51,62.27
You can find more around: |notinsticky
[32.26,60.12]
[32.44,65.30]
step
label "Kill_Bloodfury_Ambushers"
kill 7 Bloodfury Ambusher##4025 |q 1057/2 |goto Stonetalon Mountains 30.24,62.84
|tip These share spawns with other harpies in the area.
|tip Watch for patrols and respawns in the area.	|only if hardcore |notinsticky
|tip Patrols move quickly here, so pay attention.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[34.51,62.27]
[32.44,65.30]
step
label "Kill_Bloodfury_Slayers"
kill 7 Bloodfury Slayer##4024 |q 1057/3 |goto Stonetalon Mountains 35.96,68.52
|tip These share spawns with other harpies in the area.
|tip Watch for patrols and respawns in the area.	|only if hardcore |notinsticky
|tip Patrols move quickly here, so pay attention.	|only if hardcore |notinsticky
|tip Be careful of Sister Riven, she is an elite in this area |only if hardcore
You can find more around [28.83,69.50]
step
label "Kill_Bloodfury_Roguefeathers"
kill 7 Bloodfury Roguefeather##4023 |q 1057/4 |goto Stonetalon Mountains 35.96,68.52
|tip These share spawns with other harpies in the area.
|tip Watch for patrols and respawns in the area.	|only if hardcore |notinsticky
|tip Patrols move quickly here, so pay attention.	|only if hardcore |notinsticky
You can find more around [28.83,69.50]
step
label "Collect_Crystalized_Scales"
Kill Basilisk enemies around this area
'|kill Blackened Basilisk##4044, Scorched Basilisk##4041, Singed Basilisk##4042
|tip They look like lizard beasts with six legs.
|tip This area is the most common place for them to spawn consistently. |notinsticky
|tip Run up and down this path that leads into the Charred Vale, and grind on the other enemies that appear as well. |notinsticky
|tip You can also find a few in the Charred Vale valley, but they're more rare. |notinsticky
collect 8 Crystalized Scales##5675 |q 1078/1 |goto Stonetalon Mountains 37.02,50.10
step
Follow the path up |goto Stonetalon Mountains 30.22,75.85 < 20 |only if walking and not zone("Desolace")
Follow the road to this path and run up the path to enter Nijel's Point |goto Desolace 67.49,15.76 < 20 |only if walking and not subzone("Nijel's Point")
talk Baritanas Skyriver##6706
fpath Nijel's Point |goto Desolace 64.66,10.54
step
talk Keeper Albagorm##3994
turnin Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.10,8.10
accept Reclaiming the Charred Vale##1059 |goto Stonetalon Mountains 37.10,8.10
]]
)
