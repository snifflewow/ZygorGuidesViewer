local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Felwood (52-52)',
  {
    image = ZGV.IMAGESDIR .. 'Felwood',
    condition_suggested = function()
      return level == 52 and not completedq(8462)
    end,
    next = 'Leveling Guides\\Winterspring (52-52)',
    hardcore = true,
  },
  [[
step
talk Arathandris Silversky##9528
|tip She walks around this area.
accept Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
talk Greta Mosshoof##10922
|tip She walks around this area.
accept Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
Enter the building |goto Felwood 51.27,81.69 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
accept The Corruption of the Jadefire##4421 |goto Felwood 51.35,81.51
step
use the Package of Empty Ooze Containers##11912
collect 6 Empty Cursed Ooze Jar##11914 |q 4512 |goto Felwood 41.22,71.29
collect 6 Empty Tainted Ooze Jar##11948 |q 4512 |goto Felwood 41.22,71.29
step
kill Cursed Ooze##7086+
use the Empty Cursed Ooze Jar##11914+
|tip Use them on their corpses.
collect 6 Filled Cursed Ooze Jar##11947 |q 4512/1 |goto Felwood 41.22,71.29
You can find more around: |notinsticky
[38.97,72.26]
[40.06,67.15]
[41.93,67.38]
stickystart "Kill_Jadefire_Felsworns"
stickystart "Kill_Jadefire_Shadowstalkers"
stickystart "Kill_Jadefire_Rogues"
step
Follow the path |goto Felwood 36.85,66.92 < 30 |only if walking
kill Xavathras##9454 |q 4421/4 |goto Felwood 32.24,67.10
|tip Watch for stealthed enemies in the area.		|only if hardcore
|tip Enemies have abnormal aggro radius around here.	|only if hardcore
step
label "Kill_Jadefire_Felsworns"
kill 11 Jadefire Felsworn##7109 |q 4421/1 |goto Felwood 32.90,66.62
|tip Watch for stealthed enemies in the area.		|only if hardcore |notinsticky
|tip Enemies have abnormal aggro radius around here.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.36,67.64]
step
label "Kill_Jadefire_Shadowstalkers"
kill 9 Jadefire Shadowstalker##7110 |q 4421/2 |goto Felwood 32.90,66.62
|tip They are stealthed around this area.
|tip Enemies have abnormal aggro radius around here.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.36,67.64]
step
label "Kill_Jadefire_Rogues"
kill 9 Jadefire Rogue##7106 |q 4421/3 |goto Felwood 32.90,66.62
|tip Watch for stealthed enemies in the area.		|only if hardcore |notinsticky
|tip Enemies have abnormal aggro radius around here.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.36,67.64]
step
Leave the Ruins of Constellas and follow the road north |goto Felwood 42.64,65.46 < 50 |only if walking and subzone("Ruins of Constellas")
kill Tainted Ooze##7092+
use the Empty Tainted Ooze Jar##11948+
|tip Use them on their corpses.
collect 6 Filled Tainted Ooze Jar##11949 |q 4512/2 |goto Felwood 40.76,59.25
You can find more around [40.28,55.59]
stickystart "Kill_Jaedenar_Guardians"
stickystart "Kill_Jaedenar_Adepts"
stickystart "Kill_Jaedenar_Cultists"
step
kill 4 Jaedenar Hound##7125 |q 5155/1 |goto Felwood 38.87,58.49
|tip You can find more in the caves nearby in this area.
|tip Watch for patrols and respawns while in the area.		|only if hardcore
|tip Watch for Jaedenar Adepts as they are ranged attackers.	|only if hardcore
|tip Enemies may run away in fear when at low health.		|only if hardcore
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Guardians"
kill 4 Jaedenar Guardian##7113 |q 5155/2 |goto Felwood 38.87,58.49
|tip You can find more in the caves nearby in this area. |notinsticky
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
|tip Watch for Jaedenar Adepts as they are ranged attackers.	|only if hardcore |notinsticky
|tip Enemies may run away in fear when at low health.		|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Adepts"
kill 6 Jaedenar Adept##7115 |q 5155/3 |goto Felwood 38.87,58.49
|tip You can find more in the caves nearby in this area. |notinsticky
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
|tip Enemies may run away in fear when at low health.		|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Cultists"
kill 6 Jaedenar Cultist##7112 |q 5155/4 |goto Felwood 38.87,58.49
|tip You can find more in the caves nearby in this area. |notinsticky
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
|tip Watch for Jaedenar Adepts as they are ranged attackers.	|only if hardcore |notinsticky
|tip Enemies may run away in fear when at low health.		|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
Leave Jaedenar and follow the road south |goto Felwood 41.37,57.71 < 50 |only if walking and subzone("Jaedenar")
talk Greta Mosshoof##10922
|tip She walks around this area.
turnin Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
accept Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
Enter the building |goto Felwood 51.27,81.69 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin The Corruption of the Jadefire##4421 |goto Felwood 51.35,81.51
accept Further Corruption##4906 |goto Felwood 51.35,81.51
step
talk Taronn Redfeather##10921
|tip Inside the building.
accept Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
talk Grazle##11554
accept Timbermaw Ally##8460 |goto Felwood 50.93,85.01
stickystart "Kill_Deadwood_Pathfinders"
stickystart "Kill_Deadwood_Gardeners"
step
Follow the path |goto Felwood 49.02,89.29 < 50 |only if walking and not subzone("Deadwood Village")
kill 6 Deadwood Warrior##7153 |q 8460/1 |goto Felwood 48.32,92.99
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore
|tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore
|tip Deadwood Pathfinders are ranged attackers.					|only if hardcore
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
label "Kill_Deadwood_Pathfinders"
kill 6 Deadwood Pathfinder##7155 |q 8460/2 |goto Felwood 48.32,92.99
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore |notinsticky
|tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore |notinsticky
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
label "Kill_Deadwood_Gardeners"
kill 6 Deadwood Gardener##7154 |q 8460/3 |goto Felwood 48.32,92.99
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore |notinsticky
|tip Deadwood Pathfinders are ranged attackers.				|only if hardcore |notinsticky
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
Leave Deadwood Village |goto Felwood 49.56,88.70 < 50 |only if walking and subzone("Deadwood Village")
talk Grazle##11554
turnin Timbermaw Ally##8460 |goto Felwood 50.93,85.02
accept Speak to Nafien##8462 |goto Felwood 50.93,85.02
step
Kill Deadwood enemies around this area
Reach Unfriendly Reputation with the Timbermaw Hold Faction |complete rep('Timbermaw Hold') >= Unfriendly |goto Felwood 48.32,92.99
|tip You are about to go through a long tunnel soon, full of level 52-54 enemies.
|tip If you are not at least Unfriendly with this faction, you will be attacked.
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore
|tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore
|tip Deadwood Pathfinders are ranged attackers.				|only if hardcore
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
Leave Deadwood Village and follow the road north |goto Felwood 51.01,84.64 < 50 |only if walking and subzone("Deadwood Village")
Follow the path into Jaedenar |goto Felwood 38.37,59.85 < 30 |walk
use the Empty Canteen##12922
|tip Watch for patrols and respawns while in the area.		|only if hardcore
|tip Watch for Jaedenar Adepts as they are ranged attackers.	|only if hardcore
|tip Enemies may run away in fear when at low health.		|only if hardcore
collect Corrupt Moonwell Water##12907 |q 5157/1 |goto Felwood 35.20,59.87
stickystart "Kill_Entropic_Beasts"
stickystart "Kill_Entropic_Horrors"
step
Leave Jaedenar and follow the road north |goto Felwood 41.37,57.71 < 50 |only if walking and subzone("Jaedenar")
Explore the Craters in Shatter Scar Vale |q 5156/3 |goto Felwood 41.54,42.98
|tip Be careful to avoid the elite Infernal Sentries around this area.
step
label "Kill_Entropic_Beasts"
kill 2 Entropic Beast##9878 |q 5156/1 |goto Felwood 41.36,41.19
|tip Be careful to avoid the elite Infernal Sentries around this area. |notinsticky
You can find more around [43.63,40.55]
step
label "Kill_Entropic_Horrors"
kill 2 Entropic Horror##9879 |q 5156/2 |goto Felwood 41.36,41.19
|tip Be careful to avoid the elite Infernal Sentries around this area. |notinsticky
You can find more around [43.63,40.55]
step
Follow the path up into Jadefire Run |goto Felwood 43.07,21.32 < 30 |only if walking and not subzone("Jadefire Run")
Follow the path |goto Felwood 39.79,20.32 < 30 |only if walking
kill Xavaric##10648 |q 4906/4 |goto Felwood 39.07,22.35
|tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore
|tip He us level 55 with 2 enemies near him.  Try to pull him with only 1 extra enemy.  If you're not confident you can kill him, skip the quest.
collect Flute of Xavaric##11668 |goto Felwood 39.07,22.35 |q 939 |future
step
use the Flute of Xavaric##11668
accept Flute of Xavaric##939
stickystart "Kill_Jadefire_Hellcallers"
stickystart "Kill_Jadefire_Betrayers"
stickystart "Kill_Jadefire_Tricksters"
step
Kill Jadefire enemies around this area
|tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore
collect 5 Jadefire Felbind##11674 |q 939/1 |goto Felwood 40.73,19.72
You can find more around: |notinsticky
[42.87,15.21]
[39.10,21.69]
step
label "Kill_Jadefire_Hellcallers"
kill 8 Jadefire Hellcaller##7111 |q 4906/1 |goto Felwood 40.73,19.72
|tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore |notinsticky
|tip They share spawn points with the others, so kill those also, if you can't find any. |notinsticky
You can find more around: |notinsticky
[42.87,15.21]
[39.10,21.69]
step
label "Kill_Jadefire_Betrayers"
kill 8 Jadefire Betrayer##7108 |q 4906/2 |goto Felwood 40.73,19.72
|tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore |notinsticky
|tip They share spawn points with the others, so kill those also, if you can't find any. |notinsticky
You can find more around: |notinsticky
[42.87,15.21]
step
label "Kill_Jadefire_Tricksters"
kill 8 Jadefire Trickster##7107 |q 4906/3 |goto Felwood 40.73,19.72
|tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore |notinsticky
|tip They share spawn points with the others, so kill those also, if you can't find any. |notinsticky
You can find more around: |notinsticky
[42.87,15.21]
step
Kill Warpwood enemies around this area
|tip Inside and outside the cave.
|tip Watch for patrols and respawns while here.	|only if hardcore
collect 15 Blood Amber##11503 |q 4101/1 |goto Felwood 55.78,16.85
step
Leave the cave |goto Felwood 55.88,17.15 < 40 |walk |only if subzone("Irontree Cavern")
Follow the road |goto Felwood 53.91,12.80 < 50 |only if walking and (subzone("Irontree Cavern") or subzone("Irontree Woods"))
Follow the path to Talonbranch Glade |goto Felwood 61.80,16.20 < 70 |only if walking and not subzone("Talonbranch Glade")
talk Mishellena##12578
fpath Talonbranch Glade |goto Felwood 62.49,24.24
step
Follow the road up |goto Felwood 64.61,14.86 < 30 |only if walking
talk Nafien##15395
turnin Speak to Nafien##8462 |goto Felwood 64.77,8.13
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Felwood Part 1 (52-53)',
  {
    image = ZGV.IMAGESDIR .. 'Felwood',
    condition_suggested = function()
      return level >= 52 and level <= 53 and not completedq(5882)
    end,
    next = 'Leveling Guides\\Feralas (53-53)',
    hardcore = true,
  },
  [[
step
_NOTE:_
Tame a Felpaw Ravager
|tip Use your "Tame Beast" ability on a Felpaw Ravager.
|tip They look like grey wolves around this area.
Learn the "Bite 7" Pet Ability
|tip Kill enemies around this area until you see a message in your chat saying you learned "Bite 7".
|tip You will teach "Bite 7" to your permanent pet soon.
Click Here to Continue |confirm |goto Felwood 62.21,19.91 |q 978
|only if Hunter
step
talk Azzleby##11119
|tip Abandon your temporary pet and get your permanent pet from the stable.
|tip Teach "Bite 7" to your permanent pet.
Click Here to Continue |confirm |goto Winterspring 60.39,37.92 |q 978
|only if Hunter
step
talk Arathandris Silversky##9528
|tip She walks around this area.
turnin Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
talk Arathandris Silversky##9528
|tip She walks around this area.
Select _"I need a Cenarion beacon."_
collect Cenarion Beacon##11511 |goto Felwood 54.15,86.83
step
Follow the road south to Emerald Sanctuary |goto Felwood 60.92,15.98 < 50 |only if walking and subzone("Talonbranch Glade")
talk Greta Mosshoof##10922
|tip She walks around this area.
turnin Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
accept Seeking Spiritual Aid##5158 |goto Felwood 51.21,82.11
step
Enter the building |goto Felwood 51.26,81.70 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Flute of Xavaric##939 |goto Felwood 51.35,81.51
accept Felbound Ancients##4441 |goto Felwood 51.35,81.51
turnin Further Corruption##4906 |goto Felwood 51.35,81.51
step
talk Taronn Redfeather##10921
|tip Inside the building.
turnin Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
Follow the path |goto Felwood 49.02,89.29 < 50 |only if walking and not subzone("Deadwood Village")
Kill enemies around this area
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore
|tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore
|tip Deadwood Pathfinders are ranged attackers.					|only if hardcore
collect 6 Corrupted Soul Shard##11515 |goto Felwood 48.32,92.99
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 53.
|tip Grinding a bit here will reduce the amount you have to grind all at once later.
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore
|tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore
|tip Deadwood Pathfinders are ranged attackers.					|only if hardcore
ding 53 |goto Felwood 48.32,92.99
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
talk Grazle##11554
|tip Each turnin is 5 feathers, you should have enough to do multiple turnins.
accept Feathers for Grazle##8466 |goto Felwood 51.00,85.00 |instant
|only if itemcount(21377) >= 5
step
Leave Deadwood Village |goto Felwood 49.56,88.70 < 50 |only if walking and subzone("Deadwood Village")
talk Arathandris Silversky##9528
|tip She walks around this area.
|tip This will award you with Cenarion Plant Salve.
|tip You can use these to cleanse 'Corrupted Songflower' around the zone for a large buff.
|tip It is heavily recommended to cleanse one anytime you see it.
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Felwood Part 2 (55-55)',
  {
    image = ZGV.IMAGESDIR .. 'Felwood',
    condition_suggested = function()
      return level == 55 and not completedq(8465)
    end,
    next = 'Leveling Guides\\Winterspring (55-55)',
    hardcore = true,
  },
  [[
step
talk Greta Mosshoof##10922
turnin Cleansed Water Returns to Felwood##5159 |goto Felwood 51.21,82.11
accept Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
Enter the building |goto Felwood 51.26,81.69 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Felbound Ancients##4441 |goto Felwood 51.35,81.51
step
Watch the dialogue
talk Eridan Bluewind##9116
|tip Inside the building.
accept Purified!##4442 |goto Felwood 51.35,81.51
step
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Purified!##4442 |goto Felwood 51.35,81.51
step
_Destroy These Items:_
|tip They are no longer needed.
trash Flute of the Ancients##11445 |goto Felwood 38.40,59.74
stickystart "Collect_Blood_Red_Key"
stickystart "Accept_A_Strange_Red_Key"
stickystart "Arko'narin_escort_start"
step
Follow the road to Jaedenar and follow path |goto Felwood 38.40,59.74 < 30 |only if walking and not subzone("Shadow Hold")
Enter the cave |goto Felwood 35.41,58.69 < 10 |walk |only if not subzone("Shadow Hold")
|tip The Shadow Hold is dangerous. |only if hardcore
|tip Keep an eye out for patrolling enemies as well as enemy casters while inside. |only if hardcore
|tip Clear enemies
click Brazier of Pain##176158
|tip Downstairs inside the cave, on the top level.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Extinguish the Brazier of Pain |q 5165/1 |goto Felwood 36.27,56.29
step
click Brazier of Hatred##176161
|tip Downstairs inside the cave, on the top level.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Extinguish the Brazier of Hatred |q 5165/4 |goto Felwood 36.48,55.18
step
label "Collect_Blood_Red_Key"
Kill enemies around this area
|tip All around inside the cave, on both levels.
|tip Once you get this item, you will accept a quest from it that you will turn in on the top level of the cave.
|tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
collect Blood Red Key##13140 |goto Felwood 36.29,55.96 |q 5202 |future
step
label "Accept_A_Strange_Red_Key"
use the Blood Red Key##13140
accept A Strange Red Key##5202
|only if itemcount(13140) > 0
step
label "Arko'narin_escort_start"
talk Captured Arko'narin##11016
|tip Inside a yellow wooden cage.
|tip Downstairs inside the cave, on the top level.
turnin A Strange Red Key##5202 |goto Felwood 36.21,55.50
|only if itemcount(13140) > 0
step
talk Captured Arko'narin##11016
|tip Inside a yellow wooden cage.
|tip This will start an escort quest, follow her and activate braziers as she walks.
accept Rescue From Jaedenar##5203 |goto Felwood 36.21,55.50
step
Run around the hole in the floor and follow the path down |goto Felwood 38.25,54.06 < 10 |c |q 5165
step
click Brazier of Suffering##176160
|tip Downstairs inside the cave, on the bottom level.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Extinguish the Brazier of Suffering |q 5165/3 |goto Felwood 36.73,53.26
step
click Brazier of Malice
|tip Downstairs inside the cave, on the bottom level.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
|tip The escort quest will have 2 Felguards spawn behind you after clicking this brazier.
|tip Let Arko'narin go first to get aggro.
Extinguish the Brazier of Malice |q 5165/2 |goto Felwood 37.68,52.69
step
Protect Arko'narin out of Shadow Hold |q 5203 |goto Felwood 35.41,58.69
|tip As you exit the cave, you will have to fight an elite.
|tip Let Arko'narin attack him first and build up a substantial threat lead so she can tank for you.
|tip It's okay to just stand still for a moment while they fight to make sure you don't pull aggro.
|tip If you don't feel confident, run away and skip this quest. |only if hardcore
step
Follow the path up |goto Felwood 35.94,56.76 < 10 |walk
Leave the cave |complete not subzone("Shadow Hold") |goto Felwood 35.42,58.81 |q 5165
step
Leave Jaedenar and follow the road north |goto Felwood 38.40,59.74 < 30 |only if walking and subzone("Jaedenar")
Follow the road |goto Felwood 64.18,15.20 < 30 |only if walking
talk Nafien##15395
accept Deadwood of the North##8461 |goto Felwood 64.77,8.13
stickystart "Kill_Deadwood_Avengers"
stickystart "Kill_Deadwood_Shamans"
step
kill 6 Deadwood Den Watcher##7156 |q 8461/1 |goto Felwood 63.08,8.82
|tip They will call for help when at low health so pull them away from other Deadwood enemies.	|only if hardcore
|tip Be careful pulling enemies near buildings.							|only if hardcore
|tip Watch for respawns while in the area.							|only if hardcore
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
label "Kill_Deadwood_Avengers"
kill 6 Deadwood Avenger##7157 |q 8461/2 |goto Felwood 63.08,8.82
|tip Be careful pulling enemies near buildings.	|only if hardcore |notinsticky
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
label "Kill_Deadwood_Shamans"
kill 6 Deadwood Shaman##7158 |q 8461/3 |goto Felwood 63.08,8.82
|tip Be careful pulling enemies near buildings.	|only if hardcore |notinsticky
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
Follow the road |goto Felwood 64.18,15.20 < 30 |only if walking
talk Nafien##15395
|tip You may have Deadwood Headdress Feathers from killing Deadwood enemies nearby.
|tip Turn in any feathers you have with the "Feathers for Nafien" repeatable quest.
turnin Deadwood of the North##8461 |goto Felwood 64.77,8.13
accept Speak to Salfa##8465 |goto Felwood 64.77,8.13
step
talk Nafien##15395
|tip Each turnin is 5 feathers, be sure to turn in all the feathers you farmed.
accept Feathers for Nafien##8467 |goto Felwood 64.77,8.13 |instant
|only if itemcount(21377) >= 5
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Felwood Part 3 (55-55)',
  {
    image = ZGV.IMAGESDIR .. 'Felwood',
    condition_suggested = function()
      return level == 55 and not completedq(4084)
    end,
    next = 'Leveling Guides\\Winterspring (55-56)',
    hardcore = true,
  },
  [[
step
Leave the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
talk Greta Mosshoof##10922
turnin Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
talk Jessir Moonbow##11019
turnin Rescue From Jaedenar##5203 |goto Felwood/0 51.35,82.01
step
Enter the building |goto Felwood 51.26,81.70 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Linken's Memory##3942 |goto Felwood 51.35,81.51
accept Silver Heart##4084 |goto Felwood 51.35,81.51
stickystart "Collect_Toxic_Horror_Droplets"
stickystart "Collect_Silvery_Claws"
step
Kill Irontree enemies around this area
|tip They look like walking trees with no leaves.
collect Irontree Heart##11173 |q 4084/2 |goto Felwood 51.57,20.70
step
label "Collect_Toxic_Horror_Droplets"
kill Toxic Horror##7132+
|tip All around this green lake.
collect 3 Toxic Horror Droplet##12822 |q 5086/1 |goto Felwood 49.42,23.51
step
label "Collect_Silvery_Claws"
Kill enemies around this area
|tip Only enemies that look like bears and wolves will drop the quest item.
collect 11 Silvery Claws##11172 |q 4084/1 |goto Felwood 53.31,27.49
You can find more around: |notinsticky
[56.10,22.91]
[57.71,18.14]
[61.26,15.96]
]]
)
