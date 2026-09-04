local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Redridge Mountains (18-20)',
  {
    image = ZGV.IMAGESDIR .. 'Redridge Mountains',
    condition_suggested = function()
      return level >= 18 and level <= 20 and not completedq(150)
    end,
    next = 'Leveling Guides\\Darkshore (20-22)',
    hardcore = true,
  },
  [[
step
Optional Route Change
|tip You can opt to do The Deadmines around level 20 instead of grinding.
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do The Deadmines, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run The Deadmines later |confirm DMflag
Click Here if you'd prefer to grind |confirm
step
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.55,52.64
|only if (Dwarf or Gnome or NightElf) and guideflag("DMflag")
step
talk Gryan Stoutmantle##234
accept The Defias Brotherhood##65 |goto Westfall 56.33,47.52
|only if (Dwarf or Gnome or NightElf) and guideflag("DMflag")
step
talk Ariena Stormfeather##931
fpath Lakeshire |goto Redridge Mountains 30.59,59.41
step
_NOTE:_
Save Cloth in Your Bank as You Level
|tip Once you are close to reaching level 60, you will need 240 of each type of cloth.
|tip As you level and collect Wool Cloth naturally from killing enemies while following the guide, make sure you deposit the cloth into a bank whenever you are near one.
|tip This will give you about 40,000 quick and easy xp to help you get to level 60 faster in the longer later levels.
Click Here to Continue |confirm
|only if level < 60
step
talk Marshal Marris##382
accept Blackrock Menace##20 |goto Redridge Mountains 33.51,48.97
|only if not hardcore
step
talk Foreman Oslow##341
accept The Lost Tools##125 |goto Redridge Mountains 32.14,48.64
step
talk Verner Osgood##415
accept The Price of Shoes##118 |goto Redridge Mountains 30.98,47.28
accept One Of Each##26846 |goto Redridge Mountains 30.98,47.28
step
Enter the building |goto Redridge Mountains 29.50,46.12 < 10 |walk
talk Magistrate Solomon##344
|tip Inside the building.
accept Messenger to Stormwind##120 |goto Redridge Mountains 29.99,44.45
step
talk Dockmaster Baren##381
accept Selling Fish##127 |goto Redridge Mountains 27.72,47.38
step
Enter the building |goto Redridge Mountains 26.61,46.37 < 10 |walk
talk Darcy##379
|tip She walks around this area inside the building.
accept A Free Lunch##129 |goto Redridge Mountains 26.75,44.35
step
talk Wiley the Black##266
|tip Upstairs inside the building.
turnin The Defias Brotherhood##65 |goto Redridge Mountains 26.48,45.35 |only if haveq(65) or completedq(65)
accept The Defias Brotherhood##132 |goto Redridge Mountains 26.48,45.35 |only if guideflag("DMflag")
step
Leave the building |goto Redridge Mountains 26.62,46.39 < 10 |walk |only if subzone("Lakeshire Inn")
Enter the building |goto Redridge Mountains 22.80,44.56 < 10 |walk
talk Chef Breanna##343
|tip Inside the building.
accept Redridge Goulash##92 |goto Redridge Mountains 22.68,43.84
step
talk Shawn##8965
accept Hilary's Necklace##3741 |goto Redridge Mountains 29.32,53.63
step
talk Lucius##6966
turnin Redridge Rendezvous##2281 |goto Redridge Mountains 28.06,52.04
accept Alther's Mill##2282 |goto Redridge Mountains 28.06,52.04
|only if Rogue
step
click Glinting Mud##154357
|tip It looks like a brown pile of dirt on the ground underwater.
|tip It spawns in random locations in the water, so you may need to search around.
collect Hilary's Necklace##10958 |q 3741/1 |goto Redridge Mountains 19.17,51.76
Also check around [Redridge Mountains 38.03,54.49]
stickystart "Collect_Spotted_Sunfish"
step
click Sunken Chest##32
|tip Underwater.
|tip Don't linger underwater for any reason. |only if hardcore
|tip If you get into combat, swim to the surface and kill the enemy, then try again. |only if hardcore
collect Oslow's Toolbox##1309 |q 125/1 |goto Redridge Mountains 41.53,54.67
stickystop "Collect_Spotted_Sunfish"
stickystart "Collect_Great_Gortusk_Snouts"
stickystart "Collect_Crisp_Spider_Meat"
step
talk Guard Parker##464
|tip He walks around this area.
turnin A Free Lunch##129 |goto Redridge Mountains 15.27,71.45
accept Visit the Herbalist##130 |goto Redridge Mountains 15.27,71.45
accept Encroaching Gnolls##244 |goto Redridge Mountains 15.27,71.46
step
label "Collect_Crisp_Spider_Meat"
kill Tarantula##442+
collect 5 Crisp Spider Meat##1081 |q 92/3 |goto Redridge Mountains 20.28,68.29
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [14.40,77.92]
step
talk Deputy Feldon##1070
turnin Encroaching Gnolls##244 |goto Redridge Mountains 30.74,60.00
accept Assessing the Threat##246 |goto Redridge Mountains 30.74,60.00
stickystop "Collect_Great_Gortusk_Snouts"
step
talk Hilary##8962
turnin Hilary's Necklace##3741 |goto Redridge Mountains 29.24,53.63
step
talk Lindsay Ashlock##791
|tip Buy enough arrows to fill your ammo bag, plus 4-6 extra stacks.
|tip You have a pretty long grind coming up soon.
Visit the Vendor |vendor Lindsay Ashlock##791 |goto Redridge Mountains 28.77,47.33 |q 89
|only if Hunter
step
talk Martie Jainrose##342
turnin Visit the Herbalist##130 |goto Redridge Mountains 21.86,46.33
accept Delivering Daffodils##131 |goto Redridge Mountains 21.86,46.33
step
Enter the building |goto Redridge Mountains 26.60,46.38 < 10 |walk
talk Darcy##379
|tip She walks around this area inside the building.
turnin Delivering Daffodils##131 |goto Redridge Mountains 26.75,44.34
step
Leave the building |goto Redridge Mountains 26.60,46.38 < 10 |walk |only if subzone("Lakeshire Inn")
Enter Alther's Mill |goto Redridge Mountains 45.84,37.31 < 70 |only if walking and not subzone("Alther's Mill")
click Practice Lockbox##178244+
|tip They look like small grey metal chests on the ground around this area.
|tip Inside the building.
Reach Skill 75 in Lockpicking |complete skill("Lockpicking") >=75 |goto Redridge Mountains 51.98,45.22 |q 2282
|only if Rogue
step
click Lucius's Lockbox
|tip Inside the building.
collect Token of Thievery##7871 |q 2282/1 |goto Redridge Mountains 52.04,44.69
|only if Rogue
step
talk Lucius##6966
turnin Alther's Mill##2282 |goto Redridge Mountains 28.06,52.04
|only if Rogue
step
label "Collect_Great_Gortusk_Snouts"
Leave the building |goto Redridge Mountains 26.60,46.38 < 10 |walk |only if subzone("Lakeshire Inn")
kill Great Goretusk##547+
|tip They look like boars.
|tip While in the western area, be careful to avoid Bellygrub. |notinsticky
|tip It's a level 24 boar that walks around the area. |notinsticky
collect 5 Great Goretusk Snout##2296 |q 92/1 |goto Redridge Mountains 15.82,52.97
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[Redridge Mountains 25.89,59.27]
[Redridge Mountains 29.57,75.26]
[Redridge Mountains 35.34,71.20]
stickystart "Kill_Redridge_Mongrels"
step
kill 6 Redridge Poacher##424 |q 246/2 |goto Redridge Mountains 31.47,81.01
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies near the camps tend to pull in groups. |only if hardcore
You can find more around [43.02,71.64]
step
label "Kill_Redridge_Mongrels"
kill 10 Redridge Mongrel##423 |q 246/1 |goto Redridge Mountains 31.47,81.01
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Enemies near the camps tend to pull in groups. |only if hardcore |notinsticky
You can find more around [43.02,71.64]
step
Kill enemies around this area
|tip You are about to have to kill a lot of level 21 enemies. |only if not hardcore
|tip Being a level higher will help. |only if not hardcore
|tip Grinding a bit here will also reduce the amount you have to grind later.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies near the camps tend to pull in groups. |only if hardcore
ding 19 |goto Redridge Mountains 31.47,81.01
You can find more around [43.02,71.64]
stickystart "Collect_Murloc_Fins"
step
label "Collect_Spotted_Sunfish"
Kill Murloc enemies around this area
|tip You can find more in the water nearby.
|tip Murloc Minor Tidecallers may heal themselves or allies when health is low. |only if hardcore
|tip The murlocs may run away in fear when at low health, so try to pull them away from the others to kill. |only if hardcore |notinsticky
|tip These enemies tend to pull in groups. |only if hardcore
collect 10 Spotted Sunfish##1467 |q 127/1 |goto Redridge Mountains 49.00,72.02
step
label "Collect_Murloc_Fins"
Kill Murloc enemies around this area
collect 8 Murloc Fin##1468 |goto Redridge Mountains 49.00,72.02 |q 150 |future
|tip Murloc Minor Tidecallers may heal themselves or allies when health is low. |only if hardcore |notinsticky
|tip The murlocs may run away in fear when at low health, so try to pull them away from the others to kill. |only if hardcore |notinsticky
|tip These enemies tend to pull in groups. |only if hardcore |notinsticky
|tip Be careful not to accidentally sell these to a vendor.
step
kill Dire Condor##428+
|tip They look like red birds.
|tip They share spawn points with the Black Dragon Whelps, so kill those too, if you can't find any condors.
collect 5 Tough Condor Meat##1080 |q 92/2 |goto Redridge Mountains 58.04,75.72
You can find more around [47.23,76.89]
step
Kill Blackrock enemies around this area
|tip They look like orcs.
collect 10 Battleworn Axe##3014 |q 20/1 |goto Redridge Mountains 71.90,79.39
You can find more around [76.41,74.07]
|only if not hardcore
step
Kill enemies around this area
|tip We are returning to Stormwind soon
|tip You really want to be level 20 to train new spells
|tip Enemies near the camps tend to pull in groups. |only if hardcore
|tip Alternatively, this can be a good time to run The Deadmines if you can find a group.
ding 19,16870  |goto Redridge Mountains 31.47,81.01
You can find more around [43.02,71.64]
|only if hardcore
step
Kill enemies around this area
|tip We are returning to Stormwind soon
|tip You really want to be level 20 to train new spells
|tip Enemies near the camps tend to pull in groups. |only if hardcore
|tip Alternatively, this can be a good time to run The Deadmines if you can find a group.
ding 19,15220  |goto Redridge Mountains 31.47,81.01
You can find more around [43.02,71.64]
|only if not hardcore
step
Enter the building |goto Redridge Mountains 22.81,44.55 < 10 |walk
talk Chef Breanna##343
|tip Inside the building.
turnin Redridge Goulash##92 |goto Redridge Mountains 22.68,43.83
step
talk Dockmaster Baren##381
turnin Selling Fish##127 |goto Redridge Mountains 27.72,47.38
step
talk Foreman Oslow##341
turnin The Lost Tools##125 |goto Redridge Mountains 32.14,48.64
accept The Everstill Bridge##89 |goto Redridge Mountains 32.14,48.64
step
talk Marshal Marris##382
turnin Blackrock Menace##20 |goto Redridge Mountains 33.51,48.97
|only if not hardcore
step
talk Deputy Feldon##1070
turnin Assessing the Threat##246 |goto Redridge Mountains 30.73,60.00
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##132 |goto Westfall 56.33,47.52
accept The Defias Brotherhood##135 |goto Westfall 56.33,47.52
|only if guideflag("DMflag")
step
Follow the path |goto Stormwind City 74.69,53.64 < 7 |walk
Enter the building |goto Stormwind City 77.14,58.04 < 7 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin The Defias Brotherhood##135 |goto Stormwind City 75.78,59.84
accept The Defias Brotherhood##141 |goto Stormwind City 75.78,59.84
|only if guideflag("DMflag")
step
Enter the building |goto Stormwind City 56.65,57.71 < 10 |walk
talk Marda Weller##1287
|tip Inside the building.
buy Maul##924 |n
|tip If you can afford it.
|tip You will use it when you reach level 21.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Warrior and itemcount(924) == 0
step
Enter the building |goto Stormwind City 56.65,57.71 < 10 |walk
talk Marda Weller##1287
|tip Inside the building.
buy Maul##924 |n
|tip If you can afford it.
|tip You will use it when you reach level 21.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Paladin and itemcount(924) == 0
step
Enter the building |goto Stormwind City 43.02,34.43 < 10 |walk
talk Duthorian Rall##6171
|tip Inside the building.
accept The Tome of Valor##1793 |goto Stormwind City 39.81,29.80 |instant
|only if Paladin
step
use the Tome of Valor##6776
accept The Tome of Valor##1649
|only if Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Valor##1649 |goto Stormwind City 39.81,29.80
accept The Tome of Valor##1650 |goto Stormwind City 39.81,29.80
|only if Paladin
step
Enter the building |goto Stormwind City 56.65,57.71 < 10 |walk
talk Marda Weller##1287
|tip Inside the building.
buy Longsword##923 |n
|tip If you can afford it.
|tip You will use it in your Main Hand when you reach level 21.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Rogue and itemcount(923) == 0
step
talk Marda Weller##1287
|tip Inside the building.
buy Kris##2209 |n
|tip If you can afford it.
|tip Use it in your Off Hand.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Rogue and itemcount(2209) == 0
step
Enter the building |goto Stormwind City 42.67,67.02 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Dusk Wand##5211 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Priest and itemcount(5211) == 0
step
Enter the building |goto Stormwind City 42.67,67.02 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Dusk Wand##5211 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Warlock and itemcount(5211) == 0
step
Enter the building |goto Stormwind City/0 57.03,64.51 < 7 |walk
talk Kyra Boucher##1275
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Kyra Boucher##1275 |goto Stormwind City/0 56.18,65.22 |q 4740 |future
|only if Mage
step
Enter the building |goto Stormwind City 42.67,67.02 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Dusk Wand##5211 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Mage and itemcount(5211) == 0
step
Run up the ramp and enter the building |goto Stormwind City 39.33,81.46 < 10 |only if walking
talk Larimaine Purdue##2485
|tip Upstairs inside the tower.
learnspell Teleport: Stormwind##3561 |goto Stormwind City 39.84,79.45
|only if Mage
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 4740 |future
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 4740 |future
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 4740 |future
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 4740 |future
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 4740 |future
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 4740 |future
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 4740 |future
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 4740 |future
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
Enter the building |goto Stormwind City 29.14,74.17 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
accept Devourer of Souls##1716 |goto Stormwind City 25.26,78.56
|only if Warlock
step
talk Spackle Thornberry##5520
|tip Downstairs inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 4740 |future
|only if Warlock
step
Enter the building |goto Stormwind City 63.62,22.82
talk Wilder Thistlenettle##656
|tip Inside the building.
accept Oh Brother...##167 |goto Stormwind City 65.45,21.21
accept Collecting Memories##168 |goto Stormwind City 65.45,21.21
|only if guideflag("DMflag")
step
talk Shoni the Shilent##6579
accept Underground Assault##2040 |goto Stormwind City 55.52,12.54
|only if guideflag("DMflag")
step
talk Argos Nightwhisper##4984
ding 20,50
accept The Corruption Abroad##3765 |goto Stormwind City 21.41,55.79
|tip This quest won't be available if you've accepted or completed Researching the Corruption.
|tip Abandon this quest if you have it.
|tip Train your class spells while in town.
step
talk General Marcus Jonathan##466
turnin Messenger to Stormwind##120 |goto Stormwind City 63.97,75.32
accept Messenger to Stormwind##121 |goto Stormwind City 63.97,75.32
step
Enter the building |goto Elwynn Forest 41.85,65.68 < 10 |walk
talk Smith Argus##514
|tip Inside the building.
turnin The Price of Shoes##118 |goto Elwynn Forest 41.70,65.55
accept Return to Verner##119 |goto Elwynn Forest 41.70,65.55
step
Prepare for The Deadmines
|tip It will be a good time to start The Deadmines soon.
|tip You should run it after finishing the Defias Brotherhood chain, roughly 30-45 minutes.
|tip Start looking for a group.
|confirm
|only if guideflag("DMflag")
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##141 |goto Westfall 56.33,47.52
accept The Defias Brotherhood##142 |goto Westfall 56.33,47.52
|only if guideflag("DMflag")
step
map Westfall
path loop on
path	45.59,65.05	43.36,58.68	41.42,49.74	37.96,44.77
path	32.28,43.11	36.95,43.09	37.97,36.80	43.89,28.63
path	44.45,25.85
Check For the Defias Messenger Along This Path
kill Defias Messenger##550
|tip He walks along the road between Jangolode Mine and Moonbrook.
|tip He walks into Gold Coast Quarry before traveling to either Jangolode Mine or Moonbrook.
|tip Run on the road while looking for him.
|tip He spawns around this location, so it may be easier to kill enemies around this area while waiting for him to either spawn or walk here.
collect A Mysterious Message##1381 |q 142/1
|only if guideflag("DMflag")
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##142 |goto Westfall 56.33,47.52
|only if guideflag("DMflag")
step
talk The Defias Traitor##467
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept The Defias Brotherhood##155 |goto Westfall 55.68,47.50 |noautoaccept
|only if guideflag("DMflag")
step
Watch the dialogue
|tip Follow the Defias Traitor and protect him as he walks.
|tip He eventually walks to this location.
Escort The Defias Traitor to Discover Where VanCleef is Hiding |q 155/1 |goto Westfall 42.54,71.69
|only if guideflag("DMflag")
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##155 |goto Westfall 56.33,47.52
accept The Defias Brotherhood##166 |goto Westfall 56.33,47.52
|only if guideflag("DMflag")
step
Enter the building |goto Westfall 56.51,47.41 < 5 |only if walking
talk Scout Riell##820
|tip At the top of the tower.
accept Red Silk Bandanas##214 |goto Westfall 56.67,47.35
|only if guideflag("DMflag") and completedq(153)
step
We are now doing The Deadmines.
Enter the building |goto Westfall 42.56,71.74 < 5 |walk
Follow the path up |goto Westfall 43.38,71.95 < 5 |only if walking
Follow the path |goto Westfall 42.90,72.70 < 5 |only if walking
Run down the ramp |goto Westfall 43.40,72.82 < 5 |only if walking
Follow the path |goto Westfall 43.81,73.37 < 7 |only if walking
Jump down here |goto Westfall 43.27,74.14 < 7 |c |q 168
|only if guideflag("DMflag")
stickystart "Collect_Miners_Union_Cards"
step
Follow the path |goto Westfall 41.60,75.95 < 15 |only if walking
Continue following the path |goto Westfall 41.08,76.97 < 15 |only if walking
Cross the bridge |goto Westfall 41.12,79.68 < 10 |only if walking
Follow the path |goto Westfall 41.09,79.93 < 7 |only if walking
kill Foreman Thistlenettle##626
|tip He looks like a ghoul.
|tip He walks around this area.
collect Thistlenettle's Badge##1875 |q 167/1 |goto Westfall 41.08,80.08
|only if guideflag("DMflag")
step
label "Collect_Miners_Union_Cards"
Kill Undead enemies around this area
collect 4 Miners' Union Card##1894 |q 168/1 |goto Westfall 40.96,80.12
|only if guideflag("DMflag")
step
Enter the Deadmines Dungeon with Your Group |goto The Deadmines/0 0.00,0.00 < 500 |c |q 168
|only if guideflag("DMflag")
stickystart "Collect_10_Red_Silk_Bandanas"
step
_Inside The Deadmines Dungeon:_
kill Sneed's Shredder##642
|tip The second boss of the dungeon.
collect Gnoam Sprecklesprocket##7365 |q 2040/1
|only if guideflag("DMflag")
step
_Inside The Deadmines Dungeon:_
kill Edwin Vancleef##639
|tip The last boss of the dungeon.
|tip Aboard the ship.
collect Head of VanCleef##3637 |q 166/1
|only if guideflag("DMflag")
step
_Inside The Deadmines Dungeon:_
kill Edwin Vancleef##639
|tip The last boss of the dungeon.
|tip Aboard the ship.
collect An Unsent Letter##2874 |q 373 |future
|only if guideflag("DMflag")
step
label "Collect_10_Red_Silk_Bandanas"
_Inside The Deadmines Dungeon:_ |notinsticky
Kill Defias enemies around this area
|tip They are found throughout the dungeon.
collect 10 Red Silk Bandanas##915 |q 214/1
|only if guideflag("DMflag")
step
Leave The Deadmines Dungeon
Click Here to Continue |confirm |q 168
|only if guideflag("DMflag")
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##166 |goto Westfall 56.33,47.52
|only if guideflag("DMflag")
step
Enter the building |goto Westfall 56.51,47.41 < 5 |only if walking
talk Scout Riell##820
|tip At the top of the tower.
turnin Red Silk Bandanas##214 |goto Westfall 56.67,47.35
|only if guideflag("DMflag") and readyq(214)
step
use An Unsent Letter##2874
accept The Unsent Letter##373 |goto Stormwind City 47.89,31.17
|only if guideflag("DMflag")
step
Enter the building |goto Stormwind City 47.89,31.17 < 5 |walk
talk Baros Alexston##1646
turnin The Unsent Letter##373 |goto Stormwind City 49.20,30.28
|only if guideflag("DMflag")
step
talk Shoni the Shilent##6579
turnin Underground Assault##2040 |goto Stormwind City 55.52,12.54
|only if guideflag("DMflag")
step
Enter the building |goto Stormwind City 63.64,22.78 < 5 |walk
talk Wilder Thistlenettle##656
|tip Inside the building
turnin Oh Brother...##167 |goto Stormwind City 65.45,21.21
turnin Collecting Memories##168 |goto Stormwind City 65.45,21.21
|only if guideflag("DMflag")
step
talk Verner Osgood##415
turnin Return to Verner##119 |goto Redridge Mountains 30.98,47.27
accept Underbelly Scales##122 |goto Redridge Mountains 30.98,47.27
accept A Baying of Gnolls##124 |goto Redridge Mountains 30.98,47.27
step
kill Black Dragon Whelp##441+
|tip They look like small flying dragons.
|tip Watch for Redridge patrols while looking for the whelplings. |only if hardcore
collect 6 Underbelly Whelp Scale##1221 |q 122/1 |goto Redridge Mountains 35.34,71.20
You can find more around: |notinsticky
[29.57,75.26]
[47.12,76.91]
stickystart "Collect_Iron_Rivets"
stickystart "Kill_Redridge_Brutes"
stickystart "Kill_Redridge_Mystics"
step
Follow the path up |goto Redridge Mountains 34.92,40.80 < 30 |only if walking
Kill Redridge enemies around this area
|tip They look like gnolls.
|tip Redridge Alphas will not drop the quest item.
|tip Watch for patrols and respawns while here. |only if hardcore
|tip Enemies tend to pull in groups when near campfires. |only if hardcore
collect 5 Iron Pike##2856 |q 89/1 |goto Redridge Mountains 38.80,32.27
You can find more around [23.02,36.55]
step
label "Collect_Iron_Rivets"
Kill Redridge enemies around this area |notinsticky
|tip They look like gnolls. |notinsticky
|tip Redridge Alphas will not drop the quest item. |notinsticky
|tip Watch for patrols and respawns while here. |only if hardcore |notinsticky
|tip Enemies tend to pull in groups when near campfires. |only if hardcore |notinsticky
collect 5 Iron Rivet##1013 |q 89/2 |goto Redridge Mountains 38.80,32.27
You can find more around [23.02,36.55]
step
label "Kill_Redridge_Brutes"
kill 10 Redridge Brute##426 |q 124/1 |goto Redridge Mountains 38.80,32.27
|tip They look like gnolls. |notinsticky
|tip Watch for patrols and respawns while here. |only if hardcore |notinsticky
|tip Enemies tend to pull in groups when near campfires. |only if hardcore |notinsticky
You can find more around [23.02,36.55]
step
label "Kill_Redridge_Mystics"
kill 8 Redridge Mystic##430 |q 124/2 |goto Redridge Mountains 38.80,32.27
|tip They look like gnolls. |notinsticky
|tip Watch for patrols and respawns while here. |only if hardcore |notinsticky
|tip Enemies tend to pull in groups when near campfires. |only if hardcore |notinsticky
You can find more around [23.02,36.55]
step
talk Foreman Oslow##341
turnin The Everstill Bridge##89 |goto Redridge Mountains 32.14,48.64
step
talk Verner Osgood##415
turnin Underbelly Scales##122 |goto Redridge Mountains 30.97,47.27
turnin A Baying of Gnolls##124 |goto Redridge Mountains 30.97,47.27
step
Enter the building |goto Redridge Mountains 29.50,46.12 < 10 |walk
talk Magistrate Solomon##344
|tip Inside the building.
turnin Messenger to Stormwind##121 |goto Redridge Mountains 29.99,44.45
step
talk Dockmaster Baren##381
accept Murloc Poachers##150 |goto Redridge Mountains 27.72,47.38
step
talk Dockmaster Baren##381
turnin Murloc Poachers##150 |goto Redridge Mountains 27.72,47.38
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Murloc Fin##1468
step
Enter the building |goto Stormwind City 56.65,57.71 < 10 |walk
talk Marda Weller##1287
|tip Inside the building.
buy Maul##924 |n
|tip If you can afford it.
|tip You will use it when you reach level 21.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Warrior and itemcount(924) == 0
step
Enter the building |goto Stormwind City 56.65,57.71 < 10 |walk
talk Marda Weller##1287
|tip Inside the building.
buy Maul##924 |n
|tip If you can afford it.
|tip You will use it when you reach level 21.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Paladin and itemcount(924) == 0
step
Enter the building |goto Stormwind City 43.02,34.43 < 10 |walk
talk Duthorian Rall##6171
|tip Inside the building.
accept The Tome of Valor##1793 |goto Stormwind City 39.81,29.80 |instant
|only if Paladin
step
use the Tome of Valor##6776
accept The Tome of Valor##1649 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Valor##1649 |goto Stormwind City 39.81,29.80
accept The Tome of Valor##1650 |goto Stormwind City 39.81,29.80
|only if Paladin
step
Enter the building |goto Stormwind City 56.65,57.71 < 10 |walk
talk Marda Weller##1287
|tip Inside the building.
buy Longsword##923 |n
|tip If you can afford it.
|tip You will use it in your Main Hand when you reach level 21.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Rogue and itemcount(923) == 0
step
talk Marda Weller##1287
|tip Inside the building.
buy Kris##2209 |n
|tip If you can afford it.
|tip Use it in your Off Hand.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Rogue and itemcount(2209) == 0
step
Enter the building |goto Stormwind City 42.67,67.02 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Dusk Wand##5211 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Priest and itemcount(5211) == 0
step
Enter the building |goto Stormwind City 42.67,67.02 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Dusk Wand##5211 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Warlock and itemcount(5211) == 0
step
Enter the building |goto Stormwind City 42.67,67.02 < 10 |walk
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Dusk Wand##5211 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Mage and itemcount(5211) == 0
step
Run up the ramp and enter the building |goto Stormwind City 39.33,81.46 < 10 |only if walking
talk Larimaine Purdue##2485
|tip Upstairs inside the tower.
learnspell Teleport: Stormwind##3561 |goto Stormwind City 39.84,79.45
|only if Mage
step
Enter the building |goto Stormwind City 29.14,74.17 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
accept Devourer of Souls##1716 |goto Stormwind City 25.26,78.56
|only if Warlock
step
talk Spackle Thornberry##5520
|tip Downstairs inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 4740 |future
|only if Warlock
step
Optional Route Change
|tip You can opt to do Blackfathom Deeps around level 24 instead of grinding.
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do Blackfathom Deeps, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Blackfathom Deeps later |confirm BFDflag
Click Here if you'd prefer to grind |confirm
step
Run up the stairs |goto Ironforge 51.24,9.84 < 5 |only if walking
talk Gerrig Bonegrip##2786
|tip Inside the building.
accept Knowledge in the Deeps##971 |goto Ironforge 50.82,5.60
|only if guideflag("BFDflag")
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Redridge Mountains (27-28)',
  {
    image = ZGV.IMAGESDIR .. 'Redridge Mountains',
    condition_suggested = function()
      return level == 27 and not completedq(2923)
    end,
    next = 'Leveling Guides\\Wetlands (28-29)',
    hardcore = true,
  },
  [[
step
talk Guard Howe##903
accept Blackrock Bounty##128 |goto Redridge Mountains 31.54,57.85
|only if not hardcore
step
talk Verner Osgood##415
accept Howling in the Hills##126 |goto Redridge Mountains 30.97,47.27
|tip This requires you to complete the "A Baying of Gnolls" quest found in the "Redridge Mountains (18-20)" guide.
|only if not hardcore
step
Enter the building |goto Redridge Mountains 29.50,46.12 < 10 |walk
talk Bailiff Conacher##900
|tip Inside the building.
accept Solomon's Law##91 |goto Redridge Mountains 29.72,44.26
step
Leave the building |goto Redridge Mountains 29.50,46.12 < 10 |walk |only if subzone("Lakeshire Town Hall")
click Wanted: Lieutenant Fangore
accept Wanted: Lieutenant Fangore##180 |goto Redridge Mountains 26.75,46.47
|only if not hardcore and not Warlock
step
talk Gerald Crawley##3090
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Gerald Crawley##3090 |goto Redridge Mountains/0 25.06,41.12 |q 34 |future
|only if Rogue
step
talk Martie Jainrose##342
accept An Unwelcome Guest##34 |goto Redridge Mountains/0 21.86,46.33
step
kill Bellygrub##345
|tip He looks like a darker brown boar that walks around this area.
collect Bellygrub's Tusk##3631 |q 34/1 |goto Redridge Mountains/0 15.68,49.32
step
talk Martie Jainrose##342
turnin An Unwelcome Guest##34 |goto Redridge Mountains/0 21.86,46.33
step
Follow the path up |goto Redridge Mountains/0 17.27,44.89 < 20 |only if walking
kill Yowler##518
|tip He walks between 2 of the gnolls camps.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies around camp tend to pull in groups so be wary. |only if hardcore
|tip You can skip this quest, but you will need to grind extra xp if you do. |only if hardcore
collect Yowler's Paw##3614 |q 126/1 |goto Redridge Mountains/0 27.84,21.77
Also check around [34.17,25.09]
|only if not hardcore
stickystart "Collect_Shadowhide_Pendants"
step
kill Lieutenant Fangore##703
|tip He looks like a gnoll wearing a red robe, and carrying a long sword, that walks around this area.
|tip Try to kite him away, so you can fight him alone.
|tip If you have trouble, try to find someone to help you.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies around camp tend to pull in groups so be wary. |only if hardcore
|tip You can skip this quest, but you will need to grind extra xp if you do. |only if hardcore
collect Fangore's Paw##3632 |q 180/1 |goto Redridge Mountains/0 78.93,38.46
Also check around [84.46,50.51]
|only if not hardcore
step
Follow the path down |goto Redridge Mountains/0 89,70.9 < 15 |walk
talk Clyde Ranthal##2697
accept Clyde's Special Thread##26848 |goto Redridge Mountains/0 89,70.9
step
accept Gnoll Patrol##26849 |goto Redridge Mountains/0 89,70.9
|tip This quest requires you to complete Clyde's Special Thread first.
step
kill 7 Shadowhide Brute##432 |q 26849/1 |goto Redridge Mountains/0 77.98,39.66
|tip Enemies around camps tend to pull in groups so be wary. |only if hardcore
|tip Watch for patrols and respawns here. |only if hardcore
step
kill 7 Shadowhide Warrior##568 |q 26849/2 |goto Redridge Mountains/0 77.98,39.66
|tip Enemies around camps tend to pull in groups so be wary. |only if hardcore
|tip Watch for patrols and respawns here. |only if hardcore
step
label "Collect_Shadowhide_Pendants"
Kill Shadowhide enemies around this area
|tip They look like gnolls.
|tip Enemies around camps tend to pull in groups so be wary. |only if hardcore
|tip Watch for patrols and respawns here. |only if hardcore
collect 10 Shadowhide Pendant##1075 |q 91/1 |goto Redridge Mountains/0 77.98,39.66
You can find more around: |notinsticky
[76.82,54.09]
[83.92,54.28]
step
Kill Shadowhide enemies around this area
|tip Enemies around camps tend to pull in groups so be wary. |only if hardcore
|tip Watch for patrols and respawns here. |only if hardcore
|tip Getting this far into level 27 will allow you to reach level 28 after turning in quests soon.
|tip You are about to return to Stormwind City soon, so it will be a good time to learn your level 28 abilities.
ding 27,37050 |goto Redridge Mountains/0 77.98,39.66
You can find more around: |notinsticky
[76.82,54.09]
[83.92,54.28]
|only if hardcore
step
talk Clyde Ranthal##2697
turnin Clyde's Special Thread##26848 |goto Redridge Mountains/0 89,70.9
turnin Gnoll Patrol##26849 |goto Redridge Mountains/0 89,70.9
step
Follow the road |goto Redridge Mountains/0 47.63,27.69 < 40 |only if walking
Follow the path |goto Redridge Mountains/0 39.14,14.15 < 40 |only if walking
kill 15 Blackrock Champion##435 |q 128/1 |goto Redridge Mountains/0 33.21,6.88
|tip Inside and outside the cave.
|tip They are mostly inside the cave, and the next guide step is inside the cave.
|tip Try to kill them mostly inside the cave.
|only if not hardcore
step
kill enemies around this area
|tip Getting this far into level 27 will allow you to reach level 28 after turning in quests soon.
|tip You are about to return to Stormwind City soon, so it will be a good time to learn your level 28 abilities.
ding 27,27900 |goto Redridge Mountains/0 33.21,6.88
|only if not hardcore
step
Follow the path inside the cave |goto Redridge Mountains/0 31.69,12.88 < 20 |walk
Continue following the path |goto Redridge Mountains/0 30.83,14.84 < 10 |walk
Follow the path |goto Redridge Mountains/0 28.45,13.64 < 10 |walk
talk Corporal Keeshan##349
|tip Inside the cave.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns. |only if not hardcore
|tip Clear enemies that respawn as this quest can be overwhelming. |only if hardcore
accept Missing In Action##219 |goto Redridge Mountains/0 28.39,12.55 |noautoaccept
|only if not hardcore
step
Watch the dialogue
|tip Follow Corporal Keeshan and protect him as he walks.
|tip He walks out of the cave and all the way back to Lakeshire.
|tip When you reach the exit of the cave, pull the enemies to him, one group at a time.
|tip He eventually walks to this location.
Escort Corporal Keeshan Back to Redridge |q 219/1 |goto Redridge Mountains/0 33.41,48.51 |notravel
|only if not hardcore
step
talk Marshal Marris##382
turnin Missing In Action##219 |goto Redridge Mountains/0 33.51,48.97
|only if not hardcore
step
talk Verner Osgood##415
turnin Howling in the Hills##126 |goto Redridge Mountains/0 30.97,47.27
|only if not hardcore
step
Enter the building |goto Redridge Mountains/0 29.49,46.13 < 10 |walk
talk Bailiff Conacher##900
|tip Inside the building.
turnin Solomon's Law##91 |goto Redridge Mountains/0 29.71,44.27
step
talk Magistrate Solomon##344
|tip Inside the building.
turnin Wanted: Lieutenant Fangore##180 |goto Redridge Mountains/0 29.99,44.46
turnin One Of Each##26846 |goto Redridge Mountains/0 29.99,44.46
|only if not hardcore
step
Leave the building |goto Redridge Mountains/0 29.50,46.12 < 10 |walk |only if subzone("Lakeshire Town Hall")
talk Guard Howe##903
turnin Blackrock Bounty##128 |goto Redridge Mountains/0 31.54,57.86
|only if not hardcore
step
talk Guard Berton##859
accept What Comes Around...##386 |goto Redridge Mountains 26.26,46.57
|only if guideflag("Stockflag")
step
Prepare for The Stockades
|tip It will be a good time to start The Stockades soon.
|tip You should run it after turning in quests and training in Stormwind.
|tip Start looking for a group.
|confirm
|only if guideflag("Stockflag")
step
Enter the building |goto Stormwind City 55.29,68.13 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Put these items in the bank.
bank A Torn Journal Page##916 |goto Stormwind City 57.55,72.43 |q 74 |future |only if haveq(74) or completedq(74)
bank Bottle of Zombie Juice##1451 |goto Stormwind City 57.55,72.43 |q 159 |future |only if haveq(159) or completedq(159)
step
Enter the building |goto Stormwind City 50.95,57.84 < 7 |walk
talk Frederick Stover##1298
buy Sturdy Recurve##11306 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Frederick Stover##1298 |goto Stormwind City 49.98,57.64 |q 1078 |future
|only if Hunter and (itemcount(11306) == 0)
step
talk Collin Mauren##4078
accept Retrieval for Mauren##1078 |goto Stormwind City 43.09,80.39
step
Enter the building |goto Stormwind City 29.19,74.12 < 10 |walk
talk Zardeth of the Black Claw##1435
|tip Downstairs inside the building.
turnin A Noble Brew##335 |goto Stormwind City 26.45,78.65
|only if readyq(335)
step
talk Zardeth of the Black Claw##1435
|tip Downstairs inside the building.
accept A Noble Brew##336 |goto Stormwind City 26.45,78.65
|only if completedq(335)
step
Enter the building |goto Stormwind City 43.05,34.48 < 10 |walk
talk Brother Sarno##7917
|tip Inside the building.
accept Tinkmaster Overspark##2923 |goto Stormwind City 40.56,30.91
|only if Hunter or Mage
step
talk Thomas##4982
|tip He runs around inside the cathedral.
accept The Missing Diplomat##1274 |goto Stormwind City 41.26,30.60
|only if level <= 28
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Valor##1652 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Bishop Farthing##1212
|tip Inside the building.
turnin Seeking Wisdom##269 |goto Stormwind City 39.13,27.90
accept The Doomed Fleet##270 |goto Stormwind City 39.13,27.90
step
Enter the building |goto Stormwind City 47.89,31.17 < 5 |walk
talk Baros Alexston##1646
turnin The Unsent Letter##373 |goto Stormwind City 49.20,30.28 |only if haveq(373)
accept Bazil Thredd##389 |goto Stormwind City 49.20,30.28
|tip This quest will only be available if you did The Deadmines
|only if guideflag("Stockflag")
step
use An Old History Book##2794
accept An Old History Book##337	|goto Stormwind City 69.09,28.70
|only if itemcount(337) > 0 |goto Stormwind City 69.09,28.70
step
Enter the building |goto Stormwind City 69.09,28.70 < 15 |walk
Follow the path |goto Stormwind City 72.71,25.85 < 10 |walk
talk Lord Baurles K. Wishock##1439
|tip Inside the building.
turnin A Noble Brew##336 |goto Stormwind City 75.23,31.67
|only if haveq(336)
step
Leave the building |goto Stormwind City 43.05,34.48 < 10 |walk |only if subzone("Cathedral of Light")
Enter the building |goto Stormwind City 69.07,28.77 < 15 |walk
Follow the path |goto Stormwind City 77.88,21.14 < 10 |walk
talk Bishop DeLavey##4960
|tip Inside the building.
turnin The Missing Diplomat##1274 |goto Stormwind City 78.30,25.44
accept The Missing Diplomat##1241 |goto Stormwind City 78.30,25.44
step
Leave the Petitioner's Chamber |goto Stormwind City 72.80,26.02 < 10 |walk |only if subzone("Petitioner's Chamber")
Follow the path |goto Stormwind City 72.72,22.92 < 10 |walk
Continue following the path |goto Stormwind City 70.17,11.34 < 10 |walk
talk Milton Sheaf##1440
|tip Inside the building.
turnin An Old History Book##337 |goto Stormwind City 74.17,7.49
accept Southshore##538 |goto Stormwind City 74.17,7.49
|only if haveq(337)
step
Follow the path |goto Stormwind City 77.01,19.25 < 15 |walk |only if subzone("Stormwind Keep")
Leave the building |goto Stormwind City 69.07,28.77 < 10 |walk |only if subzone("Stormwind Keep")
Follow the path |goto Stormwind City 60.27,68.37 < 30 |only if walking
talk Jorgen##4959
turnin The Missing Diplomat##1241 |goto Stormwind City 73.17,78.42
accept The Missing Diplomat##1242 |goto Stormwind City 73.17,78.42
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 1242
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 1242
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 1242
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 1242
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 1242
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 1242
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 1242
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 1242
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
talk Nikova Raskol##1721
|tip She walks around this area.
accept The Color of Blood##388 |goto Stormwind City 73.63,46.59
|only if guideflag("Stockflag")
step
Enter the building |goto Stormwind City 42.20,58.77 < 5 |walk
talk Warden Thelwater##1719
|tip Inside the building.
turnin Bazil Thredd##389 |goto Stormwind City 41.10,58.09
accept The Stockade Riots##391 |goto Stormwind City 41.10,58.09
accept Quell The Uprising##387 |goto Stormwind City 41.10,58.09
|only if guideflag("Stockflag")
step
Enter The Stockade Dungeon with Your Group |goto The Stockade/0 0.00,0.00 < 500 |c |q 378
|only if guideflag("Stockflag")
stickystart "Kill_10_Defias_Prisoners"
stickystart "Kill_8_Defias_Convicts"
stickystart "Kill_8_Defias_Insurgents"
stickystart "Collect_10_Red_Wool_Bandanas"
step
_Inside The Stockade Dungeon:_
kill Targorr the Dread##1696
|tip He is the first boss of the dungeon.
|tip He should be in one of the side rooms at the start of the dungeon or the single room straight to the north.
collect Head of Targorr##3630 |q 386/1
|only if guideflag("Stockflag")
step
_Inside The Stockade Dungeon:_
kill Bazil Thredd##1716
|tip He is the fourth boss of the dungeon.
|tip Follow the east path all the way to the end.
collect Head of Bazil Thredd##2926 |q 391/1
|only if guideflag("Stockflag")
step
_Inside The Stockade Dungeon:_
kill Dextren Ward##1663
|tip He is the fifth boss of the dungeon.
|tip Follow the west path all the way to the end.
collect Hand of Dextren Ward##3628 |q 377/1
|only if guideflag("Stockflag")
step
label "Kill_10_Defias_Prisoners"
_Inside The Stockade Dungeon:_ |notinsticky
kill 10 Defias Prisoner##1706 |q 387/1
|only if guideflag("Stockflag")
step
label "Kill_8_Defias_Convicts"
_Inside The Stockade Dungeon:_ |notinsticky
kill 8 Defias Convict##1711 |q 387/2
|only if guideflag("Stockflag")
step
label "Kill_8_Defias_Insurgents"
_Inside The Stockade Dungeon:_ |notinsticky
kill 8 Defias Insurgent##1715 |q 387/3
|only if guideflag("Stockflag")
step
label "Collect_10_Red_Wool_Bandanas"
_Inside The Stockade Dungeon:_ |notinsticky
Kill Defias enemies around this area
collect 10 Red Wool Bandana##2909 |q 388/1
|only if guideflag("Stockflag")
step
talk Warden Thelwater##1719
|tip Inside the building.
turnin The Stockade Riots##391 |goto Stormwind City 41.10,58.09
turnin Quell The Uprising##387 |goto Stormwind City 41.10,58.09
accept The Curious Visitor##392 |goto Stormwind City 41.10,58.09
|only if guideflag("Stockflag")
step
_Note_
|tip The Seal of Wrynn questline is too difficult to solo at this level.
|tip However, most groups stick around to do it together after running Stockades.
|tip Ask if your group wants to do the chain together and follow them if so.
|tip Otherwise abandon "The Curious Visitor" for now and we'll do it around level 31.
Click Here To Continue |confirm
|only if guideflag("Stockflag")
step
Leave the building |goto Stormwind City 42.25,58.86 < 5 |walk
talk Nikova Raskol##1721
|tip She walks around this area.
turnin The Color of Blood##388 |goto Stormwind City 73.39,50.69
|only if guideflag("Stockflag")
step
Leave the building |goto Stormwind City 43.05,34.48 < 10 |walk |only if subzone("Cathedral of Light")
talk Tinkmaster Overspark##7944
turnin Tinkmaster Overspark##2923 |goto Ironforge 69.54,50.32
|only if Hunter or Mage
step
Run up the stairs and enter the building |goto Ironforge 61.33,88.20 < 7 |walk
talk Buliwyf Stonehand##11865
|tip Inside the building.
|tip This will allow you to equip two-handed axes.
Train Two-Handed Axes |complete weaponskill("TH_AXE") > 0 |goto Ironforge 61.17,89.52
|only if Hunter
step
talk Bixi Wobblebonk##13084
|tip Inside the building.
|tip This will allow you to equip crossbows.
Train Crossbows |complete weaponskill("CROSSBOW") > 0 |goto Ironforge 62.23,89.62
|only if Hunter
step
Enter the building |goto Ironforge 30.43,26.37 < 7 |walk
talk Ginny Longberry##5151
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Ginny Longberry##5151 |goto Ironforge 31.32,27.79 |q 289 |future
|only if Mage
step
Enter the building |goto Ironforge 53.24,7.33 < 7 |walk
talk Jubahl Corpseseeker##6382
|tip Inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Jubahl Corpseseeker##6382 |goto Ironforge 52.70,6.08 |q 289 |future
|only if Warlock
step
talk Jasper Fel##1325
|tip Inside the building.
|tip Stock up on poisons if needed.
|tip Skip this step if you don' tneed to.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97
|only if Rogue
]]
)
