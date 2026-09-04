local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Ashenvale (22-23)',
  {
    image = ZGV.IMAGESDIR .. 'Ashenvale',
    condition_suggested = function()
      return level >= 22 and level <= 23 and not completedq(1034)
    end,
    next = 'Leveling Guides\\Stonetalon Mountains (23-24)',
    hardcore = true,
  },
  [[
step
talk Orendil Broadleaf##3847
accept Bathran's Hair##1010 |goto Ashenvale 26.44,38.59
accept Forsaken Looters##27038 |goto Ashenvale 26.44,38.59
accept Attack on the Foulweald##27412 |goto Ashenvale 26.44,38.59
step
Kill Dark Strand enemies around this area
|tip This item has a low drop rate.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
|tip Enemies near tents tend to pull in groups.		|only if hardcore
collect Glowing Soul Gem##5366 |q 970/1 |goto Ashenvale 31.39,30.62
step
click Plant Bundle##17282+
|tip They look like small piles of grey straw on the ground around this area.
|tip They can respawn fairly quickly.
|tip If you have trouble seeing them, reduce the "Ground Clutter" setting to "0" in the System > Graphics game settings menu.
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect 5 Bathran's Hair##5437 |q 1010/1 |goto Ashenvale 30.44,24.05
You can find more around: |notinsticky
[31.75,22.70]
[32.29,21.79]
step
talk Orendil Broadleaf##3847
turnin Bathran's Hair##1010 |goto Ashenvale 26.44,38.59
accept Orendil's Cure##1020 |goto Ashenvale 26.44,38.59
step
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##970 |goto Ashenvale 26.20,38.70
accept The Tower of Althalaxx##973 |goto Ashenvale 26.20,38.70
step
Follow the road |goto Ashenvale 25.53,38.43 < 30 |only if walking and subzone("Maestra's Post")
talk Therysil##3585
turnin Therylune's Escape##945 |goto Ashenvale 22.65,51.91
step
Follow the road to Astranaar |goto Ashenvale 28.17,48.38 < 40 |only if walking and subzone("The Shrine of Aessina")
talk Daelyshia##4267
fpath Astranaar |goto Ashenvale 34.41,47.99
step
talk Shindrell Swiftfire##3845
accept The Zoram Strand##1008 |goto Ashenvale 34.67,48.84
step
talk Faldreas Goeth'Shael##3996
accept Journey to Stonetalon Peak##1056 |goto Ashenvale 35.77,49.10
step
talk Innkeeper Kimlya##6738
|tip Inside the building.
home Astranaar |goto Ashenvale 36.99,49.22
step
talk Raene Wolfrunner##3691
|tip Inside the building.
accept Raene's Cleansing##991 |goto Ashenvale 36.62,49.58
step
Enter the building |goto Ashenvale 37.20,51.86 < 10 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin Orendil's Cure##1020 |goto Ashenvale 37.37,51.79
step
Watch the dialogue
talk Pelturas Whitemoon##3894
|tip Inside the building.
accept Elune's Tear##1033 |goto Ashenvale 37.37,51.79
step
Follow the road and enter the Barrens |goto The Barrens 48.99,5.39 < 30 |only if walking
talk Takar the Seer##6244
|tip Avoid the Crossroads in the the Barrens as you travel here.
turnin Devourer of Souls##1716 |goto The Barrens 49.31,57.10
accept Heartswood##1738 |goto The Barrens 49.31,57.10
|only if Warlock
step
talk Bragok##16227
fpath Ratchet |goto The Barrens 63.09,37.16
|only if Warlock
step
click Heartswood##93192
collect Heartswood##6912 |q 1738/1 |goto Ashenvale 31.49,31.45
|only if Warlock
step
Follow the path up |goto Ashenvale 41.60,50.11 < 20 |only if walking
Continue up the path |goto Ashenvale 43.57,45.62 < 30 |only if walking
click Elune's Tear##19015+
|tip They look like white balls on the ground around this area.
collect Elune's Tear##5493 |q 1033/1 |goto Ashenvale 46.24,45.96
step
Follow the path down |goto Ashenvale 44.53,45.37 < 30 |only if walking and subzone("Iris Lake")
Continue down the path |goto Ashenvale 42.31,48.38 < 20 |only if walking and subzone("Iris Lake")
Enter the building |goto Ashenvale 37.20,51.86 < 10 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin Elune's Tear##1033 |goto Ashenvale 37.37,51.79
step
Watch the dialogue
talk Pelturas Whitemoon##3894
|tip Inside the building.
accept The Ruins of Stardust##1034 |goto Ashenvale 37.37,51.79
step
click Stardust Covered Bush##19016+
|tip They look like bushes with white sparkles floating off of them on the ground around this area.
|tip Be careful of enemies underwater.						|only if hardcore
|tip Shadethicket Wood Shapers may root you.					|only if hardcore
|tip Shadethicket Raincallers are ranged attackers that deal heavy damage.	|only if hardcore
|tip Move out of the storms that they summon.					|only if hardcore
collect 5 Handful of Stardust##5494 |q 1034/1 |goto Ashenvale 33.42,67.36
step
Kill enemies around this area
|tip You are about to have to kill a difficult level 24 enemy that has a level 24 pet.
|tip It will help to be a level higher.
ding 23 |goto Ashenvale 33.42,67.36
step
_NOTE:_
The Next Step is Optional
|tip The enemy in the next step can be difficult and dangerous.
|tip He is a level 24 enemy with a level 24 pet, who can also summon other minions.
|tip If you are not comfortable with the risk, or don't have someone to help you, you can skip the quest.
|tip If you skip the quest, you will have to grind more later.
|tip If you decide to skip it, abandon the quest "The Tower of Althalaxx".
Click to Continue |confirm |q 973
|only if hardcore
step
Leave the Ruins of Stardust |goto Ashenvale 36.12,61.82 < 40 |only if walking
Follow the path |goto Ashenvale 28.39,60.88 < 40 |only if walking
Follow the path up |goto Ashenvale 25.86,63.07 < 15 |only if walking
kill Ilkrud Magthrull##3664
|tip Try to carefully pull the 2 Felhounds near him without pulling him as well.
|tip He has a succubus guard, and he summons multiple voidwalkers throughout the fight, so try to kill him quickly.
|tip Save Hammer of Justice to stop him from summoning voidwalkers |only if Paladin
|tip Save enough Energy to cast Gouge to stop him from summoning voidwalkers |only if Rogue
|tip If you have trouble, try to find someone to help you.
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect Ilkrud Magthrull's Tome##5533 |q 973/1 |goto Ashenvale 25.28,60.69
step
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##973 |goto Ashenvale 26.20,38.70
accept The Tower of Althalaxx##1140 |goto Ashenvale 26.20,38.70
step
Follow the path |goto Ashenvale 22.94,38.34 < 50 |only if walking and not subzone("Lake Falathim")
clicknpc Teronis' Corpse##3891
turnin Raene's Cleansing##991 |goto Ashenvale 20.31,42.33
accept Raene's Cleansing##1023 |goto Ashenvale 20.31,42.33
step
Kill Saltspittle enemies around this area
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Saltspittle Oracles may heal when at low health. |only if hardcore
|tip Enemies here may run away in fear when at low health. |only if hardcore
|tip Be careful of enemies obscured by the water. |only if hardcore
collect Glowing Gem##5463 |q 1023/1 |goto Ashenvale 20.31,42.33
step
Follow the path |goto Ashenvale 18.45,32.56 < 50 |only if walking
talk Talen##3846
accept The Ancient Statuette##1007 |goto Ashenvale 14.79,31.30
stickystart "Collect_Wrathtail_Heads"
step
click Ancient Statuette##17783
collect Ancient Statuette##5424 |q 1007/1 |goto Ashenvale 14.20,20.64
step
talk Talen##3846
turnin The Ancient Statuette##1007 |goto Ashenvale 14.79,31.30
step
Watch the dialogue
talk Talen##3846
accept Ruuzel##1009 |goto Ashenvale 14.79,31.30
step
_NOTE:_
The Next Step is Optional
|tip The enemy in the next step can be difficult and dangerous.
|tip She is a naga who has 2 guards with her.
|tip If you are not comfortable with the risk, or don't have someone to help you, you can skip the quest.
|tip If you skip the quest, you will have to grind more later.
|tip If you decide to skip it, abandon the quest "Ruuzel".
Click to Continue |confirm |q 1009
|only if hardcore
step
Check for Lady Vespia |goto Ashenvale 11.20,29.40 < 70 |or
|tip She is a rare spawn naga that can spawn on the island here.
|tip She can also drop the Ring of Zoram and is much easier to kill.
|tip Skip this step if she is not up.
collect Ring of Zoram##5445 |q 1009/1 |or
step
kill Ruuzel##3943
|tip She looks like a green naga with pink fins.
|tip She walks clockwise near the water around this small island.
|tip She has 2 guards with her.
|tip If you have trouble, try to get someone to help you, or skip it.
collect Ring of Zoram##5445 |q 1009/1 |goto Ashenvale 6.58,13.46
step
talk Talen##3846
turnin Ruuzel##1009 |goto Ashenvale 14.79,31.30
step
label "Collect_Wrathtail_Heads"
Kill Wrathtail enemies around this area
collect 20 Wrathtail Head##5490 |q 1008/1 |goto Ashenvale 15.14,22.61
You can find more around: |notinsticky
[13.12,29.41]
step
talk Shindrell Swiftfire##3845
turnin The Zoram Strand##1008 |goto Ashenvale 34.67,48.84
accept Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Raene's Cleansing##1023 |goto Ashenvale 36.62,49.58
step
_Destroy This Item:_
|tip It is no longer needed.
trash Teronis' Journal##5505 |goto Ashenvale 37.19,51.86
step
Enter the building |goto Ashenvale 37.19,51.86 < 10 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin The Ruins of Stardust##1034 |goto Ashenvale 37.37,51.79
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Ashenvale (24-24)',
  {
    image = ZGV.IMAGESDIR .. 'Ashenvale',
    condition_suggested = function()
      return level == 24 and not completedq(1054)
    end,
    next = 'Leveling Guides\\Wetlands (24-25)',
    hardcore = true,
  },
  [[
step
Prepare for Blackfathom Deeps
|tip It will be a good time to start Blackfathom Deeps soon.
|tip You should run it after this guide, roughly 45 minutes.
|tip Start looking for a group.
|confirm
|only if guideflag("BFDflag")
step
talk Shindrell Swiftfire##3845
turnin Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
step
talk Raene Wolfrunner##3691
|tip Inside the building.
accept An Aggressive Defense##1025 |goto Ashenvale 36.62,49.58
accept Culling the Threat##1054 |goto Ashenvale 36.62,49.58
stickystart "Kill_Foulweald_Ursas"
stickystart "Kill_Foulweald_Totemics"
stickystart "Kill_Foulweald_Warriors"
step
kill Foulweald Den Watcher##3746 |q 1025/1 |goto Ashenvale 50.44,61.25
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Foulweald Shaman and Totemics utilize totems which should be destroyed as they appear. |only if hardcore |notinsticky
|tip Enemies near buildings tend to pull in groups so be prepared. |only if hardcore |notinsticky
You can find more around [55.84,62.92]
step
label "Kill_Foulweald_Ursas"
kill 2 Foulweald Ursa##3749 |q 1025/2 |goto Ashenvale 50.44,61.25
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Foulweald Shaman and Totemics utilize totems which should be destroyed as they appear. |only if hardcore |notinsticky
|tip Enemies near buildings tend to pull in groups so be prepared. |only if hardcore |notinsticky
You can find more around [55.84,62.92]
step
label "Kill_Foulweald_Totemics"
kill 10 Foulweald Totemic##3750 |q 1025/3 |goto Ashenvale 50.44,61.25
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Foulweald Shaman and Totemics utilize totems which should be destroyed as they appear. |only if hardcore |notinsticky
|tip Enemies near buildings tend to pull in groups so be prepared. |only if hardcore |notinsticky
You can find more around [55.84,62.92]
step
label "Kill_Foulweald_Warriors"
kill 12 Foulweald Warrior##3743 |q 1025/4 |goto Ashenvale 50.44,61.25
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Foulweald Shaman and Totemics utilize totems which should be destroyed as they appear. |only if hardcore |notinsticky
|tip Enemies near buildings tend to pull in groups so be prepared. |only if hardcore |notinsticky
You can find more around [55.84,62.92]
step
Enter the building |goto Ashenvale 50.12,66.47 < 15 |walk
talk Sentinel Velene Starstrike##3885
|tip Inside the building.
accept Elemental Bracers##1016 |goto Ashenvale 49.80,67.21
step
kill Befouled Water Elemental##3917+
|tip You can find more in the water surrounding this small island.
|tip Be careful of Tideress, a level 27 green water elemental that moves around this area.
|tip These enemies are immune to frost damage.
collect 5 Intact Elemental Bracer##12220 |goto Ashenvale 48.38,69.68 |q 1016
step
use the Divining Scroll##5456
collect Divined Scroll##5455 |q 1016/1
step
talk Sentinel Velene Starstrike##3885
|tip Inside the building.
turnin Elemental Bracers##1016 |goto Ashenvale 49.80,67.21
step
talk Jarrodenus##12577
|tip This step is necessary to access some flight paths to Ratchet.
|tip Stick to the road, and don't worry about the patrolling orc outrider. They do not aggro.
fpath Talrendis Point |goto Azshara 11.90,77.59
|only if not hardcore
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin An Aggressive Defense##1025 |goto Ashenvale 36.62,49.58
step
Follow the path up |goto Ashenvale 41.67,49.97 < 20 |only if walking and not subzone("Thistlefur Village")
kill Dal Bloodclaw##3987
|tip He looks like a grey furbolg that walks around this area.
|tip Avoid pulling him when near buildings. |only if hardcore
|tip Clear an area before engaging. |only if hardcore
collect Dal Bloodclaw's Skull##5544 |q 1054/1 |goto Ashenvale 37.35,35.60
Also check around [39.36,36.52]
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Culling the Threat##1054 |goto Ashenvale 36.62,49.58
step
Run Blackfathom Deeps
Jump into the water |goto Ashenvale/0 14.12,13.88 < 10 |walk
Swim underwater into the cave |goto Ashenvale/0 13.28,13.23 < 10 |walk
Follow the path |goto Ashenvale/0 13.90,10.92 < 10 |walk
Follow the path |goto Ashenvale/0 13.74,9.38 < 10 |walk
Follow the path |goto Ashenvale/0 14.37,9.20 < 10 |walk
Follow the path |goto Ashenvale/0 16.50,11.61 < 10 |walk
Enter the Blackfathom Deeps Dungeon with Your Group |goto Blackfathom Deeps/0 0.00,0.00 < 500 |c |q 971
|only if guideflag("BFDflag")
stickystart "Collect_10_Twilight_Pendants"
stickystart "Collect_8_Corrupted_Brain_Stems"
step
_Inside the Blackfathom Deeps Dungeon:_
click Pitted Iron Chest
|tip Follow the path inside the dungeon to enter The Drowned Sacellum.
|tip Swim to the south side of the room and then jump across the platforms to reach the southwest path.
|tip Continue following the path to enter The Pool of Ask'ar.
|tip It is underwater to the north of Gamoo-ra.
collect Lorgalis Manuscript##5359 |q 971/1
|only if guideflag("BFDflag")
step
_Inside the Blackfathom Deeps Dungeon:_
talk Argent Guard Thaelrid##4787
|tip Head southwest again in The Pool of Ask'ar and swim into the underwater cave.
|tip He is laying on the ground inside the underwater cave.
turnin In Search of Thaelrid##1198
accept Blackfathom Villainy##1200
|only if guideflag("BFDflag")
step
_Inside the Blackfathom Deeps Dungeon:_
kill Twilight Lord Kelris##4832
|tip The fourth boss of the dungeon.
|tip Leave the underwater cave and reenter the main room in The Pool of Ask'ar.
|tip Swim south and follow the path to the left to reach the Moonshrine Ruins.
|tip Follow the path southeast through the Moonshrine Ruins into the Moonshrine Sanctum.
collect Head of Kelris##5881 |q 1200/1
|only if guideflag("BFDflag")
step
label "Collect_10_Twilight_Pendants"
_Inside the Blackfathom Deeps Dungeon:_ |notinsticky
Kill Twilight enemies around this area
|tip They are found throughout the instance.
collect 10 Twilight Pendant##5879 |q 1199/1
|only if guideflag("BFDflag")
step
label "Collect_8_Corrupted_Brain_Stems"
_Inside the Blackfathom Deeps Dungeon:_ |notinsticky
Kill Blackfathom and Fallenroot enemies around this area
|tip They are found throughout the instance.
collect 8 Corrupted Brain Stem##5952 |q 1275/1
|only if guideflag("BFDflag")
step
Leave the Blackfathom Deeps Dungeon
Click Here to Continue |confirm |q 971
|only if guideflag("BFDflag")
step
talk Terenthis##3693
|tip Inside the building.
turnin Escape Through Force##994 |goto Darkshore 39.37,43.48
|only if not hardcore
step
talk Gershala Nightwhisper##8997
turnin Researching the Corruption##1275 |goto Darkshore 38.33,43.04
|only if guideflag("BFDflag")
step
Run up the ramp |goto Darnassus 56.46,20.41 < 5 |only if walking
talk Argent Guard Manados##4784
|tip Inside the building.
turnin Twilight Falls##1199 |goto Darnassus 55.23,24.00
|only if guideflag("BFDflag")
step
talk Dawnwatcher Selgorm##4783
|tip Inside the building.
turnin Blackfathom Villainy##1200 |goto Darnassus 56.17,24.38
|only if guideflag("BFDflag")
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Sildanair##4089 |only if Warrior
talk Denatharion##4218 |only if Druid
talk Jandria##4091 |only if Priest
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter
trainer Sildanair##4089 |goto Darnassus/0 61.78,42.28 |only if Warrior
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80 |only if Priest
|tip In the basement of the tree. |only if Rogue
|tip Train your spells.
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Ashenvale (29-30)',
  {
    image = ZGV.IMAGESDIR .. 'Ashenvale',
    condition_suggested = function()
      return level >= 29 and level <= 30 and not completedq(1039)
    end,
    next = 'Leveling Guides\\Wetlands (30-31)',
    hardcore = true,
  },
  [[
step
talk Shindrell Swiftfire##3845
accept Kayneth Stillwind##4581 |goto Ashenvale 34.67,48.84
step
talk Fahran Silentblade##3969
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Fahran Silentblade##3969 |goto Ashenvale 36.49,49.46 |q 1024 |future
|only if Rogue
step
talk Raene Wolfrunner##3691
|tip Inside the building.
accept Raene's Cleansing##1024 |goto Ashenvale 36.62,49.58
|tip This quest is grey, but the many followups will be yellow/green, and give a lot of xp.
step
talk Sentinel Melyria Frostshadow##3880
accept The Howling Vale##1022 |goto Ashenvale 22.23,52.98
step
talk Illiyana##3901
accept Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 21.73,53.35
step
Enter the building |goto Ashenvale 37.19,51.86 < 10 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
accept Fallen Sky Lake##1035 |goto Ashenvale 37.37,51.79
|tip This requires a questline that is completed in the Ashenvale (22-23) guide.
step
Follow the road to this path |goto Ashenvale 50.22,56.23 < 40 |only if walking
Continue following the path |goto Ashenvale 51.80,45.73 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1024 |goto Ashenvale 53.54,46.29
accept Raene's Cleansing##1026 |goto Ashenvale 53.54,46.29
step
Follow the path around the mountain |goto Ashenvale 50.61,46.04 < 50 |only if walking and not subzone("Nightsong Woods")
Follow the path through the forest |goto Ashenvale 53.06,54.53 < 40 |only if walking and not subzone("Nightsong Woods")
Continue following the path through the forest |goto Ashenvale 58.01,56.00 < 40 |only if walking and not subzone("Nightsong Woods")
Kill Ancient enemies around this area
|tip They look like walking trees.
collect Wooden Key##5475 |goto Ashenvale 61.60,43.79 |q 1026
You can find more around: |notinsticky
[58.22,41.41]
[60.11,38.71]
[57.67,32.39]
[54.97,34.00]
step
Follow the path up |goto Ashenvale 54.56,34.55 < 20 |only if walking
click Worn Chest##19022
collect Iron Shaft##5464 |q 1026/1 |goto Ashenvale 54.41,35.39
step
Follow the path up |goto Ashenvale 54.17,32.34 < 20 |only if walking and not subzone("The Howling Vale")
Run through the tunnel to enter the Howling Vale |goto Ashenvale 52.92,37.64 < 15 |only if walking and not subzone("The Howling Vale")
|tip Watch for patrols and respawns while in the area. |only if hardcore
click Tome of Mel'Thandris##19027
View the Tome of Mel'Thandris |q 1022/1 |goto Ashenvale 50.49,39.13
step
Run through the tunnel to leave the Howling Vale |goto Ashenvale 51.33,38.20 < 15 |only if walking and subzone("The Howling Vale")
Follow the path up |goto Ashenvale 63.56,43.87 < 30 |only if walking and not subzone("Xavian")
Follow the path through the forest |goto Ashenvale 67.32,49.70 < 40 |only if walking and not subzone("Xavian")
talk Anilia##3920
turnin Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 78.32,44.82
accept The Branch of Cenarius##1031 |goto Ashenvale 78.32,44.82
step
kill Geltharis##4619
|tip He is level 32, so be careful.  If you don't feel comfortable, or don't have someone to help you, skip the quest and grind more later to make up for it. |only if hardcore
|tip If you skip it, abandon the quest "The Brand of Cenarius".
|tip Xavian Hellcallers are ranged attackers that deal heavy damage and may aggro from quite a range. |only if hardcore
|tip Enemies tend to be close together in this area. |only if hardcore
collect Branch of Cenarius##5461 |q 1031/1 |goto Ashenvale 78.00,42.42
step
talk Kayneth Stillwind##3848
turnin Kayneth Stillwind##4581 |goto Ashenvale 85.24,44.71
accept Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
talk Sentinel Melyria Frostshadow##3880
turnin The Howling Vale##1022 |goto Ashenvale 22.23,52.98
accept Velinde Starsong##1037 |goto Ashenvale 22.23,52.98
step
talk Illiyana##3901
turnin The Branch of Cenarius##1031 |goto Ashenvale 21.73,53.35
accept Satyr Slaying!##1032 |goto Ashenvale 21.73,53.35
step
Follow the road to this path |goto Ashenvale 50.22,56.23 < 40 |only if walking
Continue following the path |goto Ashenvale 51.80,45.73 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1026 |goto Ashenvale 53.54,46.29
accept Raene's Cleansing##1027 |goto Ashenvale 53.54,46.29
step
Follow the path back to the road |goto Ashenvale 50.61,46.04 < 50 |only if walking and not subzone("Nightsong Woods")
kill Shadethicket Oracle##3931
collect Fallen Moonstone##5508 |q 1035/1 |goto Ashenvale 66.68,82.19
step
kill Rotting Slime##3928+
click Rusty Chest+
|tip They sometimes appear on the ground after you kill the Rotting Slimes.
collect Iron Pommel##5519 |q 1027/1 |goto Ashenvale 70.95,74.87
You can find more around: |notinsticky
[74.24,76.26]
[73.50,73.46]
[74.39,69.78]
step
click Bottle of Disease
|tip This camp is surrounded by stealthed enemies.
|tip Kill them before running into the camp.
|tip There are stealthed alliance guards in the area as well.
|tip If you find one, you can drag enemies to them and they will help you fight.
collect Bottle of Disease##5440 |q 1011/1 |goto Ashenvale 75.29,72.22
step
Follow the road back to Forest Song |goto Ashenvale 73.90,66.81 < 40 |only if walking and subzone("The Dor'Danil Barrow Den")
talk Kayneth Stillwind##3848
turnin Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
talk Jarrodenus##12577
|tip This step is necessary to access some flight paths to Ratchet.
|tip Stick to the road, and don't worry about the patrolling orc outrider. They do not aggro.
fpath Talrendis Point |goto Azshara 11.90,77.59
stickystart "Collect_Satyr_Horns"
step
click Circle of Imprisonment##19901
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies tend to pull together in this area, so be careful. |only if hardcore
Free the Highborne Soul in Satyrnaar |q 1140/2 |goto Ashenvale 81.60,48.58
step
Follow the path up out of Satyrnaar |goto Ashenvale 80.02,48.17 < 20 |only if walking and not subzone("Night Run")
Cross the river |goto Ashenvale 77.52,46.23 < 40 |only if walking and not subzone("Night Run")
Follow the path |goto Ashenvale 68.75,52.75 < 50 |only if walking
click Circle of Imprisonment##19901
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies tend to pull together in this area, so be careful. |only if hardcore
Free the Highborne Soul in Night Run |q 1140/1 |goto Ashenvale 66.63,56.98
step
label "Collect_Satyr_Horns"
Kill enemies around this area
|tip They look like satyrs.
|tip Some of them are stealthed, so be careful.
|tip Remember to use Banish if you get overwhelmed |only if Warlock
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect 16 Satyr Horns##5481 |q 1032/1 |goto Ashenvale 66.73,54.98
step
Jump down while avoiding getting stuck on a tree and follow the road |goto Ashenvale 63.92,52.01 < 50 |only if walking and subzone("Night Run")
Follow the path through the forest |goto Ashenvale 60.84,55.89 < 40 |only if walking
Continue following the path through the forest |goto Ashenvale 57.36,56.02 < 40 |only if walking
Continue following the path through the forest |goto Ashenvale 51.07,52.24 < 40 |only if walking
Follow the path to the moonwell |goto Ashenvale 51.62,45.58 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1027 |goto Ashenvale 53.54,46.21
step
Watch the dialogue
talk Shael'dryn##3916
|tip She walks around this area.
accept Raene's Cleansing##1028 |goto Ashenvale 53.54,46.21
step
Follow the path around the mountain |goto Ashenvale 50.68,46.06 < 40 |only if walking
Follow the path |goto Ashenvale 52.99,54.46 < 40 |only if walking
Follow the winding dirt path up to the shrine |goto Ashenvale 56.04,51.28 < 20 |only if walking
Continue up the winding dirt path |goto Ashenvale/0 56.92,52.15 < 10 |only if walking
Continue following the path |goto Ashenvale/0 57.11,50.35 < 10 |only if walking
click Hidden Shrine##19024
|tip At the end of the path.
turnin Raene's Cleansing##1028 |goto Ashenvale/0 56.38,49.23
accept Raene's Cleansing##1055 |goto Ashenvale/0 56.38,49.23
step
Jump down and follow the path through the forest |goto Ashenvale/0 52.65,54.46 < 40 |only if walking
Follow the path around the mountain to the moonwell |goto Ashenvale/0 51.62,45.58 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1055 |goto Ashenvale/0 53.54,46.21
accept Raene's Cleansing##1029 |goto Ashenvale/0 53.54,46.21
step
Follow the road back to Astranaar |goto Ashenvale/0 49.28,57.13 < 50 |only if walking
Enter the building |goto Ashenvale/0 37.19,51.87 < 10 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin Fallen Sky Lake##1035 |goto Ashenvale/0 37.36,51.79
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Raene's Cleansing##1029 |goto Ashenvale/0 36.62,49.58
accept Raene's Cleansing##1030 |goto Ashenvale/0 36.62,49.58
step
Follow the path down |goto Ashenvale/0 51.21,58.32 < 30 |only if walking
use Dartol's Rod of Transformation##5462
|tip Use it at this location.
Gain Furbolg Form |havebuff Furbolg Form##6405 |goto Ashenvale/0 54.00,72.61 |q 1030
step
Follow the path up |goto Ashenvale/0 53.85,73.90 < 20 |only if walking
talk Krolg##3897
turnin Raene's Cleansing##1030 |goto Ashenvale/0 50.85,75.07
accept Raene's Cleansing##1045 |goto Ashenvale/0 50.85,75.07
stickystart "Kill_Bloodtooth_Guards"
step
Follow the path up |goto Ashenvale/0 55.35,75.83 < 40 |only if walking
kill Ran Bloodtooth##3696 |q 1045/1 |goto Ashenvale/0 54.74,79.61
|tip Clear enemies carefully around here. |only if hardcore
|tip Enemies tend to pull together. |only if hardcore
|tip Destroy totems as they are summoned. |only if hardcore
collect Ran Bloodtooth's Skull##5388 |goto Ashenvale/0 54.74,79.61 |q 1046 |future
step
label "Kill_Bloodtooth_Guards"
kill 4 Bloodtooth Guard##3932 |q 1045/2 |goto Ashenvale/0 54.56,79.12
|tip Clear enemies carefully around here. |only if hardcore |notinsticky
|tip Enemies tend to pull together. |only if hardcore |notinsticky
|tip Destroy totems as they are summoned. |only if hardcore |notinsticky
step
use Dartol's Rod of Transformation##5462
|tip Use it at this location.
Gain Furbolg Form |havebuff Furbolg Form##6405 |goto Ashenvale/0 53.67,74.00 |q 1045
step
talk Krolg##3897
turnin Raene's Cleansing##1045 |goto Ashenvale/0 50.85,75.07
accept Raene's Cleansing##1046 |goto Ashenvale/0 50.85,75.07
step
_NOTE:_
Make a Choice
|tip If you turn in the "Raene's Cleansing" quest in the next step, you will get 3,050 xp, but you will lose Dartol's Rod of Transformation.
|tip This item allows you to transform into a furbolg for 3 minutes, and the item lasts forever in your bags.
|tip If you want to keep the item, abandon the "Raene's Cleansing" quest now.
|tip If you don't care about the transformation item, and want the xp instead, turn in the quest in the next guide step.
Click Here to Continue |confirm |q 1046
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Raene's Cleansing##1046 |goto Ashenvale/0 36.62,49.58
step
talk Innkeeper Kimlya##6738
|tip Inside the building.
home Astranaar |goto Ashenvale/0 36.99,49.22
step
talk Illiyana##3901
turnin Satyr Slaying!##1032 |goto Ashenvale/0 21.73,53.34
step
Follow the path up and follow the road to Maestra's Post |goto Ashenvale/0 25.37,48.35 < 30 |only if walking
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##1140 |goto Ashenvale/0 26.19,38.70
step
cast Teleport: Moonglade##18960
trainer Loganaar##12042 |goto Moonglade/0 52.50,40.54 |q 1037
|tip Go to Moonglade and train your spells, then hearth once it is off cooldown.
|only if Druid and C_Container.GetItemCooldown(6948) <= 100
step
talk Thyn'tel Bladeweaver##8026
turnin Velinde Starsong##1037 |goto Darnassus 61.78,39.19
accept Velinde's Effects##1038 |goto Darnassus 61.78,39.19
step
Run up the ramp |goto Darnassus 56.05,79.18 < 10 |only if walking
Cross the bridge |goto Darnassus 57.63,77.23 < 7 |only if walking
click Velinde's Locker
|tip Upstairs inside the building.
collect Velinde's Journal##5520 |q 1038/1 |goto Darnassus 62.29,83.24
step
talk Thyn'tel Bladeweaver##8026
turnin Velinde's Effects##1038 |goto Darnassus 61.78,39.19
accept The Barrens Port##1039 |goto Darnassus 61.78,39.19
step
Run up the ramp |goto Darnassus 67.55,61.15 < 10 |only if walking
talk Merelyssa##4171
|tip Inside the building.
buy Broadsword##2520 |n
|tip If you can afford it.
|tip You will use it when you reach level 31.
|tip If you have better, skip this step.
Visit the Vendor |vendor Geoffrey Hartwell##4600 |goto Darnassus 65.36,59.74 |q 306
|only if Rogue and itemcount(2520) == 0
step
talk Kyrai##3561
|tip Upstairs inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 306
|only if Rogue
step
Run up the stairs and enter the building |goto Ironforge 23.09,17.43 < 7 |walk
talk Harick Boulderdrum##5133
|tip Downstairs inside the building.
buy Pestilent Wand##5347 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Harick Boulderdrum##5133 |goto Ironforge 23.13,15.94 |q 306
|only if Priest and itemcount(5347) == 0
step
Enter the building |goto Darnassus 39.04,76.75 < 15 |walk
talk Elissa Dumas##4165
|tip Inside the building.
learnspell Teleport: Darnassus##3565 |goto Darnassus 40.60,82.13
|only if Mage
]]
)
