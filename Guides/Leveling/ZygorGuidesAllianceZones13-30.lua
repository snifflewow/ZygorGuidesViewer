local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end

ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Darkshore (13-17)',
  {
    image = ZGV.IMAGESDIR .. 'Darkshore',
    condition_suggested = function()
      return level >= 13 and level <= 17 and not completedq(4762)
    end,
    next = 'Leveling Guides\\Loch Modan (17-18)',
    hardcore = true,
  },
  [[
step
talk Cerellean Whiteclaw##3644
|tip On the dock.
accept Welcome to Auberdine##26203 |goto Darkshore 35.74,43.71
accept For Love Eternal##963 |goto Darkshore 35.74,43.71
step
talk Wizbang Cranktoggle##3666
|tip Upstairs inside the building.
accept Buzzbox 827##983 |goto Darkshore 36.98,44.14
step
talk Gwennyth Bly'Leggonde##10219
accept Washed Ashore##3524 |goto Darkshore 36.62,45.59
step
talk Caylais Moonfeather##3841
fpath Auberdine |goto Darkshore 36.34,45.58
step
talk Quartermaster Nyana##10218
turnin Welcome to Auberdine##26203 |goto Darkshore 37.37,45.12
step
talk Barithras Moonshade##3583
accept Cave Mushrooms##947 |goto Darkshore 37.32,43.64
|tip You can skip it, but it is part of a large quest chain worth 6,660 xp. |only if hardcore
|tip You will need to grind that xp later. |only if hardcore
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
accept The Red Crystal##4811 |goto Darkshore 37.70,43.39
accept Balancing the Forest##26200 |goto Darkshore 37.70,43.39
accept Wanted: Grizzletooth##26208 |goto Darkshore 37.70,43.39
step
Enter the building |goto Darkshore 37.77,41.36 < 15 |walk
talk Dalmond##4182
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Dalmond##4182 |goto Darkshore 37.45,40.50 |q 4811
step
talk Bill Wheeland##45038
accept My Sister Isabetta##27205 |goto Darkshore 37.5,41.6
accept The Greymist Menace##26204 |goto Darkshore 37.5,41.6
step
talk Thundris Windweaver##3649
|tip Inside the building.
accept Bashal'Aran##954 |goto Darkshore 37.39,40.13
accept Tools of the Highborne##958 |goto Darkshore 37.39,40.13
step
talk Tharnariun Treetender##3701
accept Plagued Lands##2118 |goto Darkshore 38.84,43.42
step
talk Terenthis##3693
|tip Inside the building.
accept How Big a Threat?##984 |goto Darkshore 39.37,43.48
stickystart "Collect_Crawler_Legs"
step
click Beached Sea Creature##175207
|tip There are several murlocs surrounding the corpse. |only if hardcore
|tip When low health, they will run away, so try to pull them a good deal away from the beached sea creature. |only if hardcore
collect Sea Creature Bones##12242 |q 3524/1 |goto Darkshore 36.39,50.88
step
label "Collect_Crawler_Legs"
kill Pygmy Tide Crawler##2231+
collect 6 Crawler Leg##5385 |q 983/1 |goto Darkshore 36.12,48.70
step
Find a Corrupt Furbolg Camp |q 984/1 |goto Darkshore 38.95,53.57
step
use Tharnariun's Hope##7586
|tip Use it on a Rabid Thistle Bear around this area.
|tip Be careful to not accidentally use it on a regular Thistle Bear.
|tip Make sure it's very close to you when you use it.
|tip Make it get close to the glowing red circle that appears on the ground.
Capture a Rabid Thistle Bear |q 2118/1 |goto Darkshore 38.35,57.54
If you need another quest item, talk to Tharnariun Treetender at [38.84,43.42]
step
click Buzzbox 827##17182
turnin Buzzbox 827##983 |goto Darkshore 36.66,46.26
accept Buzzbox 411##1001 |goto Darkshore 36.66,46.26
step
Run up the ramp |goto Darkshore 36.70,45.02 < 10 |only if walking
talk Gwennyth Bly'Leggonde##10219
turnin Washed Ashore##3524 |goto Darkshore 36.62,45.59
accept Washed Ashore##4681 |goto Darkshore 36.62,45.59
stickystart "Collect_Thresher_Eyes"
step
Run on the dock and jump into the water here |goto Darkshore 32.42,43.82 < 20 |only if walking
click Skeletal Sea Turtle##176189
|tip Underwater.
|tip Don't linger underwater for any reason. |only if hardcore
|tip If you get into combat, swim to the surface and kill the enemy, then try again. |only if hardcore
collect Sea Turtle Remains##12289 |q 4681/1 |goto Darkshore 31.87,46.32
step
Run up the ramp |goto Darkshore 36.70,45.02 < 10 |only if walking
talk Gwennyth Bly'Leggonde##10219
turnin Washed Ashore##4681 |goto Darkshore 36.62,45.59
stickystop "Collect_Thresher_Eyes"
step
talk Isabetta Wheeland##46067
|tip At her home on an island south of Auberdine.
complete My Sister Isabetta |q 27205/1 |goto Darkshore 32.00,64.00
step
talk Isabetta Wheeland##46067
turnin My Sister Isabetta##27205 |goto Darkshore 32.00,64.00
step
talk Innkeeper Shaussiy##6737
|tip Inside the building.
home Auberdine |goto Darkshore 37.04,44.12
step
talk Tharnariun Treetender##3701
turnin Plagued Lands##2118 |goto Darkshore 38.84,43.42
accept Cleansing of the Infected##2138 |goto Darkshore 38.84,43.42
step
talk Terenthis##3693
|tip Inside the building.
turnin How Big a Threat?##984 |goto Darkshore 39.37,43.48
accept How Big a Threat?##985 |goto Darkshore 39.37,43.48
accept Thundris Windweaver##4761 |goto Darkshore 39.37,43.48
step
talk Gorbold Steelhand##6301
accept Deep Ocean, Vast Sea##982 |goto Darkshore 38.11,41.17
step
Enter the building |goto Darkshore 37.77,41.36 < 15 |walk
talk Dalmond##4182
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Dalmond##4182 |goto Darkshore 37.45,40.50 |q 4761
step
talk Thundris Windweaver##3649
|tip Inside the building.
turnin Thundris Windweaver##4761 |goto Darkshore 37.40,40.13
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 14.
|tip You are about to have to complete a quest that's underwater and can be difficult, with accidentally aggroing additional enemies.
|tip Being a level higher will help.
ding 14 |goto Darkshore 39.01,35.63
stickystart "Collect_Thresher_Eyes"
step
_NOTE:_
Incoming Underwater Quest
|tip The next 2 steps have you diving underwater to retrieve Lockboxes for a quest.
|tip The area is filled with aggressive murlocs and can be hard to navigate.
|tip Consider getting Elixir of Water Breathing on Auction House or from a friendly alchemist.
|tip The quest is optional.
|tip If you decide to skip the quest, make sure to also abandon the "Deep Ocean, Vast Sea" quest.
|tip
Click Here to Continue |confirm |q 982
|only if hardcore
step
Swim through the hole in the bottom of the underwater boat |goto Darkshore 38.79,29.38 < 10 |walk
click Silver Dawning's Lockbox##175165
|tip Inside the sunken ship, at the very bottom.
collect Silver Dawning's Lockbox##12191 |q 982/1 |goto Darkshore 38.24,28.80
step
Swim through the hole in the bottom of the underwater boat |goto Darkshore 40.28,27.51 < 10 |walk
click Mist Veil's Lockbox
|tip Inside the sunken ship, at the very bottom.
collect Mist Veil's Lockbox##12192 |q 982/2 |goto Darkshore 39.63,27.46
step
label "Collect_Thresher_Eyes"
kill Darkshore Thresher##2185
|tip Underwater around this area.
collect 3 Thresher Eye##5412 |q 1001/1 |goto Darkshore 31.60,39.75
You can find more around: |notinsticky
[35.39,37.08]
[39.63,27.46]
step
click Buzzbox 411##17183
turnin Buzzbox 411##1001 |goto Darkshore 41.96,28.64
accept Buzzbox 323##1002 |goto Darkshore 41.96,28.64
step
click Beached Sea Creature##175233
|tip The creature is surrounded by murlocs that can be hard to pull by themselves. |only if hardcore
|tip Greymist Seers will heal. |only if hardcore
|tip Greymist Coastrunners will run away quickly when at low health, so pull them away from the beached sea creature as best possible. |only if hardcore
accept Beached Sea Creature##4723 |goto Darkshore 41.88,31.55
step
talk Asterion##3650
turnin Bashal'Aran##954 |goto Darkshore 44.17,36.29
accept Bashal'Aran##955 |goto Darkshore 44.17,36.29
step
Kill enemies around this area
|tip Only Vile Sprites and Wild Grells will drop the quest item.
collect 8 Grell Earring##5336 |q 955/1 |goto Darkshore 45.13,38.46
You can find more around [47.72,37.13]
step
talk Asterion##3650
turnin Bashal'Aran##955 |goto Darkshore 44.17,36.29
accept Bashal'Aran##956 |goto Darkshore 44.17,36.29
step
kill Deth'ryll Satyr##2212+
collect Ancient Moonstone Seal##5338 |q 956/1 |goto Darkshore 45.50,36.68
You can find more around: |notinsticky
[45.57,39.70]
[46.75,39.13]
[47.71,36.91]
step
talk Asterion##3650
turnin Bashal'Aran##956 |goto Darkshore 44.17,36.30
accept Bashal'Aran##957 |goto Darkshore 44.17,36.30
step
Locate the Large, Red Crystal on Darkshore's Eastern Mountain Range |q 4811/1 |goto Darkshore 47.29,48.69
|tip The moonkin around this area tend to aggro from a wide range. |only if hardcore
|tip Raging Moonkin will enrage when near death. |only if hardcore
step
talk Gwennyth Bly'Leggonde##10219
turnin Beached Sea Creature##4723 |goto Darkshore 36.62,45.59
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
turnin The Red Crystal##4811 |goto Darkshore 37.71,43.39
accept As Water Cascades##4812 |goto Darkshore 37.71,43.39
step
kill 5 Young Moonkin##2106+
kill 10 Moonkin##2105+
collect quest objectives for Balancing the Forest |q 26200/1 |goto Darkshore 45.50,50.00
|tip These are in the moonkin area east of Auberdine.
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
turnin Balancing the Forest##26200 |goto Darkshore 37.71,43.39
accept Balancing the Forest##26201 |goto Darkshore 37.71,43.39
step
kill 3 Moonkin Oracle##10159+
kill 10 Raging Moonkin##10160+
collect quest objectives for Balancing the Forest follow-up |q 26201/1 |goto Darkshore 45.50,50.00
|tip These are further back in the moonkin colony, east of Auberdine.
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
turnin Balancing the Forest##26201 |goto Darkshore 37.71,43.39
step
use the Empty Water Tube##14338
collect Moonwell Water Tube##14339 |q 4812/1 |goto Darkshore 37.79,44.06
step
Enter the building |goto Darkshore 37.77,41.36 < 15 |walk
talk Dalmond##4182
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Dalmond##4182 |goto Darkshore 37.45,40.50 |q 4812
step
talk Gorbold Steelhand##6301
|tip Outside the building.
turnin Deep Ocean, Vast Sea##982 |goto Darkshore 38.11,41.17
step
Enter the cave |goto Darkshore 43.06,45.55 < 15 |walk
use the Cenarion Moondust##15208
|tip Inside the cave.
kill Lunaclaw##12138
Face Lunaclaw and Earn the Strength of Body and Heart it Possesses |q 6001/1 |goto Darkshore 43.48,45.96
|only if NightElf Druid
step
Leave Auberdine |goto Darkshore 39.76,45.77 < 40 |only if walking and subzone("Auberdine")
click Mysterious Red Crystal##175524
|tip The moonkin around this area have a pretty large aggro radius. |only if hardcore
|tip Approach the mysterious red crystal with great caution. |only if hardcore
turnin As Water Cascades##4812 |goto Darkshore 47.29,48.69
accept The Fragments Within##4813 |goto Darkshore 47.29,48.69
stickystart "Collect_Moonstalker_Fangs"
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 15.
|tip The moonkin around this area have a pretty large aggro radius. |only if hardcore
|tip Watch for respawns while in the area. |only if hardcore
ding 15 |goto Darkshore 44.53,46.29
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
turnin The Fragments Within##4813 |goto Darkshore 37.71,43.39
step
talk Sentinel Tysha Moonblade##3639
accept The Fall of Ameth'Aran##953 |goto Darkshore 40.30,59.73
stickystop "Collect_Moonstalker_Fangs"
stickystart "Collect_Highborne_Relics"
stickystart "Collect_Anyas_Pendant"
step
click Lay of Ameth'Aran##17188
|tip Watch for patrols and respawns while in the area. |only if hardcore
Read the Lay of Ameth'Aran |q 953/1 |goto Darkshore 43.31,58.70
step
click Ancient Flame##16393
|tip Watch for patrols and respawns while in the area. |only if hardcore
Destroy the Seal at the Ancient Flame |q 957/1 |goto Darkshore 42.37,61.79
step
click Fall of Ameth'Aran##17189
|tip Watch for patrols and respawns while in the area. |only if hardcore
Read the Fall of Ameth'Aran |q 953/2 |goto Darkshore 42.67,63.10
step
label "Collect_Highborne_Relics"
Kill Highborne enemies around this area
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
collect 7 Highborne Relic##5360 |q 958/1 |goto Darkshore 43.07,60.24
step
label "Collect_Anyas_Pendant"
map Darkshore
path follow strict; loop on; ants straight; dist 30; markers none
path	42.85,62.22	42.66,60.80	43.64,59.99	42.41,58.48	41.43,60.57
kill Anaya Dawnrunner##3667
|tip She looks like a neutral female night elf ghost, in a green and yellow robe.
|tip She may spawn in multiple locations, and walks around this area.
|tip She has a long respawn timer, if you see her die to someone else, skip this step.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip It may be a good idea to kill enemies while searching for Anaya. |only if hardcore |notinsticky
collect Anaya's Pendant##5382 |q 963/1 |goto
step
talk Sentinel Tysha Moonblade##3639
turnin The Fall of Ameth'Aran##953 |goto Darkshore 40.30,59.73
stickystart "Collect_Moonstalker_Fangs"
stickystart "Kill_Rabid_Thistle_Bears"
step
_NOTE:_
Tame a Moonstalker
|tip Use your "Tame Beast" ability on a Moonstalker.
|tip Try to tame one that's level 15 already.
|tip They look like blue and black striped tigers around this area.
|tip You can abandon your pet right before taming a Moonstalker.
|tip This will be your permanent pet.
Click Here to Continue |confirm |goto Darkshore 39.11,63.81 |q 1002
You can find more around: |notinsticky
[39.37,66.79]
[39.32,70.23]
[41.98,69.94]
|only if Hunter
step
click Beached Sea Creature##175226
|tip The creature is surrounded by aggressive murlocs. |only if hardcore
|tip Try pulling them individually when possible. |only if hardcore
|tip Greymist Netters can immobilize you completely, so be wary of them. |only if hardcore
|tip Greymist Seers may heal when their health is low. |only if hardcore
accept Beached Sea Creature##4728 |goto Darkshore 36.06,70.86
step
label "Collect_Moonstalker_Fangs"
Kill Moonstalker enemies around this area
'|kill ##2069, ##2070, ##2071, ##2237
|tip They look like blue and black striped tigers.
|tip They share spawn points with Rabid Thistle Bears, so kill those too, if you can't find any Moonstalkers.
collect 6 Moonstalker Fang##5413 |q 1002/1 |goto Darkshore 39.11,63.81
You can find more around: |notinsticky
[39.37,66.79]
[39.32,70.23]
[41.98,69.94]
step
label "Kill_Rabid_Thistle_Bears"
kill 20 Rabid Thistle Bear##2164 |q 2138/1 |goto Darkshore 39.11,63.81
|tip They share spawn points with Moonstalkers, so kill those too, if you can't find any Rabid Thistle Bears. |notinsticky
You can find more around: |notinsticky
[39.37,66.79]
[39.32,70.23]
[41.98,69.94]
step
talk Onu##3616
turnin Grove of the Ancients##952 |goto Darkshore/0 43.56,76.30
|only if NightElf
step
click Beached Sea Turtle##176190
|tip The creature is surrounded by murlocs that can be hard to pull by themselves. |only if hardcore
|tip Greymist Seers will heal. |only if hardcore
|tip Greymist Coastrunners will run away quickly when at low health, so pull them away from the creature as best possible. |only if hardcore
accept Beached Sea Turtle##4722 |goto Darkshore/0 37.14,62.16
step
kill Greymist Murlocs around this area
collect quest objectives for The Greymist Menace |q 26204/1 |goto Darkshore 36.00,55.00
|tip These are found along the southern Darkshore coast.
step
kill Greymist Murlocs further south
collect quest objectives for The Greymist Menace follow-up |q 26205/1 |goto Darkshore 33.00,60.00
|tip These are stronger murlocs found further south along the coast.
step
Travel to Blackwood Den in southern Darkshore |goto Darkshore 35.50,79.00
kill Grizzletooth##45041
|tip This bear is at Blackwood Den, near the Ashenvale border.
complete Wanted: Grizzletooth |q 26208/1 |goto Darkshore 35.50,79.00
stickystart "Kill_Blackwood_Windtalkers"
step
kill 8 Blackwood Pathfinder##2167 |q 985/1 |goto Darkshore/0 39.93,56.19
|tip These enemies may run away when at low health. |only if hardcore
You can find more around [39.81,53.87]
step
label "Kill_Blackwood_Windtalkers"
kill 5 Blackwood Windtalker##2324 |q 985/2 |goto Darkshore/0 39.93,56.19
|tip These enemies may run away when at low health. |only if hardcore |notinsticky
|tip These enemies can temporarily pacify you, leaving you vulnerable to damage. You can avoid this by backing away during their cast.|only if hardcore |notinsticky
You can find more around [39.81,53.87]
step
Kill enemies around this area
|tip We are grinding a bit here, so you don't have to grind a very long time later.
|tip You are about to have to go to a cave that can be difficult, so being a level higher will help.
|tip You will turn in your quests after grinding to get a large chunk of xp toward reaching level 17 quicker.
|tip These enemies may run away when at low health. |only if hardcore |notinsticky
|tip Blackwood Windtalkers may temporarily pacify you, leaving you vulnerable to damage. |only if hardcore |notinsticky
ding 16 |goto Darkshore/0 39.93,56.19
You can find more around [39.81,53.87]
step
use the Grimoire of Sacrifice (Rank 1)##16351
Teach Your Voidwalker Sacrifice (Rank 1) |learnpetspell Sacrifice##7812
|tip You need to have your voidwalker active to be able to learn these new spells.
|only if Warlock
step
Run up the ramp inside the building |goto Darkshore/0 36.85,44.12 < 10 |only if walking
talk Cerellean Whiteclaw##3644
|tip On the dock.
turnin For Love Eternal##963 |goto Darkshore/0 35.74,43.71
step
talk Gubber Blump##10216
accept Fruit of the Sea##1138 |goto Darkshore/0 36.09,44.93
step
Run up the ramp |goto Darkshore/0 36.70,45.01 < 10 |only if walking
talk Gwennyth Bly'Leggonde##10219
turnin Beached Sea Turtle##4722 |goto Darkshore/0 36.62,45.60
turnin Beached Sea Creature##4728 |goto Darkshore/0 36.62,45.60
step
talk Bill Wheeland##45038
turnin The Greymist Menace##26204 |goto Darkshore 37.5,41.6
accept The Greymist Menace##26205 |goto Darkshore 37.5,41.6
step
talk Bill Wheeland##45038
turnin The Greymist Menace##26205 |goto Darkshore 37.5,41.6
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
turnin Wanted: Grizzletooth##26208 |goto Darkshore 37.70,43.39
step
talk Tharnariun Treetender##3701
turnin Cleansing of the Infected##2138 |goto Darkshore/0 38.84,43.41
step
talk Terenthis##3693
|tip Inside the building.
turnin How Big a Threat?##985 |goto Darkshore/0 39.37,43.48
step
Enter the building |goto Darkshore/0 37.77,41.36 < 15 |walk
talk Dalmond##4182
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Dalmond##4182 |goto Darkshore/0 37.45,40.50 |q 958
step
talk Thundris Windweaver##3649
|tip Inside the building.
turnin Tools of the Highborne##958 |goto Darkshore/0 37.40,40.13
accept The Cliffspring River##4762 |goto Darkshore/0 37.40,40.13
step
talk Asterion##3650
turnin Bashal'Aran##957 |goto Darkshore/0 44.17,36.30
step
talk Archaeologist Everit##46076
accept Personal Possessions##27223 |goto Darkshore 35.7,83.6
accept Rampaging Golems##27224 |goto Darkshore 35.7,83.6
step
collect Archaeologist Everit's personal possessions around the excavation |q 27223/1 |goto Darkshore 35.7,83.6
step
kill Cracked Golem and Stone Behemoth enemies around the excavation |q 27224/1 |goto Darkshore 35.7,83.6
step
talk Archaeologist Everit##46076
turnin Personal Possessions##27223 |goto Darkshore 35.7,83.6
turnin Rampaging Golems##27224 |goto Darkshore 35.7,83.6
step
Enter the building |goto Darnassus 35.49,10.63 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip On the middle floor of the building.
accept A Lesson to Learn##26 |goto Darnassus 35.37,8.39
accept Lessons Anew##6121 |goto Darnassus 35.37,8.39
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin A Lesson to Learn##26 |goto Moonglade 56.21,30.64
accept Trial of the Lake##29 |goto Moonglade 56.21,30.64
turnin Lessons Anew##6121 |goto Moonglade 56.21,30.64
accept The Principal Source##6122 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
click Bauble Container
|tip It looks like a wicker basket vase on the ground underwater.
|tip They spawn randomly, so you may have to search around this area.
collect Shrine Bauble##15877 |goto Moonglade 54.33,55.65 |q 29
|only if NightElf Druid
step
use the Shrine Bauble##15877
Complete the Trial of the Lake |q 29/1 |goto Moonglade 35.92,41.38
|only if NightElf Druid
step
talk Tajarri##11799
turnin Trial of the Lake##29 |goto Moonglade 36.51,40.11
accept Trial of the Sea Lion##272 |goto Moonglade 36.51,40.11
|only if NightElf Druid
step
Incoming Cave Step
|tip The upcoming steps require you to navigate a dangerous cave.
|tip You can skip it, but it is part of a large quest chain worth 6,660 xp.
|tip You will need to grind that xp later.
Click Here to Continue |q 947 |future
|only if hardcore
stickystart "Collect_Scaber_Stalks"
step
Follow the path up |goto Darkshore 54.56,31.75 < 20 |only if walking
Enter the cave |goto Darkshore 54.97,33.37 < 15 |walk
Follow the path up |goto Darkshore 55.16,33.97 < 10 |walk
click Death Cap##11713
|tip Upstairs inside the cave.
|tip They look like brown and white mushrooms on the ground around this area inside the cave.
|tip If there's not one around here, you can find more downstairs in the side rooms of the cave.
|tip Beware, Naga casters can aggro from far away and the melee Naga in the cave use a knockback which can send you into the depths of the cave.
collect Death Cap##5270 |q 947/2 |goto Darkshore 55.75,36.19
step
label "Collect_Scaber_Stalks"
click Scaber Stalk##11714+
|tip They look like blue mushrooms on the ground around this area inside the cave.
|tip Beware, Naga casters can aggro from far away and the melee Naga in the cave use a knockback which can send you into the depths of the cave. |only if hardcore
|tip If possible, only stay on the upper level of the cave as the spawn can be quite inconsistent. |only if hardcore
collect 5 Scaber Stalk##5271 |q 947/1 |goto Darkshore 55.22,33.92
step
use the Empty Cliffspring Falls Sampler##15844
|tip At the entrance of the cave.
|tip Be careful, 3 enemies will spawn when you collect the sample. Be prepared to run away. |only if hardcore
collect Filled Cliffspring Falls Sampler##15845 |q 6122/1 |goto Darkshore 54.93,33.32
|only if NightElf Druid
step
Leave the cave |goto Darkshore 54.97,33.37 < 15 |walk |only if subzone("Cliffspring Falls") and _G.IsIndoors()
click Buzzbox 323
turnin Buzzbox 323##1002 |goto Darkshore 51.28,24.58
accept Buzzbox 525##1003 |goto Darkshore 51.28,24.58
step
use the Empty Sampling Tube##12350
|tip In the water, at the bottom of the waterfall.
collect Cliffspring River Sample##12349 |q 4762/1 |goto Darkshore 50.84,25.50
step
click Beached Sea Turtle##176196
accept Beached Sea Turtle##4727 |goto Darkshore 53.09,18.15
stickystart "Collect_Fine_Crab_Chunks"
step
click Beached Sea Turtle##176197
accept Beached Sea Turtle##4725 |goto Darkshore 44.21,20.64
step
label "Collect_Fine_Crab_Chunks"
kill Reef Crawler##2235+
collect 6 Fine Crab Chunks##12237 |q 1138/1 |goto Darkshore 49.51,21.27
You can find more around [45.58,20.83]
step
Kill enemies around this area
|tip Getting this far into level 16 will allow you to reach level 17 after turning in quests soon.
ding 16,11700 |goto Darkshore 49.51,21.27
You can find more around [45.58,20.83]
step
click Strange Lockbox##177792
|tip Underwater.
collect Half Pendant of Aquatic Agility##15883 |goto Darkshore 48.87,11.32 |q 272
|only if NightElf Druid
step
talk Gubber Blump##10216
turnin Fruit of the Sea##1138 |goto Darkshore 36.10,44.93
step
Run up the ramp |goto Darkshore 36.70,45.01 < 10 |only if walking
talk Gwennyth Bly'Leggonde##10219
turnin Beached Sea Turtle##4727 |goto Darkshore 36.62,45.60
turnin Beached Sea Turtle##4725 |goto Darkshore 36.62,45.60
step
talk Barithras Moonshade##3583
turnin Cave Mushrooms##947 |goto Darkshore 37.32,43.64
accept Onu##948 |goto Darkshore 37.32,43.64
|tip You must have completed the previous quest for this to appear. |only if hardcore
step
Enter the building |goto Darkshore 37.77,41.36 < 15 |walk
talk Dalmond##4182
|tip Inside the building.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Dalmond##4182 |goto Darkshore 37.45,40.50 |q 4762
step
talk Thundris Windweaver##3649
|tip Inside the building.
turnin The Cliffspring River##4762 |goto Darkshore 37.40,40.13
step
_Note_
|tip We are leaving Darkshore for now but will return via Hearthstone.
|tip We strongly recommend against setting your hearthstone anywhere else in the meantime.
|tip It is a long run back to Darkshore.
Click Here To Confirm |confirm
step
talk Naela Trance##1459
|tip She walks around this area.
buy Fine Longbow##11304 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If it's not available, or you can't afford it, buy a Reinforced Bow instead. |only if itemcount(3026) == 0
|tip If you have better, skip this step.
Visit the Vendor |vendor Naela Trance##1459 |goto Wetlands 11.27,58.43 |q 436 |future
|only if Hunter and itemcount(11304) == 0
step
talk Naela Trance##1459
buy Medium Quiver##11362 |n
|tip If you can afford it.
Visit the Vendor |vendor Naela Trance##1459 |goto Wetlands 11.27,58.43 |q 436 |future
|only if Hunter and itemcount(11362) == 0
step
talk Alanndarian Nightsong##3702
|tip Inside the building.
turnin The Principal Source##6122 |goto Darkshore 37.69,40.66
accept Gathering the Cure##6123 |goto Darkshore 37.69,40.66
|only if NightElf Druid
step
click Lunar Fungal Bloom+
|tip They look like clusters of small white-spotted mushrooms on the ground inside the small caves around this area.
collect 12 Lunar Fungus##15851 |q 6123/2 |goto Darkshore 43.07,45.55
You can find more small caves at: |notinsticky
[43.07,49.24]
[43.38,50.50]
[42.71,52.28]
[45.22,53.45]
[46.30,45.56]
[45.52,50.24]
|only if NightElf Druid
step
Enter the building |goto Darkshore 37.77,41.36 < 15 |walk
talk Alanndarian Nightsong##3702
|tip Inside the building.
turnin Gathering the Cure##6123 |goto Darkshore 37.69,40.66
accept Curing the Sick##6124 |goto Darkshore 37.69,40.66
|only if NightElf Druid
step
use the Curative Animal Salve##15826
|tip Use it on Sickly Deer around this area.
|tip They look like green diseased deer in areas with trees.
|tip They are spread out all throughout Darkshore.
Cure #10# Sickly Deer |q 6124/1 |goto Darkshore 41.51,46.08
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Curing the Sick##6124 |goto Moonglade 56.21,30.64
accept Power over Poison##6125 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.52,10.72 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building, on the top floor.
turnin Power over Poison##6125 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
Enter the cave in the tree trunk |goto Darnassus 32.12,16.46 < 10 |walk
talk Syurna##4163
|tip Inside the cave.
Train the "Pick Lock" Ability |skillmax Lockpicking,75 |goto Darnassus 36.99,21.91
|only if Rogue
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Sildanair##4089 |only if Warrior
talk Denatharion##4218 |only if Druid
talk Jandria##4091 |only if Priest
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter |q 436 |future
trainer Sildanair##4089 |goto Darnassus/0 61.78,42.28 |only if Warrior |q 436 |future
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue |q 436 |future
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid |q 436 |future
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80 |only if Priest |q 436 |future
|tip In the basement of the tree. |only if Rogue
|tip Train your spells.
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Loch Modan (17-18)',
  {
    image = ZGV.IMAGESDIR .. 'Loch Modan',
    condition_suggested = function()
      return level >= 17 and level <= 18 and not completedq(298)
    end,
    next = 'Leveling Guides\\Redridge Mountains (18-20)',
    hardcore = true,
  },
  [[
step
talk Dink##7312 |only if Mage
talk Briarthorn##5172 |only if Warlock
talk Brandur Ironhammer##5149 |only if Paladin
trainer Dink##7312 |goto Ironforge/0 27.10,8.49 |only if Mage |q 436 |future
trainer Briarthorn##5172 |goto Ironforge/0 50.33,5.70 |only if Warlock |q 436 |future
trainer Brandur Ironhammer##5149 |goto Ironforge/0 23.11,6.14 |only if Paladin |q 436 |future
|tip Inside the building.
|tip Train your spells.
|only if Mage or Warlock or Paladin
step
talk Lina Hearthstove##9989
|tip Stable your permanent pet.
|tip You are about to tame a temporary pet soon, so you can learn "Bite 3".
Click Here to Continue |confirm |goto Loch Modan 34.64,48.09 |q 436 |future
|only if Hunter
step
talk Kali Healtouch##1473
talk Mountaineer Ozmok##2510
accept Medicinal Restocking##26842 |goto Loch Modan 36.5,48.5
accept Securing the Loch##26843 |goto Loch Modan 35,46.8
accept WANTED: Mother Tessa##26845
|tip This is a group quest and can be completed along the way.
step
collect 8 Loch Weed##62671 |q 26842/1 |goto Loch Modan 40,55
|tip These grow in the water of The Loch.
|tip You can also collect them while doing the threshadon kills below.
step
kill 10 Young Threshadon##1224 |q 26843/1 |goto Loch Modan 45,60
|tip These creatures are in The Loch.
|tip This quest is a group quest but can be done solo.
step
kill Mother Tessa##45824 |q 26845/1 |goto Loch Modan 51.6,62.2
|tip This is a level 20 elite threshadon.
|tip This is a group quest. Group up before attempting.
|tip You can come back to this later if needed.
step
Enter the building |goto Loch Modan 37.18,47.10 < 10 |walk
talk Jern Hornhelm##1105
|tip Downstairs inside the building.
|tip He sometimes walks out near the entrance of the building.
accept Ironband's Excavation##436 |goto Loch Modan 37.24,47.39
step
_NOTE:_
|tip You can tame any other beast along the way to help you get here and find a Wood Lurker to tame.
|tip Try to find a level 17 one before abandoning your pet.
|tip You can kill the level 18s and wait for them to respawn.
|tip Abandon whatever beast you tamed, before beginning to tame a Wood Lurker.
Tame a Wood Lurker
|tip Use your "Tame Beast" ability on a Wood Lurker.
|tip They look like brown spiders around this area.
|tip Try to tame one that's level 17.
|tip This will be your temporary pet for a while, so you can learn "Bite 3", to teach your permanent pet later.
Click Here to Continue |confirm |goto Loch Modan 59.86,25.29 |q 436
|only if Hunter
step
talk Magmar Fellhew##1345
turnin Ironband's Excavation##436 |goto Loch Modan 64.90,66.65
accept Gathering Idols##297 |goto Loch Modan 64.90,66.65
step
talk Prospector Ironband##1344
accept Excavation Progress Report##298 |goto Loch Modan 65.93,65.62
step
Kill enemies around this area
|tip They look like troggs.
|tip Watch for patrols while in the area. |only if hardcore
|tip Enemies will run away when at low health. |only if hardcore
|tip This area can be very dangerous, stick to the outskirts and don't forget to look up occasionally. |only if hardcore
collect 8 Carved Stone Idol##2636 |q 297/1 |goto Loch Modan 70.31,62.79
step
talk Magmar Fellhew##1345
turnin Gathering Idols##297 |goto Loch Modan 64.90,66.65
accept The Strange Idol##26844 |goto Loch Modan 64.90,66.65
step
Follow the path |goto Loch Modan 66.22,52.81 < 40 |only if walking
Follow the path |goto Loch Modan 81.86,59.10 < 40 |only if walking
Enter the building |goto Loch Modan 83.43,62.83 < 15 |walk
talk Marek Ironheart##1154
|tip Inside the building.
accept Crocolisk Hunting##385 |goto Loch Modan 81.75,61.66
step
talk Cliff Hadin##1687
|tip Inside the building.
buy Fine Longbow##11304 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If it's not available, or you can't afford it, buy a Reinforced Bow instead. |only if itemcount(3026) == 0
|tip If you have better, skip this step.
Visit the Vendor |vendor Cliff Hadin##1687 |goto Loch Modan 83.02,62.96 |q 385 |future
|only if Hunter and itemcount(11304) == 0
step
talk Daryl the Youngling##1187
|tip Inside the building.
accept A Hunter's Boast##257 |goto Loch Modan 83.47,65.46
step
kill 6 Mountain Buzzard##1194 |q 257/1 |goto Loch Modan 80.20,65.20
|tip Try to hurry, this quest is timed.
You can find more around: |notinsticky
[77.04,57.34]
[76.41,73.71]
[74.40,69.25]
[69.56,75.78]
step
Follow the path |goto Loch Modan 81.86,59.10 < 40 |only if walking
Enter the building |goto Loch Modan 83.43,62.83 < 15 |walk
talk Daryl the Youngling##1187
|tip Inside the building.
|tip Try to hurry, this quest is timed.
turnin A Hunter's Boast##257 |goto Loch Modan 83.47,65.46
accept A Hunter's Challenge##258 |goto Loch Modan 83.47,65.46
step
talk Cliff Hadin##1687
|tip Inside the building.
buy Fine Longbow##11304 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If it's not available, or you can't afford it, buy a Reinforced Bow instead. |only if itemcount(3026) == 0
|tip If you have better, skip this step.
Visit the Vendor |vendor Cliff Hadin##1687 |goto Loch Modan 83.02,62.96 |q 257
|only if Hunter and itemcount(11304) == 0
step
kill 5 Elder Mountain Boar##1192 |q 258/1 |goto Loch Modan 76.58,43.83
|tip Try to hurry, this quest is timed.
You can find more around: |notinsticky
[Loch Modan 67.11,37.93]
[Loch Modan 61.61,34.76]
step
Follow the path |goto Loch Modan 81.86,59.10 < 40 |only if walking
Enter the building |goto Loch Modan 83.43,62.83 < 15 |walk
talk Daryl the Youngling##1187
|tip Inside the building.
|tip Try to hurry, this quest is timed.
turnin A Hunter's Challenge##258 |goto Loch Modan 83.47,65.46
step
talk Cliff Hadin##1687
|tip Inside the building.
buy Fine Longbow##11304 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If it's not available, or you can't afford it, buy a Reinforced Bow instead. |only if itemcount(3026) == 0
|tip If you have better, skip this step.
Visit the Vendor |vendor Cliff Hadin##1687 |goto Loch Modan 83.02,62.96 |q 258
|only if Hunter and itemcount(11304) == 0
step
talk Bingles Blastenheimer##6577
|tip He walks around this area.
accept Bingles' Missing Supplies##2038 |goto Loch Modan 63.56,47.92
stickystart "Collect_Crocolisk_Skin"
step
kill Loch Crocolisk##1693+
collect 5 Crocolisk Meat##2924 |q 385/1 |goto Loch Modan 54.84,38.49
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [54.80,54.28]
step
label "Collect_Crocolisk_Skin"
kill Loch Crocolisk##1693+ |notinsticky
collect 6 Crocolisk Skin##2925 |q 385/2 |goto Loch Modan 54.84,38.49
You can find more around [54.80,54.28]
step
_NOTE:_
This Quest is Optional
|tip The next 4 steps can be very difficult solo.
|tip You may have to fight 3 enemies at a time at some point.
|tip If you want to stay on the safe side, or don't have someone to help you, you may want to skip the quest.
Click Here to Continue |confirm |q 2038
|only if hardcore
step
click Bingles's Toolbucket##104564
|tip Enemies around this area tend to be bunched up and pull in two. |only if hardcore
|tip Stonesplinter Seers are ranged attackers that hit hard. |only if hardcore
|tip Enemies may run away when at low health here. |only if hardcore
collect Bingles' Wrench##7343 |q 2038/1 |goto Loch Modan 48.73,30.09
step
click Bingles' Blastencapper##104575
|tip Enemies around this area tend to be bunched up and pull in two. |only if hardcore
|tip Stonesplinter Seers are ranged attackers that hit hard. |only if hardcore
|tip Enemies may run away when at low health here. |only if hardcore
collect Bingles' Blastencapper##7376 |q 2038/4 |goto Loch Modan 54.21,26.60
step
click Bingles's Toolbucket##104574
|tip Enemies around this area tend to be bunched up and pull in two. |only if hardcore
|tip Stonesplinter Seers are ranged attackers that hit hard. |only if hardcore
|tip Enemies may run away when at low health here. |only if hardcore
collect Bingles' Hammer##7346 |q 2038/3 |goto Loch Modan 51.78,24.09
step
click Bingles' Toolbucket##104569
|tip Enemies around this area tend to be bunched up and pull in two. |only if hardcore
|tip Stonesplinter Seers are ranged attackers that hit hard. |only if hardcore
|tip Enemies may run away when at low health here. |only if hardcore
collect Bingles' Screwdriver##7345 |q 2038/2 |goto Loch Modan 48.37,20.51
step
Run up the ramp |goto Loch Modan 55.39,14.84 < 15 |only if walking
talk Chief Engineer Hinderweir VII##1093
accept A Dark Threat Looms##250 |goto Loch Modan 46.05,13.62
step
talk Nillen Andemar##222
buy Heavy Spiked Mace##4778 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Nillen Andemar##222 |goto Loch Modan 42.87,9.90 |q 250
|only if Warrior and itemcount(4778) == 0
step
click Suspicious Barrel##257
|tip On the ground next the wall.
|tip Dark Iron Sappers may detonate themselves when at low health. |only if hardcore
|tip You will see an emote before it happens and you should move away from them once you see it. |only if hardcore
turnin A Dark Threat Looms##250 |goto Loch Modan 56.05,13.24
accept A Dark Threat Looms##199 |goto Loch Modan 56.05,13.24
step
Run up the ramp |goto Loch Modan 55.39,14.84 < 15 |only if walking
talk Chief Engineer Hinderweir VII##1093
turnin A Dark Threat Looms##199 |goto Loch Modan 46.05,13.62
step
talk Bingles Blastenheimer##6577
|tip He walks around this area.
turnin Bingles' Missing Supplies##2038 |goto Loch Modan 63.56,47.91
step
Kill enemies around this area
|tip You should already be level 18, or very close.
ding 18 |goto Loch Modan 74.06,51.92
step
use the Grimoire of Consume Shadows (Rank 1)##16357
|tip You should have purchased this in a previous guide.
Teach Your Voidwalker Consume Shadows (Rank 1) |learnpetspell Consume Shadows##17767 |goto Loch Modan 25.66,77.66
|tip You need to have your voidwalker active to be able to learn these new spells.
|only if Warlock
step
Follow the path |goto Loch Modan 72.32,52.39 < 40 |only if walking
Enter the building |goto Loch Modan 83.43,62.83 < 15 |walk
talk Marek Ironheart##1154
|tip Inside the building.
turnin Crocolisk Hunting##385 |goto Loch Modan 81.76,61.66
step
talk Cliff Hadin##1687
|tip Inside the building.
buy Fine Longbow##11304 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If it's not available, or you can't afford it, buy a Reinforced Bow instead. |only if itemcount(3026) == 0
|tip If you have better, skip this step.
Visit the Vendor |vendor Cliff Hadin##1687 |goto Loch Modan 83.02,62.96 |q 385
|only if Hunter and itemcount(11304) == 0
step
talk Kali Healtouch##1473
talk Mountaineer Ozmok##2510
talk Magistrate Bluntnose##1139
turnin Medicinal Restocking##26842 |goto Loch Modan 36.5,48.5
turnin Securing the Loch##26843 |goto Loch Modan 35,46.8
turnin WANTED: Mother Tessa##26845 |goto Loch Modan 34.6,44.5
step
talk Lina Hearthstove##9989
|tip Abandon your temporary pet and get your permanent pet from the stable.
|tip Teach "Bite 3" to your permanent pet.
Click Here to Continue |confirm |goto Loch Modan 34.64,48.09 |q 298
|only if Hunter
step
Enter the building |goto Loch Modan 37.18,47.10 < 10 |walk
talk Jern Hornhelm##1105
|tip Downstairs inside the building.
|tip He sometimes walks out near the entrance of the building.
turnin Excavation Progress Report##298 |goto Loch Modan 37.24,47.39
step
Enter the building |goto Ironforge 74.64,11.73 < 7 |walk
talk Prospector Stormpike##1356
|tip Inside the building.
turnin The Strange Idol##26844 |goto Ironforge 74.64,11.73
step
Enter the building |goto Ironforge 72.18,67.50 < 7 |walk
talk Skolmin Goldfury##5122
|tip Upstairs inside the building.
buy Heavy Recurve Bow##3027 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Skolmin Goldfury##5122 |goto Ironforge 71.76,66.70 |q 20 |future
|only if Hunter and itemcount(3027) == 0
step
talk Gearcutter Cogspinner##5175
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
|tip Don't buy this, if you already bought one earlier in the guide.
Visit the Vendor |vendor Gearcutter Cogspinner##5175 |goto Ironforge 67.84,42.50 |q 174 |future
|only if itemcount(4371) == 0
step
talk Billibub Cogspinner##5519
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
|tip Don't buy this, if you already bought one earlier in the guide.
Visit the Vendor |vendor Billibub Cogspinner##5519 |goto Stormwind City 55.21,7.05 |q 174 |future
|only if itemcount(4371) == 0
step
Follow the path |goto Stormwind City 74.74,53.71 < 10 |walk
Enter the building |goto Stormwind City 77.12,58.01 < 10 |walk
talk Renzik "The Shiv"##6946
|tip Upstairs inside the building.
accept Redridge Rendezvous##2281 |goto Stormwind City 75.76,60.36
|only if Rogue
step
click Strange Lockbox
|tip Underwater.
collect Half Pendant of Aquatic Endurance##15882 |goto Westfall 17.87,33.11 |q 272
|only if NightElf Druid
step
use the Half Pendant of Aquatic Agility##15883
collect Pendant of the Sea Lion##15885 |q 272/1 |goto Moonglade 35.92,41.42
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Trial of the Sea Lion##272 |goto Moonglade 56.21,30.64
accept Aquatic Form##5061 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.49,10.63 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building, on the top floor.
turnin Aquatic Form##5061 |goto Darnassus 35.37,8.39
|only if NightElf Druid
]]
)
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
  'Leveling Guides\\Darkshore (20-22)',
  {
    image = ZGV.IMAGESDIR .. 'Darkshore',
    condition_suggested = function()
      return level == 20 and not completedq(970)
    end,
    next = 'Leveling Guides\\Ashenvale (22-23)',
    hardcore = true,
  },
  [[
step
Travel to Darkshore
|tip From Stormwind: Take the Deeprun Tram to Ironforge.
|tip The Tram entrance is in the Trade District of Stormwind.
Run to the Tram |goto Stormwind City 66.65,16.25 < 10 |walk
Enter the Deeprun Tram |goto Stormwind City 69.44,10.50 < 5 |walk
step
Board the Deeprun Tram |confirm |goto Ironforge 210.24,47.27
|tip The Tram takes about 1 minute to arrive in Ironforge.
Click Here to Continue |confirm
step
Get a flight path to Menethil |goto Ironforge 74.46,60.92 < 15 |walk
|tip Head to the Flight Master in Ironforge.
step
Fly to Menethil Harbor |goto Wetlands 8.73,59.15 < 5
|tip The flight takes about 2 minutes. Once you arrive, head to the docks.
step
Board the boat to Auberdine |goto Wetlands 8.8,71 < 5
|tip Look for the boat docked at the Menethil Harbor docks.
|tip It departs regularly to Auberdine in Darkshore.
Click Here to Continue |confirm |goto Darkshore 36.34,45.58
|tip You are now in Auberdine in Darkshore. The boat will dock here automatically.
step
click WANTED: Murkdeep!##175320
accept WANTED: Murkdeep!##4740 |goto Darkshore 37.23,44.23
|only if not hardcore
step
talk Archaeologist Hollee##2913
turnin Trouble In Darkshore?##730 |goto Darkshore 37.44,41.84 |only if haveq(730)
accept The Absent Minded Prospector##729 |goto Darkshore 37.44,41.84
step
Enter the building |goto Darkshore 37.77,41.34 < 15 |walk
talk Thundris Windweaver##3649
|tip Inside the building.
accept The Blackwood Corrupted##4763 |goto Darkshore 37.40,40.13
step
use the Empty Cleansing Bowl##12346
collect Filled Cleansing Bowl##12347 |goto Darkshore 37.78,44.02 |q 4763
step
talk Gershala Nightwhisper##8997
turnin The Corruption Abroad##3765 |goto Darkshore 38.33,43.04
step
talk Tharnariun Treetender##3701
accept Tharnariun's Hope##2139 |goto Darkshore 38.84,43.42
|tip This requires "Cleansing of the Infected" from the Darkshore (13-17) guide.
step
talk Terenthis##3693
|tip Inside the building.
accept A Lost Master##986 |goto Darkshore 39.37,43.48
step
talk Sentinel Elissa Starbreeze##3657
|tip Upstairs inside the building.
accept The Tower of Althalaxx##965 |goto Darkshore 39.05,43.55
step
talk Onu##3616
turnin Onu##948 |goto Darkshore 43.55,76.29
accept The Master's Glaive##944 |goto Darkshore 43.55,76.29
|tip This quest will only be available if you've completed the quest chain starting with "Cave Mushrooms". |only if hardcore
stickystart "Collect_Fine_Moonstalker_Pelts"
stickystart "Collect_Grizzled_Scalps"
step
Enter the Master's Glaive |q 944/1 |goto Darkshore 38.57,86.30
stickystop "Collect_Fine_Moonstalker_Pelts"
stickystop "Collect_Grizzled_Scalps"
step
use the Phial of Scrying##5251
click Scrying Bowl##10076
|tip It appears on the ground next to you.
|tip Watch for patrols and respawns while in the area. |only if hardcore
turnin The Master's Glaive##944 |goto Darkshore 38.53,86.17
accept The Twilight Camp##949 |goto Darkshore 38.53,86.17
|tip This quest will only be available if you've completed the quest chain starting with "Cave Mushrooms". |only if hardcore
step
_Destroy This Items:_
|tip It is no longer needed.
trash Phial of Scrying##5251 |goto Darkshore 38.54,86.05
step
click Twilight Tome##12666
|tip Watch for patrols and respawns while in the area. |only if hardcore
turnin The Twilight Camp##949 |goto Darkshore 38.54,86.05
accept Return to Onu##950 |goto Darkshore 38.54,86.05
|tip This quest will only be available if you've completed the quest chain starting with "Cave Mushrooms". |only if hardcore
step
talk Therylune##3584
|tip She walks around this area.
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait for her to respawn.
|tip If you have to wait, clear enemies towards the ramp while doing so. |only if hardcore
accept Therylune's Escape##945 |goto Darkshore 38.64,87.34 |noautoaccept
step
Watch the dialogue
|tip Follow Therylune and protect her as she walks.
|tip She eventually walks to this location.
Escort Therylune Away from the Master's Glaive |q 945/1 |goto Darkshore 40.51,87.09
step
use the Book: The Powers Below##5352
accept The Powers Below##968
|only if itemcount(5352) > 0
stickystart "Collect_Fine_Moonstalker_Pelts"
step
label "Collect_Grizzled_Scalps"
kill Grizzled Thistle Bear##2165+
collect 4 Grizzled Scalp##5414 |q 1003/1 |goto Darkshore 43.52,81.93
You can find more around: |notinsticky
[40.33,81.60]
[41.22,84.67]
stickystop "Collect_Fine_Moonstalker_Pelts"
step
talk Prospector Remtravel##2917
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
turnin The Absent Minded Prospector##729 |goto Darkshore 35.73,83.70
accept The Absent Minded Prospector##731 |goto Darkshore 35.73,83.70 |noautoaccept
|tip This quest is difficult and optional. |only if hardcore
|tip It requires escorting the npc and protecting him from waves of attackers with minimal rest time. |only if hardcore
|tip Skipping this quest will result in extra grinding down the road. |only if hardcore
step
Watch the dialogue
|tip Follow Prospector Remtravel and protect him as he walks.
|tip He is very weak and can die easily, so get the enemies off of him quickly.
|tip Despite this, do let him get aggro first so he will help you fight.
|tip Troggs will appear and ambush him 3 times along the way.
|tip Try to quickly eat and drink after every enemy to be healthy for the next.
|tip Don't be afraid to run if you get overwhelemed. |only if hardcore
|tip Enemies do respawn quickly here, so be careful. |only if hardcore
Escort Prospector Remtravel |q 731/1 |goto Darkshore 35.73,83.70
step
click Beached Sea Creature##175230
accept Beached Sea Creature##4733 |goto Darkshore 31.27,87.39
step
click Beached Sea Turtle##175227
accept Beached Sea Turtle##4732 |goto Darkshore 31.24,85.63
step
click Beached Sea Turtle##175227
accept Beached Sea Turtle##4731 |goto Darkshore 31.69,83.72
step
click Beached Sea Creature##175227
accept Beached Sea Creature##4730 |goto Darkshore 32.66,80.81
stickystart "Collect_Fine_Moonstalker_Pelts"
step
click Buzzbox 525##17185
turnin Buzzbox 525##1003 |goto Darkshore 41.40,80.56
step
label "Collect_Fine_Moonstalker_Pelts"
Kill Moonstalker enemies around this area
'|kill Moonstalker Sire##2237, Moonstalker Matriarch##2071
|tip They look like blue and black striped tigers.
|tip They share spawn points with Grizzled Thistle Bears, so kill those too, if you can't find any.
collect 5 Fine Moonstalker Pelt##5386 |q 986/1 |goto Darkshore 43.52,81.93
You can find more around: |notinsticky
[40.33,81.60]
[41.22,84.67]
[38.59,75.10]
[39.49,93.81]
step
talk Onu##3616
turnin Return to Onu##950 |goto Darkshore 43.56,76.29
step
Watch the dialogue
talk Onu##3616
accept Mathystra Relics##951 |goto Darkshore 43.56,76.29
|tip This quest will only be available if you've completed the quest chain starting with "Cave Mushrooms". |only if hardcore
step
Kill enemies around this area
|tip You should already be level 21, or very close.
|tip You are about to have to complete a quest where you have to kill a few waves of multiple enemies, which can be difficult.
|tip Being a level higher will help.
ding 21 |goto Darkshore 37.92,82.30
step
Kill Greymist enemies around this area
|tip Groups of murlocs will appear near the water and run into the camp.
|tip Try to stand outside the camp, so they don't all attack you at once when they run in.
|tip Kill them to get Murkdeep to appear.
|tip You may need help with this.
kill Murkdeep##10323 |q 4740/1 |goto Darkshore 36.51,76.59
|only if not hardcore
step
talk Gwennyth Bly'Leggonde##10219
turnin Beached Sea Creature##4733 |goto Darkshore 36.62,45.59
turnin Beached Sea Turtle##4732 |goto Darkshore 36.62,45.59
turnin Beached Sea Turtle##4731 |goto Darkshore 36.62,45.59
turnin Beached Sea Creature##4730 |goto Darkshore 36.62,45.59
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
turnin WANTED: Murkdeep!##4740 |goto Darkshore 37.71,43.39
|only if not hardcore
step
talk Terenthis##3693
|tip Inside the building.
turnin A Lost Master##986 |goto Darkshore 39.37,43.48
accept A Lost Master##993 |goto Darkshore 39.37,43.48
step
talk Archaeologist Hollee##2913
turnin The Absent Minded Prospector##731 |goto Darkshore 37.44,41.84
accept The Absent Minded Prospector##741 |goto Darkshore 37.44,41.84
|tip This won't be available if you haven't completed the previous quest. |only if hardcore
step
click Blackwood Grain Stores##175331
|tip You will be attacked each time you click a keg.
|tip Watch for respawns while in the area. |only if hardcore
|tip Enemies will may run away in fear when at low health. |only if hardcore
|tip Blackwood Totemics will drop totems that heal themselves and their allies. |only if hardcore
|tip Be sure to destroy them as soon as they appear. |only if hardcore
collect Blackwood Grain Sample##12342 |goto Darkshore 50.62,34.95 |q 4763
step
Follow the path up |goto Darkshore 52.40,35.94 < 20 |only if walking
Enter the cave |goto Darkshore 51.57,37.49 < 15 |walk
kill Den Mother##6788 |q 2139/1 |goto Darkshore 51.48,38.26
|tip Inside the cave.
|tip There are generally 4 or more level 9 cubs inside the cave with her. |only if hardcore
|tip They are all linked with the Den Mother and will attack in unison. |only if hardcore
|tip The cubs can hit pretty hard, so it may be a good idea to try and kill one, flee and repeat. |only if hardcore
|tip You can skip this quest and grind extra later. |only if hardcore
step
click Blackwood Nut Stores##175329
|tip You will be attacked each time you click a keg.
|tip Watch for respawns while in the area. |only if hardcore
|tip Enemies will may run away in fear when at low health. |only if hardcore
|tip Blackwood Totemics will drop totems that heal themselves and their allies. |only if hardcore
|tip Be sure to destroy them as soon as they appear. |only if hardcore
collect Blackwood Nut Sample##12343 |goto Darkshore 51.83,33.56 |q 4763
step
click Blackwood Fruit Stores##175330
|tip You will be attacked each time you click a keg.
|tip Watch for respawns while in the area. |only if hardcore
|tip Enemies will may run away in fear when at low health. |only if hardcore
|tip Blackwood Totemics will drop totems that heal themselves and their allies. |only if hardcore
|tip Be sure to destroy them as soon as they appear. |only if hardcore
collect Blackwood Fruit Sample##12341 |goto Darkshore 52.83,33.41 |q 4763
step
use the Filled Cleansing Bowl##12347
kill Xabraxxis##10373
|tip He appears nearby.
|tip Make sure to step quite a bit back as every live Blackwood enemy will run to this location. |only if hardcore
|tip The normal enemies will become passive eventually. |only if hardcore
click Xabraxxis' Demon Bag##object=177624
_Note_
|tip It appears on the ground after you kill him, be sure to click it.
collect Talisman of Corruption##12355 |q 4763/1 |goto Darkshore 52.41,33.44
step
talk Balthule Shadowstrike##3661
turnin The Tower of Althalaxx##965 |goto Darkshore 54.97,24.89
accept The Tower of Althalaxx##966 |goto Darkshore 54.97,24.89
step
kill Dark Strand Fanatic##2336+
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies around the camp fire tend to pull in groups. |only if hardcore
collect 4 Worn Parchment##5348 |q 966/1 |goto Darkshore 55.46,26.77
step
talk Balthule Shadowstrike##3661
turnin The Tower of Althalaxx##966 |goto Darkshore 54.97,24.89
accept The Tower of Althalaxx##967 |goto Darkshore 54.97,24.89
step
click Mathystra Relic##13872+
|tip They look like various small grey-ish colored stone objects on the ground around this area.
|tip Watch for Stormscale Sorceress' around the area. |only if hardcore
|tip They are ranged attackers that deal heavy damage and can aggro from far away. |only if hardcore
|tip Watch for respawns while here. |only if hardcore
collect 6 Mathystra Relic##5273 |q 951/1 |goto Darkshore 58.64,23.94
You can find more around: |notinsticky
[61.03,21.68]
[58.13,20.36]
[56.88,22.20]
step
talk Gelkak Gyromast##6667
accept Gyromast's Retrieval##2098 |goto Darkshore 56.65,13.48
|tip This quest has you going underwater into a fairly dangerous area. |only if hardcore
|tip If you are uncomfortable with underwater quests, skip this. |only if hardcore
step
Kill Crawler enemies around this area
|tip They look like crabs.
collect Bottom of Gelkak's Key##7500 |q 2098/3 |goto Darkshore 56.47,14.58
You can find more around [52.01,21.19]
step
Kill Greymist enemies around this area
|tip Underwater.
|tip Don't linger underwanter for any reason. |only if hardcore
|tip If you get into combat, swim to the surface and kill the enemy, then try again. |only if hardcore
|tip Watch for respawns while in the area. |only if hardcore
collect Middle of Gelkak's Key##7499 |q 2098/2 |goto Darkshore 54.95,12.16
step
kill Giant Foreststrider##2323+
collect Top of Gelkak's Key##7498 |q 2098/1 |goto Darkshore 61.19,14.79
You can find more around [61.12,10.76]
step
talk Gelkak Gyromast##6667
turnin Gyromast's Retrieval##2098 |goto Darkshore 56.65,13.48
step
Kill enemies around this area
|tip Getting this far into level 21 will allow you to reach level 22 after turning in quests soon.
|tip You will be doing an escort quest soon that will be difficult, so being a level higher will help.
|tip You will also be going to Darnassus soon, so it will be a good time to learn your level 22 abilities.
ding 21,22200 |goto Darkshore 60.29,16.33
step
talk Thundris Windweaver##3649
|tip Inside the building.
turnin The Blackwood Corrupted##4763 |goto Darkshore 37.40,40.13
step
talk Tharnariun Treetender##3701
turnin Tharnariun's Hope##2139 |goto Darkshore 38.84,43.41
step
talk Vesprystus##3838
fpath Rut'theran Village |goto Teldrassil 58.40,94.02
step
Run up the ramp |goto Darnassus 62.60,68.79 < 10 |only if walking
talk Landria##4173
|tip Inside the building.
buy Heavy Recurve Bow##3027 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Landria##4173 |goto Darnassus 63.26,66.27 |q 951
|only if Hunter and itemcount(3027) == 0
step
talk Landria##4173
|tip Inside the building.
buy Medium Quiver##11362 |n
|tip If you can afford it.
|tip Ignore this if you aren't using bows.
Visit the Vendor |vendor Landria##4173 |goto Darnassus 63.26,66.27 |q 951
|only if Hunter and itemcount(11362) == 0
step
talk Chief Archaeologist Greywhisker##2912
|tip Outside the building.
turnin The Absent Minded Prospector##741 |goto Darnassus 31.25,84.50
accept The Absent Minded Prospector##942 |goto Darnassus 31.25,84.50
step
Run up the ramp |goto Darnassus 56.46,20.41 < 5 |only if walking
talk Argent Guard Manados##4784
|tip Inside the building.
accept Twilight Falls##1199 |goto Darnassus 55.23,24.00
|only if guideflag("BFDflag")
step
talk Dawnwatcher Shaedlass##4786
|tip Inside the building.
accept In Search of Thaelrid##1198 |goto Darnassus 55.37,25.00
|only if guideflag("BFDflag")
step
talk Gershala Nightwhisper##8997
accept Researching the Corruption##1275 |goto Darkshore 38.33,43.04
|only if guideflag("BFDflag")
step
talk Onu##3616
turnin Mathystra Relics##951 |goto Darkshore 43.55,76.29
step
Enter the cave |goto Darkshore 44.58,85.11 < 15 |walk
talk Volcor##3692
|tip Inside the cave.
|tip He starts an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
turnin A Lost Master##993 |goto Darkshore 45.01,85.30
accept Escape Through Force##994 |goto Darkshore 45.01,85.30 |noautoaccept
|tip Volcor will help you fight your way to the road.
|tip You will be attacked by multiple groups of enemies along the way.
|tip This quest rewards much more experience than the stealth quest he offers.
step
Watch the dialogue
|tip Follow Volcor and protect him as he walks.
|tip He eventually walks to this location.
Help Volcor to the Road |q 994/1 |goto Darkshore 41.95,81.80
step
talk Kerlonian Evershade##11218
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
|tip He can take a long time to respawn, so if you don't want to wait, you can skip the quest and grind a bit later to make up for it.
accept The Sleeper Has Awakened##5321 |goto Darkshore 44.39,76.43 |noautoaccept
step
click Kerlonian's Chest##176634
collect Horn of Awakening##13536 |q 5321/1 |goto Darkshore 44.38,76.31
step
label "Escort_Kerlonian_Evershade"
Enter Ashenvale and follow the road |goto Darkshore 43.49,94.32 < 50 |only if walking
Enter the building |goto Ashenvale 26.87,36.65 < 15 |walk
use the Horn of Awakening##13536
|tip Kerlonian Evershade will follow you.
|tip He will sometimes stop walking and fall asleep.
|tip Use it near him when he falls asleep.
|tip Make sure he is next to you at all times.
|tip Avoid walking on the road, or you will get ambushed by groups of enemies.
|tip You can still follow the road, but stay in the forest on the sides.
|tip Lead Kerlonian Evershade to this location inside the building.
|tip Try to hurry, this quest is timed.
|tip If you fail, you can skip it.
Escort Kerlonian Evershade to Maestra's Post |q 5321/2 |goto Ashenvale 27.15,35.92
step
talk Liladris Moonriver##11219
|tip On the balcony of the building.
turnin The Sleeper Has Awakened##5321 |goto Ashenvale 27.26,35.58
step
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##967 |goto Ashenvale 26.20,38.70
accept The Tower of Althalaxx##970 |goto Ashenvale 26.20,38.70
]]
)
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
  'Leveling Guides\\Wetlands (24-25)',
  {
    image = ZGV.IMAGESDIR .. 'Wetlands',
    condition_suggested = function()
      return level >= 24 and level <= 25 and not completedq(1075)
    end,
    next = 'Leveling Guides\\Duskwood (25-27)',
    hardcore = true,
  },
  [[
step
Follow the path |goto Stormwind City 74.74,53.70 < 10 |only if walking
Enter the building |goto Stormwind City 77.14,58.02 < 10 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
accept Mathias and the Defias##2360 |goto Stormwind City 75.78,59.85
|only if Rogue
step
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.56,52.64
|only if Rogue
step
talk Agent Kearnen##7024
turnin Mathias and the Defias##2360 |goto Westfall 68.49,70.08
accept Klaven's Tower##2359 |goto Westfall 68.49,70.08
|only if Rogue
step
collect Defias Tower Key##7923 |q 2359/2 |goto Westfall 71.63,73.91
|tip Use your "Pickpocket" ability on a Malformed Defias Drone.
|tip He walks around this area.
|only if Rogue
step
Enter the building |goto Westfall 69.97,74.07 < 10 |walk
click Duskwood Chest##123214
|tip Upstairs inside the building, on the top level.
|tip You will get a debuff after opening it.
|tip Use your "Sap" ability on Klaven Mortwake nearby before clicking the chest.
|tip He is elite, but you should be fine.
|tip If you have trouble, try to find someone to help you.
collect Klaven Mortwake's Journal##7908 |q 2359/1 |goto Westfall 70.41,73.93
|only if Rogue
step
Leave the building |goto Westfall 69.95,74.04 < 10 |walk |only if zone("Westfall") and _G.IsIndoors()
Follow the path |goto Stormwind City 74.74,53.70 < 10 |only if walking
Enter the building |goto Stormwind City 77.14,58.02 < 10 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin Klaven's Tower##2359 |goto Stormwind City 75.78,59.85
accept The Touch of Zanzil##2607 |goto Stormwind City 75.78,59.85
|only if Rogue
step
talk Doc Mixilpixil##7207
|tip Downstairs inside the building.
turnin The Touch of Zanzil##2607 |goto Stormwind City 78.04,58.77
accept The Touch of Zanzil##2608 |goto Stormwind City 78.04,58.77
|only if Rogue
step
Watch the dialogue
|tip Use the "/lay" emote (type it in your chat) while targeting Doc Mixilpixil.
Complete the Diagnosis |q 2608/1 |goto Stormwind City 78.04,58.77
|only if Rogue
step
talk Doc Mixilpixil##7207
|tip Downstairs inside the building.
turnin The Touch of Zanzil##2608 |goto Stormwind City 78.04,58.77
|only if Rogue
step
Remove the Touch of Zanzil |nobuff Touch of Zanzil##9991
|tip You will still have the "Touch of Zanzil" debuff.
|tip There is a quest to remove the debuff.
|tip The quest makes you gather items in Stormwind City, but gathering the items can cost a lot of silver.
|tip To remove the buff without doing the quest and wasting money, you have 2 options:
|tip If you have First Aid leveled, create an "Anti-Venom" and use it on yourself.
|tip You can also try to buy one from the Auction House, they're usually cheap. |only if not selfmade
|tip Alternatively, try to ask a Druid player to use their "Cure Poison" ability on you.
|only if Rogue
step
talk Jasper Fel##1325
|tip Inside the building, on the middle floor.
|tip Stock up on Dust of Decay and Empty Vials, at least 20 of each.
|tip You will use these to create poisons soon to use on your weapon to help you deal more damage.
|tip The poisons only last for 30 minutes, so you want to have enough to be able to always poison your weapon.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City 78.32,58.98 |q 484 |future
|only if Rogue
step
Enter the building |goto Ironforge 27.69,12.34 < 20 |walk
talk Milstaff Stormeye##2489
|tip Inside the building.
learnspell Teleport: Ironforge##3562 |goto Ironforge 25.50,7.07
|only if Mage
step
Enter the building |goto Ironforge 30.43,26.37 < 7 |walk
talk Ginny Longberry##5151
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Ginny Longberry##5151 |goto Ironforge 31.32,27.79 |q 484 |future
|only if Mage
step
talk James Halloran##2094
|tip He walks around this area.
accept Young Crocolisk Skins##484 |goto Wetlands 8.51,55.71
step
talk Karl Boran##1242
|tip He walks around this area.
accept Claws from the Deep##279 |goto Wetlands 8.31,58.53
step
talk First Mate Fitzsimmons##1239
accept The Third Fleet##288 |goto Wetlands 10.89,59.67
accept The Greenwarden##463 |goto Wetlands 10.89,59.67
step
Enter the building |goto Wetlands 10.79,59.76 < 10 |walk
talk Innkeeper Helbrek##1464
|tip He walks around inside the building.
home Deepwater Tavern |goto Wetlands 10.70,60.95
step
talk Innkeeper Helbrek##1464
|tip He walks around inside the building.
buy Flagon of Mead##2594 |q 288/1 |goto Wetlands 10.70,60.95
step
talk Archaeologist Flagongut##2911
|tip Upstairs inside the building.
turnin The Absent Minded Prospector##942 |goto Wetlands 10.84,60.43
step
Leave the building |goto Wetlands 10.79,59.77 < 10 |walk |only if subzone("Deepwater Tavern")
talk First Mate Fitzsimmons##1239
turnin The Third Fleet##288 |goto Wetlands 10.89,59.67
step
talk Edwina Monzor##1462
|tip She walks around this area.
|tip If you need any more, only buy enough level 10 ammo to get you to level 25.
|tip You will switch to level 25 ammo at level 25.
|tip Buy enough level 25 ammo to fill your ammo bag, and save it in your bags to switch to it later, once you hit level 25 soon.
Visit the Vendor |vendor Edwina Monzor##1462 |goto Wetlands/0 11.11,58.33 |q 463
|only if Hunter
step
talk Sida##2111
accept Digging Through the Ooze##470 |goto Wetlands 11.80,57.99
step
Enter the building |goto Wetlands 10.30,56.30 < 15 |walk
talk Neal Allen##1448
|tip Inside the building.
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Neal Allen##1448 |goto Wetlands 10.75,56.75 |q 174 |future
|only if itemcount(4371) == 0
stickystart "Kill_Young_Crocs"
stickystart "Slay_Bluegill_Murlocs"
step
Leave the building |goto Wetlands 10.30,56.30 < 15 |walk |only if subzone("Menethil Keep")
Leave Menethil Harbor |goto Wetlands 10.96,54.57 < 30 |only if walking and subzone("Menethil Harbor")
kill Gobbler##1259
|tip He looks like a grey murloc that walks around this area.
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect Gobbler's Head##3618 |q 279/2 |goto Wetlands 17.99,40.38
Also check around: |notinsticky
[14.45,41.53]
[14.86,35.88]
step
label "Slay_Bluegill_Murlocs"
Kill Bluegill enemies around this area
|tip They look like murlocs.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Enemies near huts will likely pull in groups, so avoid if possible. |only if hardcore |notinsticky
Slay #12# Bluegill Murlocs |q 279/1 |goto Wetlands 13.64,39.55
stickystop "Kill_Young_Crocs"
step
Kill enemies around this area
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Enemies near huts will likely pull in groups, so avoid if possible. |only if hardcore |notinsticky
|tip You should already be close to reaching level 25.
ding 25 |goto Wetlands 16.87,40.02
step
_NOTE:_
You Have Access to Stronger Ammo
|tip Now that you're level 25, you can purchase stronger bullets or arrows.
|tip When you restock ammo at vendors, make sure to buy level 25 ammo.
|tip Destroy all of your level 10 ammo, and use the level 25 ammo you bought earlier.
Click Here to Continue |confirm |q 279
|only if Hunter
stickystart "Kill_Young_Crocs"
step
talk Fradd Swiftgear##2682
|tip He walks around this area.
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Fradd Swiftgear##2682 |goto Wetlands 26.40,25.76 |q 174 |future
|only if itemcount(4371) == 0
step
talk Einar Stonegrip##2093
accept Daily Delivery##469 |goto Wetlands 49.91,39.37
accept Message to Menethil##27021 |goto Wetlands 49.91,39.37
step
talk Rethiel the Greenwarden##1244
turnin The Greenwarden##463 |goto Wetlands 56.37,40.40
accept Tramping Paws##276 |goto Wetlands 56.37,40.40
step
Kill Black Ooze enemies on the way south. |goto Wetlands 66.20,53.00 <100 |c |or
|tip This step will skip if you reach the waypoint without finding the bag.
|tip Don't worry, you'll have more chances later.
collect Sida's Bag##3349 |q 470/1 |or
step
label "Kill_Young_Crocs"
Leave the building |goto Wetlands 10.30,56.30 < 15 |walk |only if subzone("Menethil Keep")
Leave Menethil Harbor |goto Wetlands 10.96,54.57 < 30 |only if walking and subzone("Menethil Harbor")
kill Young Wetlands Crocolisk##1417+
|tip Go out of your way to kill Young Wetlands Crocolisks as you quest.
|tip The droprate for this quest can be low.
collect 4 Young Crocolisk Skin##3397 |q 484/1 |goto Wetlands 51.00,37.20
You can find more around: |notinsticky
[20.01,46.59]
[27.47,40.25]
[34.44,36.03]
stickystart "Kill_Mosshide_Gnolls"
step
kill 10 Mosshide Mongrel##1008 |q 276/2 |goto Wetlands 61.18,57.60
|tip Avoid pulling from the camp areas if possible. |only if hardcore
|tip Enemies around there tend to pull in groups. |only if hardcore
|tip Watch for patrols and respawns while in the area. |only if hardcore
You can find more around: |notinsticky
[64.11,63.15]
[62.39,70.70]
[55.68,74.52]
step
label "Kill_Mosshide_Gnolls"
kill 15 Mosshide Gnoll##1007 |q 276/1 |goto Wetlands 64.11,63.15
|tip Avoid pulling from the camp areas if possible. |only if hardcore |notinsticky
|tip Enemies around there tend to pull in groups. |only if hardcore |notinsticky
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[62.39,70.70]
[55.68,74.52]
step
click Musquash Root
collect Musquash Root##2784 |q 335/2 |goto Wetlands 64.76,75.29
|only if Warlock
step
Kill Black Ooze enemies on the way north. |goto Wetlands 56.37,40.40 <60 |c |or
|tip This step will skip if you reach the waypoint without finding the bag.
|tip Don't worry, you'll have more chances later.
collect Sida's Bag##3349 |q 470/1 |or
step
talk Rethiel the Greenwarden##1244
turnin Tramping Paws##276 |goto Wetlands 56.37,40.40
accept Fire Taboo##277 |goto Wetlands 56.37,40.40
step
_Note:_
Check Your Hearthstone
|tip The next step will instruct you to jump off of a bridge into the water.
|tip Afterwards, the guide assumes you will hearth back to Menethil Harbor.
|tip If your Hearthstone is not ready to use, you will have to swim a long way and it takes a while, so grind until it's ready.
|tip If you don't want to wait at all, skip the next 2 guide steps.
|tip You will have to skip a handful of quests worth about 10,000 xp.
Click Here to Continue |confirm |q 637 |future
|only if C_Container.GetItemCooldown(6948) > 0
step
Cross the bridge |goto Wetlands 51.11,11.59 < 30 |only if walking
Jump off the bridge into the water |goto Wetlands 50.65,8.53 < 15 |only if walking
click Waterlogged Letter##2656
|tip It looks like a rolled up white scroll in the hand of a dead dwarf.
|tip Underwater.
collect Waterlogged Envelope##4433 |goto Arathi Highlands 44.29,92.88 |q 637 |future |notravel
step
cast Teleport: Moonglade##18960
trainer Loganaar##12042 |goto Moonglade/0 52.50,40.54 |q 637 |future
|tip Go to Moonglade and train your spells, then hearth once it is off cooldown.
|only if Druid and C_Container.GetItemCooldown(6948) <= 100
step
use the Waterlogged Envelope##4433
accept Sully Balloo's Letter##637 |goto Wetlands 11.80,57.99
step
talk Sida##2111
turnin Digging Through the Ooze##470 |goto Wetlands 11.80,57.99
step
Enter the building |goto Wetlands 10.30,56.30 < 15 |walk
talk Neal Allen##1448
|tip Inside the building.
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Neal Allen##1448 |goto Wetlands 10.75,56.75 |q 174 |future
|only if itemcount(4371) == 0
step
Leave the building |goto Wetlands 10.30,56.30 < 15 |walk |only if subzone("Menethil Keep")
talk James Halloran##2094
|tip He walks around this area.
turnin Young Crocolisk Skins##484 |goto Wetlands 8.51,55.71
accept Apprentice's Duties##471 |goto Wetlands 8.51,55.71
turnin Daily Delivery##469 |goto Wetlands 8.51,55.71
step
talk Karl Boran##1242
|tip He walks around this area.
turnin Claws from the Deep##279 |goto Wetlands 8.31,58.53
accept Reclaiming Goods##281 |goto Wetlands 8.31,58.53
step
Run up the stairs and enter the building |goto Ironforge 61.32,88.18 < 7 |walk
talk Buliwyf Stonehand##11865
|tip Inside the building.
|tip This will allow you to equip two-handed axes.
Train Two-Handed Axes |complete weaponskill("TH_AXE") > 0 |goto Ironforge 61.17,89.52
|only if Paladin
step
Run up the stairs and enter the building |goto Ironforge 50.21,7.54 < 7 |walk
talk Gerrig Bonegrip##2786
|tip Inside the building.
turnin The Powers Below##968 |goto Ironforge 50.83,5.62
|only if haveq(968) or completedq(968)
step
talk Gearcutter Cogspinner##5175
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Gearcutter Cogspinner##5175 |goto Ironforge 67.84,42.50 |q 174 |future
|only if itemcount(4371) == 0
step
talk Lomac Gearstrip##4081
turnin An Old Colleague##1072 |goto Ironforge 72.10,51.89
step
talk Sara Balloo##2695
turnin Sully Balloo's Letter##637 |goto Ironforge 63.48,67.29
step
Run up the stairs |goto Ironforge 51.24,9.84 < 5 |only if walking
talk Gerrig Bonegrip##2786
|tip Inside the building.
turnin Knowledge in the Deeps##971 |goto Ironforge 50.82,5.60
|only if guideflag("BFDflag")
step
Watch the dialogue
talk Sara Balloo##2695
accept Sara Balloo's Plea##683 |goto Ironforge 63.48,67.29
step
Follow the path |goto Ironforge 44.57,49.55 < 10 |walk
talk King Magni Bronzebeard##2784
turnin Sara Balloo's Plea##683 |goto Ironforge 39.11,56.17
accept A King's Tribute##686 |goto Ironforge 39.11,56.17
step
Follow the path |goto Ironforge 44.57,49.55 < 10 |walk |only if subzone("The High Seat")
Run up the stairs and enter the building |goto Ironforge 38.53,85.78 < 7 |walk
talk Grand Mason Marblesten##2790
|tip He walks around inside the building.
turnin A King's Tribute##686 |goto Ironforge 39.03,88.02
accept A King's Tribute##689 |goto Ironforge 39.03,88.02
step
talk Dink##7312 |only if Mage
talk Regnus Thundergranite##5117 |only if Hunter
talk Bilban Tosslespanner##5114 |only if Warrior
talk Toldren Deepiron##5143 |only if Priest
talk Brandur Ironhammer##5149 |only if Paladin
talk Fenthwick##5167 |only if Rogue
trainer Dink##7312 |goto Ironforge/0 27.10,8.49 |only if Mage |q 689
trainer Regnus Thundergranite##5117 |goto Ironforge/0 69.86,82.94 |only if Hunter |q 689
trainer Bilban Tosslespanner##5114 |goto Ironforge/0 65.92,88.39 |only if Warrior |q 689
trainer Fenthwick##5167 |goto Ironforge/0 51.49,15.33 |only if Rogue |q 689
trainer Toldren Deepiron##5143 |goto Ironforge/0 25.19,10.76 |only if Priest |q 689
trainer Brandur Ironhammer##5149 |goto Ironforge/0 23.11,6.14 |only if Paladin |q 689
|tip Inside the building.
|tip Train your spells.
step
Enter the building |goto Ironforge 27.69,12.34 < 20 |walk
talk Milstaff Stormeye##2489
|tip Inside the building.
learnspell Teleport: Ironforge##3562 |goto Ironforge 25.50,7.07
|only if Mage
step
Enter the building |goto Ironforge 30.43,26.37 < 7 |walk
talk Ginny Longberry##5151
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Ginny Longberry##5151 |goto Ironforge 31.32,27.79 |q 484 |future
|only if Mage
step
talk Billibub Cogspinner##5519
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Billibub Cogspinner##5519 |goto Stormwind City 55.21,7.05 |q 174 |future
|only if itemcount(4371) == 0
step
talk Collin Mauren##4078
turnin A Scroll from Mauren##1075 |goto Stormwind City 43.09,80.38
step
Enter the building |goto Stormwind City 29.14,74.17 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Heartswood##1738 |goto Stormwind City 25.26,78.56
accept The Binding##1739 |goto Stormwind City 25.26,78.56
|only if Warlock
step
use the Heartswood Core##6913
|tip Use it while standing on the pink symbol on the ground.
|tip Further downstairs inside the building, inside the crypt.
kill Summoned Succubus##5677 |q 1739/1 |goto Stormwind City 25.11,77.46
|only if Warlock
step
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building, in the basement above the crypt.
turnin The Binding##1739 |goto Stormwind City 25.25,78.56
|only if Warlock
step
talk Spackle Thornberry##5520
|tip Downstairs inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 66 |future
|only if Warlock
step
talk Ursula Deline##5495
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20
|only if Warlock
step
_NOTE:_
Be Prepared to Fight Waves of Enemies
|tip When you accept the quest in the next step, you will have to protect and NPC from 3 waves of level 17-18 enemies.
|tip First Wave - 3 enemies.
|tip Second Wave - 4 enemies.
|tip Third Wave - 5 enemies.
|tip Remember to heal and use your defensive abilities when needed, preferably during the ladder waves.
|tip Bring food and water to eat and drink between the waves.
|tip You should be able to complete the quest at this level.
Click Here to Continue |confirm |q 1650
|only if Paladin
step
Follow the path up through the mountains |goto Westfall 52.64,72.27 < 50 |only if walking
Follow the path around the mountain |goto Westfall 38.44,82.68 < 20 |only if walking
talk Daphne Stilwell##6182
|tip She walks around this area.
turnin The Tome of Valor##1650 |goto Westfall 42.33,88.64
accept The Tome of Valor##1651 |goto Westfall 42.33,88.64
|only if Paladin
step
Watch the dialogue
Kill the enemies that attack in waves
|tip You will be attacked by 3 waves of level 17 - 18 enemies.
|tip First Wave - 3 enemies.
|tip Second Wave - 4 enemies.
|tip Third Wave - 5 enemies.
|tip Remember to heal and use your defensive abilities when needed, preferably during the ladder waves.
|tip Eat and drink between the waves.
|tip You should be able to complete the quest at this level.
Protect Daphne Stilwell |q 1651/1 |goto Westfall 42.33,88.64
|only if Paladin
step
talk Daphne Stilwell##6182
|tip She walks around this area.
turnin The Tome of Valor##1651 |goto Westfall 41.68,89.09
accept The Tome of Valor##1652 |goto Westfall 41.68,89.09
|only if Paladin
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Duskwood (25-27)',
  {
    image = ZGV.IMAGESDIR .. 'Duskwood',
    condition_suggested = function()
      return level >= 25 and level <= 27 and not completedq(57)
    end,
    next = 'Leveling Guides\\Redridge Mountains (27-28)',
    hardcore = true,
  },
  [[
step
talk Malissa##3135
|tip Walking around here.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 66 |future
|only if Rogue
step
Enter the building |goto Duskwood 75.55,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
accept The Legend of Stalvan##66 |goto Duskwood 75.82,45.29
accept The Totem of Infliction##101 |goto Duskwood 75.82,45.29
step
talk Allison##45731
accept A Matter of Life and Death##26711 |goto Duskwood 77.7,52.2
|tip Look for small flowers around Duskwood as you quest.
|tip They look like tiny flowers on the ground and are easy to miss.
step
collect 8 Brightwood Bloom##62530 |q 26711/1 |goto Duskwood 70,50
|tip These are small flowers scattered throughout Duskwood.
|tip You can collect them while doing other quests in the zone.
|tip Check around the roads and open areas.
step
talk Steven Black##10062
|tip Stable your permanent pet.
|tip You are about to tame a temporary pet soon, so you can learn "Bite 4".
Click Here to Continue |confirm |goto Duskwood 74.02,46.11 |q 101
|only if Hunter
step
_NOTE:_
Tame a Black Ravager
|tip Use your "Tame Beast" ability on a Black Ravager.
|tip They look like black wolves around this area.
|tip Make sure to tame a regular "Black Ravager", and not the Young or Mastiff variants.
Learn the "Bite 4" Pet Ability
|tip Kill enemies around this area until you see a message in your chat saying you learned "Bite 4".
|tip You will teach "Bite 4" to your permanent pet soon.
Click Here to Continue |confirm |goto Duskwood 67.90,32.14 |q 101
|only if Hunter
step
talk Steven Black##10062
|tip Abandon your temporary pet and get your permanent pet from the stable.
|tip Teach "Bite 4" to your permanent pet.
Click Here to Continue |confirm |goto Duskwood 74.02,46.11 |q 101
|only if Hunter
step
Enter the building |goto Duskwood 73.83,46.02 < 10 |walk
talk Innkeeper Trelayne##6790
|tip Inside the building.
home Darkshire |goto Duskwood 73.87,44.41
step
Leave the building |goto Duskwood 73.83,46.02 < 10 |walk |only if subzone("Scarlet Raven Tavern")
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
accept The Night Watch##56 |goto Duskwood 73.60,46.90
step
Enter the building |goto Duskwood 72.93,46.81 < 10 |walk
talk Clerk Daltry##267
|tip He walks around this area inside the building.
turnin The Legend of Stalvan##66 |goto Duskwood 72.52,46.85
accept The Legend of Stalvan##67 |goto Duskwood 72.52,46.85
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip You will use it when you reach level 26.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 163 |future
|only if Warrior and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip You will use it when you reach level 26.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 163 |future
|only if Paladin and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Broad Bladed Knife##12247 |n
|tip If you can afford it.
|tip You will use it when you reach level 27.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 163 |future
|only if Rogue and itemcount(12247) == 0
step
Enter the building |goto Duskwood 75.23,48.26 < 10 |walk
talk Elaine Carevin##633
|tip Inside the building.
accept Raven Hill##163 |goto Duskwood 75.33,48.69
accept The Hermit##165 |goto Duskwood 75.33,48.69
accept Deliveries to Sven##164 |goto Duskwood 75.33,48.69
step
talk Felicia Maline##2409
fpath Darkshire |goto Duskwood 77.49,44.29
step
talk Herble Baubbletump##3133
buy Bronze Tube##4371 |n
|tip If you can afford it.
|tip It may not be for sale, since it's a limited supply item.
|tip You need this item now for a quest in the next guide step.
|tip If you haven't been able to buy one while following the guide so far, fly to Stormwind City and buy one from the auction house. |only if not selfmade
collect Bronze Tube##4371 |goto Duskwood 77.99,48.33 |q 174 |future
step
Enter the building |goto Duskwood 79.78,47.69 < 10 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
accept Look To The Stars##174 |goto Duskwood 79.80,48.02
step
talk Viktori Prism'Antras##276
|tip Inside the building.
turnin Look To The Stars##174 |goto Duskwood 79.80,48.02
accept Look To The Stars##175 |goto Duskwood 79.80,48.02
step
Enter the building |goto Duskwood 81.67,59.14 < 10 |walk
talk Blind Mary##302
|tip She walks around inside the building.
turnin Look To The Stars##175 |goto Duskwood 81.99,59.09
accept Look To The Stars##177 |goto Duskwood 81.99,59.09
stickystart "Kill_Skeletal_Mages"
stickystart "Kill_Skeletal_Warriors"
step
Enter the building |goto Duskwood 80.33,71.10 < 10 |walk
kill Insane Ghoul##511
|tip He walks around inside the building.
|tip He may also leave the building and walk around the graveyard.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Skeletal mages may aggro from a decent distance. |only if hardcore |notinsticky
collect Mary's Looking Glass##1946 |q 177/1 |goto Duskwood 80.94,71.40
step
label "Kill_Skeletal_Mages"
kill 6 Skeletal Mage##203 |q 56/2 |goto Duskwood 79.42,70.31
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Skeletal mages may aggro from a decent distance. |only if hardcore |notinsticky
step
label "Kill_Skeletal_Warriors"
kill 8 Skeletal Warrior##48 |q 56/1 |goto Duskwood 79.42,70.31
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Skeletal mages may aggro from a decent distance. |only if hardcore |notinsticky
step
Kill enemies around this area
|tip You should already be very close to reaching level 26.
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Skeletal mages may aggro from a decent distance. |only if hardcore |notinsticky
ding 26 |goto Duskwood 79.42,70.31
step
Follow the road |goto Duskwood 72.18,59.00 < 50 |only if walking and (subzone("Tranquil Gardens Cemetery") or subzone("Darkshire"))
talk Jitters##288
|tip He walks around this area.
turnin Raven Hill##163 |goto Duskwood 18.16,56.51
accept Jitters' Growling Gut##5 |goto Duskwood 18.16,56.51
step
talk Sven Yorgen##311
turnin Deliveries to Sven##164 |goto Duskwood 7.78,34.07
accept Sven's Revenge##95 |goto Duskwood 7.78,34.07
step
talk Lars##893
accept Wolves at Our Heels##226 |goto Duskwood 7.71,33.20
stickystart "Kill_Rabid_Dire_Wolves"
step
map Duskwood
path follow smart; loop off; ants straight; dist 50; markers none
path	11.81,29.39	15.57,24.64	18.51,23.95	23.24,26.03	29.03,26.73
path	33.15,23.17	37.32,19.68	45.37,18.08
kill 12 Starving Dire Wolf##213 |q 226/1
|tip You can find them all along the coast of the river.
step
label "Kill_Rabid_Dire_Wolves"
map Duskwood
path follow smart; loop off; ants straight; dist 50; markers none
path	11.81,29.39	15.57,24.64	18.51,23.95	23.24,26.03	29.03,26.73
path	33.15,23.17	37.32,19.68	45.37,18.08
kill 8 Rabid Dire Wolf##565 |q 226/2
|tip You can find them all along the coast of the river. |notinsticky
step
talk Abercrombie##289
|tip Inside the building.
turnin The Hermit##165 |goto Duskwood 28.11,31.47
accept Supplies from Darkshire##148 |goto Duskwood 28.11,31.47
stickystart "Collect_Gooey_Spider_Legs"
step
kill Black Widow Hatchling##930+
collect 5 Vial of Spider Venom##1130 |q 101/2 |goto Duskwood 31.85,35.93
You can find more around: |notinsticky
[28.46,48.96]
[32.20,55.11]
step
label "Collect_Gooey_Spider_Legs"
kill Black Widow Hatchling##930+
collect 6 Gooey Spider Leg##2251 |goto Duskwood 31.85,35.93 |q 93 |future
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[28.46,48.96]
[32.20,55.11]
step
Leave the crypt |goto Duskwood 23.59,34.89 < 15 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
talk Lars##893
turnin Wolves at Our Heels##226 |goto Duskwood 7.71,33.20
step
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.55,52.64
step
Enter the building |goto Westfall 42.22,66.90 < 10 |walk
click Old Footlocker
|tip Inside the building.
turnin The Legend of Stalvan##67 |goto Westfall 41.51,66.73
accept The Legend of Stalvan##68 |goto Westfall 41.51,66.73
step
talk Chef Grual##272
|tip He walks around this area inside the building.
turnin Jitters' Growling Gut##5 |goto Duskwood 73.78,43.45
accept Dusky Crab Cakes##93 |goto Duskwood 73.78,43.45
step
talk Chef Grual##272
|tip He walks around this area inside the building.
turnin Dusky Crab Cakes##93 |goto Duskwood 73.78,43.45
accept Return to Jitters##240 |goto Duskwood 73.78,43.45
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Gooey Spider Leg##2251 |goto Duskwood 73.82,46.01
step
Leave the building |goto Duskwood 73.82,46.01 < 10 |walk |only if subzone("Scarlet Raven Tavern")
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Night Watch##56 |goto Duskwood 73.59,46.90
accept The Night Watch##57 |goto Duskwood 73.59,46.90
step
Enter the building |goto Duskwood 72.93,46.81 < 10 |walk
talk Clerk Daltry##267
|tip He walks around this area inside the building.
turnin The Legend of Stalvan##68 |goto Duskwood 72.52,46.85
accept The Legend of Stalvan##69 |goto Duskwood 72.52,46.85
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 101
|only if Warrior and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 101
|only if Paladin and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Broad Bladed Knife##12247 |n
|tip If you can afford it.
|tip You will use it when you reach level 27.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 101
|only if Rogue and itemcount(12247) == 0
step
Enter the building |goto Duskwood 75.57,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin Supplies from Darkshire##148 |goto Duskwood 75.81,45.29
accept Ghost Hair Thread##149 |goto Duskwood 75.81,45.29
step
Enter the building |goto Duskwood 79.78,47.69 < 10 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
turnin Look To The Stars##177 |goto Duskwood 79.80,48.02
step
Enter the building |goto Duskwood 81.68,59.13 < 10 |walk
talk Blind Mary##302
|tip She walks around inside the building.
turnin Ghost Hair Thread##149 |goto Duskwood 81.98,59.09
accept Return the Comb##154 |goto Duskwood 81.98,59.09
step
Enter the building |goto Duskwood 75.57,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin Return the Comb##154 |goto Duskwood 75.81,45.29
accept Deliver the Thread##157 |goto Duskwood 75.81,45.29
step
click Mound of loose dirt
|tip Be careful, there are stealthed enemies around this area.
turnin Sven's Revenge##95 |goto Duskwood 49.86,77.70
accept Sven's Camp##230 |goto Duskwood 49.86,77.70
step
Follow the road |goto Duskwood 43.59,65.05 < 40 |only if walking and subzone("The Yorgen Farmstead")
talk Jitters##288
|tip He walks around this area.
turnin Return to Jitters##240 |goto Duskwood 18.14,56.52
step
talk Sven Yorgen##311
turnin Sven's Camp##230 |goto Duskwood 7.78,34.07
accept The Shadowy Figure##262 |goto Duskwood 7.78,34.07
step
talk Abercrombie##289
|tip Inside the building.
turnin Deliver the Thread##157 |goto Duskwood 28.11,31.47
accept Zombie Juice##158 |goto Duskwood 28.11,31.47
step
Enter the building |goto Elwynn Forest 42.95,65.64 < 10 |walk
talk Innkeeper Farley##295
|tip Inside the building.
turnin The Legend of Stalvan##69 |goto Elwynn Forest 43.77,65.80
accept The Legend of Stalvan##70 |goto Elwynn Forest 43.77,65.80
step
click Storage Chest
|tip Upstairs inside the building.
collect An Undelivered Letter##910 |q 70/1 |goto Elwynn Forest 44.29,65.82
step
Leave the building |goto Elwynn Forest 42.95,65.64 < 10 |walk |only if subzone("Lion's Pride Inn")
talk Caretaker Folsom##297
turnin The Legend of Stalvan##70 |goto Stormwind City 29.58,61.93
accept The Legend of Stalvan##72 |goto Stormwind City 29.58,61.93
step
click Sealed Crate
turnin The Legend of Stalvan##72 |goto Stormwind City 29.46,61.58
accept The Legend of Stalvan##74 |goto Stormwind City 29.46,61.58
step
Enter the building |goto Stormwind City 29.15,74.15 < 10 |walk
talk Zardeth of the Black Claw##1435
|tip Downstairs inside the building.
accept A Noble Brew##335 |goto Stormwind City 26.45,78.66
step
Leave the building |goto Stormwind City 29.15,74.15 < 10 |walk |only if subzone("The Slaughtered Lamb")
Run through Duskwood |goto Duskwood 77.7,52.2 < 10 |walk
talk Allison##45731
turnin A Matter of Life and Death##26711 |goto Duskwood 77.7,52.2
accept A Matter of Life and Death##26712 |goto Duskwood 77.7,52.2
|tip This quest chain will be completed later. Set aside the items you've collected and continue with other quests.
step
Enter the building |goto Duskwood 75.55,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin The Shadowy Figure##262 |goto Duskwood 75.81,45.29
accept The Shadowy Search Continues##265 |goto Duskwood 75.81,45.29
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 265
|only if Warrior and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 265
|only if Paladin and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Broad Bladed Knife##12247 |n
|tip If you can afford it.
|tip You will use it when you reach level 27.
|tip It may not be available to buy, since it's a limited supply item.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 265
|only if Rogue and itemcount(12247) == 0
step
Enter the building |goto Duskwood 72.92,46.81 < 10 |walk
talk Clerk Daltry##267
|tip He walks around this area inside the building.
turnin The Shadowy Search Continues##265 |goto Duskwood 72.53,46.85
accept Inquire at the Inn##266 |goto Duskwood 72.53,46.85
step
Enter the building |goto Duskwood 73.82,46.03 < 10 |walk
talk Tavernkeep Smitts##273
|tip He walks around this area inside the building.
turnin Inquire at the Inn##266 |goto Duskwood 73.78,44.48
accept Finding the Shadowy Figure##453 |goto Duskwood 73.78,44.48
turnin Zombie Juice##158 |goto Duskwood 73.78,44.48
accept Gather Rot Blossoms##156 |goto Duskwood 73.78,44.48
step
Leave the building |goto Duskwood 73.82,46.03 < 10 |walk |only if subzone("Scarlet Raven Tavern")
talk Jitters##288
|tip He walks around this area.
turnin Finding the Shadowy Figure##453 |goto Duskwood 18.14,56.52
accept Return to Sven##268 |goto Duskwood 18.14,56.52
stickystart "Kill_Skeletal_Fiends"
stickystart "Kill_Skeletal_Horrors"
step
Kill Skeletal enemies around this area
|tip Only Skeletal Fiends and Skeletal Horrors will drop the quest item.
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
collect 8 Rot Blossom##1598 |q 156/1 |goto Duskwood 15.20,44.97
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
Kill Skeletal enemies around this area
collect 10 Skeleton Finger##2378 |q 101/3 |goto Duskwood 15.20,44.97
step
label "Kill_Skeletal_Fiends"
kill 15 Skeletal Fiend##531 |q 57/1 |goto Duskwood 15.20,44.97
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
label "Kill_Skeletal_Horrors"
kill 15 Skeletal Horror##202 |q 57/2 |goto Duskwood 15.20,44.97
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
Kill enemies around this area
|tip You should already be level 27, or very close.
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
ding 27 |goto Duskwood 15.20,44.97
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
talk Sven Yorgen##311
turnin Return to Sven##268 |goto Duskwood 7.78,34.06
accept Proving Your Worth##323 |goto Duskwood 7.78,34.06
step
_NOTE:_
During the Next Few Steps
|tip Beware Mor'Ladim, who is a level 35 elite golden skeleton that walks along the road inside Raven Hill.
|tip The quest in the next few steps can be dangerous, requiring you to enter into a dangerous crypt.
|tip You may want to skip the quest, unless you have help, or feel confident you can handle it.
|tip If you skip the quest, abandon the "Prove Your Worth" quest.
|tip You will miss out on the rest of the quest line if you skip, requiring you grind more later.
Click Here to Continue |confirm |q 323
|only if hardcore
stickystart "Kill_Skeletal_Healers"
stickystart "Kill_Skeletal_Raiders"
step
Enter the crypt |goto Duskwood 15.88,38.73 < 7 |walk
kill 3 Skeletal Warder##785 |q 323/3 |goto Duskwood 15.53,37.02
|tip Inside the crypt.
|tip Be careful of Mor'Ladim, a level 35 elite skeleton who walks around this area outside the crypt.
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more inside the crypt around [16.01,34.05]
step
label "Kill_Skeletal_Healers"
kill 3 Skeletal Healer##787 |q 323/2 |goto Duskwood 15.87,38.73
|tip Inside the crypt. |notinsticky
|tip You can find more outside the crypt. |notinsticky
|tip Be careful of Mor'Ladim, a level 35 elite skeleton who walks around this area outside the crypt. |notinsticky
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more inside the crypt around [16.01,34.05]
step
label "Kill_Skeletal_Raiders"
Run up the stairs |goto Duskwood 15.44,37.59 < 10 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
Leave the crypt |goto Duskwood 15.87,38.73 < 10 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
kill 15 Skeletal Raider##1110 |q 323/1 |goto Duskwood 15.87,38.73
|tip Inside and outside the crypt. |notinsticky
|tip They share spawns with other enemies inside the crypt. |notinsticky
|tip They can also spawn around the house ontop of the hill. |notinsticky
|tip Be careful of Mor'Ladim, a level 35 elite skeleton who walks around this area outside the crypt. |notinsticky
step
Run up the stairs |goto Duskwood 15.44,37.59 < 10 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
Leave the crypt |goto Duskwood 15.87,38.73 < 10 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
talk Sven Yorgen##311
turnin Proving Your Worth##323 |goto Duskwood 7.78,34.06
accept Seeking Wisdom##269 |goto Duskwood 7.78,34.06
step
talk Tavernkeep Smitts##273
|tip He walks around this area inside the building.
turnin Gather Rot Blossoms##156 |goto Duskwood 73.78,44.48
accept Juice Delivery##159 |goto Duskwood 73.78,44.48
step
Leave the building |goto Duskwood 73.83,46.01 < 10 |walk |only if subzone("Scarlet Raven Tavern")
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Night Watch##57 |goto Duskwood 73.60,46.90
step
Optional Route Change
|tip You can opt to do The Stockades around level 28 instead of grinding.
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do The Stockades, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run The Stockades later |confirm Stockflag
Click Here if you'd prefer to grind |confirm
step
Enter the building |goto Duskwood 72.88,46.83 < 5 |walk
talk Councilman Millstipe##270
|tip He walks around inside the building.
accept Crime and Punishment##377 |goto Duskwood 71.92,47.79
|only if guideflag("Stockflag")
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 159
|only if Warrior and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Merciless Axe##12249 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 159
|only if Paladin and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
|tip He walks around this area.
buy Broad Bladed Knife##12247 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 159
|only if Rogue and itemcount(12247) == 0
step
collect 5 Fresh Bone Powder##62531 |q 26712/1 |goto Duskwood 75,42
|tip You can find these on the undead creatures in the Duskwood graveyards.
|tip Collect them from any undead in the zone.
|tip You can also collect them while doing other quests.
step
talk Allison##45731
turnin A Matter of Life and Death##26712 |goto Duskwood 77.7,52.2
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
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Wetlands (28-29)',
  {
    image = ZGV.IMAGESDIR .. 'Wetlands',
    condition_suggested = function()
      return level >= 28 and level <= 29 and not completedq(322)
    end,
    next = 'Leveling Guides\\Stonetalon Mountains (29-29)',
    hardcore = true,
  },
  [[
step
_NOTE:_
Save Cloth in Your Bank as You Level
|tip Once you are close to reaching level 60, you will need 240 of each type of cloth.
|tip As you level and collect Silk Cloth naturally from killing enemies while following the guide, make sure you deposit the cloth into a bank whenever you are near one.
|tip This will give you about 40,000 quick and easy xp to help you get to level 60 faster in the longer later levels.
Click Here to Continue |confirm
|only if level < 60
step
talk First Mate Fitzsimmons##1239
accept The Cursed Crew##289 |goto Wetlands 10.89,59.67
|tip This requires you to complete "The Third Fleet" quest found the "Wetlands (24-25)" guide.
step
Enter the building |goto Wetlands 10.79,59.76 < 10 |walk
talk Glorin Steelbrow##1217
|tip Inside the building.
turnin The Doomed Fleet##270 |goto Wetlands 10.59,60.59
step
talk Innkeeper Helbrek##1464
|tip He walks around inside the building.
home Deepwater Tavern |goto Wetlands 10.70,60.96
step
talk Archaeologist Flagongut##2911
|tip Upstairs inside the building.
accept The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
|tip You won't be able to accept this quest if you skipped any of the previous quests in the chain. |only if hardcore
step
Leave the building |goto Wetlands 10.79,59.76 < 10 |walk |only if subzone("Deepwater Tavern")
talk Harlo Barnaby##2097
accept Fall of Dun Modr##472 |goto Wetlands 10.85,55.90
step
Enter the building |goto Wetlands 10.30,56.30 < 15 |walk
Run up the stairs |goto Wetlands 9.80,57.77 < 7 |walk
talk Captain Stoutfist##2104
|tip Upstairs inside the building, in the large room.
accept War Banners##464 |goto Wetlands 9.86,57.49
step
Leave the building |goto Wetlands 10.29,56.31 < 15 |walk |only if subzone("Menethil Keep")
talk Tarrel Rockweaver##2096
|tip He walks around this area.
accept In Search of The Excavation Team##305 |goto Wetlands 11.50,52.14
step
click Damaged Crate##261
|tip Watch for murloc patrols in the area. |only if hardcore
|tip Enemies near the buildings tend to pull in groups so be careful. |only if hardcore
turnin Reclaiming Goods##281 |goto Wetlands 13.51,41.38
accept The Search Continues##284 |goto Wetlands 13.51,41.38
step
click Sealed Barrel##142151
|tip Watch for murloc patrols in the area. |only if hardcore
|tip Enemies near the buildings tend to pull in groups so be careful. |only if hardcore
turnin The Search Continues##284 |goto Wetlands 13.61,38.21
accept Search More Hovels##285 |goto Wetlands 13.61,38.21
step
click Half-buried Barrel##259
|tip Watch for murloc patrols in the area. |only if hardcore
|tip Enemies near the buildings tend to pull in groups so be careful. |only if hardcore
turnin Search More Hovels##285 |goto Wetlands 13.95,34.81
accept Return the Statuette##286 |goto Wetlands 13.95,34.81
stickystart "Kill_Cursed_Marines"
stickystart "Kill_Cursed_Sailors"
step
Enter the hole in the side of the ship |goto Wetlands 14.05,30.54 < 10 |walk
kill First Mate Snellig##1159
|tip Underwater, inside the sunken ship.
|tip This area is dangerous due to occasionally fast respawn rates and large aggro radius. |only if hardcore
|tip Try to pull mobs from nearby to avoid having to deal with multiple at once. |only if hardcore
|tip He's level 29, but you should be able to kill him at this level.
|tip If you have trouble, try to get someone to help you.
collect Snellig's Snuffbox##3619 |q 289/3 |goto Wetlands 14.08,30.01
step
label "Kill_Cursed_Marines"
kill 5 Cursed Marine##1158 |q 289/2 |goto Wetlands 14.22,28.53
|tip Enemies around this area are in close quarters, so plan for adds when fighting. |only if hardcore |notinsticky
You can find more around [14.82,24.62]
step
label "Kill_Cursed_Sailors"
kill 13 Cursed Sailor##1157 |q 289/1 |goto Wetlands 14.22,28.53
|tip Enemies around this area are in close quarters, so plan for adds when fighting. |only if hardcore |notinsticky
You can find more around [14.82,24.62]
step
kill Giant Wetlands Crocolisk##2089+
collect 6 Giant Crocolisk Skin##3348 |q 471/1 |goto Wetlands 16.57,28.25
You can find more around: |notinsticky
[20.92,21.92]
[27.08,21.65]
step
Kill Mosshide enemies around this area
|tip Enemies tend to pull in groups when around encampment like areas. |only if hardcore
|tip Watch for respawns while here. |only if hardcore
collect 9 Crude Flint##2611 |q 277/1 |goto Wetlands 31.41,31.20
You can find more around: |notinsticky
[36.76,28.88]
[45.65,33.83]
step
Enter Whelgar's Excavation Site |goto Wetlands 34.19,41.09 < 20 |only if walking
Follow the path up |goto Wetlands 37.11,42.98 < 20 |only if walking
talk Ormer Ironbraid##1078
|tip He walks around this area.
accept Ormer's Revenge##294 |goto Wetlands 38.18,50.89
step
Enter the cave |goto Wetlands 38.32,51.59 < 15 |walk
talk Merrin Rockweaver##1076
|tip Inside the cave.
turnin In Search of The Excavation Team##305 |goto Wetlands 38.91,52.34
accept In Search of The Excavation Team##306 |goto Wetlands 38.91,52.34
step
click Flagongut's Fossil##9630
|tip Inside the cave.
collect Flagongut's Fossil##5234 |q 943/2 |goto Wetlands 38.86,52.21
stickystart "Kill_Mottled_Screechers"
stickystart "Collect_Stone_Of_Relu"
step
Follow the path down |goto Wetlands 37.10,47.90 < 20 |only if walking and subzone("Whelgar's Excavation Site")
Leave Whelgar's Excavation Site |goto Wetlands 34.02,40.85 < 20 |only if walking and subzone("Whelgar's Excavation Site")
kill 10 Mottled Raptor##1020 |q 294/1 |goto Wetlands 29.12,44.15
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[25.11,47.95]
[22.90,53.35]
step
label "Kill_Mottled_Screechers"
kill 10 Mottled Screecher##1021 |q 294/2 |goto Wetlands 29.12,44.15
|tip These enemies call for help with their health is low. |only if hardcore |notinsticky
|tip Pull them back away from other raptors when possible. |only if hardcore |notinsticky
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[25.11,47.95]
[22.90,53.35]
step
Enter Whelgar's Excavation Site |goto Wetlands 34.19,41.09 < 20 |only if walking
Follow the path up |goto Wetlands 37.11,42.98 < 20 |only if walking
talk Ormer Ironbraid##1078
|tip He walks around this area.
turnin Ormer's Revenge##294 |goto Wetlands 38.18,50.89
accept Ormer's Revenge##295 |goto Wetlands 38.18,50.89
stickystop "Collect_Stone_Of_Relu"
step
Enter the cave |goto Wetlands 38.32,51.59 < 15 |walk
talk Prospector Whelgar##1077
|tip Inside the cave.
accept Uncovering the Past##299 |goto Wetlands 38.81,52.39
stickystart "Collect_Golm_Fragment"
stickystart "Collect_Modr_Fragment"
stickystart "Collect_Ados_Fragment"
stickystart "Kill_Mottled_Scytheclaws"
stickystart "Kill_Mottled_Razormaws"
stickystart "Collect_Stone_Of_Relu"
step
click Loose Soil##331
|tip It looks like a large pile of dark brown dirt on the ground.
|tip It randomly spawns in multiple locations around this area.
|tip It can also spawn up on the cliff next to the higher level Sarltooth raptor.
|tip If it does, try to get someone to help you, if you can't solo him.
collect Neru Fragment##2661 |q 299/4 |goto Wetlands 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Collect_Golm_Fragment"
click Ancient Relic##333
|tip It looks like a large wide yellow vase sitting upright on the ground.
|tip It randomly spawns in multiple locations around this area. |notinsticky
|tip It can also spawn up on the cliff next to the higher level Sarltooth raptor. |notinsticky
|tip If it does, try to get someone to help you, if you can't solo him. |notinsticky
collect Golm Fragment##2660 |q 299/3 |goto Wetlands 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Collect_Modr_Fragment"
click Ancient Relic##333
|tip It looks like a large tall red vase sitting upright on the ground.
|tip It randomly spawns in multiple locations around this area. |notinsticky
|tip It can also spawn up on the cliff next to the higher level Sarltooth raptor. |notinsticky
|tip If it does, try to get someone to help you, if you can't solo him. |notinsticky
collect Modr Fragment##2659 |q 299/2 |goto Wetlands 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Collect_Ados_Fragment"
click Ancient Relic##333
|tip It looks like a large stone box container on the ground.
|tip It randomly spawns in multiple locations around this area. |notinsticky
|tip It can also spawn up on the cliff next to the higher level Sarltooth raptor. |notinsticky
|tip If it does, try to get someone to help you, if you can't solo him. |notinsticky
collect Ados Fragment##2658 |q 299/1 |goto Wetlands 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Kill_Mottled_Scytheclaws"
kill 10 Mottled Scytheclaw##1022 |q 295/1 |goto Wetlands 34.73,45.31
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
[32.82,48.77]
[35.30,49.72]
step
label "Kill_Mottled_Razormaws"
kill 10 Mottled Razormaw##1023 |q 295/2 |goto Wetlands 34.73,45.31
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
[32.82,48.77]
[35.30,49.72]
step
Follow the path up |goto Wetlands 37.11,42.98 < 20 |only if walking
talk Ormer Ironbraid##1078
|tip He walks around this area.
turnin Ormer's Revenge##295 |goto Wetlands 38.18,50.89
accept Ormer's Revenge##296 |goto Wetlands 38.18,50.89
step
Enter the cave |goto Wetlands 38.32,51.59 < 15 |walk
talk Prospector Whelgar##1077
|tip Inside the cave.
turnin Uncovering the Past##299 |goto Wetlands 38.81,52.39
step
Follow the path down |goto Wetlands 37.10,47.90 < 20 |only if walking
Follow the path up |goto Wetlands 31.89,48.63 < 10 |only if walking
Continue up the path |goto Wetlands 31.90,50.17 < 15 |only if walking
kill Sarltooth##1353
|tip Up on the cliff.
|tip He looks like a level 29 blue raptor.
|tip He sometimes walks around in the valley below, with the other raptors, so if he's not here, check around.
collect Sarltooth's Talon##3638 |q 296/1 |goto Wetlands 33.26,51.52
step
Follow the path up |goto Wetlands 37.11,42.98 < 20 |only if walking
talk Ormer Ironbraid##1078
|tip He walks around this area.
turnin Ormer's Revenge##296 |goto Wetlands 38.18,50.89
|tip The Excavation Rod is a decent wand.	|only if Priest
step
label "Collect_Stone_Of_Relu"
Kill Mottled enemies around this area
|tip They look like raptors. |notinsticky
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
collect Stone of Relu##5233 |q 943/1 |goto Wetlands 34.73,45.31
[32.82,48.77]
[35.30,49.72]
step
Leave Whelgar's Excavation Site |goto Wetlands 34.02,40.85 < 20 |only if walking and subzone("Whelgar's Excavation Site")
Kill Dragonmaw enemies around this area
collect 8 Dragonmaw War Banner##3337 |q 464/1 |goto Wetlands 42.95,41.12
You can find more around [45.71,44.48]
step
talk Rethiel the Greenwarden##1244
turnin Fire Taboo##277 |goto Wetlands 56.37,40.40
accept Blisters on The Land##275 |goto Wetlands 56.37,40.40
step
kill 12 Fen Creeper##1040 |q 275/1 |goto Wetlands 55.06,37.24 |count 6 |noordinal
|tip Kill count is 12 — this is intentional, it will be completed later.
|tip They are stealthed, usually near or in the water around this area.
|tip You will kill more of these later.
You can find more around: |notinsticky
[53.31,36.23]
[47.69,32.72]
[46.82,34.61]
[47.43,35.97]
[48.92,37.46]
[53.96,41.25]
[54.98,46.16]
step
click Musquash Root
collect Musquash Root##2784 |q 335/2 |goto Wetlands 64.76,75.29
step
talk Glorin Steelbrow##1217
|tip Inside the building.
accept Lightforge Iron##321 |goto Wetlands 10.59,60.59
|tip You may not be able to accept this quest if you skipped an earlier quest in the chain. |only if hardcore
step
talk Archaeologist Flagongut##2911
|tip Upstairs inside the building.
turnin The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
step
Leave the building |goto Wetlands 10.79,59.77 < 10 |walk |only if subzone("Deepwater Tavern")
talk First Mate Fitzsimmons##1239
turnin The Cursed Crew##289 |goto Wetlands 10.89,59.67
accept Lifting the Curse##290 |goto Wetlands 10.89,59.67
step
talk Karl Boran##1242
|tip He walks around this area.
turnin Return the Statuette##286 |goto Wetlands 8.31,58.54
step
talk James Halloran##2094
|tip He walks around this area.
turnin Apprentice's Duties##471 |goto Wetlands 8.51,55.71
step
Enter the building |goto Wetlands 10.30,56.30 < 15 |walk
Run up the stairs |goto Wetlands 9.80,57.77 < 7 |walk
talk Captain Stoutfist##2104
|tip Upstairs inside the building, in the large room.
turnin War Banners##464 |goto Wetlands 9.86,57.49
accept Nek'rosh's Gambit##465 |goto Wetlands 9.86,57.49 |only if not hardcore
step
Leave the building |goto Wetlands 10.30,56.30 < 15 |walk |only if subzone("Menethil Keep")
click Waterlogged Chest
turnin Lightforge Iron##321 |goto Wetlands 12.10,64.17
accept The Lost Ingots##324 |goto Wetlands 12.10,64.17
|tip You may not be able to accept this quest if you skipped an earlier quest in the chain. |only if hardcore
step
kill Bluegill Raider##1418+
|tip Underwater and on the land around this area.
collect 5 Lightforge Ingot##2702 |q 324/1 |goto Wetlands 11.19,64.73
You can find more around [9.28,70.11]
step
Enter the building |goto Wetlands 10.79,59.76 < 10 |walk
talk Glorin Steelbrow##1217
|tip Inside the building.
turnin The Lost Ingots##324 |goto Wetlands 10.59,60.59
accept Blessed Arm##322 |goto Wetlands 10.59,60.59
|tip You may not be able to accept this quest if you skipped an earlier quest in the chain. |only if hardcore
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
