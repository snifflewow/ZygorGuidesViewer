local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end

ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Dustwallow Marsh (40-40)',
  {
    image = ZGV.IMAGESDIR .. 'Arathi Highlands',
    condition_suggested = function()
      return level == 40 and not completedq(1287)
    end,
    next = 'Leveling Guides\\Desolace (40-41)',
    hardcore = true,
  },
  [[
step
talk Pozzik##4630
turnin Goblin Sponsorship##1183 |goto Thousand Needles 80.18,75.88
accept The Eighteenth Pilot##1186 |goto Thousand Needles 80.18,75.88
|only if hardcore
step
talk Razzeric##4706
turnin The Eighteenth Pilot##1186 |goto Thousand Needles 80.33,76.09
accept Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
|only if hardcore
step
Enter the building |goto Dustwallow Marsh 67.81,47.70 < 15 |walk
Run up the stairs |goto Dustwallow Marsh 68.17,48.76 < 7 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
accept The Deserters##1286 |goto Dustwallow Marsh 68.21,48.62
step
Leave the building |goto Dustwallow Marsh 67.81,47.70 < 15 |walk |only if subzone("Foothold Citadel")
Enter the building |goto Dustwallow Marsh 66.00,45.20 < 10 |walk
talk Morgan Stern##4794
|tip Inside the building.
turnin Morgan Stern##1260 |goto Dustwallow Marsh 66.34,45.47
accept Mudrock Soup and Bugs##1204 |goto Dustwallow Marsh 66.34,45.47
step
talk Innkeeper Janene##6272
|tip Inside the building.
home Theramore Isle |goto Dustwallow Marsh 66.59,45.22
step
Leave the building |goto Dustwallow Marsh 66.00,45.20 < 10	|walk |only if subzone("Theramore Isle") and _G.IsIndoors()
Leave Theramore Isle |goto Dustwallow Marsh 64.81,46.60 < 40	|only if walking and subzone("Theramore Isle")
Enter the building |goto Dustwallow Marsh 59.90,40.92 < 10	|walk
Explore Sentry Point |q 1265/1			|goto Dustwallow Marsh 59.66,41.25
step
talk Archmage Tervosh##4967
|tip Inside the building.
|tip If he doesn't appear, walk out of the tower to the main road, then walk back into the tower.
|tip You also may need to check the tower inside of Theramore, but this is a very rare spawn location.
turnin The Missing Diplomat##1265 |goto Dustwallow Marsh 59.66,41.25
accept The Missing Diplomat##1266 |goto Dustwallow Marsh 59.66,41.25
|tip He may also be found at:
[66.40,49.20]
[45.20,24.40]
step
Watch the dialogue
|tip Inside the building.
|tip Archmage Tervosh will give you a defense buff.
Gain the Proudmoore's Defense Buff |havebuff Proudmoore's Defense##7120 |goto Dustwallow Marsh 59.66,41.25
step
|goto Dustwallow Marsh 45,24
confirm always
stickystart "Collect_Mirefin_Heads"
step
Kill Mudrock enemies around this area
|tip They look like tortoises.
|tip You can find more in the water nearby.
|tip Rotate between killing turtles and murlocs as respawns allow for safe pulls.
collect 8 Forked Mudrock Tongue##5883 |q 1204/1 |goto Dustwallow Marsh 64.79,42.00
You can find more around: |notinsticky
[63.08,35.77]
[61.72,30.64]
[61.92,25.24]
[61.52,21.12]
[60.33,18.47]
step
label "Collect_Mirefin_Heads"
Kill Mirefin enemies around this area
collect 12 Mirefin Head##5847 |q 1177/1 |goto Dustwallow Marsh 57.93,15.70
|tip Enemies tend to group up around here, so pull carefully when able. |only if hardcore
You can find more around: |notinsticky
[54.42,15.92]
step
Follow the path up |goto Dustwallow Marsh 57.90,18.51 < 20 |only if walking and subzone("Dreadmurk Shore")
talk "Swamp Eye" Jarl##4792
accept Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
talk "Stinky" Ignatz##4880
|tip Kill the raptors near him before accepting the quest.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
accept Stinky's Escape##1222 |goto Dustwallow Marsh 46.88,17.52 |noautoaccept
step
Watch the dialogue
|tip Follow and protect "Stinky" Ignatz as he walks.
|tip He eventually walks to this location.
Help Stinky Find Bogbean Leaves |q 1222/1 |goto Dustwallow Marsh 48.86,24.65
step
talk Private Hendel##4966
turnin The Missing Diplomat##1266 |goto Dustwallow Marsh 45.22,24.64
accept The Missing Diplomat##1324 |goto Dustwallow Marsh 45.22,24.64 |noautoaccept
|tip Private Hendel and the 2 Theramore Sentries nearby will attack you, so be prepared.
|tip Focus on killing Private Hendel.  His helpers will stop attacking once he surrenders.
step
kill Private Hendel##4966
|tip Focus on killing Private Hendel.  His helpers will stop attacking once he surrenders.
|tip He will eventually surrender.
Subdue Private Hendel |q 1324/1 |goto Dustwallow Marsh 45.22,24.64
step
Watch the dialogue
talk Archmage Tervosh##4967
|tip He will appear nearby where Private Hendel surrendered.
turnin The Missing Diplomat##1324 |goto Dustwallow Marsh 45.22,24.64
step
Watch the dialogue
talk Lady Jaina Proudmoore##4968
|tip She will appear nearby where Private Hendel surrendered.
accept The Missing Diplomat##1267 |goto Dustwallow Marsh 45.22,24.24 |instant
step
Kill Darkmist enemies around this area
|tip They look like green spiders.
|tip Inside and outside the mine.							|only if not hardcore
|tip They are inside and outside the mine, but it is safer to be outside of the mine.	|only if hardcore
collect 40 Unpopped Darkmist Eye##5884 |q 1206/1 |goto Dustwallow Marsh 33.22,22.76
step
talk "Swamp Eye" Jarl##4792
turnin Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Unpopped Darkmist Eye##5884 |goto Dustwallow Marsh 35.15,38.25
step
talk Mudcrush Durtfeet##4503
turnin Hungry!##1177 |goto Dustwallow Marsh 35.15,38.25
step
Enter the building |goto Dustwallow Marsh 35.73,53.99 < 10 |walk
talk Balos Jacken##5089
|tip Upstairs inside the building.
|tip He will eventually surrender.
turnin The Deserters##1286 |goto Dustwallow Marsh 36.09,54.30
accept The Deserters##1287 |goto Dustwallow Marsh 36.09,54.30
step
click Gizmorium Shipping Crate##20727
collect Seaforium Booster##5862 |q 1187/1 |goto Dustwallow Marsh 54.07,56.48
step
talk Morgan Stern##4794
|tip Inside the building.
turnin Mudrock Soup and Bugs##1204 |goto Dustwallow Marsh 66.34,45.47
accept ... and Bugs##1258 |goto Dustwallow Marsh 66.34,45.47
turnin Stinky's Escape##1222 |goto Dustwallow Marsh 66.34,45.47
step
Leave the building |goto Dustwallow Marsh 66.00,45.20 < 10 |walk |only if subzone("Theramore Isle") and _G.IsIndoors()
Enter the building |goto Dustwallow Marsh 67.81,47.70 < 15 |walk
Run up the stairs |goto Dustwallow Marsh 68.17,48.76 < 7 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin The Deserters##1287 |goto Dustwallow Marsh 68.21,48.62
step
_Note_
The next area is lower xp/hour than most.
|tip It is one of the few times dungeons is more effecient than questing.
|tip It is a good time to start looking for dungeon groups while you travel if you want to run any.
|tip If you run dungeons, try to reach level 41.30. Your next guide will be Badlands (41-42).
Click Here To Confirm |confirm
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Desolace (40-41)',
  {
    image = ZGV.IMAGESDIR .. 'Desolace',
    condition_suggested = function()
      return level >= 40 and level <= 41 and not completedq(1467)
    end,
    next = 'Leveling Guides\\Badlands (41-42)',
    hardcore = true,
  },
  [[
step
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Blackbone Wand##5239 |n
|tip It costs 3g 48s 58c so don't travel if you don't want to spend the money.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.80,65.60
|only if Priest
step
talk Innkeeper Lyshaerya##11103
|tip Inside the building.
home Nijel's Point |goto Desolace 66.27,6.55 |q 1467 |future
step
talk Brother Anton##1182
|tip Inside the building.
accept Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
talk Kreldig Ungor##5638
accept Reagents for Reclaimers Inc.##1466 |goto Desolace 66.20,9.63
step
Avoid Ghost Walker Post and follow the path |goto Desolace 48.99,53.86 < 40 |only if walking
talk Hornizz Brimbuzzle##6019
accept Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.82
step
Follow the path up and over the mountain |goto Desolace 46.76,67.06 < 15 |only if walking
talk Uthek the Wise##5397
turnin Ongeku##1373 |goto Desolace 36.22,79.25
accept Khan Jehn##1374 |goto Desolace 36.22,79.25
|only if not hardcore
stickystart "Collect_Nether_Wings"
stickystart "Collect_Felhound_Brains"
step
Follow the road |goto Desolace 46.98,75.20 < 40 |only if walking and not subzone("Mannoroc Coven") and not hardcore
Follow the path up |goto Desolace 52.07,82.38 < 20 |only if walking
kill Doomwarder Captain##4680+
|tip There aren't many available, so you may have to wait for them to respawn.
|tip Work on the other steps around this area while waiting.
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
collect 10 Doomwarder Blood##6252 |q 1466/3 |goto Desolace 51.71,83.27
step
label "Collect_Nether_Wings"
Kill Nether enemies around this area
|tip They look like succubi.
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
collect 10 Nether Wing##6251 |q 1466/2 |goto Desolace 51.03,71.80
You can find more around: |notinsticky
[49.69,77.79]
[52.10,82.27]
[54.01,77.40]
[54.26,70.63]
step
label "Collect_Felhound_Brains"
Kill enemies around this area
|tip Only enemies that look like felhounds will drop the quest item.
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
collect 10 Felhound Brain##6250 |q 1466/1 |goto Desolace 51.06,80.69
You can find more around: |notinsticky
[53.78,84.41]
[53.57,77.87]
[56.41,78.38]
[56.11,72.79]
step
Kill enemies around this area
|tip You should already be level 41, or pretty close.
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
ding 41 |goto Desolace 51.03,71.80
You can find more around: |notinsticky
[49.69,77.79]
[52.10,82.27]
[54.01,77.40]
[54.26,70.63]
stickystart "Kill_Undead_Ravagers"
step
Enter the Valley of Bones |goto Desolace 59.06,89.28 < 40 |only if walking
use the Crate of Ghost Magnets##15848
|tip Kill any nearby enemies before using it.
|tip Use it next to the huge bones on the ground around this area.
kill Magrami Spectre##11560+
|tip They continuously walk to the spinning object that appears on the ground.
|tip They will become hostile when they reach the spinning object.
|tip Pull them away from the spinning object to fight them.
|tip They will not aggro in groups if they are still yellow/neutral.
|tip If they are red/hostile, they will pull together.
|tip If you have to wait until they despawn and use the quest item again, that's okay.
|tip Be patient and pull carefully.
|tip Watch for respawns while in the area.	|only if hardcore
collect 8 Ghost-o-plasm##15849 |q 6134/1 |goto Desolace 63.81,91.27
step
label "Kill_Undead_Ravagers"
kill 30 Undead Ravager##11561 |q 261/1 |goto Desolace 63.96,91.95
|tip They look like brown skeletons.
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[59.78,89.83]
[64.52,82.42]
step
Leave the Valley of Bones and follow the path up |goto Desolace 65.27,85.25 < 20 |only if walking and subzone("Valley of Bones")
kill Khan Jehn##5601
|tip He walks in and out of this tent.
collect Khan Jehn's Head##6072 |q 1374/1 |goto Desolace 66.39,80.08
|only if not hardcore
step
talk Hornizz Brimbuzzle##6019
turnin Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
Follow the path up and over the mountain |goto Desolace 46.76,67.06 < 15 |only if walking
talk Uthek the Wise##5397
turnin Khan Jehn##1374 |goto Desolace 36.22,79.25
|only if not hardcore
step
Follow the road into Feralas and run down the path |goto Feralas 47.56,37.72 < 30 |only if walking
Ride the boat or swim across the water |goto Feralas 43.39,42.75 < 40 |only if walking
talk Fyldren Moonfeather##8019
|tip As you travel here, stay on the road and avoid enemies.
|tip They are dangerous to you at this level.
fpath Feathermoon |goto Feralas 30.24,43.25
step
talk Faralorn##7942
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
|tip You will be questing for a long time without easy access to an ammo vendor.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 261
|only if Hunter
step
talk Antarius##10059
|tip Stable your permanent pet.
|tip You are about to tame a temporary pet, so you can learn "Bite 6".
Click Here to Continue |confirm |goto Feralas 31.47,43.15 |q 261
|only if Hunter
step
_NOTE:_
Tame a Longtooth Runner
|tip Use your "Tame Beast" ability on a Longtooth Runner.
|tip They look like grey wolves around this area.
Learn the "Bite 6" Pet Ability
|tip Kill enemies around this area until you see a message in your chat saying you learned "Bite 6".
|tip You will teach "Bite 6" to your permanent pet soon.
Click Here to Continue |confirm |goto Feralas 29.06,46.80 |q 261
|only if Hunter
step
talk Antarius##10059
|tip Abandon your temporary pet and get your permanent pet from the stable.
|tip Teach "Bite 6" to your permanent pet.
Click Here to Continue |confirm |goto Feralas 31.47,43.15 |q 261
|only if Hunter
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Goblin Rumors##5804 |goto Tanaris 52.30,28.91 |q 1117
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Sample Elven Gem##4502 |goto Tanaris 52.30,28.91 |q 669 |future
step
talk Kravel Koalbeard##4452
turnin Rumors for Kravel##1117 |goto Thousand Needles 77.79,77.27
step
Watch the dialogue
talk Kravel Koalbeard##4452
accept Back to Booty Bay##1118 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
accept Martek the Exiled##1106 |goto Thousand Needles 78.06,77.12
|tip You must have completed "Salt Flat Venom" and "Hardened Shells" from the "Thousand Needles (33-34)" guide.
step
talk Razzeric##4706
turnin Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.10
accept Safety First##1188 |goto Thousand Needles 80.33,76.10
step
talk Shreev##4708
turnin Safety First##1188 |goto Tanaris 51.00,27.20
accept Safety First##1189 |goto Tanaris 51.00,27.20
|only if C_Container.GetItemCooldown(6948) >= 300
step
talk Brother Anton##1182
|tip Inside the building.
turnin Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
talk Kreldig Ungor##5638
turnin Reagents for Reclaimers Inc.##1466 |goto Desolace 66.20,9.63
accept Reagents for Reclaimers Inc.##1467 |goto Desolace 66.20,9.63
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Badlands (41-42)',
  {
    image = ZGV.IMAGESDIR .. 'Badlands',
    condition_suggested = function()
      return level >= 41 and level <= 42 and not completedq(739)
    end,
    next = 'Leveling Guides\\Stranglethorn Vale (42-43)',
    hardcore = true,
  },
  [[
step
Run up the stairs and enter the building |goto Ironforge 61.32,88.17 < 7 |walk
talk Brenwyn Wintersteel##5120
buy Falchion##2528 |n
|tip If you can afford it.
|tip You will use it when you reach level 41.
|tip If you have better, skip this step.
Visit the Vendor |vendor Brenwyn Wintersteel##5120 |goto Ironforge 62.37,88.68 |q 1467
|only if Rogue and itemcount(2528) == 0
step
Enter the building |goto Ironforge 34.11,62.34 < 10 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Deposit these items into the bank.
bank Kravel's Scheme##5826 |goto Ironforge 35.92,60.14 |q 1118 |future
bank Seaforium Booster##5862 |goto Ironforge 35.92,60.14 |q 1188 |future
step
talk Auctioneer Redmuse##8720
|tip Buy these items from the Auction House.
|tip Each item is for an individual optional quest. If you can't get them it's fine you'll just have to grind more later.
|tip There are more auction steps after this one, skip this step after completeing it and don't run to the mailbox yet. |only if Warrior
collect 1 Gyrochronatom##4389 |goto Ironforge 24.16,74.67 |q 714 |future
collect 1 Frost Oil##3829 |goto Ironforge 24.16,74.67 |q 713 |future
collect 1 Patterned Bronze Bracers##2868 |goto Ironforge 24.16,74.67 |q 716 |future
collect 1 Lesser Invisibility Potion##3823 |goto Ironforge 24.16,74.67 |q 715 |future
collect 1 Healing Potion##929 |goto Ironforge 24.16,74.67 |q 715 |future
collect 9 Blue Pearl##4611 |goto Ironforge 24.16,74.67 |q 705 |future
|tip The Blue Pearls are often expensive, we don't expect you to be able to get these but it is extra experience if they're affordable.
|only if not selfmade
step
talk Tynnus Venomsprout##5169
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66
|only if Rogue
step
talk Roetten Stonehammer##5637
|tip He walks around inside the building.
turnin Reagents for Reclaimers Inc.##1467 |goto Ironforge 67.91,17.52
step
talk Prospector Stormpike##1356
|tip Inside the building.
turnin Stormpike's Deciphering##554 |goto Ironforge 74.64,11.74
accept Ironband Wants You!##707 |goto Ironforge 74.64,11.74
step
Enter the building |goto Ironforge 72.16,67.56 < 7 |walk
talk Skolmin Goldfury##5122
buy Massive Longbow##11307 |n
|tip If you can afford it.
|tip It's a limited supply item, so it may not be for sale.
|tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
|tip We will check vendors for it along the way, if it's not here right now.
|tip If you have better, skip this step.
Visit the Vendor |vendor Skolmin Goldfury##5122 |goto Ironforge 71.76,66.70 |q 2500 |future
|only if Hunter and itemcount(11307) == 0
step
Run up the stairs and enter the building |goto Ironforge 23.09,17.43 < 7 |walk
talk Harick Boulderdrum##5133
|tip Downstairs inside the building.
buy Blackbone Wand##5239 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Harick Boulderdrum##5133 |goto Ironforge 23.13,15.94 |q 2500 |future
|only if Priest and itemcount(5239) == 0
step
Enter the building |goto Loch Modan 35.23,47.74 < 10 |walk
talk Innkeeper Hearthstove##6734
|tip Inside the building.
home Stoutlager Inn |goto Loch Modan 35.53,48.40
step
Enter the building |goto Loch Modan 36.63,48.52 < 10 |walk
talk Ghak Healtouch##1470
|tip Inside the building.
accept Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
talk Prospector Ironband##1344
turnin Ironband Wants You!##707 |goto Loch Modan 65.93,65.62
accept Find Agmond##738 |goto Loch Modan 65.93,65.62
stickystart "Collect_Buzzard_Gizzards"
stickystart "Collect_Crag_Coyote_Fangs"
step
Follow the path |goto Badlands 51.77,33.17 < 15 |only if walking
click Crumpled Map##2868
|tip It is under a table in the tent.
accept A Sign of Hope##720 |goto Badlands 53.03,33.93
step
Leave Hammertoe's Digsite |goto Badlands 51.48,33.23 < 20 |only if walking and subzone("Hammertoe's Digsite")
talk Prospector Ryedol##2910
turnin A Sign of Hope##720 |goto Badlands 53.42,43.40
accept A Dwarf and His Tools##719 |goto Badlands 53.42,43.40
step
talk Sigrun Ironhew##2860
accept Mirages##718 |goto Badlands 53.80,43.31
step
Kill Shadowforge enemies around this area
|tip They look like dwarves.
collect Ryedol's Lucky Pick##4616 |q 719/1 |goto Badlands 52.59,32.20
step
click Excavation Supply Crate##2867
|tip It looks like a wooden crate.
|tip It may spawn in other locations in this camp.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Supply Crate##4629 |q 718/1 |goto Badlands 66.61,22.02
step
Follow the path |goto Badlands 56.21,27.40 < 50 |only if walking and subzone("Camp Kosh")
talk Prospector Ryedol##2910
turnin A Dwarf and His Tools##719 |goto Badlands 53.42,43.40
step
talk Sigrun Ironhew##2860
turnin Mirages##718 |goto Badlands 53.80,43.31
accept Scrounging##733 |goto Badlands 53.80,43.31
step
talk Rigglefuzz##2817
accept Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
accept Pearl Diving##705 |goto Badlands 42.39,52.93 |only if itemcount(4611) >= 9
step
talk Rigglefuzz##2817
turnin Pearl Diving##705 |goto Badlands 42.39,52.93
|only if itemcount(4611) >= 9
step
talk Martek the Exiled##4618
turnin Martek the Exiled##1106 |goto Badlands 42.22,52.69
accept Indurium##1108 |goto Badlands 42.22,52.69
stickystart "Collect_Buzzard_Wings"
step
click Battered Dwarven Skeleton##2875
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin Find Agmond##738 |goto Badlands 50.89,62.41
accept Murdaloc##739 |goto Badlands 50.89,62.41
stickystop "Collect_Buzzard_Wings"
stickystop "Collect_Buzzard_Gizzards"
stickystop "Collect_Crag_Coyote_Fangs"
stickystart "Kill_Stonevault_Bonesnapper"
stickystart "Collect_Iridium_Flakes"
step
kill Murdaloc##2945 |q 739/1 |goto Badlands 49.63,66.30
|tip He walks around this area.
step
label "Kill_Stonevault_Bonesnapper"
kill 12 Stonevault Bonesnapper##2893 |q 739/2 |goto Badlands 50.51,69.96
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
step
label "Collect_Iridium_Flakes"
Kill Stonevault enemies around this area
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
collect 10 Indurium Flake##5797 |q 1108/1 |goto Badlands 50.51,69.96
You can find more around [64.40,43.22]
stickystart "Collect_Buzzard_Wings"
stickystart "Collect_Buzzard_Gizzards"
stickystart "Collect_Crag_Coyote_Fangs"
step
talk Martek the Exiled##4618
turnin Indurium##1108 |goto Badlands 42.21,52.70
step
Watch the dialogue
talk Martek the Exiled##4618
accept News for Fizzle##1137 |goto Badlands 42.21,52.70
step
talk Lotwil Veriatus##2921
accept Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
stickystart "Collect_Small_Stone_Shards"
step
Kill Rock Elemental enemies around this area
collect 5 Rock Elemental Shard##7848 |q 2500/3 |goto Badlands 19.46,43.02
You can find more around [13.98,39.71]
step
label "Collect_Small_Stone_Shards"
kill Lesser Rock Elemental##2735+ |notinsticky
|tip This quest can take multiple laps. Farm coyotes and vultures while waiting on respawns.
collect 10 Small Stone Shard##4626 |q 710/1 |goto Badlands 19.46,43.02
You can find more around [13.98,39.71]
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
accept Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
step
kill Rock Elemental##92+
collect 3 Large Stone Slab##4627 |q 711/1 |goto Badlands 15.60,32.60
You can find more around [43.56,84.04]
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
accept Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
stickystart "Collect_Scrap_Metal"
stickystop "Collect_Buzzard_Wings"
stickystop "Collect_Buzzard_Gizzards"
stickystop "Collect_Crag_Coyote_Fangs"
step
kill Greater Rock Elemental##2736+
|tip If you have trouble, try to find someone to help you.
|tip This quest is especially worth doing if you purchased the items from the Auction House earlier. |only if not selfmade
|tip These enemies can be tough, and are a bit higher level. |only if hardcore
|tip If you'd rather not risk it, skip this step and abandon the "Study of the Elements: Rock" quest. |only if hardcore
collect 5 Bracers of Rock Binding##4628 |q 712/1 |goto Badlands 5.40,76.83
You can find more up the path that starts at [13.20,83.27]
step
label "Collect_Scrap_Metal"
Kill Dustbelcher enemies around this area
|tip Watch for patrols and respawns here.	|only if hardcore
collect 7 Scrap Metal##4630 |q 733/1 |goto Badlands 11.29,75.60
stickystart "Collect_Buzzard_Wings"
stickystart "Collect_Buzzard_Gizzards"
stickystart "Collect_Crag_Coyote_Fangs"
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
accept Gyro... What?##714 |goto Badlands 25.95,44.87 |only if itemcount(4389) > 0
accept Coolant Heads Prevail##713 |goto Badlands 25.95,44.87 |only if itemcount(3829) > 0
step
talk Lotwil Veriatus##2921
turnin Gyro... What?##714 |goto Badlands 25.95,44.87 |only if itemcount(4389) > 0
turnin Coolant Heads Prevail##713 |goto Badlands 25.95,44.87 |only if itemcount(3829) > 0
|only if itemcount(4389) > 0 or itemcount(3829)
step
talk Lucien Tosselwrench##2920
accept Liquid Stone##715 |goto Badlands 25.95,44.67 |only if itemcount(3823) > 0 and itemcount(929) > 0
accept Stone Is Better than Cloth##716 |goto Badlands 25.95,44.67 |only if itemcount(2868) > 0
|only if (itemcount(3823) > 0 and itemcount(929) > 0) or itemcount(2868) > 0
step
talk Lucien Tosselwrench##2920
turnin Liquid Stone##715 |goto Badlands 25.95,44.67 |only if itemcount(3823) > 0 and itemcount(929) > 0
turnin Stone Is Better than Cloth##716 |goto Badlands 25.95,44.67 |only if itemcount(2868) > 0
|only if (itemcount(3823) > 0 and itemcount(929) > 0) or itemcount(2868) > 0
step
label "Collect_Buzzard_Gizzards"
Kill Buzzard enemies around this area
collect 5 Buzzard Gizzard##7847 |q 2500/1 |goto Badlands 16.82,59.84
You can find more around: |notinsticky
[12.45,69.20]
[17.43,48.90]
[25.63,62.04]
[33.36,59.65]
[28.67,72.03]
[24.51,74.45]
[18.90,77.65]
step
label "Collect_Buzzard_Wings"
Kill Buzzard enemies around this area
collect 4 Buzzard Wing##3404 |q 703/1 |goto Badlands 16.82,59.84
|tip Be careful to not accidentally sell these to a vendor.
You can find more around: |notinsticky
[12.45,69.20]
[17.43,48.90]
[25.63,62.04]
[33.36,59.65]
[28.67,72.03]
[24.51,74.45]
[18.90,77.65]
step
label "Collect_Crag_Coyote_Fangs"
Kill Coyote enemies around this area
collect 10 Crag Coyote Fang##7846 |q 2500/2 |goto Badlands 23.75,55.12
You can find more around: |notinsticky
[14.18,65.72]
[31.58,65.16]
step
Kill enemies around this area
|tip Grinding a bit here will reduce the amount you have to grind all at once later.
|tip Don't turn in quests yet, unless you don't mind grinding more later. You will turn in quests after grinding.
ding 42 |goto Badlands 30.24,59.90
You can sell items at [42.47,52.50]
|tip Make sure not to accidentally sell Buzzard Wings if you sell items.
step
talk Rigglefuzz##2817
turnin Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Buzzard Wing##3404 |goto Badlands 53.80,43.31
step
talk Sigrun Ironhew##2860
turnin Scrounging##733 |goto Badlands 53.80,43.31
step
Allow Enemies to Kill You
|tip Make sure to die around this location.
|tip We are going to get the Thorium Point flight path in Searing Gorge.
|tip Don't worry about the resurrection sickness, you will be traveling around a bit.
|tip By the time you need to kill enemies again, it will be gone.
Die on Purpose |complete isdead |goto Searing Gorge 67.82,51.45 |q 2500
|only if not hardcore
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Searing Gorge 35.50,22.79 |q 2500 |zombiewalk
|only if not hardcore
step
talk Lanie Reed##2941
fpath Thorium Point |goto Searing Gorge 37.94,30.86
|only if not hardcore
step
Leave the building |goto Loch Modan 35.23,47.74 < 10 |walk |only if subzone("Stoutlager Inn")
Enter the building |goto Loch Modan 36.63,48.52 < 10 |walk
talk Ghak Healtouch##1470
|tip Inside the building.
turnin Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
talk Prospector Ironband##1344
turnin Murdaloc##739 |goto Loch Modan 65.93,65.62
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stranglethorn Vale (42-43)',
  {
    image = ZGV.IMAGESDIR .. 'Stranglethorn Vale',
    condition_suggested = function()
      return level >= 42 and level <= 43 and not completedq(607)
    end,
    next = 'Leveling Guides\\Swamp of Sorrows (43-43)',
    hardcore = true,
  },
  [[
step
Enter the building |goto Stormwind City 50.94,57.84 < 7 |walk
talk Frederick Stover##1298
buy Massive Longbow##11307 |n
|tip If you can afford it.
|tip It's a limited supply item, so it may not be for sale.
|tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
|tip We will check vendors for it along the way, if it's not here right now.
|tip If you have better, skip this step.
Visit the Vendor |vendor Frederick Stover##1298 |goto Stormwind City 49.98,57.64 |q 1363 |future
|only if Hunter and itemcount(11307) == 0
step
talk Jasper Fel##1325
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 669
|only if Rogue
step
Enter the building |goto Stormwind City 55.29,68.12 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect Sample Elven Gem##4502 |goto Stormwind City 57.66,72.78 |q 669
collect Kravel's Scheme##5826 |goto Stormwind City 57.66,72.78 |q 1118
step
Enter the building |goto Stormwind City 41.16,63.63 < 10 |walk
talk Mazen Mac'Nadir##338
|tip Inside the building.
accept Mazen's Behest##1363 |goto Stormwind City 51.8,74.3
step
talk Acolyte Dellis##5386
|tip Upstairs inside the building.
turnin Mazen's Behest##1363 |goto Stormwind City 51.4,73.8
accept Mazen's Behest##1364 |goto Stormwind City 51.4,73.8
step
Run up the ramp and enter the building |goto Stormwind City 39.32,81.50 < 10 |only if walking
talk High Sorcerer Andromath##5694
|tip Upstairs inside the building.
accept Vital Supplies##1477 |goto Stormwind City 48.7,87.6
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
accept Skullsplitter Tusks##209 |goto Stranglethorn Vale 27.00,77.13
step
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building, on the top floor.
turnin Sunken Treasure##669 |goto Stranglethorn Vale 27.17,77.01
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk |only if not subzone("The Salty Sailor Tavern")
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
turnin Back to Booty Bay##1118 |goto Stranglethorn Vale 27.12,77.21
step
Watch the dialogue
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
accept Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
talk Innkeeper Skindle##6807
|tip Inside the building, on the bottom floor.
home Booty Bay |goto Stranglethorn Vale 27.04,77.31
step
talk Catelyn the Blade##2542
|tip Upstairs inside the building, on the middle floor.
turnin Ansirem's Key##603 |goto Stranglethorn Vale 27.28,77.53
accept "Pretty Boy" Duncan##610 |goto Stranglethorn Vale 27.28,77.53
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
accept Scaring Shaky##606 |goto Stranglethorn Vale 27.78,77.07
step
Run up the ramp and cross the bridge |goto Stranglethorn Vale 28.16,76.54 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.32 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
accept Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
talk First Mate Crazz##2490
accept The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 28.10,76.22
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
kill "Pretty Boy" Duncan##2545
|tip Watch for respawns while you make you way here.	|only if hardcore
|tip Enemies tend to be bunched up at the camp.		|only if hardcore
collect Catelyn's Blade##4027 |q 610/1 |goto Stranglethorn Vale 27.38,69.41
step
click Bloodsail Correspondence##2083
turnin The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 27.28,69.52
accept The Bloodsail Buccaneers##597 |goto Stranglethorn Vale 27.28,69.52
step
Enter the tunnel to enter Booty Bay |goto Stranglethorn Vale 29.56,72.51 < 15 |only if walking and not subzone("Booty Bay")
talk First Mate Crazz##2490
turnin The Bloodsail Buccaneers##597 |goto Stranglethorn Vale 28.10,76.21
accept The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 28.10,76.21
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk
talk Catelyn the Blade##2542
|tip Upstairs inside the building, on the middle floor.
turnin "Pretty Boy" Duncan##610 |goto Stranglethorn Vale 27.28,77.53
accept The Curse of the Tides##611 |goto Stranglethorn Vale 27.28,77.53
step
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building, on the top floor.
turnin The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 27.17,77.01
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
kill Elder Mistvale Gorilla##1557+
collect 5 Mistvale Giblets##3919 |q 606/1 |goto Stranglethorn Vale 31.72,67.03
You can find more around: |notinsticky
[33.79,64.66]
[32.18,59.97]
step
Follow the road to this location and follow the path |goto Stranglethorn Vale 38.57,40.68 < 100 |only if walking
kill 10 Jungle Stalker##687 |q 196/1 |goto Stranglethorn Vale 33.70,38.83
|tip Be careful to avoid Tethis.
|tip He looks like a level 43 elite blue raptor that walks around this area.
You can find more around: |notinsticky
[31.79,41.74]
[28.91,44.29]
[27.19,49.65]
step
Kill Venture Co. enemies around this area
|tip This area is dangerous.						|only if hardcore
|tip Venture Co. Tinkerers are ranged attackers that deal heavy damage.	|only if hardcore
|tip They also  may summon a companion to fight at their side.		|only if hardcore
|tip Enemies may run away in fear at low health here.			|only if hardcore
collect 10 Singing Blue Crystal##3917 |q 600/1 |goto Stranglethorn Vale 41.22,43.95
stickystart "Collect_Skullsplitter_Tusks"
step
Kill Skullspliter enemies around this area
|tip Only the Mystics and Witch Doctors will drop these.
|tip Watch for patrols and respawns while here.					|only if hardcore |notinsticky
|tip Skullsplitter Mystics are ranged attackers that may heal at low health.	|only if hardcore |notinsticky
|tip Enemies tend to bunch together.						|only if hardcore |notinsticky
|tip Enemies around here may run away in fear when at low health.		|only if hardcore |notinsticky
collect 4 Skullsplitter Fetish##2466 |q 205/1 |goto Stranglethorn Vale 42.69,36.60
You can find more around: |notinsticky
[45.93,32.79]
[47.39,39.42]
[45.33,42.07]
step
label "Collect_Skullsplitter_Tusks"
Kill Skullspliter enemies around this area
|tip Avoid the eastern-most area, it is much higher level.
|tip Watch for patrols and respawns while here.					|only if hardcore |notinsticky
|tip Skullsplitter Mystics are ranged attacks that may heal at low health.	|only if hardcore |notinsticky
|tip Enemies tend to bunch together.						|only if hardcore |notinsticky
|tip Enemies around here may run away in fear when at low health.		|only if hardcore |notinsticky
collect 18 Skullsplitter Tusk##1524 |q 209/1 |goto Stranglethorn Vale 42.69,36.60
You can find more around: |notinsticky
[45.93,32.79]
[47.39,39.42]
[45.33,42.07]
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale 39.04,5.15 < 30 |only if walking and not subzone("Rebel Camp")
talk Brother Nimetz##739
turnin Troll Witchery##205 |goto Stranglethorn Vale 37.83,3.56
step
Leave the Rebel Camp |goto Stranglethorn Vale 39.28,5.59 < 40 |only if walking and subzone("Rebel Camp")
talk Sir S. J. Erlgadin##718
accept Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
|only if not hardcore
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
accept Raptor Mastery##197 |goto Stranglethorn Vale 35.66,10.81 |only if not hardcore
step
kill Elder Saltwater Crocolisk##2635
|tip They are level 38 elites, but you should be able to kill one at this level.
|tip They share spawns with Saltwater Crocolisks, so kill those also, if you can't find any.
|tip If you have trouble, try to find someone to help you.
collect Elder Crocolisk Skin##4105 |q 628/1 |goto Stranglethorn Vale 29.86,25.63
Also check around: |notinsticky
[29.29,22.16]
[25.39,19.18]
step
_NOTE:_
Incoming Underwater Quest
|tip The quest has you going underwater in an area surrounded by elites.
|tip While it is easy to avoid them, they may still aggro.
|tip You may want to skip this quest if you don't have a potion of water breathing to use for it.
|tip If you do skip the next step, you will need to grind 3,150 xp to make up for it.
Click Here to Continue |confirm |q 611 |future
step
click Altar of the Tides##2576
|tip It's important to pay attention to your breath during this step.
|tip It looks like a stone table underwater.
|tip Try to swim down directly on top of the stone table to avoid aggroing the elite murlocs nearby.
|tip If you can't do it without aggroing any murlocs, you should be able to kill them one at a time at this level.
|tip If you have trouble, try to find someone to help you, or skip the quest and abandon it.
kill Gazban##2624
|tip He looks like a level 40 (non-elite) goblin that appears after you click the altar.
|tip Try to pull him away to fight him on the surface of the water, away from the elite murlocs.
collect Stone of the Tides##4034 |q 611/1 |goto Stranglethorn Vale 24.96,23.58
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
turnin Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Tran'rek##2864 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
turnin Skullsplitter Tusks##209 |goto Stranglethorn Vale 27.00,77.13
step
talk Baron Revilgaz##2496
|tip Upstairs, on the balcony of the building, on the top floor.
turnin The Curse of the Tides##611 |goto Stranglethorn Vale 27.23,76.87
step
Run up the ramp and cross the bridge |goto Stranglethorn Vale 28.15,76.52 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.33 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
turnin Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building |goto Stranglethorn Vale 28.11,75.00 < 10 |walk
talk Haren Kanmae##2839
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 8-10 extra stacks.
|tip You are about to have a long grind.
Visit the Vendor |vendor Haren Kanmae##2839 |goto Stranglethorn Vale 28.31,74.56 |q 606
|only if Hunter
step
talk "Shaky" Phillipe##2502
turnin Scaring Shaky##606 |goto Stranglethorn Vale 26.90,73.59
accept Return to MacKinley##607 |goto Stranglethorn Vale 26.90,73.59
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
Kill enemies around this area
|tip This is a bit longer grind, but grinding some now will reduce the amount you have to grind all at once later.
|tip The next few levels will have a lot of grinding in them, so if you prefer, you could run dungeons to get to level 47, and then you shouldn't need to grind.
ding 43 |goto Stranglethorn Vale 31.72,67.03
You can find more around: |notinsticky
[33.79,64.66]
[32.18,59.97]
step
Enter the tunnel to enter Booty Bay |goto Stranglethorn Vale 29.56,72.51 < 15 |only if walking and not subzone("Booty Bay")
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Return to MacKinley##607 |goto Stranglethorn Vale 27.78,77.07
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Swamp of Sorrows (43-43)',
  {
    image = ZGV.IMAGESDIR .. 'Stranglethorn Vale',
    condition_suggested = function()
      return level == 43 and not completedq(1395)
    end,
    next = 'Leveling Guides\\Tanaris (43-44)',
    hardcore = true,
  },
  [[
step
talk Malissa##3135
|tip Walking around here.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
|tip Buy enough your journey to Tanaris.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 1477
|only if Rogue
step
talk Watchmaster Sorigal##5464
turnin Vital Supplies##1477 |goto Duskwood 75.77,46.15
step
_Note_
Be very careful to avoid the Stonard Scouts
|tip They are currently bugged and will PvP flag you just for being near them.
|tip This will let horde players attack and kill your character for the next 5 minutes.
Click Here To Confirm |confirm
|only if hardcore
step
Cross the bridge and follow the road |goto Deadwind Pass 41.83,34.69 < 30 |only if walking and not zone("Swamp of Sorrows")
Follow the road into Swamp of Sorrows |goto Deadwind Pass 52.29,43.58 < 40 |only if walking and not zone("Swamp of Sorrows")
talk Watcher Biggs##5476
accept Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
stickystart "Collect_Khadgar_Essay"
stickystart "Collect_Pristine_Crawler_Legs"
step
click Sundried Driftwood##24798+
|tip They look like wooden logs on the ground around this area.
|tip You can find them along this entire coast.
|tip Avoid Stonard as you travel here.					|only if not subzone("Misty Reed Strand")
|tip Murlocs at the Misty Reed Strand may run away in fear when at low health.	|only if hardcore
collect 8 Sundried Driftwood##6146 |q 1398/1 |goto Swamp of Sorrows 92.69,66.61
You can find more around: |notinsticky
[94.31,56.26]
[87.05,79.49]
[82.89,91.19]
step
label "Collect_Pristine_Crawler_Legs"
Kill Crawler enemies around this area
|tip They look like crabs.
|tip Silt Crawlers have a higher drop rate than Monstrous Crawlers.
|tip You can find more in the water along the shore.
|tip Avoid Stonard as you travel here. |notinsticky			|only if not subzone("Misty Reed Strand")
|tip Murlocs at the Misty Reed Strand may run away in fear when at low health.	|only if hardcore |notinsticky
collect 12 Pristine Crawler Leg##5938 |q 1258/1 |goto Swamp of Sorrows 84.82,85.11
You can find more around: |notinsticky
[87.37,78.50]
[94.25,58.94]
[94.49,45.41]
[90.25,26.39]
[81.33,10.31]
step
talk Watcher Biggs##5476
|tip Avoid Stonard as you travel here.
turnin Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
accept Deliver the Shipment##1425 |goto Swamp of Sorrows 26.74,59.83
step
label "Collect_Khadgar_Essay"
Kill Swamp Elementals around this zone
|tip This is a very low drop rate, prioritizing killing elementals while traveling the zone.
collect Khadgar's Essays on Dimensional Convergence##6065 |q 1364/1 |goto Swamp of Sorrows 13.02,35.77
step
Follow the path |goto Blasted Lands 53.29,12.23 < 40 |only if walking and not subzone("Nethergarde Keep")
Enter Nethergarde Keep |goto Blasted Lands 62.61,19.83 < 30 |only if walking
Enter the building |goto Blasted Lands 66.38,18.99 < 10 |walk
talk Watcher Mahar Ba##5385
|tip Inside the tower, at the top.
turnin Mazen's Behest##1364 |goto Blasted Lands 67.65,19.16
step
Leave the building |goto Blasted Lands 66.38,18.99 < 10 |walk |only if subzone("Nethergarde Keep") and _G.IsIndoors()
talk Quartermaster Lungertz##5393
turnin Deliver the Shipment##1425 |goto Blasted Lands 66.52,21.38
step
talk Alexandra Constantine##8609
|tip On top of the wooden platform, outside behind the building.
fpath Nethergarde Keep |goto Blasted Lands 65.54,24.33
step
talk Watchmaster Sorigal##5464
|tip This quest is timed, so we will accept it now and quickly fly back to Nethergarde Keep to turn it in.
accept Supplies for Nethergarde##1395 |goto Duskwood 75.77,46.15
step
talk Quartermaster Lungertz##5393
turnin Supplies for Nethergarde##1395 |goto Blasted Lands 66.52,21.38
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Tanaris (43-44)',
  {
    image = ZGV.IMAGESDIR .. 'Tanaris',
    condition_suggested = function()
      return level >= 43 and level <= 44 and not completedq(1707)
    end,
    next = 'Leveling Guides\\Stranglethorn Vale (44-45)',
    hardcore = true,
  },
  [[
step
_Note_
There is a long grind step towards the end of this guide.
|tip We recommend looking for a dungeon group at some point during this guide to make it less tedious.
|tip If you don't wish to do a dungeon, go out of your way to kill mobs between quests.
Click Here To Confirm |confirm
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
accept Stoley's Debt##2872 |goto Stranglethorn Vale  27.78,77.07
step
Enter the building |goto Dustwallow Marsh 66.00,45.20 < 10 |walk
talk Morgan Stern##4794
|tip Inside the building.
turnin ... and Bugs##1258 |goto Dustwallow Marsh 66.34,45.47
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Seaforium Booster##5862 |goto Tanaris 52.30,28.91 |q 1188
step
talk Shreev##4708
turnin Safety First##1188 |goto Tanaris 50.96,27.24
accept Safety First##1189 |goto Tanaris 50.96,27.24
step
talk Tran'rek##7876
turnin Tran'rek##2864 |goto Tanaris 51.57,26.76
step
talk Fizzle Brassbolts##4454
turnin News for Fizzle##1137 |goto Thousand Needles 78.06,77.13
step
talk Razzeric##4706
turnin Safety First##1189 |goto Thousand Needles 80.33,76.09
step
talk Pozzik##4630
accept Keeping Pace##1190 |goto Thousand Needles 80.18,75.88
|tip You must have completed "Salt Flat Venom" and "Hardened Shells" from the "Thousand Needles (33-34)" guide.
|tip This also requires completing "Martek the Exiled" and "Indurium" from the "Desolace (40-41)" and Badlands (41-42) guides.
step
talk Zamek##4709
|tip Click "Complete Quest" to complete "Zamek's Distraction".
Click Here After Completing Zamek's Distraction |confirm |goto Thousand Needles 79.81,77.02 |q 1190
step
Enter the building |goto Thousand Needles 77.52,77.60 < 10 |walk
click Rizzle's Unguarded Plans##20805
|tip Inside the building.
|tip Wait for Rizzle Brassbolts to run out of the building.
turnin Keeping Pace##1190 |goto Thousand Needles 77.22,77.42
accept Rizzle's Schematics##1194 |goto Thousand Needles 77.22,77.42
step
talk Pozzik##4630
turnin Rizzle's Schematics##1194 |goto Thousand Needles 80.18,75.88
step
_Destroy This Item:_
|tip It is no longer needed.
trash Sample of Indurium Ore##5866 |goto Tanaris 52.48,28.44
step
talk Spigot Operator Luglunket##7408
accept Water Pouch Bounty##1707 |goto Tanaris 52.48,28.44
step
talk Chief Engineer Bilgewhizzle##7407
accept Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
talk Senior Surveyor Fizzledowser##7724
accept Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
|only if not hardcore
step
Kill Roc enemies around this area
|tip They look like red birds.
|tip Skip this step if you run out of birds to kill at this location.
|tip You will finish the quest later.
collect 3 Roc Gizzard##6257 |q 1452/1 |goto Tanaris 49.47,35.83
step
use the Untapped Dowsing Widget##8584
|tip Avoid the elite enemies nearby this location while traveling here.
|tip Use it in the water.
|tip Once you get the Tapped Dowsing Widget, run away to safety immediately.
|tip Multiple higher level enemies appear after using the item.
collect Tapped Dowsing Widget##8585 |q 992/1 |goto Tanaris 39.09,29.17
|only if not hardcore
step
talk Senior Surveyor Fizzledowser##7724
turnin Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
|only if not hardcore
stickystart "Collect_Wastewander_Water_Pouches"
stickystart "Kill_Wastewander_Bandits"
stickystart "Kill_Wastewander_Thives"
step
talk Yeh'kinya##8579
accept Screecher Spirits##3520 |goto Tanaris 66.99,22.36
stickystop "Collect_Wastewander_Water_Pouches"
stickystop "Kill_Wastewander_Bandits"
stickystop "Kill_Wastewander_Thives"
step
Enter the building |goto Tanaris 66.99,23.87 < 10 |walk
talk Stoley##7881
|tip Inside the building.
turnin Stoley's Debt##2872 |goto Tanaris 67.11,23.98
stickystart "Kill_Wastewander_Bandits"
stickystart "Kill_Wastewander_Thives"
step
label "Collect_Wastewander_Water_Pouches"
Kill Wastewander enemies around this area
collect 10 Wastewander Water Pouch##8483 |goto Tanaris 59.82,24.34
|tip Be careful not to accidentally sell these to a vendor.
|tip You are gathering extra of these, so you can turn in multiple quests at the same time.
You can find more around [63.51,30.31]
|only if haveq(1707) or haveq(379)
step
label "Kill_Wastewander_Bandits"
kill 10 Wastewander Bandit##5618 |q 1690/1 |goto Tanaris 59.82,24.34
|tip They may run away in fear at low health.	|only if hardcore |notinsticky
You can find more around [63.51,30.31]
step
label "Kill_Wastewander_Thives"
kill 10 Wastewander Thief##5616 |q 1690/2 |goto Tanaris 59.82,24.34
|tip They may run away in fear at low health.	|only if hardcore |notinsticky
You can find more around [63.51,30.31]
step
Kill Roc enemies around this area
|tip They look like red birds.
|tip They share spawn points with hyenas, so kill those too, if you can't find any.
collect 3 Roc Gizzard##6257 |q 1452/1 |goto Tanaris 49.47,35.83
step
talk Chief Engineer Bilgewhizzle##7407
turnin Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
talk Spigot Operator Luglunket##7408
turnin Water Pouch Bounty##1707 |goto Tanaris 52.48,28.44
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Yeh'kinya's Bramble##10699 |goto Tanaris 52.30,28.91 |q 3520 |future
bank Roc Gizzard##6257 |goto Tanaris 52.30,28.91 |q 1452 |future
|tip You should have 3 of these.
step
Kill Wastewander enemies around this area
|tip You are about to have to complete some difficult quests in Stranglethorn Vale soon, so this level and the next level will have a lot of grinding to get you to level 45, to make the quests more manageable.
|tip Alternatively, you could run some dungeons instead, if you prefer.
|tip Wastelander Assassins can execute, be very careful when low health against these enemies. |only if hardcore
|tip Wastelander Rogues may be stealthed.						|only if hardcore
|tip Watch for patrols and respawns while around here.					|only if hardcore
collect Wastewander Water Pouch##8483+ |n
|tip You can turn in stacks of 5 water pouches in Gadgetzan for 380 xp.
|tip Collect enough stacks of them so that when you turn them in after grinding, you will hit level 44.
|tip If you need to sell items while grinding, kill enemies as you walk to and from Gadgetzan.
ding 44 |goto Tanaris 62.72,36.93
You can find more around:
[60.32,37.26]
[63.92,29.67]
[61.06,32.82]
[63.51,32.92]
Turn the Water Pouches in at [52.49,28.45]
You can sell items in Gadgetzan at [51.46,28.81]
You can buy arrows at [67.01,21.99] |only if Hunter
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stranglethorn Vale (44-45)',
  {
    image = ZGV.IMAGESDIR .. 'Stranglethorn Vale',
    condition_suggested = function()
      return level >= 44 and level <= 45 and not completedq(1122)
    end,
    next = 'Leveling Guides\\Feralas (45-48)',
    hardcore = true,
  },
  [[
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
accept Voodoo Dues##609 |goto Stranglethorn Vale 27.78,77.07
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk
talk Whiskey Slim##2491
|tip Inside the building, on the bottom floor.
accept Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.13,77.45
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
accept Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
talk Ian Strom##1411
trainer Ian Strom##1411 |goto Stranglethorn Vale/0 26.82,77.16 |q 621
|tip He is on the second floor of the inn, in a back room.
|tip Train your spells.
|only if Rogue
step
talk Deeg##2488
|tip Upstairs inside the building, on the top floor.
accept Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building, on the top floor.
accept The Bloodsail Buccaneers##604 |goto Stranglethorn Vale 27.17,77.01
step
talk Privateer Bloads##2494
|tip He walks around this area.
accept Akiris by the Bundle##617 |goto Stranglethorn Vale 26.76,76.38
He sometimes walks to [27.43,76.78]
step
Run up the ramp and follow the path |goto Stranglethorn Vale 28.07,76.49 < 10 |only if walking
talk Dizzy One-Eye##2493
|tip Outside, next to the building.
accept Keep An Eye Out##576 |goto Stranglethorn Vale 28.59,75.90
stickystart "Collect_Snuff"
stickystart "Collect_Dizzys_Eye"
stickystart "Kill_Bloodsail_Swashbucklers"
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
Follow the path |goto Stranglethorn Vale 32.89,73.75 < 40 |only if walking and not subzone("Wild Shore")
click Bloodsail Charts##2086
|tip It looks like a brown piece of paper.
|tip It can spawn on any of the objects in these 2 small camps.
collect Bloodsail Charts##3920 |q 604/2 |goto Stranglethorn Vale 29.59,80.83
Also check around: |notinsticky
[27.15,82.69]
[27.74,83.13]
step
click Bloodsail Orders##2087
|tip It looks like a white unrolled scroll.
|tip It can spawn on any of the objects in these 2 small camps.
|tip Enemies tend to bunch together around here.				|only if hardcore |notinsticky
|tip Bloodsail Warlocks are ranged attackers with pets that deal heavy damage.	|only if hardcore |notinsticky
collect Bloodsail Orders##3921 |q 604/3 |goto Stranglethorn Vale 29.59,80.80
Also check around: |notinsticky
[27.18,82.66]
[27.74,83.13]
step
label "Collect_Snuff"
Kill Bloodsail enemies around this area
|tip Enemies tend to bunch together around here.				|only if hardcore |notinsticky
|tip Bloodsail Warlocks are ranged attackers with pets that deal heavy damage.	|only if hardcore |notinsticky
collect 15 Snuff##3910 |q 587/1 |goto Stranglethorn Vale 27.07,82.90
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
label "Collect_Dizzys_Eye"
Kill Bloodsail enemies around this area
|tip Enemies tend to bunch together around here.				|only if hardcore |notinsticky
|tip Bloodsail Warlocks are ranged attackers with pets that deal heavy damage.	|only if hardcore |notinsticky
collect Dizzy's Eye##3897 |q 576/1 |goto Stranglethorn Vale 27.07,82.90
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
label "Kill_Bloodsail_Swashbucklers"
kill 10 Bloodsail Swashbuckler##1563 |q 604/1 |goto Stranglethorn Vale 27.07,82.90
|tip Enemies tend to bunch together around here.				|only if hardcore |notinsticky
|tip Bloodsail Warlocks are ranged attackers with pets that deal heavy damage.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
Follow the path |goto Stranglethorn Vale 32.75,73.68 < 40 |only if walking and subzone("Wild Shore")
Enter the tunnel to enter Booty Bay |goto Stranglethorn Vale 29.56,72.51 < 15 |only if walking and not subzone("Booty Bay")
talk Dizzy One-Eye##2493
|tip Outside, next to the building.
turnin Keep An Eye Out##576 |goto Stranglethorn Vale 28.59,75.90
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk |only if not subzone("The Salty Sailor Tavern")
talk Innkeeper Skindle##6807
|tip Inside the building, on the bottom floor.
home Booty Bay |goto Stranglethorn Vale 27.04,77.31
step
talk Deeg##2488
|tip Upstairs inside the building, on the top floor.
turnin Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building.
turnin The Bloodsail Buccaneers##604 |goto Stranglethorn Vale 27.17,77.01
accept The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.01 |only if not hardcore
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
kill Naga Explorer##1907+
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect 10 Akiris Reed##4029 |q 617/1 |goto Stranglethorn Vale 27.88,62.75
You can find more around: |notinsticky
[27.00,63.02]
[25.43,62.88]
[26.04,60.45]
stickystart "Collect_Zanzils_Mixture"
step
Cross the bridge |goto Stranglethorn Vale 27.20,58.95 < 20 |only if walking and subzone("Southern Savage Coast")
kill Jon-Jon the Crow##2536
|tip There may be 2 adds around him that will pull if you attack him.	|only if hardcore
|tip Clear the area before attempting to kill.				|only if hardcore
collect Jon-Jon's Golden Spyglass##3925 |q 609/2 |goto Stranglethorn Vale 34.93,51.85
step
kill Maury "Club Foot" Wilkins##2535
|tip There may be 2 adds around him that will pull if you attack him.	|only if hardcore
|tip Clear the area before attempting to kill.				|only if hardcore
collect Maury's Clubbed Foot##3924 |q 609/1 |goto Stranglethorn Vale 35.25,51.26
step
Follow the path |goto Stranglethorn Vale 33.73,53.77 < 30 |only if walking and not subzone("Ruins of Aboraz")
kill Chucky "Ten Thumbs"##2537
collect Chucky's Huge Ring##3926 |q 609/3 |goto Stranglethorn Vale 40.00,58.24
step
label "Collect_Zanzils_Mixture"
Kill Zanzil enemies around this area
|tip The respawns here can be slow, rotate between the two locations as needed.
|tip Be careful to not attack Zanzil the Outcast in the ruins.	|only if subzone("Ruins of Aboraz")
|tip He summons a lot of enemies.				|only if subzone("Ruins of Aboraz")
|tip If you accidentally pull him, you can run in the water to evade him. |only if subzone("Ruins of Aboraz")
collect 12 Zanzil's Mixture##4016 |q 621/1 |goto Stranglethorn Vale 40.00,58.24
You can find more around [34.12,51.96]
step
Follow the path back to the road |goto Stranglethorn Vale 37.84,56.28 < 20 |only if walking and subzone("Ruins of Aboraz")
Follow the road to this location and follow the path |goto Stranglethorn Vale 38.57,40.68 < 100 |only if walking
kill Tethis##730
|tip He looks like a blue raptor that walks around this area.
|tip Be sure to clear non-elite enemies nearby before pulling.
|tip He is a level 43 elite, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
|tip If you don't want to risk trying to kill him, skip the quest and abandon "Raptor Mastery". |only if hardcore
collect Talon of Tethis##3877 |q 197/1 |goto Stranglethorn Vale 32.22,40.89
You can also find him around: |notinsticky
[31.17,43.40]
[28.74,44.84]
|only if haveq(197)
step
kill Bhag'thera##728
|tip He looks like an unstealthed black panther.
|tip Be sure to clear non-elite enemies nearby before pulling.
|tip He is a level 40 elite, so you should be able to kill him pretty easily.
|tip If you have trouble, try to find someone to help you.
|tip He can spawn in multiple locations.
|tip If you don't want to risk trying to kill him, skip the quest and abandon "Panther Mastery". |only if hardcore
collect Fang of Bhag'thera##3876 |q 193/1 |goto Stranglethorn Vale 46.37,29.05
Cross this tree bridge to get to the other locations: [48.92,28.04]
You can also find him around: |notinsticky
[49.60,24.03]
[48.99,20.20]
|only if haveq(193)
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##197 |goto Stranglethorn Vale 35.66,10.81
|only if haveq(197)
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
|only if haveq(193)
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
turnin Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
talk Privateer Bloads##2494
|tip He walks around this area.
turnin Akiris by the Bundle##617 |goto Stranglethorn Vale 26.76,76.38
accept Akiris by the Bundle##623 |goto Stranglethorn Vale 26.76,76.38
He sometimes walks to [27.43,76.78]
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Voodoo Dues##609 |goto Stranglethorn Vale 27.78,77.07
step
Enter the building |goto Stranglethorn Vale 28.10,75.00 < 15 |walk
talk Haren Kanmae##2839
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
|tip You are around to have a long grind.
Visit the Vendor |vendor Haren Kanmae##2839 |goto Stranglethorn Vale 28.31,74.56 |q 623
|only if Hunter
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
Kill enemies around this area
|tip This is a longer grind, but you are about to have to complete some difficult quests on the boats south of Booty Bay, so being a level higher will help. |only if not hardcore
|tip Grinding now will also reduce the amount you have to grind all at once later.
|tip Alternatively, you could run a dungeon, if you prefer.
ding 45 |goto Stranglethorn Vale 31.72,67.03
You can find more around: |notinsticky
[Stranglethorn Vale 33.79,64.66]
[Stranglethorn Vale 32.18,59.97]
step
Enter the tunnel to enter Booty Bay |goto Stranglethorn Vale 29.56,72.51 < 15 |only if walking
Enter Booty Bay |complete subzone("Booty Bay") |goto Stranglethorn Vale 24.70,75.54 |q 1119 |future
|only if not subzone("Booty Bay")
step
Swim out of Booty Bay |goto Stranglethorn Vale 24.70,75.54 < 40 |only if walking and subzone("Booty Bay")
Run up the ramp to board the ship |goto Stranglethorn Vale 29.89,89.33 < 10 |only if walking
kill Captain Keelhaul##2548 |q 608/2 |goto Stranglethorn Vale 29.20,88.34
|tip He walks around this area, downstairs inside the ship.
|tip On the middle floor.
|tip If you have trouble, try to find someone to help you.
|only if not hardcore
step
click Cortello's Riddle##2554
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto Stranglethorn Vale 29.20,88.60 |q 624 |future |or
|tip
Click Here if the Scroll is Not On This Ship |confirm |or
|only if not (haveq(624) or completedq(624)) and not hardcore
step
Run up the ramp to board the ship |goto Stranglethorn Vale 30.17,89.43 < 10 |only if walking
kill Fleet Master Firallon##2546 |q 608/3 |goto Stranglethorn Vale 30.58,90.64
|tip Downstairs inside the ship.
|tip On the middle floor.
|tip He's level 48, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
|only if not hardcore
step
click Cortello's Riddle
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto Stranglethorn Vale 30.64,90.17 |q 624 |future |or
|tip
Click Here if the Scroll is Not On This Ship |confirm |or
|only if not (haveq(624) or completedq(624)) and not hardcore
step
Run up the ramp to board the ship |goto Stranglethorn Vale 33.66,87.48 < 10 |only if walking
kill Captain Stillwater##2550 |q 608/1 |goto Stranglethorn Vale 32.87,88.20
|tip Downstairs inside the ship.
|tip On the middle floor.
|tip If you have trouble, try to find someone to help you.
|only if not hardcore
step
click Cortello's Riddle
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto Stranglethorn Vale 33.39,88.17 |q 624 |future
|tip If you still can't find it, skip the quest.
|only if not (haveq(624) or completedq(624)) and not hardcore
step
use Cortello's Riddle##4056
accept Cortello's Riddle##624
|only if itemcount(4056) > 0
step
cast Teleport: Moonglade##18960
trainer Loganaar##12042 |goto Moonglade/0 52.50,40.54 |q 608
|tip Go to Moonglade and train your spells, then hearth once it is off cooldown.
|only if Druid and C_Container.GetItemCooldown(6948) <= 100
step
use the Hearthstone##6948
Hearth to Booty Bay |goto Stranglethorn Vale 27.07,77.28 < 30 |noway |c |q 608
|only if subzone("Wild Shore")
step
_WARNING:_
|tip Do NOT accept the quest in the next step, if you are not planning to continue for at least 1 hour more.
|tip The quest has a time limit of 2 hours to complete, and it continues counting down even when you're logged out.
|tip You will turn the quest in fairly soon, so you shouldn't need the full 2 hours.
Click Here to Continue |confirm |q 1119 |future
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
accept Zanzil's Mixture and a Fool's Stout##1119 |goto Stranglethorn Vale 27.12,77.21
step
talk Fleet Master Seahorn##2487
|tip Upstairs, on the balcony of the building.
turnin The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.00
|only if not hardcore
step
click A Soggy Scroll##2553
|tip Underwater, under the bridge.
turnin Cortello's Riddle##624 |goto Swamp of Sorrows 22.86,48.19
accept Cortello's Riddle##625 |goto Swamp of Sorrows 22.86,48.19
|only if haveq(624)
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 623
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 623
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 623
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 623
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 623
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 623
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 623
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
talk Privateer Groy##2616
|tip He walks around this area.
turnin Akiris by the Bundle##623 |goto Dustwallow Marsh 68.84,53.22
Also check around [Dustwallow Marsh 68.02,51.44]
step
Enter the cave |goto Dustwallow Marsh 31.71,65.74 < 15 |walk
click Musty Scroll##2555
|tip Inside the cave.
turnin Cortello's Riddle##625 |goto Dustwallow Marsh 31.10,66.15
accept Cortello's Riddle##626 |goto Dustwallow Marsh 31.10,66.15
|only if haveq(625)
step
talk Kravel Koalbeard##4452
turnin Zanzil's Mixture and a Fool's Stout##1119 |goto Thousand Needles 77.79,77.27
step
Watch the dialogue
talk Kravel Koalbeard##4452
accept Get the Gnomes Drunk##1120 |goto Thousand Needles 77.79,77.27
step
talk Gnome Pit Boss##4495
turnin Get the Gnomes Drunk##1120 |goto Thousand Needles 77.56,76.94
step
talk Kravel Koalbeard##4452
accept Report Back to Fizzlebub##1122 |goto Thousand Needles 77.79,77.27
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Feralas (45-48)',
  {
    image = ZGV.IMAGESDIR .. 'Stranglethorn Vale',
    condition_suggested = function()
      return level >= 45 and level <= 48 and not completedq(4281)
    end,
    next = 'Leveling Guides\\Tanaris (48-49)',
    hardcore = true,
  },
  [[
step
Optional Route Change
|tip You can opt to do Zul'Farrak around level 47 instead of grinding.
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do Zul'Farrak, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Zul'Farrak later |confirm ZFflag
Click Here if you'd prefer to grind |confirm
step
talk Curgle Cranklehop##7763
accept Handle With Care##3022 |goto Tanaris 52.35,26.91
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Yeh'kinya's Bramble##10699 |goto Tanaris 52.30,28.91 |q 3520
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Fool's Stout Report##5807 |goto Tanaris 52.30,28.91 |q 1122 |future
step
talk Pratt McGrubben##7852
accept The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
talk Innkeeper Shyria##7736
|tip Inside the building.
home Feathermoon Stronghold |goto Feralas 30.97,43.49
step
Enter the building |goto Feralas 30.77,45.23 < 15 |walk
talk Latronicus Moonspear##7877
|tip Inside the building.
accept The Missing Courier##4124 |goto Feralas 30.38,46.17
step
talk Shandris Feathermoon##3936
|tip Inside the building.
accept The Ruins of Solarsal##2866 |goto Feralas 30.28,46.17
step
talk Troyas Moonbreeze##7764
|tip Inside the building.
accept In Search of Knowledge##2939 |goto Feralas 31.78,45.50
step
talk Angelas Moonbreeze##7900
|tip Inside the building.
accept The High Wilderness##2982 |goto Feralas 31.83,45.61
step
talk Ginro Hearthkindle##7880
|tip Upstairs inside the building.
turnin The Missing Courier##4124 |goto Feralas 31.86,45.13
accept The Missing Courier##4125 |goto Feralas 31.86,45.13
step
click Solarsal Gazebo##142179
|tip You have to be standing inside of it to be able to click it.
turnin The Ruins of Solarsal##2866 |goto Feralas 26.32,52.34
accept Return to Feathermoon Stronghold##2867 |goto Feralas 26.32,52.34
step
talk Shandris Feathermoon##3936
|tip Inside the building.
turnin Return to Feathermoon Stronghold##2867 |goto Feralas 30.28,46.17
accept Against the Hatecrest##3130 |goto Feralas 30.28,46.17
step
talk Latronicus Moonspear##7877
|tip Inside the building.
turnin Against the Hatecrest##3130 |goto Feralas 30.38,46.17
accept Against the Hatecrest##2869 |goto Feralas 30.38,46.17
step
Kill Hatecrest enemies around this area
|tip Hatecrest Screamers's may heal during fighting.	|only if hardcore
|tip Hatecrest Sirens are ranged attackers.		|only if hardcore
|tip Enemies may run away in fear at low health here.	|only if hardcore
collect 10 Hatecrest Naga Scale##9247 |q 2869/1 |goto Feralas 28.66,53.05
You can find more around [26.21,51.95]
step
talk Latronicus Moonspear##7877
|tip Inside the building.
turnin Against the Hatecrest##2869 |goto Feralas 30.38,46.17
accept Against Lord Shalzaru##2870 |goto Feralas 30.38,46.17
step
talk Faralorn##7942
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 15-20 extra stacks.
|tip You have a long grind soon.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 2870
|only if Hunter
step
_NOTE:_
Incoming Cave Step
|tip The cave you're about to be sent into has inconsistent spawn rates.
|tip Over all it's pretty dangerous.
|tip The quest is optional.
|tip If you do skip you will need to grind 6,800 xp.
Click Here to Continue |confirm |q 2870 |future
|only if hardcore
step
Follow the path |goto Feralas 25.48,64.99 < 20 |only if walking
Enter the cave |goto Feralas 26.09,67.26 < 20 |walk
kill Lord Shalzaru##8136
|tip Inside the cave.
|tip This cave is dangerous. |only if hardcore
|tip It's easy to be overwhelmed by patrolling or casting enemies. |only if hardcore
|tip Be mindful while you progress through the cave. |only if hardcore
|tip If you have trouble, try to find someone to help you.
collect Mysterious Relic##9248 |q 2870/1 |goto Feralas 28.49,70.45
stickystart "Accept_Find_OOX_22"
step
Leave the cave |goto Feralas 26.09,67.26 < 20 |walk |only if subzone("Shalzaru's Lair")
Kill enemies around this area
|tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
|tip We are grinding for a while now, to reduce the amount you have to grind all at once later.
|tip If you prefer, you can run dungeons until you reach level 46.
ding 46 |goto Feralas 26.39,54.22
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if hardcore
step
_NOTE:_
During the Next Step
|tip You will be swimming to a sunken boat on the shore on the other side of the water.
|tip You will get fatigued while swimming and may get very close to dying, if you're not careful.
|tip If you want to be safer while swimming, look at your world map and only swim in the sections of water with lines in it.
|tip Doing this will prevent fatigue, or greatly reduce the amount you experience, making the swim much safer.
Click to Continue |confirm |q 4125
|only if hardcore
step
Leave the cave |goto Feralas 26.09,67.26 < 20 |walk |only if subzone("Shalzaru's Lair")
click Wrecked Row Boat##164909
|tip Underwater.
|tip You can ride the boat and follow the coast or swim across. |only if hardcore
|tip Swimming across takes you through a fatigue zone which can be dangerous. |only if hardcore
|tip Use a healing potion when you're low health from the Fatigue from swimming across.
|tip You will make it out of the Fatigue zone shortly after.
|tip Be careful of the elementals and giants near the boat. |only if hardcore
|tip You will be hearthing back to Feathermoon Stronghold after this step is finished.
turnin The Missing Courier##4125 |goto Feralas 45.45,64.97
accept Boat Wreckage##4127 |goto Feralas 45.45,64.97
step
talk Faralorn##7942
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 6-8 extra stacks.
|tip You will be questing a while.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 2870
|only if Hunter
step
talk Ginro Hearthkindle##7880
|tip Upstairs inside the building.
turnin Boat Wreckage##4127 |goto Feralas 31.86,45.13
accept The Knife Revealed##4129 |goto Feralas 31.86,45.13
step
Enter the building |goto Feralas 30.77,45.23 < 15 |walk
talk Latronicus Moonspear##7877
|tip Inside the building.
turnin Against Lord Shalzaru##2870 |goto Feralas 30.38,46.17
accept Delivering the Relic##2871 |goto Feralas 30.38,46.17
step
talk Vestia Moonspear##7878
|tip Inside the building.
turnin Delivering the Relic##2871 |goto Feralas 30.08,45.06
step
Enter the building |goto Feralas 32.34,43.69 < 10 |walk
talk Quintis Jonespyre##7879
|tip Upstairs inside the building.
turnin The Knife Revealed##4129 |goto Feralas 32.45,43.79
step
Watch the dialogue
talk Quintis Jonespyre##7879
|tip Upstairs inside the building.
accept Psychometric Reading##4130 |goto Feralas 32.45,43.79
step
talk Ginro Hearthkindle##7880
|tip Upstairs inside the building.
turnin Psychometric Reading##4130 |goto Feralas 31.86,45.13
accept The Woodpaw Gnolls##4131 |goto Feralas 31.86,45.13
step
Run onto the dock and ride the boat or swim across the water |goto Feralas 31.03,39.92 < 40 |only if walking and subzone("Feathermoon Stronghold")
Kill Screecher enemies around this area
|tip Vale Screechers and Rogue Vale Screechers will count for the quest.
|tip They look like thin flying dragons.
use Yeh'kinya's Bramble##10699
|tip Use it on their corpses.
talk Screecher Spirit##8612+
|tip They appear after using Yeh'kinya's Bramble on the corpses.
Collect #3# Screecher Spirits |q 3520/1 |goto Feralas 46.26,40.14
You can find more around: |notinsticky
[45.86,37.59]
[44.46,36.19]
[42.49,36.47]
stickystart "Collect_Thick_Yeti_Hides"
step
use the OOX-22/FE Distress Beacon##8705
accept Find OOX-22/FE!##2766 |goto Feralas 53.35,55.70
|only if itemcount(8705) == 1
step
Follow the path up |goto Feralas 47.11,44.49 < 30 |only if walking and subzone("The Forgotten Coast")
Run through the tunnel |goto Feralas 55.15,56.36 < 15 |only if walking
talk Homing Robot OOX-22/FE##7807
|tip This NPC offers an escort quest.
|tip If it's not here, someone may be escorting it.
|tip Wait until it respawns.
turnin Find OOX-22/FE!##2766 |goto Feralas 53.35,55.70
|tip You will complete the escort quest later when you're higher level, to make it easier.
step
label "Collect_Thick_Yeti_Hides"
Kill Feral Scar enemies around this area
|tip They look like yetis.
|tip Watch for patrols and respawns while here.	|only if hardcore
collect 10 Thick Yeti Hide##8973 |q 2821/1 |goto Feralas 56.20,57.02
You can find more through the tunnel at [55.14,56.36]
stickystart "Collect_Ironfur_Livers"
stickystart "Collect_Groddoc_Livers"
step
Follow the path up |goto Feralas 54.10,68.24 < 40 |only if walking and not subzone("Frayfeather Highlands")
click Hippogryph Egg##141931
|tip They are found in nests on the hill.
collect Hippogryph Egg##8564 |goto Feralas 56.66,75.90 |q 2741 |future
|tip You will use this for a future quest.
|tip Be careful not to accidentally sell this to a vendor.
You can find more around: |notinsticky
[58.49,76.10]
[57.99,76.30]
[58.27,76.72]
[57.30,77.37]
[57.02,78.21]
stickystart "Kill_Gordunni_Warlocks"
step
kill 8 Gordunni Shaman##5236 |q 2982/2 |goto Feralas 59.67,66.85
|tip They share spawn points with the other ogres, so kill those too, if you can't find any.
|tip Prioritize these where possible. You can find Warlocks and Brutes up north.
|tip Watch for patrols and respawn while in the area.	|only if hardcore
stickystart "Kill_Gordunni_Brutes"
step
label "Kill_Gordunni_Warlocks"
kill 8 Gordunni Warlock##5240 |q 2982/1 |goto Feralas 59.22,64.15
|tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
You can find more around [61.03,55.64]
step
label "Kill_Gordunni_Brutes"
kill 8 Gordunni Brute##5232 |q 2982/3 |goto Feralas 61.00,55.61
|tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
You can find more around [59.28,63.51]
step
label "Collect_Ironfur_Livers"
kill Ironfur Bear##5268+
|tip They look like bears.
collect 3 Ironfur Liver##6258 |q 1452/2 |goto Feralas 60.27,60.56
You can find more around: |notinsticky
[58.52,60.59]
[57.74,56.51]
step
label "Collect_Groddoc_Livers"
kill Groddoc Ape##5260+
|tip They look like gorillas.
|tip They share spawn points with Ironfur Bears, so kill those too, if you can't find any.
collect 3 Groddoc Liver##6259 |q 1452/3 |goto Feralas 60.27,60.56
You can find more around: |notinsticky
[58.52,60.59]
[57.74,56.51]
step
Prepare for Zul'Farrak
|tip It will be a good time to start Zul'Farrak soon.
|tip You should run it after the next few quests, roughly 30 minutes.
|tip Start looking for a group.
|confirm
|only if guideflag("ZFflag")
step
Cross the bridge and follow the road |goto Feralas 63.40,52.43 < 20 |only if walking and not subzone("Grimtotem Compound")
Kill enemies around this area
|tip Clear the area around the large cage, to make the next step easier.
Click Here After You Clear the Enemies |confirm |goto Feralas 66.69,46.57 |q 2969 |future
step
Follow the path up |goto Feralas 65.66,46.77 < 10 |only if walking
talk Kindal Moonweaver##7956
accept Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
click Cage Door
|tip Follow the Captured Sprite Darters and protect them.
|tip You have to make sure at least 6 of them survive.
|tip HURRY!  You must complete the quest and turn it in before the timer ends.
|tip Watch for patrols and respawn while in the area.	|only if hardcore
Save at Least 6 Sprite Darters from Capture |q 2969/1 |goto Feralas 66.67,46.75
step
Follow the path up |goto Feralas 65.66,46.77 < 10 |only if walking
talk Kindal Moonweaver##7956
|tip HURRY!  You must turn it in before the timer ends.
|tip If you're very quick, she may need a moment to respawn. Don't panic.
turnin Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
talk Jer'kai Moonweaver##7957
accept Doling Justice##2970 |goto Feralas 65.95,45.61
stickystart "Kill_Grimtotem_Raiders"
stickystart "Kill_Grimtotem_Naturalists"
step
kill 6 Grimtotem Shaman##7727 |q 2970/3 |goto Feralas 66.89,46.43
|tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
|tip Grimtotem Shaman may heal when at low health.	|only if hardcore |notinsticky
|tip Enemies may run away in fear at low health.	|only if hardcore |notinsticky
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
label "Kill_Grimtotem_Raiders"
kill 10 Grimtotem Raider##7725 |q 2970/2 |goto Feralas 66.89,46.43
|tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
|tip Grimtotem Shaman may heal when at low health.	|only if hardcore |notinsticky
|tip Enemies may run away in fear at low health.	|only if hardcore |notinsticky
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
label "Kill_Grimtotem_Naturalists"
kill 12 Grimtotem Naturalist##7726 |q 2970/1 |goto Feralas 66.89,46.43
|tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
|tip Grimtotem Shaman may heal when at low health.	|only if hardcore |notinsticky
|tip Enemies may run away in fear at low health.	|only if hardcore |notinsticky
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
Follow the path up |goto Feralas 65.66,46.77 < 10 |only if walking
talk Jer'kai Moonweaver##7957
turnin Doling Justice##2970 |goto Feralas 65.95,45.61
accept Doling Justice##2972 |goto Feralas 65.95,45.61
step
click Large Leather Backpacks##164953
|tip Clear Woodpaw enemies around the area before attempting to gather.	|only if hardcore
turnin The Woodpaw Gnolls##4131 |goto Feralas 73.31,56.31
accept The Writhing Deep##4135 |goto Feralas 73.31,56.31
step
use the Undelivered Parcel##11463
accept Thalanaar Delivery##4281
step
_NOTE:_
Incoming Cave Step
|tip The next step has you traveling into a cave with enemies that run away in fear quickly when at low health.
|tip Zukk'ash Stingers patrol the tunnels and may deal heavy damage upon death.
|tip Enemies also have larger than normal aggro radius, so it may require careful navigation as well.
|tip Not completing the quest will make it impossible to complete a few other quests in the guide.
|tip It will also end up making you need to grind 13,560 xp to catch up.
Click Here to Continue |confirm |q 4265 |future
|only if hardcore
step
Follow the path up |goto Feralas 72.11,62.68 < 40 |only if walking
Enter the cave at the bottom of the path |goto Feralas 73.17,63.88 < 7 |walk
Follow the path down |goto Feralas 72.69,64.56 < 7 |walk
click Zukk'ash Pod##164954
|tip Inside the cave.
|tip Watch for patrols and respawns while in the area.			|only if hardcore
|tip Enemies may run away in fear at low health.			|only if hardcore
|tip Zukk'ash Stingers deal heavy damage when they are about to die.	|only if hardcore
turnin The Writhing Deep##4135 |goto Feralas 72.08,63.75
accept Freed from the Hive##4265 |goto Feralas 72.08,63.75
step
Watch the dialogue
|tip Inside the cave.
|tip Watch for patrols and respawns while in the area.			|only if hardcore
|tip Enemies may run away in fear at low health.			|only if hardcore
|tip Zukk'ash Stingers deal heavy damage when they are about to die.	|only if hardcore
Free Raschal |q 4265/1 |goto Feralas 72.08,63.81
step
talk Faralorn##7942
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
|tip You have a longer grind coming up soon.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 2821
|only if Hunter
step
talk Pratt McGrubben##7852
turnin The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
talk Angelas Moonbreeze##7900
|tip Inside the building.
turnin The High Wilderness##2982 |goto Feralas 31.83,45.61
accept The Sunken Temple##3445 |goto Feralas 31.83,45.61
step
talk Ginro Hearthkindle##7880
|tip Upstairs inside the building.
turnin Freed from the Hive##4265 |goto Feralas 31.86,45.13
accept A Hero's Welcome##4266 |goto Feralas 31.86,45.13
step
Enter the building |goto Feralas 30.76,45.23 < 15 |walk
talk Shandris Feathermoon##3936
|tip Inside the building.
turnin A Hero's Welcome##4266 |goto Feralas 30.28,46.17
accept Rise of the Silithid##4267 |goto Feralas 30.28,46.17
step
talk Yeh'kinya##8579
turnin Screecher Spirits##3520 |goto Tanaris 66.98,22.36
accept The Prophecy of Mosh'aru##3527 |goto Tanaris 66.98,22.36
|only if guideflag("ZFflag")
step
talk Chief Engineer Bilgewhizzle##7407
accept Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
|only if guideflag("ZFflag")
step
talk Tran'rek##7876
accept Scarab Shells##2865 |goto Tanaris 51.57,26.76
|only if guideflag("ZFflag")
step
talk Trenton Lighthammer##7804
accept Troll Temper##3042 |goto Tanaris 51.42,28.75
|only if guideflag("ZFflag")
step
Enter the Zul'Farrak Dungeon with Your Group |goto Zul'Farrak/0 0.00,0.00 < 555 |c |q 3042
|only if guideflag("ZFflag")
stickystart "Collect_5_Uncracked_Scarab_Shell"
stickystart "Collect_20_Troll_Temper"
step
Inside the Zul'Farrak Dungeon:
kill Theka the Martyr##7272
|tip He is the second boss of the dungeon.
|tip Follow the path north and then go right when the path splits.
|tip Quickly go left afterwards and then north.
collect First Mosh'aru Tablet##10660 |q 3527/1
|only if guideflag("ZFflag")
step
label "Collect_Divino-matic_Rod"
Inside the Zul'Farrak Dungeon: |notinsticky
kill Sergeant Bly##7604
|tip He will be killable after you release them from captivity and clear the temple event.
collect Divino-matic Rod##8548 |q 2768/1
|only if guideflag("ZFflag")
step
Inside the Zul'Farrak Dungeon:
kill Hydromancer Velratha##7795
|tip Follow the path southeast to reach the large room with a pool in the center.
|tip She walks around this area.
collect Tiara of the Deep##9234 |q 2846/1 |only if haveq(2846)
collect Second Mosh'aru Tablet##10661 |q 3527/2
|only if guideflag("ZFflag")
step
Inside the Zul'Farrak Dungeon:
use the Mallet of Zul'Farrak##9240
|tip Clear the room.
|tip Use it near the gong atop the pool of water.
kill Gahz'rilla##7273
collect Gahz'rilla's Electrified Scale##8707 |q 2770/1
|only if guideflag("ZFflag") and haveq(2770)
step
label "Collect_5_Uncracked_Scarab_Shell"
Inside the Zul'Farrak Dungeon: |notinsticky
kill Scarab##7269+
|tip They are found all around the instance, but mostly in the scarab room with Theka the Martyr.
collect 5 Uncracked Scarab Shell##9238 |q 2865/1
|only if guideflag("ZFflag")
step
label "Collect_20_Troll_Temper"
Inside the Zul'Farrak Dungeon: |notinsticky
Kill enemies around this area
|tip These drop from troll enemies inside of Zul'Farrak.
|tip It will likely take multiple runs to complete.
collect 20 Troll Temper##9523 |q 3042/1
|only if guideflag("ZFflag")
step
Leave the Zul'Farak Dungeon
Click Here to Continue |confirm |q 3042
|only if guideflag("ZFflag")
step
talk Yeh'kinya##8579
turnin The Prophecy of Mosh'aru##3527 |goto Tanaris 66.98,22.36
|only if guideflag("ZFflag")
step
talk Chief Engineer Bilgewhizzle##7407
turnin Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
|only if guideflag("ZFflag")
step
talk Tran'rek##7876
turnin Scarab Shells##2865 |goto Tanaris 51.57,26.76
|only if guideflag("ZFflag")
step
talk Trenton Lighthammer##7804
turnin Troll Temper##3042 |goto Tanaris 51.42,28.75
|only if guideflag("ZFflag")
step
talk Wizzle Brassbolts##4453
turnin Gahz'rilla##2770 |goto Thousand Needles 78.14,77.11
|only if guideflag("ZFflag") and readyq(2770)
step
Kill enemies around this area
|tip Inside and outside the cave.
|tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
|tip We are grinding for a while now, to reduce the amount you have to grind all at once later.
|tip If you prefer, you can run dungeons until you reach level 47.
|tip You are about to take a long flight to Darnassus, so grinding now is also to make sure your hearthstone is available to use to return quickly to Feralas afterward.
ding 47 |goto Feralas 26.09,67.26
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if not hardcore
step
Kill enemies around this area
|tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
|tip We are grinding for a while now, to reduce the amount you have to grind all at once later.
|tip If you prefer, you can run dungeons until you reach level 47.
ding 47 |goto Feralas 26.39,54.22
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if hardcore
step
label "Accept_Find_OOX_22"
Kill enemies around this area |notinsticky
collect OOX-22/FE Distress Beacon##8705 |n
|tip Any enemy in Feralas can drop this item.
use the OOX-22/FE Distress Beacon##8705
accept Find OOX-22/FE!##2766 |goto Feralas 26.39,54.22
|only if not guideflag("ZFflag")
step
_NOTE:_
Run Back to Feathermoon Stronghold
|tip Do NOT use your hearthstone to return to Feathermoon Stronghold.
|tip You are about to take a long flight to Darnassus, so you'll want to make sure your hearthstone is available to use to return quickly to Feralas afterward.
|tip If you reached level 47 and your hearthstone is still not ready to be used, continue grinding until it's ready.
|tip You have another very long grind when you return from Darnassus, but it is the last long grind you will have to do.
Click Here to Continue |confirm |q 4267
|only if not guideflag("ZFflag")
step
talk Faralorn##7942
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 18-20 extra stacks.
|tip You have a long grind coming up soon.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 4267
|only if Hunter
step
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Handle With Care##3022 |goto Teldrassil 55.50,92.05
accept Favored of Elune?##3661 |goto Teldrassil 55.50,92.05
step
talk Daryn Lightwind##7907
|tip Upstairs inside the building.
turnin In Search of Knowledge##2939 |goto Teldrassil 55.41,92.23
step
click Feralas: A History
|tip Upstairs inside the building.
accept Feralas: A History##2940 |goto Teldrassil 55.22,91.46
step
talk Daryn Lightwind##7907
|tip Upstairs inside the building.
turnin Feralas: A History##2940 |goto Teldrassil 55.41,92.23
accept The Borrower##2941 |goto Teldrassil 55.41,92.23
step
talk Kyrai##3561
|tip Upstairs inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 4267
|only if Rogue
step
talk Garryeth##4209
|tip Deposit these items into the bank.
bank A Short Note##9329 |goto Darnassus 39.60,41.98 |q 2941 |future
bank Yeh'kinya's Bramble##10699 |goto Darnassus 39.60,41.98 |q 3520 |future
bank Hippogryph Egg##8564 |goto Darnassus 39.60,41.98 |q 2741 |future
bank Ironfur Liver##6258 |goto Darnassus 39.60,41.98 |q 1452 |future
|tip You should have 3 of these.
bank Groddoc Liver##6259 |goto Darnassus 39.60,41.98 |q 1452 |future
|tip You should have 3 of these.
step
Cross the bridge |goto Darnassus 38.60,48.01 < 30 |only if walking
Enter the building |goto Darnassus 39.06,77.04 < 15 |walk
Run up the ramp |goto Darnassus 40.46,91.67 < 10 |walk
talk Gracina Spiritmight##7740
|tip Upstairs inside the building.
turnin Rise of the Silithid##4267 |goto Darnassus 41.85,85.62
step
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin Doling Justice##2972 |goto Darnassus 39.10,81.59
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Sildanair##4089 |only if Warrior
talk Denatharion##4218 |only if Druid
talk Jandria##4091 |only if Priest
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter |q 1452 |future
trainer Sildanair##4089 |goto Darnassus/0 61.78,42.28 |only if Warrior |q 1452 |future
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue |q 1452 |future
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid |q 1452 |future
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80 |only if Priest |q 1452 |future
|tip In the basement of the tree. |only if Rogue
|tip Train your spells.
step
Kill enemies around this area
|tip Inside and outside the cave.
|tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
|tip We are grinding a lot now to get you to a good level to continue questing the rest of the way to 60.
|tip If you prefer, you can run dungeons.
|tip This is the last very long grind you have to do.
ding 48 |goto Feralas 26.09,67.26				|only if level < 48
ding 48,68000 |goto Feralas 26.09,67.26
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if not hardcore
step
Kill enemies around this area
|tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
|tip We are grinding a lot now to get you to a good level to continue questing the rest of the way to 60.
|tip If you prefer, you can run dungeons.
|tip This is the last very long grind you have to do.
ding 48,68000 |goto Feralas 26.39,54.22
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if hardcore
step
talk Falfindel Waywarder##4048
turnin Thalanaar Delivery##4281 |goto Feralas 89.64,46.57
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Tanaris (48-49)',
  {
    image = ZGV.IMAGESDIR .. 'Tanaris',
    condition_suggested = function()
      return level >= 48 and level <= 49 and not completedq(162)
    end,
    next = 'Leveling Guides\\The Hinterlands (49-50)',
    hardcore = true,
  },
  [[
step
talk Marin Noggenfogger##7564
accept The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect A Short Note##9329 |goto Tanaris 52.30,28.91 |q 2941
collect Yeh'kinya's Bramble##10699 |goto Tanaris 52.30,28.91 |q 3520
collect Hippogryph Egg##8564 |goto Tanaris 52.30,28.91 |q 2741 |future
step
talk Chief Engineer Bilgewhizzle##7407
accept More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
Enter the building |goto Tanaris 52.38,27.91 < 10 |walk
talk Innkeeper Fizzgrimble##7733
|tip Inside the building.
home Gadgetzan |goto Tanaris 52.51,27.91
step
talk Andi Lynn##11758
accept The Dunemaul Compound##5863 |goto Tanaris 52.82,27.40
step
click Egg-O-Matic##142071
accept The Super Egg-O-Matic##2741 |goto Tanaris 52.37,26.97 |instant
step
_Open This Item:_
|tip Open it for rewards, its no longer needed.
|tip You can turn in the egg for Curgle Cranklehop next to the Egg-o-Matic.
trash Egg Crate##8647 |goto Tanaris/0 52.36,26.90
step
talk Curgle Cranklehop##7763
turnin The Borrower##2941 |goto Tanaris 52.36,26.91
accept The Super Snapper FX##2944 |goto Tanaris 52.36,26.91
step
click Wanted Poster##142122
accept WANTED: Caliph Scorpidsting##2781 |goto Tanaris 51.84,27.02
accept WANTED: Andre Firebeard##2875 |goto Tanaris 51.84,27.02
step
talk Tran'rek##7876
accept Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
talk Senior Surveyor Fizzledowser##7724
accept Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
|only if hardcore
step
use the Untapped Dowsing Widget##8584
|tip Avoid the elite enemies nearby this location while traveling here.
|tip Use it in the water.
|tip Two level 48 enemies appear after using the item.
|tip Be ready to run, if you can't kill the enemies.
collect Tapped Dowsing Widget##8585 |q 992/1 |goto Tanaris 39.09,29.17
|only if hardcore
step
talk Senior Surveyor Fizzledowser##7724
turnin Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48		|only if hardcore
accept Noxious Lair Investigation##82 |goto Tanaris 50.21,27.48
step
talk Haughty Modiste##15165
accept Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
talk Yeh'kinya##8579
turnin Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
talk Jabbey##8139
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 12-15 extra stacks.
|tip You will be questing for a long time without an arrow vendor nearby.
Visit the Vendor |vendor Jabbey##8139 |goto Tanaris 67.01,21.99 |q 8365
|only if Hunter
step
Enter the building |goto Tanaris 66.99,23.87 < 10 |walk
talk Security Chief Bilgewhizzle##7882
|tip Inside the building.
accept Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
step
talk Stoley##7881
|tip Inside the building.
accept Stoley's Shipment##2873 |goto Tanaris 67.11,23.98
stickystart "Kill_Wastewander_Rogues"
stickystart "Kill_Wastewander_Assassins"
stickystart "Kill_Wastewander_Shadow_Mages"
step
path	follow loose;	loop;	ants curved;	dist 40
path	63.84,31.89		63.30,37.23		62.29,37.83		59.52,41.19
path	58.71,38.17		61.87,33.42
kill Caliph Scorpidsting##7847
|tip He walks in a counter-clockwise pattern, so this path will help you find him faster.
|tip He walks with 2 stealthed guards with him, so be careful.
|tip If you have trouble, try to find someone to help you.
collect Caliph Scorpidsting's Head##8723 |q 2781/1
step
label "Kill_Wastewander_Rogues"
kill 8 Wastewander Rogue##5615 |q 1691/1 |goto Tanaris 60.87,32.74
|tip They are stealthed around this area.
|tip Wastelander Shadow Mages are ranged attackers with a minion that must be killed.	|only if hardcore
|tip Watch for patrols and respawns while around here.					|only if hardcore
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
step
label "Kill_Wastewander_Assassins"
kill 6 Wastewander Assassin##5623 |q 1691/2 |goto Tanaris 60.87,32.74
|tip Wastelander Rogues may be stealthed.						|only if hardcore |notinsticky
|tip Wastelander Shadow Mages are ranged attackers with a minion that must be killed.	|only if hardcore |notinsticky
|tip Watch for patrols and respawns while around here.					|only if hardcore |notinsticky
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
step
label "Kill_Wastewander_Shadow_Mages"
kill 10 Wastewander Shadow Mage##5617 |q 1691/3 |goto Tanaris 60.87,32.74
|tip Wastelander Rogues may be stealthed.						|only if hardcore |notinsticky
|tip Watch for patrols and respawns while around here.					|only if hardcore |notinsticky
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
stickystart "Collect_Southsea_Pirate_Hats"
stickystart "Kill_Southsea_Pirates"
stickystart "Kill_Southsea_Freebooters"
stickystart "Kill_Southsea_Dock_Workers"
stickystart "Kill_Southsea_Swashbucklers"
stickystart "Collect_Ship_Schedule"
step
Enter the tunnel |goto Tanaris 68.62,41.46 < 20 |only if walking and not subzone("Lost Rigger Cove")
Enter the building |goto Tanaris 72.61,46.82 < 10 |walk
click Stolen Cargo##142181
|tip Upstairs inside the building.
collect Stoley's Shipment##9244 |q 2873/1 |goto Tanaris 72.19,46.77
step
kill Andre Firebeard##7883
|tip Try to pull him away to fight him alone.
|tip If you have trouble, try to find someone to help you.
collect Firebeard's Head##9246 |q 2875/1 |goto Tanaris 73.37,47.14
step
label "Collect_Southsea_Pirate_Hats"
Kill Southsea enemies around this area
collect 20 Southsea Pirate Hat##20519 |q 8365/1 |goto Tanaris 73.26,46.42
|tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
|tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
|tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Pirates"
kill 10 Southsea Pirate##7855 |q 8366/1 |goto Tanaris 73.26,46.42
|tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
|tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
|tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Freebooters"
kill 10 Southsea Freebooter##7856 |q 8366/2 |goto Tanaris 73.26,46.42
|tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
|tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
|tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Dock_Workers"
kill 10 Southsea Dock Worker##7857 |q 8366/3 |goto Tanaris 73.76,47.42
|tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
|tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
|tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
|tip You can find more up on the wooden platforms nearby.
step
label "Kill_Southsea_Swashbucklers"
kill 10 Southsea Swashbuckler##7858 |q 8366/4 |goto Tanaris 75.19,45.96
|tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
|tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
|tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
You can find more in the buildings around [72.96,47.07]
step
label "Collect_Ship_Schedule"
Kill Southsea enemies around this area
|tip Enemies will flee when at low health.				|only if hardcore |notinsticky
|tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
|tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
collect Pirate's Footlocker##9276 |n
use Pirate's Footlocker##9276+
collect Ship Schedule##9250 |goto Tanaris 73.26,46.42 |q 2876 |future
|tip It may take a long time to get it, but it is a good grind to do to get a lot of extra xp built up.
|tip If you grind over 2 bars of XP and still haven't found it, skip the quest.
You can find more around [72.29,44.64]
step
use the Ship Schedule##9250
accept Ship Schedules##2876
|only if itemcount(9250) > 0
step
talk Chief Engineer Bilgewhizzle##7407
turnin WANTED: Caliph Scorpidsting##2781 |goto Tanaris 52.46,28.51 |only if not hardcore
turnin More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
talk Marvon Rivetseeker##7771
turnin The Sunken Temple##3445 |goto Tanaris 52.71,45.93
accept The Stone Circle##3444 |goto Tanaris 52.71,45.93
accept Gahz'ridian##3161 |goto Tanaris 52.71,45.93
step
Kill Centipaar enemies around this area
|tip Centipaar Swarmers summon adds as you fight them.	|only if hardcore
|tip Centipaar Workers run away in fear when at low health.	|only if hardcore
collect 5 Centipaar Insect Parts##8587 |q 82/1 |goto Tanaris 35.74,42.06
stickystart "Kill_Dunemaul_Brutes"
stickystart "Kill_Dunemaul_Enforcers"
step
Enter the cave |goto Tanaris 41.09,57.35 < 20 |walk
kill Gor'marok the Ravager##12046 |q 5863/3 |goto Tanaris 41.50,57.81
|tip Inside the small cave.
step
click Gahz'ridian##140971+
|tip They look like small piles of sand on the ground around this area.
collect 30 Gahz'ridian Ornament##8443 |q 3161/1 |goto Tanaris 40.45,72.67
You can find more around [46.96,65.87]
step
label "Kill_Dunemaul_Brutes"
kill 10 Dunemaul Brute##5474 |q 5863/1 |goto Tanaris 40.45,72.67
You can find more around: |notinsticky
[46.96,65.87]
[40.04,55.70]
step
label "Kill_Dunemaul_Enforcers"
kill 10 Dunemaul Enforcer##5472 |q 5863/2 |goto Tanaris 40.45,72.67
You can find more around: |notinsticky
[46.96,65.87]
[40.04,55.70]
stickystart "Kill_Gnarled_Thistleshrubs"
stickystart "Kill_Thistleshrub_Rootshapers"
step
kill Thistleshrub Dew Collector##5481+
collect Laden Dew Gland##8428 |q 2605/1 |goto Tanaris 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
label "Kill_Gnarled_Thistleshrubs"
kill 8 Gnarled Thistleshrub##5490 |q 3362/1 |goto Tanaris 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
label "Kill_Thistleshrub_Rootshapers"
kill 8 Thistleshrub Rootshaper##5485 |q 3362/2 |goto Tanaris 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
Kill enemies around this area
|tip You should already be level 49, or pretty close.
|tip As you grind, keep an eye out for a turtle named Tooga, who offers a quest.
|tip Make a mental note of where he is, if you see him.  You will be searching for him in the next step.
ding 49 |goto Tanaris 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
talk Tooga##5955
|tip He looks like a turtle that walks around this area.
|tip This is an escort quest.
|tip If you can't find him, someone may be escorting him.
|tip Just keep grinding enemies around this area until you find him.
accept Tooga's Quest##1560 |goto Tanaris 28.50,63.10 |noautoaccept
Also check around: |notinsticky
[29.97,66.48]
[30.54,64.66]
[31.79,74.15]
[29.58,74.73]
stickystart "Lead_Tooga_To_Torta"
step
talk Marvon Rivetseeker##7771
turnin Gahz'ridian##3161 |goto Tanaris 52.71,45.93 |notravel |only if haveq(1560)
turnin Gahz'ridian##3161 |goto Tanaris 52.71,45.93 |only if not haveq(1560)
step
label "Lead_Tooga_To_Torta"
Lead Tooga to Torta |q 1560/1 |goto Tanaris 66.57,25.67 |notravel
|tip He will follow you.
|tip Protect Tooga as you walk, and try to stay fairly close to him.
|tip If you get too far away from him, you will fail the quest.
|tip Torta looks like a turtle that walks around this area.
step
talk Torta##6015
|tip She looks like a turtle that walks around this area.
turnin Tooga's Quest##1560 |goto Tanaris 66.57,25.67
step
Enter the building |goto Tanaris 66.99,23.87 < 10 |walk
talk Security Chief Bilgewhizzle##7882
|tip Inside the building.
turnin WANTED: Andre Firebeard##2875 |goto Tanaris 67.06,23.89 |only if not hardcore
turnin Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
turnin Ship Schedules##2876 |goto Tanaris 67.06,23.89
step
talk Stoley##7881
|tip Inside the building.
turnin Stoley's Shipment##2873 |goto Tanaris 67.11,23.97
accept Deliver to MacKinley##2874 |goto Tanaris 67.11,23.97
step
talk Yorba Screwspigot##9706
|tip Inside the building.
accept Yuka Screwspigot##4324 |goto Tanaris 67.03,24.01
step
talk Haughty Modiste##15165
turnin Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
talk Marin Noggenfogger##7564
turnin The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
accept In Good Taste##2606 |goto Tanaris 51.81,28.66
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Stoley's Bottle##9245 |goto Tanaris 52.30,28.91 |q 2874 |future
step
talk Sprinkle##7583
turnin In Good Taste##2606 |goto Tanaris 51.06,26.87
accept Sprinkle's Secret Ingredient##2641 |goto Tanaris 51.06,26.87
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin Noxious Lair Investigation##82 |goto Tanaris 50.89,26.96
step
talk Senior Surveyor Fizzledowser##7724
accept The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
step
talk Tran'rek##7876
turnin Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
talk Andi Lynn##11758
turnin The Dunemaul Compound##5863 |goto Tanaris 52.82,27.40
step
use the OOX-17/TN Distress Beacon##8623
accept Find OOX-17/TN!##351
|only if itemcount(8623) > 0
step
talk Homing Robot OOX-17/TN##7784
|tip This NPC offers an escort quest.
|tip If it's not here, someone may be escorting it.
|tip Wait until it appears again.
turnin Find OOX-17/TN!##351 |goto Tanaris 60.23,64.72
step
Follow the path down |goto Tanaris 55.87,70.27 < 30 |only if walking
Enter the cave |goto Tanaris 55.78,68.91 < 10 |c |q 10
step
Follow the path down |goto Tanaris 55.93,68.37 < 7 |walk
Continue following the path down |goto Tanaris 56.17,68.34 < 7 |walk
Follow the path |goto Tanaris 56.55,68.72 < 7 |walk
Follow the path up |goto Tanaris 57.19,70.16 < 7 |walk
Follow the path down |goto Tanaris 57.61,70.67 < 7 |walk
Follow the path |goto Tanaris 57.38,71.30 < 7 |walk
click Scrimshank's Surveying Gear##144053
|tip Inside the cave.
|tip Hazzali Workers run away quickly when low health.		|only if hardcore
|tip Hazzali Swarmers spawn adds while you fight them.		|only if hardcore
|tip Watch for patrols and respawns while in the cave.		|only if hardcore
collect Scrimshank's Surveying Gear##8593 |q 10/1 |goto Tanaris 55.97,71.18
step
use the OOX-17/TN Distress Beacon##8623
accept Find OOX-17/TN!##351
|only if itemcount(8623) > 0
step
talk Homing Robot OOX-17/TN##7784
|tip This NPC offers an escort quest.
|tip If it's not here, someone may be escorting it.
|tip Wait until it appears again.
turnin Find OOX-17/TN!##351 |goto Tanaris/0 60.23,64.72
accept Rescue OOX-17/TN!##648 |goto Tanaris/0 60.23,64.72
step
Escort the OOX-17/TN
|tip This quest can be hard, you regularly have to fight waves of 3-4 enemies.
|tip Often others are looking to complete this escort too.
|tip Don't be afraid to run away or skip this step if it's too hard |only if hardcore
|tip You'll have more chances to do this again at a higher level |only if hardcore
Escort OOX-17/TN to Steamwheedle Port |q 648/1 |goto Tanaris/0 66.99,23.14
step
talk Senior Surveyor Fizzledowser##7724
turnin The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
accept Insect Part Analysis##110 |goto Tanaris 50.21,27.48
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin Insect Part Analysis##110 |goto Tanaris 50.89,26.96
accept Insect Part Analysis##113 |goto Tanaris 50.89,26.96
step
talk Senior Surveyor Fizzledowser##7724
turnin Insect Part Analysis##113 |goto Tanaris 50.21,27.48
accept Rise of the Silithid##162 |goto Tanaris 50.21,27.48
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Insect Analysis Report##8594 |goto Tanaris 52.30,28.91 |q 162 |future
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\The Hinterlands (49-50)',
  {
    image = ZGV.IMAGESDIR .. 'The Hinterlands',
    condition_suggested = function()
      return level >= 49 and level <= 50 and not completedq(626)
    end,
    next = 'Leveling Guides\\Tanaris (50-50)',
    hardcore = true,
  },
  [[
step
_NOTE:_
Save Cloth in Your Bank as You Level
|tip Once you are close to reaching level 60, you will need 240 of each type of cloth.
|tip As you level and collect Runecloth naturally from killing enemies while following the guide, make sure you deposit the cloth into a bank whenever you are near one.
|tip This will give you about 40,000 quick and easy xp to help you get to level 60 faster in the longer later levels.
Click Here to Continue |confirm
|only if level < 60
step
Optional Route Change
|tip You can opt to do Maraudon soon instead of grinding.
|tip This is highly recommended due to the weapon quest reward. |only if Hunter or Rogue or Warrior
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do Maraudon, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Maraudon later |confirm Maraflag
Click Here if you'd prefer to grind |confirm
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect 3 Roc Gizzard##6257 |goto Tanaris 52.30,28.91 |q 1452
collect 3 Ironfur Liver##6258 |goto Tanaris 52.30,28.91 |q 1452
collect 3 Groddoc Liver##6259 |goto Tanaris 52.30,28.91 |q 1452
step
click Marvon's Chest##149036
collect Stone Circle##10556 |q 3444/1 |goto The Barrens 62.50,38.54
step
talk Tynnus Venomsprout##5169
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66 |q 2988 |future
|only if Rogue
step
Enter the building |goto Hillsbrad Foothills 49.30,55.47 < 10 |walk
talk Sarah Raycroft##3541
|tip Upstairs inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 12-15 stacks.
|tip You will be questing for a while.
Visit the Vendor |vendor Sarah Raycroft##3541 |goto Hillsbrad Foothills 49.14,55.06 |q 2988 |future
|only if Hunter
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Jaysin Lanyda##3542
|tip Upstairs inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Jaysin Lanyda##3542 |goto Hillsbrad Foothills 50.82,59.02 |q 2988 |future
|only if Mage
step
Enter the building |goto The Hinterlands 11.00,45.67 < 10 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
accept Witherbark Cages##2988 |goto The Hinterlands 9.76,44.48
step
Leave the building |goto The Hinterlands 11.00,45.67 < 10 |walk |only if subzone("Aerie Peak") and _G.IsIndoors()
Enter the building |goto The Hinterlands 14.19,45.18 < 30 |walk |only if not subzone("Wildhammer Keep")
talk Fraggar Thundermantle##7884
|tip Inside the building.
accept Troll Necklace Bounty##2880 |goto The Hinterlands 14.83,44.56
stickystart "Collect_Wildkin_Feathers"
step
Leave the building |goto The Hinterlands 14.19,45.18 < 30 |walk |only if subzone("Wildhammer Keep")
Follow the path up |goto The Hinterlands 20.81,47.82 < 30 |only if walking
talk Rhapsody Shindigger##5634
turnin Rhapsody's Kalimdor Kocktail##1452 |goto The Hinterlands 26.94,48.59
step
Watch the dialogue
talk Rhapsody Shindigger##5634
accept Rhapsody's Tale##1469 |goto The Hinterlands 26.94,48.59
stickystart "Collect_Troll_Tribal_Necklaces"
step
click Third Witherbark Cage##144068
|tip Enemies may run away in fear around this area.	|only if hardcore
Check the Third Cage |q 2988/3 |goto The Hinterlands 31.99,57.38
step
click First Witherbark Cage##144066
|tip Enemies may run away in fear around this area.	|only if hardcore
Check the First Cage |q 2988/1 |goto The Hinterlands 23.28,58.75
step
click Second Witherbark Cage##144067
|tip Enemies may run away in fear around this area.	|only if hardcore
Check the Second Cage |q 2988/2 |goto The Hinterlands 23.13,58.76
step
label "Collect_Troll_Tribal_Necklaces"
Kill Witherbark enemies around this area
|tip They look like trolls.
|tip Witherbark enemies may run away in fear around this area.	|only if hardcore
collect 5 Troll Tribal Necklace##9259 |q 2880/1 |goto The Hinterlands 23.73,57.89
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [32.03,58.00]
step
Enter the building |goto The Hinterlands 14.19,45.18 < 30 |walk |only if not subzone("Wildhammer Keep")
talk Fraggar Thundermantle##7884
|tip Inside the building.
turnin Troll Necklace Bounty##2880 |goto The Hinterlands 14.83,44.56
accept Skulk Rock Clean-up##2877 |goto The Hinterlands 14.83,44.56
stickystop "Collect_Wildkin_Feathers"
step
Leave the building |goto The Hinterlands 14.19,45.18 < 30 |walk |only if subzone("Wildhammer Keep")
Follow the path up |goto The Hinterlands 12.95,48.19 < 30 |only if walking
Enter the building at the top of the path |goto The Hinterlands 11.00,45.67 < 10 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
turnin Witherbark Cages##2988 |goto The Hinterlands 9.76,44.48
accept The Altar of Zul##2989 |goto The Hinterlands 9.76,44.48		|only if not hardcore
stickystart "Collect_Wildkin_Feathers"
step
click Violet Tragan##141853+
|tip They look like large brown and white mushrooms underwater around this area.
|tip Despite how fun the tooltip sounds, don't eat it. It's for a quest.
collect Violet Tragan##8526 |q 2641/1 |goto The Hinterlands 41.01,59.77
step
Run up the stairs |goto The Hinterlands 47.74,66.71 < 30 |only if walking
|tip Clear enemies as you make your way up.	|only if hardcore
Search the Altar of Zul |q 2989/1 |goto The Hinterlands 48.85,68.45
|tip There are elite enemies at the top of the temple.
|tip Complete the quest goal and immediately run away to safety.
|only if not hardcore
stickystart "Kill_Jade_Oozes"
step
kill 10 Green Sludge##2655 |q 2877/1 |goto The Hinterlands 48.95,52.71
You can find more around: |notinsticky
[47.11,41.36]
step
label "Kill_Jade_Oozes"
kill 10 Jade Ooze##2656 |q 2877/2 |goto The Hinterlands 57.60,42.60
|tip These primarily spawn on the northeast hill.
You can find more around: |notinsticky
[47.11,41.36]
step
Kill enemies around this area
|tip Watch for respawns while in the area.	|only if hardcore
collect OOX-09/HL Distress Beacon##8704 |goto The Hinterlands 47.11,41.36 |q 485 |future
|tip If you reach level 50 and still haven't found it, skip the quest.
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 50.
|tip You are about to go to Un'Goro Crater, and it will help to be level 50 already.
|tip If you've fallen behind, it's also fine to do a dungeon after this zone.
ding 50 |goto The Hinterlands 47.11,41.36 |q 2944
step
use the OOX-09/HL Distress Beacon##8704
accept Find OOX-09/HL!##485
|only if itemcount(8704) > 0
step
talk Homing Robot OOX-09/HL##7806
turnin Find OOX-09/HL!##485 |goto The Hinterlands 49.35,37.66
step
label "Collect_Wildkin_Feathers"
click Wildkin Feather##153239+
|tip They look large brown and white feathers on the ground around this area.
|tip They can be found around most of the Hinterlands, except in the eastern part.
|tip If you have trouble seeing them, reduce the "Ground Clutter" setting to "1" in the System > Graphics game settings menu.
collect 15 Wildkin Feather##10819 |q 3661/1 |goto The Hinterlands 15.76,53.78
You can find more around: |notinsticky
[22.17,55.01]
[28.43,54.20]
[33.90,48.74]
[33.03,43.66]
stickystart "Collect_Snapshot_Of_Gammerita"
step
Follow the path down |goto The Hinterlands 71.50,65.09 < 30 |only if walking and not subzone("The Overlook Cliffs")
click Pupellyverbos Port+
|tip They look like small dark blue bottles on the ground around this area.
|tip If you have trouble seeing them, reduce the "Ground Clutter" setting to "0" in the System > Graphics game settings menu.
|tip Be careful to avoid Gammmerita, it's the only turtle that will attack you.
|tip It looks like a blue turtle that walks around this area.
|tip Avoid the guards of the Horde town nearby.
collect 12 Pupellyverbos Port##3900 |q 580/1 |goto The Hinterlands 81.08,55.81
You can find more around: |notinsticky
[79.46,62.41]
[78.49,69.25]
[78.44,75.71]
step
label "Collect_Snapshot_Of_Gammerita"
use the Super Snapper FX##9328
|tip Use it on Gammerita.
|tip It looks like a blue turtle that walks around this area.
|tip Use it as far away from it as you can.
|tip Run away when it attacks you after using the item.
collect Snapshot of Gammerita##9330 |q 2944/1 |goto The Hinterlands 75.62,67.03
You can also find it around: |notinsticky
[75.62,67.03]
[80.79,55.59]
step
click Cortello's Treasure##2556
|tip Underwater, at the bottom of the waterfall.
turnin Cortello's Riddle##626 |goto The Hinterlands 80.81,46.81
|only if haveq(626)
step
Prepare for Maraudon
|tip It will be a good time to start Maraudon soon.
|tip We are heading there after turning in our quests in Tanaris.
|tip Start looking for a group.
|confirm
|only if guideflag("Maraflag")
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Tanaris (50-50)',
  {
    image = ZGV.IMAGESDIR .. 'The Hinterlands',
    condition_suggested = function()
      return level == 49 and not completedq(3444)
    end,
    next = "Leveling Guides\\Un'Goro Crater (50-50)",
    hardcore = true,
  },
  [[
step
talk Sprinkle##7583
turnin Sprinkle's Secret Ingredient##2641 |goto Tanaris 51.06,26.87
step
Watch the dialogue
talk Sprinkle##7583
accept Delivery for Marin##2661 |goto Tanaris 51.06,26.87
step
talk Marin Noggenfogger##7564
turnin Delivery for Marin##2661 |goto Tanaris 51.81,28.66
accept Noggenfogger Elixir##2662 |goto Tanaris 51.81,28.66
step
Watch the dialogue
talk Marin Noggenfogger##7564
turnin Noggenfogger Elixir##2662 |goto Tanaris 51.81,28.66
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Super Snapper FX##9328 |goto Tanaris 52.30,28.91 |q 2944 |future
bank Snapshot of Gammerita##9330 |goto Tanaris 52.30,28.91 |q 2944 |future
bank Atal'ai Tablet Fragment##6287 |goto Tanaris 52.30,28.91 |q 1469 |future
bank Pupellyverbos Port##3900 |goto Tanaris 52.30,28.91 |q 580 |future
|tip You should have 12 of these.
bank Wildkin Feather##10819 |goto Tanaris 52.30,28.91 |q 3661 |future
|tip You should have 15 of these.
step
talk Marvon Rivetseeker##7771
turnin The Stone Circle##3444 |goto Tanaris 52.71,45.92
step
talk Innkeeper Lyshaerya##11103
|tip Inside the building.
|tip This will give you an inopportune hearth later in the leveling guide, but will save you a ton of time turning in Maraudon quests.
home Nijel's Point |goto Desolace 66.27,6.56
|only if guideflag("Maraflag")
step
talk Talendria##11715
|tip Upstairs inside the building.
accept Vyletongue Corruption##7041 |goto Desolace 68.50,8.87
|only if guideflag("Maraflag")
step
Run up the ramp |goto Desolace 64.66,9.23 < 10 |only if walking
talk Keeper Marandis##13698
accept Corruption of Earth and Seed##7065 |goto Desolace 63.82,10.66
|only if guideflag("Maraflag")
step
talk Willow##13656
|tip Inside the building.
accept Twisted Evils##7028 |goto Desolace 62.19,39.63
|only if guideflag("Maraflag")
step
talk Centuar Pariah##13717
|tip He walks around this area.
accept The Pariah's Instructions##7067 |goto Desolace 51.47,87.41
You may also find him around: |notinsticky
[48.23,87.69]
[43.95,86.00]
|only if guideflag("Maraflag")
step
Run up the stairs |goto Desolace 29.84,62.54 < 7 |only if walking
click Stone Door
Enter the building |goto Desolace 38.43,57.98 < 5 |q 7067 |future
|only if guideflag("Maraflag")
step
kill The Nameless Prophet##13718
|tip He spawns in multiple locations outside of the Maraudon dungeon.
|tip You may need help with this.
collect Amulet of Spirits##17757 |goto Desolace 38.31,57.96 |q 7067
You may also find him at: |notinsticky
[38.32,58.18]
[38.20,58.05]
[38.39,57.96]
step
Run down the stairs |goto Desolace 38.25,57.99 < 7 |only if walking
Follow the path |goto Desolace 38.43,57.85 < 10 |only if walking
Continue following the path |goto Desolace 38.64,57.71 < 7 |only if walking
Continue following the path |goto Desolace 38.53,57.55 < 10 |only if walking
Continue following the path |goto Desolace 38.48,57.34 < 7 |q 7067
|only if guideflag("Maraflag")
step
Continue following the path |goto Desolace 29.44,57.22 < 7 |only if walking
Jump down here |goto Desolace 28.80,56.17 < 7 |q 7067
|only if guideflag("Maraflag")
step
Enter the cave |goto Desolace 28.71,56.20 < 5 |only if walking
use the Amulet of Spirits##17757
|tip Use it on the Spirit of Gelk.
|tip He walks around this area.
kill Gelk##13741
collect Gem of the Second Khan##17762 |goto Desolace 38.47,57.29 |q 7067
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace 29.58,55.54 < 7 |only if walking
Continue following the path |goto Desolace 29.46,57.25 < 7 |only if walking |q 7067
|only if guideflag("Maraflag")
step
Jump down here |goto Desolace 38.53,57.60 < 5 |only if walking
use the Amulet of Spirits##17757
|tip Use it on the Spirit of Kolk.
kill Kolk##13742
collect Gem of the First Khan##17761 |goto Desolace 38.50,57.72 |q 7067
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace 38.60,57.95 < 10 |only if walking
Continue following the path |goto Desolace 38.44,58.13 < 7 |only if walking
Continue following the path |goto Desolace 38.49,58.22 < 7 |q 7067
|only if guideflag("Maraflag")
step
talk Cavindra##Cavindra
accept Legend of Maraudon##7044	|goto Desolace 38.76,58.13
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace 38.82,58.31 < 7 |only if walking
use Coated Cerulean Vial##17693
collect Filled Cerulean Vial##17696 |q 7041/2 |goto Desolace 38.92,58.36
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace 39.08,58.01 < 10 |only if walking
Continue following the path |goto Desolace 39.35,58.03 < 7 |only if walking
use the Amulet of Spirits##17757
|tip Use it on the Spirit of Magra.
|tip He walks around this area.
kill Magra##13740
collect Gem of the Third Khan##17763 |goto Desolace 39.20,57.68 |q 7067
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace 39.21,57.84 < 10 |only if walking
Continue following the path |goto Desolace 39.35,58.04 < 10 |only if walking
Enter the Maraudon (Foulspore Cavern - Orange) Dungeon with Your Group |goto Maraudon/0 0.00,0.00 < 500 |c |q 7067 |future
|tip Some groups may opt to go into Purple Side first, which will make this guide out of order.
|tip It does not matter which side you enter first.
|only if guideflag("Maraflag")
stickystart "Collect_Gem_of_the_Fifth_Khan"
stickystart "Heal_Vylestem_Vines"
step
Inside the Maraudon Dungeon:
kill Noxxion##13282
|tip It is the first boss on the Orange side of Maraudon.
|tip After entering the dungeon, run up the stairs and follow the path to the right whenever possible.
collect Celebrian Rod##17702 |q 7044/2
|only if guideflag("Maraflag")
step
label "Collect_Gem_of_the_Fifth_Khan"
Inside the Maraudon Dungeon: |notinsticky
use the Amulet of Spirits##17757
|tip Use it on the Spirit of Veng.
|tip He walks around the Orange side of Maraudon.
kill Veng##13738
collect Gem of the Fifth Khan##17765 |q 7067
|only if guideflag("Maraflag")
step
label "Heal_Vylestem_Vines"
Inside the Maraudon Dungeon: |notinsticky
use the Filled Cerulean Vial##17696
|tip While in the Foulspore Cavern, or Orange side of Maraudon, there will be tree stumps with a red top.
|tip You won't be able to target them.
|tip They have five leaves growing out of them.
|tip Use the Filled Cerulean Vial near them and Noxxious Scion will spawn.
kill Noxxious Scion##13696+
Heal 8 Vylestem Vines |q 7041/1
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
use the Amulet of Spirits##17757
|tip Use it on the Spirit of Maraudos.
|tip He walks around The Wicked Grotto in the Purple side of Maraudon.
kill Maraudos##13739
collect Gem of the Fourth Khan##17764 |q 7067
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
use the Gem of the Fifth Khan##17765
collect Amulet of Union##17758 |q 7067/1
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
kill Lord Vyletongue##12236
|tip He is Purple side of Maraudon.
|tip Proceed through The Wicked Grotto and enter the Vyletongue Seat.
|tip He is in a small room on the northern side.
collect Celebrian Diamond##17703 |q 7044/1
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
kill Celebras the Cursed##12225
|tip He is Purple side of Maraudon.
|tip Continue through the Vyletongue Seat and into the Poison Falls.
|tip Once you reach the Poison Falls, continue working your way west and then south, where he will be on a small island.
talk Celebras the Redeemed##13716
|tip He will appear after you kill Celebras the Cursed.
turnin Legend of Maraudon##7044
accept The Scepter of Celebras##7046
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
Follow Celebras the Redeemed
|tip Click the stone he leads you to.
click Incantations of Celebras
Watch the Dialogue
Create the Scepter of Celebras |q 7046/1
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
talk Celebras the Redeemed##13716
turnin The Scepter of Celebras##7046
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
kill Princess Theradras##12201 |q 7065/1
|tip She is the last boss on the Purple side of Maraudon.
|tip Continue going south and jump down the waterfall.
|tip Continue following the path south through the dungeon to reach Zaetar's Grave.
|tip Princess Theradras is found at the end of Zaetar's Grave.
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
talk Zaetar's Spirit##12238
|tip He will appear at the center of the room once Princess Theradras is killed.
accept Seed of Life##7066
|only if guideflag("Maraflag")
step
Leave the Maraudon Dungeon
Click Here to Continue |confirm |q 7066
|only if guideflag("Maraflag")
step
talk Centuar Pariah##13717
|tip He walks around this area.
turnin The Pariah's Instructions##7067 |goto Desolace 51.47,87.41
You may also find him around: |notinsticky
[48.23,87.69]
[43.95,86.00]
|only if guideflag("Maraflag")
step
talk Willow##13656
|tip Inside the building.
turnin Twisted Evils##7028 |goto Desolace 62.19,39.63
|only if guideflag("Maraflag")
step
talk Talendria##11715
|tip Upstairs inside the building.
turnin Vyletongue Corruption##7041 |goto Desolace 68.50,8.87
|only if guideflag("Maraflag")
step
Run up the ramp |goto Desolace 64.66,9.23 < 10 |only if walking
talk Keeper Marandis##13698
turnin Corruption of Earth and Seed##7065 |goto Desolace 63.82,10.66
|only if guideflag("Maraflag")
]]
)
ZygorGuidesViewer:RegisterGuide(
  "Leveling Guides\\Un'Goro Crater (50-50)",
  {
    image = ZGV.IMAGESDIR .. "Un'Goro Crater",
    condition_suggested = function()
      return level == 50 and not completedq(1469)
    end,
    next = 'Leveling Guides\\Searing Gorge (50-51)',
    hardcore = true,
  },
  [[
step
Follow the path down into Un'Goro Crater |goto Tanaris 27.04,56.57 < 40 |only if walking and not zone("Un'Goro Crater")
talk Torwa Pathfinder##9619
accept The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
accept The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
stickystart "Accept_Willidens_Journal"
stickystart "Collect_Power_Crystals"
stickystart "Collect_UnGoro_Soil"
step
click A Wrecked Raft##161505
accept It's a Secret to Everybody##3844 |goto Un'Goro Crater 63.02,68.50
step
click A Small Pack##161504
|tip Underwater.
turnin It's a Secret to Everybody##3844 |goto Un'Goro Crater 63.12,69.02
accept It's a Secret to Everybody##3845 |goto Un'Goro Crater 63.12,69.02
step
click Fresh Threshadon Carcass##166863
|tip Avoid the elite t-rex that sometimes walks near this location.
collect Piece of Threshadon Carcass##11504 |q 4290/1 |goto Un'Goro Crater 68.75,56.66
step
Follow the path up into Marshal's Refuge |goto Un'Goro Crater 46.01,13.45 < 20 |only if walking and not subzone("Marshal's Refuge")
talk Muigin##9119
accept Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
step
Kill Bloodpetal enemies while heading south.
|tip Try to focus on killing the level 48-50 ones, the higher levels are dangerous.
|tip You only need 8 or so Bloodpetals right now. You'll get the rest on the way back.
|tip They look like walking plants.
collect 15 Bloodpetal##11316 |q 4141/1 |count 8 |goto Un'Goro Crater 71.46,38.72
|tip Watch for Devilsaur (large t-rex) patrols while around here.	|only if hardcore
You can find more around: |notinsticky
[66.08,35.13]
[69.26,24.59]
[55.87,34.69]
step
talk Torwa Pathfinder##9619
turnin The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.97
accept The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.64,75.97
step
kill Lar'korwi Mate##9683
|tip Stand on the pile of purple eggs to get it to appear.
collect 2 Ravasaur Pheromone Gland##11509 |q 4291/1 |goto Un'Goro Crater 67.32,73.05
You can find more eggs at: |notinsticky
[62.87,80.48]
[60.92,72.23]
[66.60,66.73]
step
talk Torwa Pathfinder##9619
turnin The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.63,75.97
accept The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.63,75.97
step
label "Collect_Power_Crystals"
click Power Crystal+
|tip They look clusters of red, yellow, green, or blue crystals on the ground around this area.
|tip They tend to be around the base of trees, or near the cliffs surrounding Un'Goro Crater.
|tip Kill enemies here and there as you search around, to continue gaining experience.
collect 7 Red Power Crystal##11186 |q 4284 |future |only if itemcount(11186) < 7
collect 7 Yellow Power Crystal##11188 |q 4284 |future |only if itemcount(11188) < 7
collect 7 Green Power Crystal##11185 |q 4284 |future |only if itemcount(11185) < 7
collect 7 Blue Power Crystal##11184 |q 4284 |future |only if itemcount(11184) < 7
|only if (itemcount(11186) < 7) or (itemcount(11188) < 7) or (itemcount(11185) < 7) or (itemcount(11184) < 7)
step
label "Collect_Bloodpetals"
Kill Bloodpetal enemies while heading back towards town.
|tip Try to focus on killing the level 48-50 ones, the higher levels are dangerous.
|tip They look like walking plants.
collect 15 Bloodpetal##11316 |q 4141/1 |goto Un'Goro Crater 71.46,38.72
|tip Watch for Devilsaur (large t-rex) patrols while around here.	|only if hardcore
You can find more around: |notinsticky
[66.08,35.13]
[69.26,24.59]
[55.87,34.69]
step
label "Collect_A_Mangled_Journal"
Kill enemies around this area
|tip Any enemy in Un'Goro Crater can drop the quest item.
|tip Watch for Devilsaur (large t-rex) patrols while around here.	|notinsticky |only if hardcore
collect A Mangled Journal##11116 |goto Un'Goro Crater 71.46,38.72 |q 3884 |future
You can find more around: |notinsticky
[66.08,35.13]
[69.26,24.59]
[55.87,34.69]
step
label "Accept_Willidens_Journal"
use A Mangled Journal##11116
accept Williden's Journal##3884
|only if itemcount(11116) > 0
step
Follow the path up into Marshal's Refuge |goto Un'Goro Crater 46.01,13.45 < 20 |only if walking and not subzone("Marshal's Refuge")
talk Muigin##9119
turnin Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
accept A Visit to Gregan##4142 |goto Un'Goro Crater 42.94,9.64
stickystop "Collect_UnGoro_Soil"
step
use A Small Pack##11107
collect Large Compass##11104 |q 3845/1
collect Curled Map Parchment##11105 |q 3845/2
collect Lion-headed Key##11106 |q 3845/3
step
_Destroy This Item:_
|tip It is no longer needed.
trash Faded Photograph##11108 |goto Un'Goro Crater 44.66,8.11
trash Heavy Throwing Dagger##3108 |goto Un'Goro Crater 44.66,8.11
step
talk Linken##8737
turnin It's a Secret to Everybody##3845 |goto Un'Goro Crater 44.66,8.11
accept It's a Secret to Everybody##3908 |goto Un'Goro Crater 44.66,8.11
step
talk Williden Marshal##9270
turnin Williden's Journal##3884 |goto Un'Goro Crater 43.95,7.14
step
Enter the cave |goto Un'Goro Crater 43.47,6.81 < 15 |walk |only if subzone("Marshal's Refuge") and not _G.IsIndoors()
talk J.D. Collie##9117
|tip Inside the cave.
accept Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.70
step
talk J.D. Collie##9117
|tip Inside the cave.
turnin Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.70
step
_Destroy These Items:_
|tip They are no longer needed.
trash Red Power Crystal##11186 |goto Un'Goro Crater 43.47,6.81
trash Yellow Power Crystal##11188 |goto Un'Goro Crater 43.47,6.81
trash Green Power Crystal##11185 |goto Un'Goro Crater 43.47,6.81
trash Blue Power Crystal##11184 |goto Un'Goro Crater 43.47,6.81
step
Leave the cave |goto Un'Goro Crater 43.47,6.81 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
talk Gryfe##10583
fpath Marshal's Refuge |goto Un'Goro Crater 45.23,5.84
step
label "Collect_UnGoro_Soil"
click Un'Goro Dirt Pile##157936+
|tip It can appear as a small pile on the ground.
|tip Any enemy in Un'Goro Crater can drop the quest item.
collect 20 Un'Goro Soil##11018 |q 3761 |future
|tip Be careful not to accidentally sell these to a vendor.
|sticky only
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect 15 Silk Cloth##4306 |goto Tanaris 52.30,28.91 |q 4449 |future
collect Fool's Stout Report##5807 |goto Tanaris 52.30,28.91 |q 1122
collect Stoley's Bottle##9245 |goto Tanaris 52.30,28.91 |q 2874
collect Atal'ai Tablet Fragment##6287 |goto Tanaris 52.30,28.91 |q 1469
collect 12 Pupellyverbos Port##3900 |goto Tanaris 52.30,28.91 |q 580
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Linken's Training Sword##11133 |goto Tanaris 52.30,28.91 |q 3908 |future
bank Un'Goro Soil##11018 |goto Tanaris 52.30,28.91 |q 3764 |future
|tip As many as you have.
bank Torwa's Pouch##11568 |goto Tanaris 52.30,28.91 |q 4292 |future
bank Bloodpetal##11316 |goto Tanaris 52.30,28.91 |q 4142 |future
step
talk Oglethorpe Obnoticus##7406
|tip In an upstairs building.
turnin Rescue OOX-17/TN!##648 |goto Stranglethorn Vale/0 28.01,76.43 |only if readyq(648)
turnin Rescue OOX-09/HL!##836 |goto Stranglethorn Vale/0 28.01,76.43 |only if readyq(836)
turnin Rescue OOX-22/FE!##2767 |goto Stranglethorn Vale/0 28.01,76.43 |only if readyq(2767)
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Deliver to MacKinley##2874 |goto Stranglethorn Vale 27.78,77.07
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk
talk Whiskey Slim##2491
|tip Inside the building, on the bottom floor.
turnin Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.14,77.45
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
turnin Report Back to Fizzlebub##1122 |goto Stranglethorn Vale 27.12,77.21
step
Enter the building |goto Stormwind City 53.44,64.92 < 10 |walk
talk Innkeeper Allison##6740
|tip Inside the building.
home Stormwind City |goto Stormwind City 52.62,65.70
step
Enter the building |goto Stormwind City 63.60,22.83 < 10 |walk
talk Brohann Caskbelly##5384
|tip Inside the building.
turnin Rhapsody's Tale##1469 |goto Stormwind City 64.33,20.66
step
talk Jasper Fel##1325
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 7723 |future
|only if Rogue
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Searing Gorge (50-51)',
  {
    image = ZGV.IMAGESDIR .. 'Searing Gorge',
    condition_suggested = function()
      return level >= 50 and level <= 51 and not completedq(3182)
    end,
    next = 'Leveling Guides\\Blasted Lands (51-51)',
    hardcore = true,
  },
  [[
step
Enter the Badlands |goto Loch Modan 46.94,78.53 < 50 |only if walking and hardcore and not zone("Searing Gorge")
Follow the path up into Thorium Point |goto Searing Gorge 31.51,33.47 < 60 |only if walking and hardcore and not zone("Searing Gorge")
click Wanted/Missing/Lost & Found##179827
accept STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 37.63,26.53
accept JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 37.63,26.53
step
talk Hansel Heavyhands##14627
accept Curse These Fat Fingers##7723 |goto Searing Gorge 38.57,27.80
accept Fiery Menace!##7724 |goto Searing Gorge 38.57,27.80
accept Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.57,27.80
step
talk Lanie Reed##2941
fpath Thorium Point |goto Searing Gorge 37.94,30.86
|only if hardcore
step
talk Kalaran Windblade##8479
accept Divine Retribution##3441 |goto Searing Gorge 39.05,38.99
step
talk Kalaran Windblade##8479
Select _"Tell me what drives this vengeance?"_
Listen to Kalaran's Story |q 3441/1 |goto Searing Gorge 39.05,38.99
step
talk Kalaran Windblade##8479
turnin Divine Retribution##3441 |goto Searing Gorge 39.05,38.99
accept The Flawless Flame##3442 |goto Searing Gorge 39.05,38.99
stickystart "Collect_Smithing_Lookout"
stickystart "Collect_Grimesilt_Outhouse_Key"
stickystart "Collect_Golem_Oil"
stickystart "Collect_Hearts_Of_Flame"
stickystart "Kill_Greater_Lava_Spiders"
stickystart "Kill_Heavy_War_Golems"
step
label "Collect_Smithing_Tuyere"
kill Dark Iron Steamsmith##5840+
|tip Prioritize this step heavily.
|tip They have a roughly 5 minute respawn time and a low drop rate.
|tip Work on the other quests around this area while waiting for them to respawn.
collect Smithing Tuyere##18959 |q 7728/1 |goto Searing Gorge 39.13,49.64
You can find more around [42.86,51.59]
step
label "Collect_Smithing_Lookout"
kill Dark Iron Lookout##8566+
|tip They are around the watch towers on the cliff surrounding the huge pit.
|tip There are not many of these and should be your second priority for clears after Steamsmiths.
collect Lookout's Spyglass##18960 |q 7728/2 |goto Searing Gorge 33.03,53.44
You can find more around: |notinsticky
[35.40,59.82]
[43.47,63.52]
[52.47,57.97]
step
label "Collect_Golem_Oil"
Kill enemies around this area
|tip Only Tempered War Golems, Heavy War Golems, and Magma Elementals will drop the quest item.
|tip Prioritize Magma elementals where possible. |notinsticky
collect 4 Golem Oil##10511 |q 3442/2 |goto Searing Gorge 48.59,38.32
You can find more around: |notinsticky
[43.27,39.20]
[36.56,40.58]
[32.26,46.19]
[25.43,53.98]
[31.52,72.23]
step
label "Collect_Hearts_Of_Flame"
Kill Elemental enemies around this area
|tip Heavy War Golems will not drop this quest item.
|tip Prioritize Magma elementals where possible. |notinsticky
collect 4 Heart of Flame##10509 |q 3442/1 |goto Searing Gorge 42.58,38.58
You can find more around: |notinsticky
[39.22,41.58]
[31.18,43.67]
[25.43,53.98]
[31.52,72.23]
step
talk Kalaran Windblade##8479
turnin The Flawless Flame##3442 |goto Searing Gorge 39.05,38.99
accept Forging the Shaft##3443 |goto Searing Gorge 39.05,38.99
stickystart "Collect_Thorium_Plated_Daggers"
step
label "Kill_Greater_Lava_Spiders"
kill 20 Greater Lava Spider##5858 |q 7724/1 |goto Searing Gorge 28.78,44.44
You can find more around: |notinsticky
[29.23,55.00]
[29.51,72.50]
step
label "Kill_Heavy_War_Golems"
kill 20 Heavy War Golem##5854 |q 7723/1	|goto Searing Gorge 32.42,49.43
You can find more around: |notinsticky
[37.02,42.98]
[47.99,38.64]
step
Jump down onto the metal walkway here |goto Searing Gorge 49.32,43.74 < 15 |only if walking
Enter the cave |goto Searing Gorge 49.58,45.49 < 10 |c |q 7727
|only if not (subzone("The Slag Pit") and _G.IsIndoors())
stickystop "Collect_Thorium_Plated_Daggers"
step
Jump down from the bridge inside the cave here |goto Searing Gorge 47.73,41.92 < 10 |walk
kill 20 Incendosaur##9318 |q 7727/1 |goto Searing Gorge 51.73,37.16
|tip Inside the cave.
You can find more around: |notinsticky
[50.37,24.75]
[45.03,21.73]
stickystart "Kill_Dark_Iron_Taskmasters"
stickystart "Kill_Dark_Iron_Slavers"
step
label "Collect_Thorium_Plated_Daggers"
Follow the path |goto Searing Gorge 50.14,38.78 < 15 |walk
Continue following the path |goto Searing Gorge 47.13,43.05 < 15 |walk
Leave the cave |goto Searing Gorge 47.52,46.46 < 15 |walk
Enter the cave at the other entrance |goto Searing Gorge 49.60,45.50 < 15 |walk
Kill Dark Iron enemies around this area
|tip They look like dwarves.
|tip Inside the cave, all throughout. |notinsticky
|tip Watch out for patrols and respawns.	|only if hardcore |notinsticky
collect 8 Thorium Plated Dagger##10551 |q 3443/1 |goto Searing Gorge 43.38,34.94
step
label "Kill_Dark_Iron_Taskmasters"
kill 15 Dark Iron Taskmaster##5846 |q 7729/1 |goto Searing Gorge 43.38,34.94
|tip Inside the cave, all throughout. |notinsticky
|tip Watch out for patrols and respawns.	|only if hardcore |notinsticky
|tip You can also find some outside, near Thorium Point. |notinsticky
step
label "Kill_Dark_Iron_Slavers"
kill 15 Dark Iron Slaver##5844 |q 7729/2 |goto Searing Gorge 43.38,34.94
|tip Inside the cave, all throughout. |notinsticky
|tip Watch out for patrols and respawns.	|only if hardcore |notinsticky
|tip You can also find some outside, near Thorium Point. |notinsticky
step
label "Collect_Grimesilt_Outhouse_Key"
use the Grimesilt Outhouse Key##11818
accept The Key to Freedom##4451
|only if itemcount(11818) > 0
step
Leave the cave |goto Searing Gorge 49.58,45.49 < 10 |c |only if (subzone("The Slag Pit") and _G.IsIndoors())
talk Hansel Heavyhands##14627
turnin Curse These Fat Fingers##7723 |goto Searing Gorge 38.59,27.81
turnin Fiery Menace!##7724 |goto Searing Gorge 38.59,27.81
turnin Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.59,27.81
step
talk Taskmaster Scrange##14626
turnin STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 38.98,27.51
turnin JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 38.98,27.51
step
talk Kalaran Windblade##8479
turnin Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
accept The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99 |only if not hardcore
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 51.
|tip You are about to have to kill a bunch of elite enemies for a quest, so being a level higher will help.
|tip The quest leads to many other quests that give a lot of xp, so it's important to get done.
|tip Watch of patrols and respawns while around the area.	|only if hardcore
ding 51 |goto Searing Gorge 39.13,49.64 |q 4451 |future
You can find more around: |notinsticky
[42.59,50.65]
[43.93,40.43]
step
Kill Twilight enemies around this area
|tip They are elite enemies, so you may need help with this.
|tip If you have trouble, try to find someone to help you.
|tip Doing this quest unlocks more quests that give easy experience, so it's important to get it done.
collect Symbol of Ragnaros##10552 |q 3452/1 |goto Searing Gorge 24.62,35.13
You can find more inside the cave at [21.89,36.36]
You can find more up the path that starts at [24.23,33.12]
|only if not hardcore
step
talk Kalaran Windblade##8479
turnin The Flame's Casing##3452 |goto Searing Gorge 39.05,38.99
accept The Torch of Retribution##3453 |goto Searing Gorge 39.05,38.99
|only if not hardcore
step
Watch the dialogue
Witness the Creation of the Torch |q 3453/1 |goto Searing Gorge 39.05,38.99
|only if not hardcore
step
talk Kalaran Windblade##8479
turnin The Torch of Retribution##3453 |goto Searing Gorge 39.05,38.99
accept The Torch of Retribution##3454 |goto Searing Gorge 39.05,38.99
|only if not hardcore
step
click Torch of Retribution##149047
turnin The Torch of Retribution##3454 |goto Searing Gorge 39.06,39.06
|only if not hardcore
step
talk Kalaran Windblade##8479
accept Squire Maltrake##3462 |goto Searing Gorge 39.05,39.00
|only if not hardcore
step
talk Squire Maltrake##8509
turnin Squire Maltrake##3462 |goto Searing Gorge 39.16,38.99
accept Set Them Ablaze!##3463 |goto Searing Gorge 39.16,38.99
|only if not hardcore
step
Run up the ramp |goto Searing Gorge 33.50,53.64 < 15 |only if walking
click Sentry Brazier##149025
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Northern Tower Ablaze |q 3463/4 |goto Searing Gorge 33.31,54.49
|only if not hardcore
step
Run up the ramp |goto Searing Gorge 35.92,59.85 < 15 |only if walking
click Sentry Brazier##149025
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Western Tower Ablaze |q 3463/1 |goto Searing Gorge 35.67,60.68
|only if not hardcore
step
Follow the path |goto Searing Gorge 35.00,72.13 < 50 |only if walking
Run up the ramp |goto Searing Gorge 44.10,61.85 < 15 |only if walking
click Sentry Brazier##149025
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Southern Tower Ablaze |q 3463/2 |goto Searing Gorge 44.03,60.91
|only if not hardcore
step
Cross the hanging bridge |goto Searing Gorge 52.48,57.95 < 15 |only if walking
Run up the ramp |goto Searing Gorge 50.19,55.61 < 15 |only if walking
click Sentry Brazier##149025
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Eastern Tower Ablaze |q 3463/3 |goto Searing Gorge 50.06,54.74
|only if not hardcore
step
click Wooden Outhouse##173265
turnin The Key to Freedom##4451 |goto Searing Gorge 65.53,62.23
accept Caught!##4449 |goto Searing Gorge 65.54,62.24
step
Kill Dark Iron enemies around this area
|tip Kill all of the Dark Iron dwarves in this camp.
|tip You need to kill 8 Dark Iron Geologists for the quest, but there's not enough to kill, without waiting for respawns.
|tip The Geologists share spawn points with the Watchmen, so kill those too.
|tip We will clear the camp now, and come back to kill the rest soon, after completing another quest nearby.
|tip Continue to the next guide step after you clear the camp of dwarves.
Click Here to Continue |confirm |goto Searing Gorge 63.13,60.28 |q 4449
step
Follow the path up |goto Searing Gorge 67.59,70.55 < 20 |c |q 3181 |future
step
map Searing Gorge
path follow strictbounce; loop off; ants straight; dist 30; markers none
path	69.89,76.37	70.62,74.78	70.52,73.19	68.80,71.78	73.37,73.97
path	73.26,76.28	72.73,78.31	72.96,80.31	73.48,82.34
kill Margol the Rager##5833
|tip It's a level 48 elite, but you should be able to kill it at this level.
|tip Clear enemies around the area before attempting to kill it.
|tip It looks like a blue dinosaur that walks on the path around this area.
|tip If you have trouble, try to find someone to help you.
collect Margol's Horn##10000 |q 3181 |future
step
use Margol's Horn##10000
accept The Horn of the Beast##3181
step
kill 8 Dark Iron Geologist##5839 |q 4449/1 |goto Searing Gorge 63.13,60.28
|tip They share spawn points with the Dark Iron Watchmen, so kill those too, if you can't find any.
|tip Enemies tend to bunch together so be prepared for adds.	|only if hardcore
step
click Wooden Outhouse##173265
|tip You should have the Silk Cloth already from a previous guide.
turnin Caught!##4449 |goto Searing Gorge 65.54,62.24
step
talk Dorius Stonetender##8284
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Suntara Stones##3367 |goto Searing Gorge 63.92,60.98 |noautoaccept
step
Watch the dialogue
|tip Follow Dorius Stonetender and protect him as he walks.
|tip You will be attacked by groups of enemies along the way, so be ready.
|tip He eventually walks to this location.
Escort Dorius |q 3367/1 |goto Searing Gorge 74.42,19.41
step
click Singed Letter
turnin Suntara Stones##3367 |goto Searing Gorge 74.45,19.29
accept Suntara Stones##3368 |goto Searing Gorge 74.45,19.29
step
Follow the path |goto Searing Gorge 67.18,34.60 < 50 |only if walking and subzone("Dustfire Valley")
talk Squire Maltrake##8509
turnin Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39.00
|only if not hardcore
step
_Destroy This Item:_
|tip It is no longer needed.
trash Torch of Retribution##10515 |goto Searing Gorge 38.86,38.99
|only if not hardcore
step
Watch the dialogue
click Hoard of the Black Dragonflight
accept Trinkets...##3481 |goto Searing Gorge 38.86,38.99
|only if not hardcore
step
click Hoard of the Black Dragonflight
turnin Trinkets...##3481 |goto Searing Gorge 38.86,38.99
|only if not hardcore
step
use the Hoard of the Black Dragonflight##10569
collect Black Dragonflight Molt##10575 |q 4022 |future
|tip Keep this, you'll need it for a future quest.
|only if not hardcore
step
Follow the path up into Thorium Point |goto Searing Gorge 31.51,33.47 < 20 |only if walking and zone("Searing Gorge")
talk Master Smith Burninate##14624
|tip Buy enough ammo to fill your ammo bag, plus 6-8 extra stacks.
|tip You will be questing a while.
Visit the Vendor |vendor Master Smith Burninate##14624 |goto Searing Gorge 38.80,28.49 |q 2783 |future
|only if Hunter
step
Follow the path up into Thorium Point |goto Searing Gorge 31.51,33.47 < 20 |only if walking and zone("Searing Gorge")
talk Mountaineer Pebblebitty##3836
turnin The Horn of the Beast##3181 |goto Loch Modan 18.19,84.00
accept Proof of Deed##3182 |goto Loch Modan 18.19,84.00
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Blasted Lands (51-51)',
  {
    image = ZGV.IMAGESDIR .. 'Blasted Lands',
    condition_suggested = function()
      return level == 51 and not completedq(2877)
    end,
    next = 'Leveling Guides\\Western Plaguelands (51-52)',
    hardcore = true,
  },
  [[
step
Enter the building |goto Blasted Lands 66.40,18.98 < 10 |walk
talk Ambassador Ardalan##7826
|tip Inside the building, at the top.
accept Petty Squabbles##2783 |goto Blasted Lands 67.57,19.29
step
Leave the building |goto Blasted Lands 66.40,18.98 < 10 |walk |only if subzone("Nethergarde Keep") and _G.IsIndoors()
Leave Nethergarde Keep |goto Blasted Lands 62.83,19.77 < 30 |only if walking and subzone("Nethergarde Keep")
talk Fallen Hero of the Horde##7572
turnin Petty Squabbles##2783 |goto Swamp of Sorrows 34.29,66.13
accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.13
step
talk Fallen Hero of the Horde##7572
Select _"Please continue, Hero..."_
Listen to a Tale of Sorrow |q 2801/1 |goto Swamp of Sorrows 34.29,66.13
step
talk Fallen Hero of the Horde##7572
turnin A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.13
step
_Note_
Keep an eye out while in this zone!
|tip Teremus the Devourer is a level 60 dragon boss that patrols this zone.
|tip Regularly spin your camera around to check for him.
|tip If he aggros you it is near guaranteed death.
Click Here To Confirm |confirm
|only if hardcore
step
talk Bloodmage Drazial##7505
accept Snickerfang Jowls##2581 |goto Blasted Lands 50.55,14.21
accept A Boar's Vitality##2583 |goto Blasted Lands 50.55,14.21
accept The Decisive Striker##2585 |goto Blasted Lands 50.55,14.21
step
talk Bloodmage Lynnore##7506
accept The Basilisk's Bite##2601 |goto Blasted Lands 50.64,14.30
accept Vulture's Vigor##2603 |goto Blasted Lands 50.64,14.30
stickystart "Collect_Blasted_Boar_Lungs"
stickystart "Collect_Scorpok_Pincers"
stickystart "Collect_Basilisk_Brains"
stickystart "Collect_Vulture_Gizzards"
stickystart "Collect_Snickerfang"
step
label "Collect_Vulture_Gizzards"
kill Black Slayer##5982+
|tip Bonepickers will also drop the quest item.
|tip They look like vultures.
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
|tip These usually take the longest to collect, by far.
|tip Go out of your way to camp the vulture spawns and kill other mobs while they respawn.
|tip You can try to buy them from the auction house, if you don't want to spend the time to collect them. |only if not selfmade
collect 14 Vulture Gizzard##8396 |goto Blasted Lands 48.50,19.78 |q 2603
You can find more around: |notinsticky
[45.45,35.25]
[53.42,37.61]
[55.04,43.80]
[59.33,42.05]
[56.46,36.51]
[58.82,27.97]
[62.28,26.43]
step
label "Collect_Basilisk_Brains"
Kill Redstone enemies around this area
|tip They look like basilisks.
|tip These should be your second priority after vultures.
|tip They share spawn locations with other enemies. |notinsticky
|tip They share spawns with the boars. |notinsticky
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
collect 11 Basilisk Brain##8394 |goto Blasted Lands 55.08,28.94 |q 2601
You can find more around: |notinsticky
[61.75,27.98]
[59.71,43.76]
step
label "Collect_Blasted_Boar_Lungs"
Kill Boar enemies around this area
|tip They share spawn locations with the basilisks. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn. |notinsticky
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
collect 6 Blasted Boar Lung##8392 |goto Blasted Lands 57.51,28.74 |q 2583
You can find more around: |notinsticky
[61.82,28.49]
[59.11,35.83]
[59.52,43.48]
step
label "Collect_Snickerfang"
Kill Snickerfang enemies around this area
|tip They look like hyenas.
|tip They share spawn locations with the scorpions. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn.
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
collect 5 Snickerfang Jowl##8391 |goto Blasted Lands 47.21,21.18 |q 2581
You can find more around: |notinsticky
[44.82,24.87]
[45.44,35.35]
[50.96,38.09]
step
label "Collect_Scorpok_Pincers"
kill Scorpok Stinger##5988+
|tip They look like scorpions.
|tip They share spawn locations with the hyenas. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn. |notinsticky
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
collect 6 Scorpok Pincer##8393 |goto Blasted Lands 49.10,18.12 |q 2585
You can find more around: |notinsticky
[45.29,21.33]
[44.61,29.11]
[52.04,30.03]
[56.81,21.17]
step
talk Kum'isha the Collector##7363
|tip He walks around this area.
accept Everything Counts In Large Amounts##3501 |goto Blasted Lands 51.80,35.64
|only if itemcount(10593) > 0
step
talk Kum'isha the Collector##7363
|tip He walks around this area.
turnin Everything Counts In Large Amounts##3501 |goto Blasted Lands 51.80,35.64
|only if haveq(3501) or completedq(3501)
step
talk Bloodmage Lynnore##7506
turnin The Basilisk's Bite##2601 |goto Blasted Lands 50.64,14.30
turnin Vulture's Vigor##2603 |goto Blasted Lands 50.64,14.30
step
talk Bloodmage Drazial##7505
turnin Snickerfang Jowls##2581 |goto Blasted Lands 50.55,14.21
turnin A Boar's Vitality##2583 |goto Blasted Lands 50.55,14.21
turnin The Decisive Striker##2585 |goto Blasted Lands 50.55,14.21
step
talk Curator Thorius##8256
|tip He walks around this area inside the building.
turnin Proof of Deed##3182 |goto Ironforge 72.01,15.53
turnin Suntara Stones##3368 |goto Ironforge 72.01,15.53
accept At Last!##3201 |goto Ironforge 72.01,15.53
step
talk Laris Geardawdle##9616
|tip Inside the building.
accept A Little Slime Goes a Long Way##4512 |goto Ironforge 75.77,23.37
step
Enter the building |goto Ironforge 53.24,7.33 < 7 |walk
talk Jubahl Corpseseeker##6382
|tip Inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Jubahl Corpseseeker##6382 |goto Ironforge 52.70,6.08 |q 3448
|only if Warlock
step
Enter the building |goto Ironforge 20.65,53.22 < 7 |walk
talk Innkeeper Firebrew##5111
|tip Inside the building.
home Ironforge |goto Ironforge 18.16,51.46
step
Enter the building |goto Ironforge 26.18,72.17 < 15 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
|tip Buy it from the Auction House.
|tip It is needed for a quest in Un'Goro Crater.
|tip If you can't get one, it's okay, but you will need to skip a quest later.
collect Mithril Casing##10561 |goto Ironforge 24.16,74.67 |q 4244 |future
|only if not selfmade
step
map Ironforge
path	follow strict;	loop on;	ants curved;	dist 30;	markers none
path	57.32,78.92		50.14,81.06		39.59,79.17		34.35,74.44
path	24.69,55.32		24.38,38.36		27.70,25.23		32.24,22.90
path	34.74,33.94		40.38,37.68		48.22,31.09		55.91,35.09
path	57.34,48.56		48.22,57.86		46.33,47.76		39.94,44.41
path	38.43,38.33		34.49,32.86		33.42,21.18		39.45,12.40
path	44.31,10.79		53.02,10.57		58.98,13.76		70.47,33.88
path	71.16,44.77		70.12,55.01		67.38,65.14
talk Courier Hammerfall##10877
|tip He looks like a dwarf that walks in a counter-clockwise path around Ironforge.
|tip This step's path will take you clockwise to help you find him faster.
accept A Call to Arms: The Plaguelands!##5090
step
Enter the building |goto Ironforge 34.09,62.38 < 10 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Deposit these items into the bank.
bank Mithril Casing##10561 |goto Ironforge 35.92,60.14 |q 4244 |future
bank Black Dragonflight Molt##10575 |goto Ironforge 35.92,60.14 |q 4022 |future
bank Drawing Kit##10445 |goto Ironforge 35.92,60.14 |q 3449 |future
bank Standard Issue Flare Gun##10444 |goto Ironforge 35.92,60.14 |q 3449 |future
step
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Collect these items from the bank.
collect Super Snapper FX##9328 |goto Ironforge 35.92,60.14 |q 2944
collect Snapshot of Gammerita##9330 |goto Ironforge 35.92,60.14 |q 2944
collect 15 Wildkin Feather##10819 |goto Ironforge 35.92,60.14 |q 3661
step
talk Tynnus Venomsprout##5169
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66 |q 3201
|only if Rogue
step
talk Mountaineer Pebblebitty##3836
turnin At Last!##3201 |goto Loch Modan 18.19,84.00
step
Enter the building |goto The Hinterlands 11.00,45.67 < 10 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
turnin The Altar of Zul##2989 |goto The Hinterlands 9.76,44.48
|only if not hardcore
step
Leave the building |goto The Hinterlands 11.00,45.67 < 10 |walk |only if subzone("Aerie Peak") and _G.IsIndoors()
Enter the building |goto The Hinterlands 14.19,45.18 < 30 |walk |only if not subzone("Wildhammer Keep")
talk Fraggar Thundermantle##7884
|tip Inside the building.
turnin Skulk Rock Clean-up##2877 |goto The Hinterlands 14.83,44.56
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Western Plaguelands (51-52)',
  {
    image = ZGV.IMAGESDIR .. 'Western Plaguelands',
    condition_suggested = function()
      return level >= 51 and level <= 52 and not completedq(4493)
    end,
    next = 'Leveling Guides\\Azshara (52-52)',
    hardcore = true,
  },
  [[
step
talk Commander Ashlam Valorfist##10838
turnin A Call to Arms: The Plaguelands!##5090 |goto Western Plaguelands 42.70,84.03
accept Clear the Way##5092 |goto Western Plaguelands 42.70,84.03
stickystart "Kill_Slavering_Ghouls"
step
kill 10 Skeletal Flayer##1783 |q 5092/1 |goto Western Plaguelands 48.51,81.13
|tip Watch for respawns while in the area.	|only if hardcore
You can find more around [50.64,77.01]
step
label "Kill_Slavering_Ghouls"
kill 10 Slavering Ghoul##1791 |q 5092/2 |goto Western Plaguelands 48.51,81.13
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
You can find more around [50.64,77.01]
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 52.
|tip Getting this far into level 51 will allow you to reach level 52 after turning in quests soon.
|tip Watch for respawns while in the area.	|only if hardcore
ding 51,149000 |goto Western Plaguelands 48.51,81.13
You can find more around [50.64,77.01]
step
talk Commander Ashlam Valorfist##10838
turnin Clear the Way##5092 |goto Western Plaguelands 42.70,84.03
accept The Scourge Cauldrons##5215 |goto Western Plaguelands 42.70,84.03
step
talk High Priestess MacDonnell##11053
turnin The Scourge Cauldrons##5215 |goto Western Plaguelands 42.97,84.50
step
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Favored of Elune?##3661 |goto Teldrassil 55.50,92.05
accept Moontouched Wildkin##978 |goto Teldrassil 55.50,92.05
step
talk Daryn Lightwind##7907
|tip Upstairs inside the building.
turnin The Super Snapper FX##2944 |goto Teldrassil 55.41,92.23
accept Return to Troyas##2943 |goto Teldrassil 55.41,92.23
step
talk Garryeth##4209
|tip Inside the building.
|tip Collect these items from the bank.
collect Insect Analysis Report##8594 |goto Darnassus 39.60,41.98 |q 162
collect Linken's Training Sword##11133 |goto Darnassus 39.60,41.98 |q 3908
collect Bloodpetal##11316 |goto Darnassus 39.60,41.98 |q 4142
step
Enter the building |goto Darnassus 39.04,76.77 < 15 |walk
talk Gracina Spiritmight##7740
|tip Upstairs inside the building.
turnin Rise of the Silithid##162 |goto Darnassus 41.84,85.62
accept March of the Silithid##4493 |goto Darnassus 41.84,85.62
step
talk Innkeeper Shaussiy##6737
|tip Inside the building.
home Auberdine |goto Darkshore 37.04,44.13
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Azshara (52-52)',
  {
    image = ZGV.IMAGESDIR .. 'Azshara',
    condition_suggested = function()
      return level == 52 and not completedq(5536)
    end,
    next = 'Leveling Guides\\Felwood (52-52)',
    hardcore = true,
  },
  [[
step
talk Jarrodenus##12577
fpath Talrendis Point |goto Azshara 11.90,77.59
|only if hardcore
step
talk Loh'atu##11548
accept Spiritual Unrest##5535 |goto Azshara 11.37,78.16
accept A Land Filled with Hatred##5536 |goto Azshara 11.37,78.16
stickystart "Kill_Highborne_Lichlings"
step
Follow the path up |goto Azshara 13.45,73.32 < 30 |only if walking
kill 6 Highborne Apparition##6116 |q 5535/1 |goto Azshara 14.66,72.47
|tip Watch for patrols and respawns while in the area.	|only if hardcore
You can find more around [17.21,68.82]
step
label "Kill_Highborne_Lichlings"
kill 6 Highborne Lichling##6117 |q 5535/2 |goto Azshara 17.21,68.82
|tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
You can find more around [14.66,72.47]
stickystart "Kill_Haldarr_Trickster"
stickystart "Kill_Haldarr_Felsworns"
step
Follow the path up |goto Azshara 19.36,62.52 < 30 |only if walking
kill 6 Haldarr Satyr##6125 |q 5536/1 |goto Azshara 19.82,61.38
|tip Watch for respawns while in the area.	|only if hardcore
step
label "Kill_Haldarr_Trickster"
kill 2 Haldarr Trickster##6126 |q 5536/2 |goto Azshara 19.82,61.38
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
step
label "Kill_Haldarr_Felsworns"
kill 2 Haldarr Felsworn##6127 |q 5536/3 |goto Azshara 19.82,61.38
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
step
talk Loh'atu##11548
turnin Spiritual Unrest##5535 |goto Azshara 11.37,78.17
turnin A Land Filled with Hatred##5536 |goto Azshara 11.37,78.17
step
talk Brinna Valanaar##14301
|tip Buy enough ammo to fill your ammo bag, plus 12-15 extra stacks.
|tip You will be questing a while without easy access to an ammo vendor.
Visit the Vendor |vendor Brinna Valanaar##14301 |goto Azshara 12.00,78.38 |q 4101 |future
|only if Hunter
]]
)
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
  'Leveling Guides\\Winterspring (52-52)',
  {
    image = ZGV.IMAGESDIR .. 'Winterspring',
    condition_suggested = function()
      return level == 52 and not completedq(978)
    end,
    next = 'Leveling Guides\\Felwood Part 1 (52-53)',
    hardcore = true,
  },
  [[
step
Enter the tunnel |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Moonglade")
Run down the stairs and follow the path |goto Felwood 65.36,2.34 < 10 |walk |only if not zone("Moonglade")
Leave the tunnel |goto Moonglade 35.75,72.48 < 10 |walk |only if not zone("Moonglade")
talk Sindrayl##10897
fpath Moonglade |goto Moonglade 48.10,67.34
step
talk Keeper Remulos##11832
turnin Seed of Life##7066 |goto Moonglade 36.18,41.82
|only if readyq(7066)
step
Enter the tunnel |goto Moonglade 35.74,72.49 < 10 |walk |only if not zone("Winterspring")
Follow the path |goto Felwood 66.26,2.90 < 10 |walk |only if not zone("Winterspring")
Leave the tunnel |goto Felwood 68.40,5.84 < 10 |walk |only if not zone("Winterspring")
talk Donova Snowden##9298
turnin It's a Secret to Everybody##3908 |goto Winterspring 31.27,45.16
step
Watch the dialogue
talk Donova Snowden##9298
accept The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
click Moontouched Feather+
|tip They look like large blue feathers on the ground around this area.
|tip Gather these while heading east to Everlook.
collect 10 Moontouched Feather##12383 |q 978/1 |goto Winterspring 31.35,45.53
You can find more at: |notinsticky
[30.95,47.02]
[29.39,46.67]
[30.18,45.24]
[30.30,44.03]
[31.42,43.31]
[32.02,44.25]
[32.79,44.36]
[33.07,44.01]
[34.85,43.20]
step
talk Azzleby##11119
|tip Avoid higher level enemies while following the road to this location.
|tip Stable your permanent pet.
|tip You are about to tame a temporary pet, so you can learn "Bite 7".
Click Here to Continue |confirm |goto Winterspring 60.39,37.92 |q 978
|only if Hunter
step
talk Maethrya##11138
|tip Avoid higher level enemies while following the road to this location.
fpath Everlook |goto Winterspring 62.33,36.61
]]
)
