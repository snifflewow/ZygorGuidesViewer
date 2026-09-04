local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end

ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Wetlands (30-31)',
  {
    image = ZGV.IMAGESDIR .. 'Wetlands',
    condition_suggested = function()
      return level >= 30 and level <= 31 and not completedq(293)
    end,
    next = 'Leveling Guides\\Duskwood (31-32)',
    hardcore = true,
  },
  [[
step
talk Dink##7312 |only if Mage
talk Regnus Thundergranite##5117 |only if Hunter
talk Briarthorn##5172 |only if Warlock
talk Bilban Tosslespanner##5114 |only if Warrior
talk Toldren Deepiron##5143 |only if Priest
talk Brandur Ironhammer##5149 |only if Paladin
talk Fenthwick##5167 |only if Rogue
trainer Dink##7312 |goto Ironforge/0 27.10,8.49 |only if Mage |q 306
trainer Regnus Thundergranite##5117 |goto Ironforge/0 69.86,82.94 |only if Hunter |q 306
trainer Briarthorn##5172 |goto Ironforge/0 50.33,5.70 |only if Warlock |q 306
trainer Bilban Tosslespanner##5114 |goto Ironforge/0 65.92,88.39 |only if Warrior |q 306
trainer Fenthwick##5167 |goto Ironforge/0 51.49,15.33 |only if Rogue |q 306
trainer Toldren Deepiron##5143 |goto Ironforge/0 25.19,10.76 |only if Priest |q 306
trainer Brandur Ironhammer##5149 |goto Ironforge/0 23.11,6.14 |only if Paladin |q 306
|tip Inside the building.
|tip Train your spells.
step
talk Tarrel Rockweaver##2096
|tip He walks around this area.
turnin In Search of The Excavation Team##306 |goto Wetlands 11.50,52.14
step
Run up the ramp to board the ship |goto Wetlands 16.01,23.09 < 7 |only if walking
kill Captain Halyndor##1160
|tip On the deck of the ship.
|tip You can body aggro him from the ramp on leading to the ship to avoid adds. |only if hardcore
|tip He periodically casts Spell Reflect, be careful. |only if Mage or Warlock or Priest
collect Intrepid Strongbox Key##2629 |q 290/1 |goto Wetlands 15.45,23.61
step
Swim underwater through the hole in the bottom of the ship |goto Wetlands 14.35,23.68 < 7 |walk
|tip Turn on enemy name plates with "CTRL+V" so you can see the enemies underwater. |only if hardcore
|tip Try to pull them one at a time until they cleared before entering the boat. |only if hardcore
|tip Fight enemies outside of the water so you reduce the chance of drowning. |only if hardcore
click Intrepid's Locked Strongbox##112948
|tip Underwater, at the bottom of the ship.
turnin Lifting the Curse##290 |goto Wetlands 14.37,24.02
accept The Eye of Paleth##292 |goto Wetlands 14.37,24.02
step
Swim out of the hole in the ship |goto Wetlands 14.31,23.69 < 7 |walk |only if subzone("The Lost Fleet")
kill 12 Fen Creeper##1040 |q 275/1 |goto Wetlands 18.45,27.72 |count 12 |noordinal
|tip They are stealthed, usually near or in the water around this area.
You can find more around: |notinsticky
[20.83,28.59]
[22.56,30.11]
[23.49,32.06]
[25.93,31.76]
[27.45,32.68]
[27.49,37.05]
[27.24,38.82]
step
Enter Whelgar's Excavation Site |goto Wetlands 34.19,41.09 < 20 |only if walking
Kill enemies around this area
|tip You should already be pretty close to reaching level 31.						|only if not  hardcore
|tip You are about to complete some difficult quests, where you have to kill 2 elite enemies.		|only if not  hardcore
|tip Being a level higher will help.									|only if not  hardcore
|tip You are about to skip a few quests, because they're too dangerous to solo.				|only if hardcore
|tip We are grinding to level 31 here to keep you on track.						|only if hardcore
ding 30,42000 |goto Wetlands 34.73,45.31										|only if not hardcore
ding 31 |goto Wetlands 34.73,45.31										|only if hardcore
[32.82,48.77]
[35.30,49.72]
step
Leave Whelgar's Excavation Site |goto Wetlands 34.02,40.85 < 20 |only if walking and subzone("Whelgar's Excavation Site")
Follow the path up |goto Wetlands 42.87,40.78 < 50 |only if walking
click Dragonmaw Catapult##1609
|tip Clear the enemies around the catapult before attempting to interact with it. |only if hardcore
|tip Be careful, a group of 6 enemies will appear and attack you.
|tip Run away immediately after turning in the quest.
turnin Nek'rosh's Gambit##465 |goto Wetlands 47.40,46.90
|only if not hardcore
step
talk Rethiel the Greenwarden##1244
turnin Blisters on The Land##275 |goto Wetlands 56.38,40.40
step
talk Longbraid the Grim##1071
turnin Fall of Dun Modr##472 |goto Wetlands 49.80,18.26
step
Optional Route Change
|tip You can opt to do Gnomeregan soon instead of grinding.
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do Gnomeregan, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Gnomeregan later |confirm Gnomerflag
Click Here if you'd prefer to grind |confirm
step
talk Rhag Garmason##1075
accept The Thandol Span##631 |goto Wetlands 49.92,18.21
|only if not hardcore
step
Walk onto the bridge |goto Wetlands 51.06,11.72 < 30 |only if walking
Enter the building and run down the stairs |goto Wetlands 51.36,8.11 < 7 |walk
click Ebenezer Rustlocke's Corpse
|tip Downstairs inside the building.
|tip There are 2 elite enemies inside the building, but you can fight them individually.
|tip You should be able to kill them by yourself, if you're careful.
|tip Be sure to regularly heal up when possible. |only if hardcore
|tip You will be attacked by two non-elite enemies after turning in the quest.
|tip If you have trouble, try to find someone to help you.
turnin The Thandol Span##631 |goto Wetlands 51.28,7.95
accept The Thandol Span##632 |goto Wetlands 51.28,7.95
|only if not hardcore
step
Run up the stairs |goto Wetlands 51.04,8.28 < 7 |c |q 632
|only if not hardcore
step
Run up the stairs and leave the building |goto Wetlands 50.69,8.00 < 7 |walk
talk Rhag Garmason##1075
turnin The Thandol Span##632 |goto Wetlands 49.92,18.22
accept The Thandol Span##633 |goto Wetlands 49.92,18.22
|only if not hardcore
step
Cross the bridge |goto Wetlands 51.11,11.58 < 30 |only if walking
Cross the hanging bridge |goto Arathi Highlands 45.96,88.11 < 15 |only if walking
click Cache of Explosives
Destroy the Cache of Explosives |q 633/1 |goto Arathi Highlands 48.73,88.05
|only if not hardcore
step
Cross the hanging bridge |goto Arathi Highlands 48.14,88.11 < 15 |only if walking
Cross the bridge |goto Arathi Highlands 45.47,89.24 < 30 |only if walking
talk Rhag Garmason##1075
turnin The Thandol Span##633 |goto Wetlands 49.92,18.22
accept Plea To The Alliance##634 |goto Wetlands 49.92,18.22
|only if not hardcore
step
talk Captain Nials##2700
turnin Plea To The Alliance##634 |goto Arathi Highlands 45.83,47.55
|only if not hardcore
step
talk Cedrik Prose##2835
fpath Refuge Pointe |goto Arathi Highlands 45.70,46.09
step
Follow the road and enter Hillsbrad Foothills |goto Arathi Highlands 20.17,29.54 < 40 |only if walking and not zone("Hillsbrad Foothills")
talk Darla Harris##2432
fpath Southshore |goto Hillsbrad Foothills 49.34,52.27
step
Prepare for Gnomeregan
|tip It will be a good time to start Gnomeregan soon.
|tip You should run it after arriving in Ironforge and getting all the quests, roughly 20 minutes.
|tip Start looking for a group.
|confirm
|only if guideflag("Gnomerflag")
step
Enter the building |goto Wetlands 10.79,59.77 < 10 |walk
talk Glorin Steelbrow##1217
|tip Inside the building.
turnin The Eye of Paleth##292 |goto Wetlands 10.58,60.59
accept Cleansing the Eye##293 |goto Wetlands 10.58,60.59
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Duskwood (31-32)',
  {
    image = ZGV.IMAGESDIR .. 'Duskwood',
    condition_suggested = function()
      return level >= 31 and level <= 32 and not completedq(222)
    end,
    next = 'Leveling Guides\\Stranglethorn Vale (32-32)',
    hardcore = true,
  },
  [[
step
talk Shoni the Shilent##6579
accept Gyrodrillmatic Excavationators##2928 |goto Stormwind City 55.51,12.50
|only if guideflag("Gnomerflag")
step
talk Klockmort Spannerspan##6169
accept Essential Artificials##2924  |goto Ironforge 67.98,46.13
|only if guideflag("Gnomerflag")
step
talk Tinkmaster Overspark##7944
turnin Tinkmaster Overspark##2923 |goto Ironforge 69.56,50.32 |only if haveq(2923)
accept Save Techbot's Brain!##2922 |goto Ironforge 69.56,50.32
|only if guideflag("Gnomerflag")
step
talk Gnoarn##6569
accept The Day After##2927 |goto Ironforge 69.18,50.56
|only if guideflag("Gnomerflag")
step
talk Master Mechanic Castpipe##7950
accept Data Rescue##2930 |goto Ironforge 69.82,48.08
|only if guideflag("Gnomerflag")
step
talk High Tinker Mekkatorque##7937
accept The Grand Betrayal##2929 |goto Ironforge 68.76,48.96
|only if guideflag("Gnomerflag")
step
Run up the stairs and enter the building |goto Ironforge 44.78,8.50 < 7 |walk
talk Hjoldir Stoneblade##5170
|tip Downstairs inside the building.
buy Flamberge##2521 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Hjoldir Stoneblade##5170 |goto Ironforge 44.99,6.79 |q 322
|only if Paladin and itemcount(2521) == 0
step
Enter the building |goto Dun Morogh 45.97,48.83 < 5 |walk
talk Ozzie Togglevolt##1268
|tip Inside the building.
turnin The Day After##2927 |goto Dun Morogh 45.88,49.38
accept Gnogaine##2926 |goto Dun Morogh 45.88,49.38
|only if guideflag("Gnomerflag")
stickystart "LeadenCollection"
step
Enter the building |goto Dun Morogh/0 24.29,39.77 < 7 |walk
Ride the elevator down |goto Dun Morogh/0 23.41,39.21 < 10 |walk
Follow the path |goto Dun Morogh/0 21.98,36.73 < 10 |walk
Kill Addled enemies around this area with your group
collect White Punch Card##9279 |goto Gnomeregan/0 43.27,52.87 |q 2930 |future
|only if guideflag("Gnomerflag")
step
kill Techbot##6231
collect Techbot's Memory Core##9277 |q 2922/1 |goto Gnomeregan/0 43.11,52.81
|only if guideflag("Gnomerflag")
step
Run up the stairs |goto Gnomeregan/0 43.20,52.87 < 7 |only if walking
Cross the bridge |goto Gnomeregan/0 43.38,53.01 < 10 |only if walking
click Matrix Punchograph 3005-A
Choose _"Acquire Higher Level Access Card"_
collect Yellow Punch Card##9280 |goto Gnomeregan/0 43.37,52.89 |q 2930 |future
|only if guideflag("Gnomerflag")
step
label "LeadenCollection"
use the Empty Leaden Collection Phial##9283
|tip Use it on Irradiated Invaders or Irradiated Pillagers.
collect Full Leaden Collection Phial##9284 |q 2926/1 |goto Gnomeregan/0 43.38,53.23
You can find more around [43.08,53.54]
|only if guideflag("Gnomerflag")
step
_Note_
|tip Some groups do not want to run all the way back to turn this quest in.
|tip It is okay to skip this step if so, the quest does not have good rewards or experience.
|tip We will turn in Gnogaine later.
Enter the building |goto Dun Morogh 45.97,48.83 < 5 |walk
talk Ozzie Togglevolt##1268
|tip Inside the building.
turnin Gnogaine##2926 |goto Dun Morogh 45.88,49.38
accept The Only Cure is More Green Glow##2962 |goto Dun Morogh 45.88,49.38
|only if guideflag("Gnomerflag")
step
Enter the building |goto Dun Morogh/0 24.29,39.77 < 7 |walk
Ride the elevator down |goto Dun Morogh/0 23.41,39.21 < 10 |walk
Follow the path |goto Dun Morogh/0 21.98,36.73 < 10 |walk
Follow the path |goto Dun Morogh/0 19.93,36.02 < 10 |walk
Enter the Gnomeregan Dungeon with Your Group |goto Gnomeregan/0 0.00,0.00 < 500 |c |q 2928
|only if guideflag("Gnomerflag")
stickystart "Collect_24_Robo-Mechanical_Guts"
stickystart "Collect_12_Essential_Artificial"
step
_Inside the Gnomeregan Dungeon:_
click Matrix Punchograph 3005-B
|tip Stay on the upper levels of The Hall of Gears and follow the path around to the southwest to enter The Dormitory.
|tip After entering The Dormitory, follow the path around to the left to continue to The Dormitory's lower level.
|tip It is up against the wall in the lowest level of The Dormitory area.
Choose _"Acquire Higher Level Access Card"_
collect Blue Punch Card##9282 |q 2930 |future
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
kill Viscous Fallout##7079
|tip It is the first boss of the dungeon.
|tip It is in the lower level of the Hall of Gears.
|tip Leave The Dormitory and reenter The Hall of Gears and then jump down to the lower level.
use the Heavy Leaden Collection Phial##9364
|tip Use it on a living Irradiated Slime.
collect High Potency Radioactive Fallout##9365 |q 2962/1
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
kill Electrocutioner 6000##6235
|tip He is the third boss of the dungeon.
|tip He is in the center of the upper level of the Launch Bay.
|tip Follow the west path from The Hall of Gears to enter the Launch Bay.
collect Workshop Key##6893 |q 2930 |future
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
click Matrix Punchograph 3005-C
|tip It's up in the Launch Bay platform, with Electrocutioner 6000.
Choose _"Acquire Higher Level Access Card"_
collect Red Punch Card##9281 |q 2930 |future
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
click Miatrix Punchograph 3005-D
|tip It is found in the lower level of the Engineering Labs, along with Crowd Pummeler 9-60.
|tip Stay on the upper level of the Launch Bay and follow the southeast path to reach the Engineering Labs.
|tip After entering the Engineering Labs, go left and follow it a short distance to ride an elevator down to the lower level.
|tip It is on the opposite side of the large structure in the center of the room after getting off the elevator.
Choose _"Acquire Higher Level Access Card"_
collect Prismatic Punch Card##9316 |q 2930/1
|only if guideflag("Gnomerflag")
step
label "Collect_24_Robo-Mechanical_Guts"
_Inside the Gnomeregan Dungeon:_ |notinsticky
Kill enemies around this area
collect 24 Robo-mechanical Guts##9309 |q 2928/1
|only if guideflag("Gnomerflag")
step
label "Collect_12_Essential_Artificial"
_Inside the Gnomeregan Dungeon:_ |notinsticky
click Artificial Extrapolator##142344+
|tip They look like square upright machines scattered all over the instance.
collect 12 Essential Artificial##9278 |q 2924/1
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
kill Mekgineer Thermaplugg##7800 |q 2929/1
|tip He is the last boss of the dungeon.
|tip Leave the Engineering Labs through the lower level and follow the southwest path up and out, then continue west after the path splits.
|only if guideflag("Gnomerflag")
step
use Grime-Encrusted Ring##9326
accept Grime-Encrusted Ring##2945
|only if itemcount(9326) > 0
step
click The Sparklematic 5200##142487
|tip Head back to the Dormatory.
|tip You may have to click on multiple Sparklematics to get the quest.
turnin Grime-Encrusted Ring##2945 |only if haveq(2945)
accept Return of the Ring##2947 |only if completedq(2945)
accept The Sparklematic 5200!##2952 |instant
|only if guideflag("Gnomerflag")
step
Leave the Gnomeregan Dungeon
Click Here to Continue |confirm |q 2928
|only if guideflag("Gnomerflag")
step
Enter the building |goto Dun Morogh 45.97,48.83 < 5 |walk
talk Ozzie Togglevolt##1268
|tip Inside the building.
turnin Gnogaine##2926 |goto Dun Morogh 45.88,49.38 |only if readyq(2926)
turnin The Only Cure is More Green Glow##2962 |goto Dun Morogh 45.88,49.38 |only if readyq(2962)
|only if guideflag("Gnomerflag")
step
collect Silver Bar##2842 |q 2948/2 |goto Ironforge 24.16,74.67 |future
collect Moss Agate##1206 |q 2948/3 |goto Ironforge 24.16,74.67 |future
|tip You can buy these items from the Auction House
|only if guideflag("Gnomerflag") and haveq(2947)
step
talk Talvash del Kissel##6826
turnin Return of the Ring##2947 |goto Ironforge/0 36.35,3.61
accept Gnome Improvement##2948 |goto Ironforge/0 36.35,3.61
turnin Gnome Improvement##2948 |goto Ironforge/0 36.35,3.61
|only if completedq(2945)
step
talk Klockmort Spannerspan##6169
turnin Essential Artificials##2924 |goto Ironforge 67.98,46.13
|only if guideflag("Gnomerflag")
step
talk Tinkmaster Overspark##7944
turnin Save Techbot's Brain!##2922 |goto Ironforge 69.56,50.32
|only if guideflag("Gnomerflag")
step
talk Master Mechanic Castpipe##7950
turnin Data Rescue##2930 |goto Ironforge 69.82,48.08
|only if guideflag("Gnomerflag")
step
talk High Tinker Mekkatorque##7937
turnin The Grand Betrayal##2929 |goto Ironforge 68.76,48.96
|only if guideflag("Gnomerflag")
step
Enter the building |goto Ironforge 66.36,82.45 < 10 |walk
talk Pilot Longbeard##2092
|tip Inside the building.
accept The Brassbolts Brothers##1179 |goto Ironforge 72.73,94.01
step
Enter the building |goto Ironforge 30.43,26.37 < 7 |walk
talk Ginny Longberry##5151
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Ginny Longberry##5151 |goto Ironforge 31.32,27.79 |q 322
|only if Mage
step
talk Shoni the Shilent##6579
turnin Gyrodrillmatic Excavationators##2928 |goto Stormwind City 55.51,12.50
|only if guideflag("Gnomerflag")
step
Enter the building |goto Stormwind City 51.82,13.27 < 10 |walk
talk Grimand Elmore##1416
|tip Inside the building.
turnin Blessed Arm##322 |goto Stormwind City 51.76,12.06
accept Armed and Ready##325 |goto Stormwind City 51.76,12.06
|tip You may not be able to accept this quest if you skipped previous quests in the chain.
step
Enter the building |goto Stormwind City 43.05,34.48 < 10 |walk
talk Archbishop Benedictus##1284
|tip Inside the building.
turnin Cleansing the Eye##293 |goto Stormwind City 39.59,27.25
step
talk Thomas##4982
|tip He walks around this area inside the building.
accept The Missing Diplomat##1274 |goto Stormwind City 40.37,29.40
step
Leave the building |goto Stormwind City 43.05,34.48 < 10 |walk |only if subzone("Cathedral of Light")
Enter the building |goto Stormwind City 69.07,28.77 < 15 |walk
Follow the path |goto Stormwind City 77.88,21.14 < 10 |walk
talk Bishop DeLavey##4960
|tip Inside the building.
turnin The Missing Diplomat##1274 |goto Stormwind City 78.30,25.44
accept The Missing Diplomat##1241 |goto Stormwind City 78.30,25.44
step
Follow the path |goto Stormwind City 77.01,19.25 < 15 |walk |only if subzone("Stormwind Keep")
Leave the building |goto Stormwind City 69.07,28.77 < 10 |walk |only if subzone("Stormwind Keep")
Follow the path |goto Stormwind City 60.27,68.37 < 30 |only if walking
talk Jorgen##4959
turnin The Missing Diplomat##1241 |goto Stormwind City 73.17,78.42
accept The Missing Diplomat##1242 |goto Stormwind City 73.17,78.42
step
Enter the building |goto Stormwind City 56.65,57.72 < 7 |walk
talk Woo Ping##11867
|tip This will allow you to equip two-handed swords.
Train Two-Handed Swords |complete weaponskill("TH_SWORD") > 0 |goto Stormwind City 57.13,57.71
|only if Hunter
step
talk Marda Weller##1287
buy Heavy Quiver##7371 |n
|tip If you can afford it.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 1242
|only if Hunter and itemcount(7371) == 0
step
talk Marda Weller##1287
buy Heavy Crossbow##15809 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 1242
|only if Hunter and itemcount(15809) == 0
step
Enter the building |goto Stormwind City 59.96,64.19 < 10 |walk
talk Elling Trias##482
|tip Upstairs inside the building.
turnin The Missing Diplomat##1242 |goto Stormwind City 59.91,64.17
accept The Missing Diplomat##1243 |goto Stormwind City 59.91,64.17
step
Enter the building |goto Stormwind City 55.30,68.13 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Deposit these items into the bank.
bank Crate of Crash Helmets##5849 |goto Stormwind City 57.66,72.78 |q 1179 |future |only if haveq(1179) or completedq(1179)
bank Musquash Root##2784 |goto Stormwind City 57.66,72.78 |q 335 |future |only if haveq(335) or completedq(335)
step
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect A Torn Journal Page##916 |goto Stormwind City 57.66,72.78 |q 74 |only if haveq(74) or completedq(74)
collect Bottle of Zombie Juice##1451 |goto Stormwind City 57.66,72.78 |q 159 |only if haveq(159) or completedq(159)
step
talk Collin Mauren##4078
turnin Retrieval for Mauren##1078 |goto Stormwind City 43.09,80.39
step
talk Malissa##3135
|tip Walking around here.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 181 |future
|only if Rogue
step
Enter the building |goto Duskwood 79.79,47.69 < 10 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
accept Look To The Stars##181 |goto Duskwood 79.80,48.02
step
talk Calor##663
|tip He walks around this area in front of the building.
accept Worgen in the Woods##173 |goto Duskwood 75.30,48.05
step
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
accept The Night Watch##58 |goto Duskwood 73.60,46.90
step
Enter the building |goto Duskwood 73.83,46.02 < 10 |walk
talk Innkeeper Trelayne##6790
|tip Inside the building.
home Darkshire |goto Duskwood 73.87,44.41
step
Leave the building |goto Duskwood 73.83,46.02 < 10 |c |q 1243
|only if subzone("Scarlet Raven Tavern")
step
map Duskwood
path follow strictbounce; loop off; ants straight; dist 30; markers none
path	74.82,44.16	74.53,41.22	73.87,39.60	72.74,38.35	72.28,37.28
path	72.24,35.19	72.58,33.53	73.31,32.54
talk Watcher Backus##840
|tip He walks back and forth along this road.
turnin The Missing Diplomat##1243
accept The Missing Diplomat##1244
step
kill 6 Nightbane Shadow Weaver##533 |q 173/1 |goto Duskwood 61.99,40.65
|tip These share a spawn with other Nightbane enemies around this area. |only if hardcore
You can find more around [64.69,46.79]
step
talk Calor##663
|tip He walks around this area in front of the building.
turnin Worgen in the Woods##173 |goto Duskwood 75.30,48.05
accept Worgen in the Woods##221 |goto Duskwood 75.30,48.05
stickystart "Kill_Nightbane_Dark_Runners"
step
Kill Nightbane enemies around this area
|tip They look like worgen.
collect An Old History Book##2794 |goto Duskwood 61.76,41.04 |q 337 |future
You can find more around [63.76,50.90]
step
use An Old History Book##2794
accept An Old History Book##337	|goto Duskwood 61.76,41.04
|only if itemcount(337) > 0
step
label "Kill_Nightbane_Dark_Runners"
kill 12 Nightbane Dark Runner##205 |q 221/1 |goto Duskwood 61.76,41.04
|tip These share a spawn with other Nightbane enemies around this area. |only if hardcore
You can find more around [63.76,50.90]
step
talk Marshal Haggard##294
turnin The Legend of Stalvan##74 |goto Elwynn Forest 84.61,69.38
accept The Legend of Stalvan##75 |goto Elwynn Forest 84.61,69.38
step
Enter the building |goto Elwynn Forest 85.12,69.70 < 10 |walk
click Marshal Haggard's Chest
|tip Upstairs inside the building.
|tip You will be attacked.
collect A Faded Journal Page##921 |q 75/1 |goto Elwynn Forest 85.69,69.55
step
Leave the building |goto Elwynn Forest 85.11,69.71 < 10 |walk |only if subzone("Eastvale Logging Camp") and _G.IsIndoors()
talk Marshal Haggard##294
turnin The Legend of Stalvan##75 |goto Elwynn Forest 84.61,69.38
accept The Legend of Stalvan##78 |goto Elwynn Forest 84.61,69.38
step
talk Abercrombie##289
|tip Inside the building.
turnin Juice Delivery##159 |goto Duskwood 28.11,31.47
accept Ghoulish Effigy##133 |goto Duskwood 28.11,31.47
|tip This is part of a questline that starts in the "Duskwood (25-27)" guide.
stickystart "Kill_Plague_Spreaders"
step
Kill enemies around this area
|tip Inside and outside the crypt.
|tip Only enemies that look like ghouls will drop the quest item.
collect 7 Ghoul Rib##884 |q 133/1 |goto Duskwood 23.63,34.92
step
Kill enemies around this area
|tip Only enemies that look like ghouls will drop the quest item.
collect 10 Ghoul Fang##1129 |q 101/1 |goto Duskwood 23.63,34.92
|tip Watch for respawns while in the area. |only if hardcore
You can find more inside the crypt at [23.59,34.89]
step
label "Kill_Plague_Spreaders"
kill 20 Plague Spreader##604 |q 58/1 |goto Duskwood 23.63,34.92
|tip Inside and outside the crypt. |notinsticky
|tip They share spawn points with the other ghouls inside the crypt, so kill those too, if you can't find any.
step
Leave the crypt |goto Duskwood 23.63,34.92 < 15 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
talk Abercrombie##289
|tip Inside the building.
turnin Ghoulish Effigy##133 |goto Duskwood 28.11,31.47
accept Ogre Thieves##134 |goto Duskwood 28.11,31.47
step
Enter the building |goto Duskwood 23.88,71.75 < 10 |walk
click Defias Strongbox##21052
|tip Inside the building.
collect Defias Docket##5947 |q 1244/1 |goto Duskwood 23.93,72.07
step
click Abercrombie's Crate##119
collect Abercrombie's Crate##1349 |q 134/1 |goto Duskwood 33.42,76.34
step
Enter the cave |goto Duskwood 34.08,77.02 < 15 |walk
Follow the path |goto Duskwood 36.78,77.62 < 10 |walk
Continue following the path |goto Duskwood 36.83,81.89 < 10 |walk
kill Zzarc' Vul##300
|tip Inside the cave.
|tip He can spawn in multiple locations inside the cave, so if he's not here, search around.
|tip Watch out for casters aggroing from far away as well as inconsistent respawns. |only if hardcore
collect Ogre's Monocle##1968 |q 181/1 |goto Duskwood 36.81,83.79
step
Leave the cave |goto Duskwood 34.08,77.02 < 15 |walk |only if subzone("Vul'Gol Ogre Mound") and _G.IsIndoors()
Follow the path up to leave the ogre area |goto Duskwood 31.34,67.17 < 20 |only if walking and subzone("Vul'Gol Ogre Mound")
talk Abercrombie##289
|tip Inside the building.
turnin Ogre Thieves##134 |goto Duskwood 28.11,31.47
accept Note to the Mayor##160 |goto Duskwood 28.11,31.47
step
click A Weathered Grave##61
|tip Leave the crypt, if you went inside there in the previous step.
accept The Weathered Grave##225 |goto Duskwood 17.72,29.08
step
talk Sven Yorgen##311
turnin Armed and Ready##325 |goto Duskwood 7.78,34.07
step
Kill enemies around this area
|tip Inside and outside the crypt.
|tip Getting this far into level 31 will allow you to reach level 32 after turning in quests soon.
|tip You will be hearthing back to Darkshire in the next step, so it doesn't matter where you end up completing this step.
ding 31,39000 |goto Duskwood 23.63,34.92
step
Enter the building |goto Duskwood 75.57,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin The Totem of Infliction##101 |goto Duskwood 75.81,45.29
|only if readyq(101)
step
talk Tavernkeep Smitts##273
|tip He walks around this area inside the building.
turnin The Legend of Stalvan##78 |goto Duskwood 73.78,44.48
accept The Legend of Stalvan##79 |goto Duskwood 73.78,44.48
step
Leave the building |goto Duskwood 73.83,46.01 < 10 |walk |only if subzone("Scarlet Raven Tavern")
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Night Watch##58 |goto Duskwood 73.59,46.89
turnin The Legend of Stalvan##79 |goto Duskwood 73.59,46.89
accept The Legend of Stalvan##80 |goto Duskwood 73.59,46.89
step
Enter the building |goto Duskwood 72.92,46.81 < 10 |walk
talk Clerk Daltry##267
|tip He walks around this area inside the building.
turnin The Legend of Stalvan##80 |goto Duskwood 72.52,46.85
accept The Legend of Stalvan##97 |goto Duskwood 72.52,46.85
step
talk Sirra Von'Indi##268
|tip Inside the building.
turnin The Weathered Grave##225 |goto Duskwood 72.64,47.62
accept Morgan Ladimore##227 |goto Duskwood 72.64,47.62
step
talk Lord Ello Ebonlocke##263
|tip Inside the building.
turnin Note to the Mayor##160 |goto Duskwood 71.93,46.42
accept Translate Abercrombie's Note##251 |goto Duskwood 71.93,46.42
step
talk Sirra Von'Indi##268
|tip He walks around inside the building.
turnin Translate Abercrombie's Note##251 |goto Duskwood 72.64,47.62
accept Wait for Sirra to Finish##401 |goto Duskwood 72.64,47.62
step
Watch the dialogue
talk Sirra Von'Indi##268
|tip He walks around inside the building.
turnin Wait for Sirra to Finish##401 |goto Duskwood 72.64,47.62
accept Translation to Ello##252 |goto Duskwood 72.64,47.62
step
talk Lord Ello Ebonlocke##263
|tip Inside the building.
turnin Translation to Ello##252 |goto Duskwood 71.93,46.42
step
_Destroy This Item:_
|tip It is no longer needed.
trash Translated Letter from The Embalmer##3248	|goto Duskwood 72.93,46.80
step
Leave the building |goto Duskwood 72.93,46.80 < 10 |walk |only if subzone("Darkshire Town Hall")
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Legend of Stalvan##97 |goto Duskwood 73.59,46.89
accept The Legend of Stalvan##98 |goto Duskwood 73.59,46.89
turnin Morgan Ladimore##227 |goto Duskwood 73.59,46.89
step
_Destroy This Item:_
|tip It is no longer needed.
trash The Story of Morgan Ladimore##2154 |goto Duskwood 75.30,48.05
step
talk Calor##663
|tip He walks around this area in front of the building.
turnin Worgen in the Woods##221 |goto Duskwood 75.30,48.05
accept Worgen in the Woods##222 |goto Duskwood 75.30,48.05
step
map Duskwood
path follow strictbounce; loop off; ants straight; dist 30; markers none
path	74.82,44.16	74.53,41.22	73.87,39.60	72.74,38.35	72.28,37.28
path	72.24,35.19	72.58,33.53	73.31,32.54
talk Watcher Backus##840
|tip He walks back and forth along this road.
turnin The Missing Diplomat##1244
accept The Missing Diplomat##1245
step
kill Stalvan Mistmantle##315
|tip Inside, or just outside, the building.
collect Mistmantle Family Ring##3629 |q 98/1 |goto Duskwood 77.35,36.19
step
click Tear of Tilloa##321
collect Tear of Tilloa##2779 |q 335/1 |goto Duskwood 78.35,35.95
step
Enter the building |goto Duskwood 75.55,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin The Legend of Stalvan##98 |goto Duskwood 75.82,45.29
step
Enter the building |goto Duskwood 79.79,47.69 < 10 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
turnin Look To The Stars##181 |goto Duskwood 79.80,48.02
stickystart "Kill_Nightbane_Vile_Fangs"
step
kill 8 Nightbane Tainted One##920 |q 222/2 |goto Duskwood 73.03,75.08
|tip Inside the mine.
|tip Try to stay near the entrance. |only if hardcore
|tip Watch for patrols and respawns while in the area. |only if hardcore
step
label "Kill_Nightbane_Vile_Fangs"
kill 8 Nightbane Vile Fang##206 |q 222/1 |goto Duskwood 72.57,71.13
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Outside the mine.
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stranglethorn Vale (32-32)',
  {
    image = ZGV.IMAGESDIR .. 'Stranglethorn Vale',
    condition_suggested = function()
      return level == 32 and not completedq(1264)
    end,
    next = 'Leveling Guides\\Hillsbrad Foothills (32-33)',
    hardcore = true,
  },
  [[
step
Follow the path up to the Rebel Camp |goto Stranglethorn Vale 39.05,5.20 < 20 |only if walking
talk Private Thorsen##738
|tip He periodically (around every 30 minutes) walks along the path to the south, from the Rebel Camp.
|tip If he's here, wait for him to start walking, and follow him.
|tip He will eventually get attacked by two Kurzen enemies.
|tip Help him kill the enemies and he will offer you a quest.
|tip It may take a while for him to start walking, but you have to wait for your hearthstone to cooldown anyway.
accept Jungle Secrets##215 |goto Stranglethorn Vale 37.98,3.41
Also check around [Stranglethorn Vale 40.34,8.44]
step
talk Barnil Stonepot##716
accept Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.53
step
talk Hemet Nesingwary##715
turnin Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.81
step
talk Ajeck Rouack##717
accept Tiger Mastery##185 |goto Stranglethorn Vale 35.61,10.62
step
talk Sir S. J. Erlgadin##718
accept Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
stickystart "Kill_Young_Stranglethorn_Tigers"
step
Follow the path up |goto Stranglethorn Vale 30.71,8.28 < 30 |c |q 185
|only if Hunter
step
_NOTE:_
Tame a Stranglethorn Tiger
|tip Use your "Tame Beast" ability on a Stranglethorn Tiger.
|tip They look like orange tigers around this area.
|tip Make sure to tame a level 32 Stranglethorn Tiger.
|tip You can abandon your pet right before taming a Stranglethorn Tiger.
|tip This will be your new permanent pet.
|tip You will gain the "Dash" pet ability.
Train Your Pet
|tip Be sure to train your new pet with the highest ranks of Growl and Bite you currently have.
Click Here to Continue |confirm |goto Stranglethorn Vale 29.44,9.80 |q 185
|only if Hunter
step
label "Kill_Young_Stranglethorn_Tigers"
kill 10 Young Stranglethorn Tiger##681 |q 185/1 |goto Stranglethorn Vale 35.23,12.83
You can find more around: |notinsticky
[Stranglethorn Vale 33.42,11.47]
[Stranglethorn Vale 31.79,9.19]
step
kill 10 Young Panther##683 |q 190/1 |goto Stranglethorn Vale 41.70,12.28
You can find more around: |notinsticky
[42.40,10.56]
[41.06,8.26]
step
Follow the path up to the Rebel Camp |goto Stranglethorn Vale 39.05,5.20 < 20 |only if walking
talk Lieutenant Doren##469
turnin Jungle Secrets##215 |goto Stranglethorn Vale 38.04,3.01
step
talk Ajeck Rouack##717
turnin Tiger Mastery##185 |goto Stranglethorn Vale 35.61,10.62
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
step
Kill enemies around this area
|tip Grind enemies until your Hearthstone is ready to use.
|tip You will be hearthing back to Darkshire.
|tip The guide doesn't take into account this grind, so any extra xp you get now will put you a little bit ahead, and reduce any grinding you have to do later.
|tip This step will complete when your Hearthstone is ready to use.
Grind XP Until You Can Hearth to Darkshire |complete C_Container.GetItemCooldown(6948) == 0 |q 222
step
talk Malissa##3135
|tip Walking around here.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 222
|only if Rogue
step
talk Calor##663
|tip He walks around this area in front of the building.
turnin Worgen in the Woods##222 |goto Duskwood 75.30,48.05
accept Worgen in the Woods##223 |goto Duskwood 75.30,48.05
step
Enter the building |goto Duskwood 75.22,48.25 < 10 |walk
talk Jonathan Carevin##661
|tip He walks around inside the building.
turnin Worgen in the Woods##223 |goto Duskwood 75.32,49.02
|tip The Consecrated Wand reward is the fastest wand in the game and should be held on to. |only if Priest
step
Enter the building |goto Stormwind City 59.96,64.19 < 10 |walk
talk Elling Trias##482
|tip Upstairs inside the building.
turnin The Missing Diplomat##1245 |goto Stormwind City 59.91,64.17
accept The Missing Diplomat##1246 |goto Stormwind City 59.91,64.17
|tip This requires that you complete the "The Missing Diplomat" questline started in the "Duskwood (31-32)" guide.
step
Enter the building |goto Stormwind City 55.29,68.13 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect Crate of Crash Helmets##5849 |goto Stormwind City 57.66,72.78 |q 1179 |only if haveq(1179) or completedq(1179)
collect Musquash Root##2784 |goto Stormwind City 57.66,72.78 |q 335 |only if haveq(335) or completedq(335)
step
talk Archmage Malin##2708
accept Malin's Request##690 |goto Stormwind City 39.77,81.44
step
Enter the building |goto Stormwind City 39.84,85.21 < 10 |walk
talk Connor Rivers##5081
|tip Inside the building.
accept James Hyal##1301 |goto Stormwind City 40.62,91.83
step
Enter the building |goto Stormwind City 29.19,74.12 < 10 |walk
talk Zardeth of the Black Claw##1435
|tip Downstairs inside the building.
turnin A Noble Brew##335 |goto Stormwind City 26.45,78.65
accept A Noble Brew##336 |goto Stormwind City 26.45,78.65
step
talk Ursula Deline##5495
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |q 1247
|tip Train your spells.
|only if Warlock
step
Leave the building |goto Stormwind City 29.19,74.12 < 10 |c |q 336
|only if subzone("The Slaughtered Lamb")
step
_NOTE:_
Be Prepared to Fight
|tip Dashel Stonefist will attack you after you accept this quest in the next guide step.
|tip Also, two level 25-26 enemies will appear and help him fight.
|tip Ignore the helpers, and just focus on killing Dashel Stonefist as fast as you can.
|tip Once he reaches ~25% health, he will surrender and dismiss the helpers, ending the fight.
Click Here to Continue |confirm |q 1447 |future
step
Enter the alley |goto Stormwind City 70.07,48.07 < 10 |only if walking
talk Dashel Stonefist##4961
turnin The Missing Diplomat##1246 |goto Stormwind City 70.53,44.88
accept The Missing Diplomat##1447 |goto Stormwind City 70.53,44.88
step
kill Dashel Stonefist##4961
|tip Ignore the helpers that appear to help him fight, and just focus on killing Dashel Stonefist as fast as you can.
|tip Once he reaches ~25% health, he will surrender and dismiss the helpers, ending the fight.
Watch the dialogue
Defeat Dashel Stonefist |q 1447/1 |goto Stormwind City 70.53,44.88
step
talk Dashel Stonefist##4961
turnin The Missing Diplomat##1447 |goto Stormwind City 70.53,44.88
accept The Missing Diplomat##1247 |goto Stormwind City 70.53,44.88
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 1247
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 1247
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 1247
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 1247
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 1247
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 1247
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 1247
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip Train your spells.
step
Follow the path |goto Stormwind City 74.90,51.57 < 10 |only if walking
Enter the building |goto Stormwind City 78.04,47.98 < 10 |walk
talk Wu Shen##5479
|tip Upstairs inside the building.
accept The Islander##1718 |goto Stormwind City 78.68,45.79
|only if Warrior
step
Enter the building |goto Stormwind City 59.96,64.19 < 10 |walk
talk Elling Trias##482
|tip Upstairs inside the building.
turnin The Missing Diplomat##1247 |goto Stormwind City 59.91,64.17
accept The Missing Diplomat##1248 |goto Stormwind City 59.91,64.17
step
Enter the building |goto Stormwind City 69.09,28.70 < 15 |walk
Follow the path |goto Stormwind City 72.71,25.85 < 10 |walk
talk Lord Baurles K. Wishock##1439
|tip Inside the building.
turnin A Noble Brew##336 |goto Stormwind City 75.23,31.67
step
Leave the Petitioner's Chamber |goto Stormwind City 72.80,26.02 < 10 |walk |only if subzone("Petitioner's Chamber")
Follow the path |goto Stormwind City 72.72,22.92 < 10 |walk
Continue following the path |goto Stormwind City 70.17,11.34 < 10 |walk
talk Milton Sheaf##1440
|tip Inside the building.
turnin An Old History Book##337 |goto Stormwind City 74.17,7.49
accept Southshore##538 |goto Stormwind City 74.17,7.49
step
talk Auctioneer Jaxon##15659
|tip Purchase these items from the Auction House
|tip They are used for a quest later.
|tip You can skip this step if you cannot afford it.
collect Bolt of Woolen Cloth##2997 |q 565/1 |future |goto Stormwind City 53.61,59.76
collect Hillman's Cloak##3719 |q 565/3 |future |goto Stormwind City 53.61,59.76
collect 4 Lesser Bloodstone Ore##4278 |q 627 |future |goto Stormwind City 53.61,59.76
|only if not selfmade
step
talk Olivia Burnside##2455
|tip Inside the building.
|tip Deposit these items into the bank.
bank 4 Lesser Bloodstone Ore##4278 |goto Stormwind City 57.66,72.78 |q 627 |future |only if itemcount(4278) >= 4
step
Enter the building |goto Wetlands 10.79,59.77 < 10 |walk
talk Vincent Hyal##5082
|tip Inside the building.
turnin James Hyal##1301 |goto Wetlands 10.81,60.42
accept James Hyal##1302 |goto Wetlands 10.81,60.42
step
_NOTE:_
Be Ready to Attack Tapoke "Slim" Jahn
|tip He is standing inside the building, near the entrance of the inn in Menethil Harbor.
|tip You can see him from where you turn in and accept quests in the next guide step.
|tip Immediately after you accept the quest in the next guide step, Tapoke "Slim" Jahn will stealth and start walking toward the building entrance.
|tip Follow him and attack him after he leaves the inn.
|tip He will summon another enemy to help him fight.
|tip Crowd control or ignore his helper, and just focus on killing Tapoke "Slim" Jahn as quickly as you can.
|tip He will surrender at ~15% health and his helper will disappear.
|tip As a Mage, you can try to Sheep him immediately once he becomes attackable, to prevent him from summoning his helper.		|only if Mage
Click Here to Continue |confirm |q 1249 |future
step
talk Mikhail##4963
|tip Inside the building.
turnin The Missing Diplomat##1248 |goto Wetlands 10.60,60.77
accept The Missing Diplomat##1249 |goto Wetlands 10.60,60.77
step
kill Tapoke "Slim" Jahn##4962
|tip He stealths inside the inn and walks out of the building to this location.
|tip He unstealths and tries to run away, so you will have to attack him.
|tip He will summon another enemy to help him fight.
|tip Crowd control or ignore his helper, and just focus on killing Tapoke "Slim" Jahn as quickly as you can.
|tip He will surrender at ~15% health and his helper will disappear.
|tip As a Mage, you can try to Sheep him immediately once he becomes attackable, to prevent him from summoning his helper.		|only if Mage
|tip If you have trouble, try to find someone to help you.
Defeat Tapoke Jahn |q 1249/1 |goto Wetlands 10.79,59.60
step
Enter the building |goto Wetlands 10.79,59.77 < 10 |walk
talk Mikhail##4963
|tip Inside the building.
turnin The Missing Diplomat##1249 |goto Wetlands 10.60,60.77
step
talk Tapoke "Slim" Jahn##4962
|tip Inside the building.
accept The Missing Diplomat##1250 |goto Wetlands 10.54,60.26
step
talk Mikhail##4963
|tip Inside the building.
turnin The Missing Diplomat##1250 |goto Wetlands 10.60,60.77
accept The Missing Diplomat##1264 |goto Wetlands 10.60,60.77
step
talk Innkeeper Helbrek##1464
|tip Inside the building.
home Deepwater Tavern |goto Wetlands 10.70,60.95
step
Leave the building |goto Wetlands 10.79,59.77 < 10 |walk |only if subzone("Deepwater Tavern")
talk Bethaine Flinthammer##10046
|tip Stable your permanent pet.
|tip You are about to tame a temporary pet soon, so you can learn "Bite 5".
Click Here to Continue |confirm |goto Wetlands 10.53,59.73 |q 564 |future
|only if Hunter
step
_NOTE:_
Tame a Plains Creeper
|tip Use your "Tame Beast" ability on a Plains Creeper.
|tip They look like grey spiders around this area.
|tip Make sure to tame a level 32 Plains Creeper.
Learn the "Bite 5" Pet Ability
|tip Kill enemies around this area until you see a message in your chat saying you learned "Bite 5".
|tip You will teach "Bite 5" to your permanent pet soon.
Click Here to Continue |confirm |goto Arathi Highlands 42.24,58.83 |q 564 |future
|only if Hunter
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Hillsbrad Foothills (32-33)',
  {
    image = ZGV.IMAGESDIR .. 'Hillsbrad Foothills',
    condition_suggested = function()
      return level >= 32 and level <= 33 and not completedq(510)
    end,
    next = 'Leveling Guides\\Arathi Highlands (33-33)',
    hardcore = true,
  },
  [[
step
talk Darren Malvew##2382
accept Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
talk Loremaster Dibbs##2277
turnin Southshore##538 |goto Hillsbrad Foothills 50.57,57.09
step
talk Wesley##9978
|tip Abandon your temporary pet and get your permanent pet from the stable.
|tip Teach "Bite 5" to your permanent pet.
Click Here to Continue |confirm |goto Hillsbrad Foothills 50.42,58.80 |q 536 |future
|only if Hunter
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
accept Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.38
step
talk Chef Jessen##2430
|tip Inside the building.
accept Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
stickystart "Kill_Torn_Fin_Oracles"
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
kill 10 Torn Fin Tidehunter##2377 |q 536/1 |goto Hillsbrad Foothills 46.55,64.38
|tip Enemies near the murloc huts tend to pull in groups. |only if hardcore
|tip Torn Fin Oracles may heal when at low health. |only if hardcore
|tip Torn Fin Tidehunters may root you in place. |only if hardcore
|tip Enemies around this area may run away in fear when at low health. |only if hardcore
|tip You can find more in the water along the shore.
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
label "Kill_Torn_Fin_Oracles"
kill 10 Torn Fin Oracle##2376 |q 536/2 |goto Hillsbrad Foothills 46.55,64.38
|tip You can find more in the water along the shore.
|tip Enemies near the murloc huts tend to pull in groups. |only if hardcore |notinsticky
|tip Torn Fin Oracles may heal when at low health. |only if hardcore |notinsticky
|tip Torn Fin Tidehunters may root you in place. |only if hardcore |notinsticky
|tip Enemies around this area may run away in fear when at low health. |only if hardcore |notinsticky
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
turnin Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.38
accept Farren's Proof##559 |goto Hillsbrad Foothills 51.46,58.38
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
Kill Torn Fin enemies around this area
|tip You can find more in the water along the shore.
|tip Enemies near the murloc huts tend to pull in groups. |only if hardcore
|tip Torn Fin Oracles may heal when at low health. |only if hardcore
|tip Torn Fin Tidehunters may root you in place. |only if hardcore
|tip Enemies around this area may run away in fear when at low health. |only if hardcore
collect 10 Murloc Head##3716 |q 559/1 |goto Hillsbrad Foothills 46.55,64.38
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
turnin Farren's Proof##559 |goto Hillsbrad Foothills 51.46,58.38
accept Farren's Proof##560 |goto Hillsbrad Foothills 51.46,58.38
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
talk Marshal Redpath##2263
turnin Farren's Proof##560 |goto Hillsbrad Foothills 49.48,58.73
accept Farren's Proof##561 |goto Hillsbrad Foothills 49.48,58.73
step
Enter the building |goto Hillsbrad Foothills 49.00,59.12 < 10 |walk
talk Magistrate Henry Maleb##2276
|tip Inside the building.
accept Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
step
Leave the building |goto Hillsbrad Foothills 49.00,59.12 < 10 |walk |only if subzone("Southshore Town Hall")
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
turnin Farren's Proof##561 |goto Hillsbrad Foothills 51.46,58.38
accept Stormwind Ho!##562 |goto Hillsbrad Foothills 51.46,58.38
stickystart "Kill_Daggerspine_Sirens"
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
kill 10 Daggerspine Shorehunter##2369 |q 562/1 |goto Hillsbrad Foothills 53.42,64.21
|tip You can find more in the water along the shore.
|tip Daggerspine enemies may run away in fear when at low health.	|only if hardcore
|tip Daggerspine Siren are ranged attackers that deal heavy damage.	|only if hardcore
|tip Watch for patrols and respawn while in the area.			|only if hardcore
You can find more around: |notinsticky
[57.57,66.32]
[60.95,75.24]
step
label "Kill_Daggerspine_Sirens"
kill 10 Daggerspine Siren##2371 |q 562/2 |goto Hillsbrad Foothills 53.42,64.21
|tip You can find more in the water along the shore.
|tip Daggerspine enemies may run away in fear when at low health.	|only if hardcore |notinsticky
|tip Daggerspine Siren are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
|tip Watch for patrols and respawn while in the area.			|only if hardcore |notinsticky
You can find more around: |notinsticky
[57.57,66.32]
[60.95,75.24]
step
Kill enemies around this area
|tip You can find more in the water along the shore.
|tip You should already be level 33, or pretty close.
|tip Daggerspine enemies may run away in fear when at low health.	|only if hardcore |notinsticky
|tip Daggerspine Siren are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
|tip Watch for patrols and respawn while in the area.			|only if hardcore |notinsticky
ding 33 |goto Hillsbrad Foothills 53.42,64.21
You can find more around: |notinsticky
[57.57,66.32]
[60.95,75.24]
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
turnin Stormwind Ho!##562 |goto Hillsbrad Foothills 51.46,58.38
accept Reassignment##563 |goto Hillsbrad Foothills 51.46,58.38
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
talk Bartolo Ginsetti##2438
accept Bartolo's Yeti Fur Cloak##565 |goto Hillsbrad Foothills 49.60,55.80
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
Enter the building |goto Hillsbrad Foothills 49.31,55.49 < 10 |walk
talk Micha Yance##2381
|tip Inside the building.
buy Soothing Spices##3713 |q 555/2 |goto Hillsbrad Foothills 48.94,55.03
buy Fine Thread##2321 |q 565/2 |goto Hillsbrad Foothills 48.94,55.03
|tip Be careful not to accidentally sell this to a vendor.
step
_NOTE:_
Incoming Cave Step
|tip The next step has you venturing into a cave.
|tip While inside, there are constant patrols and inconsistent respawns of the yetis.
|tip The quest is optional.
|tip If you end up skipping, abandon the quest "A King's Tribute".
|tip You will also need to grind 2,500 xp.
Click Here to Continue |confirm |q 689 |future
|only if hardcore
stickystart "Collect_YetiFur"
step
Leave the building |goto Hillsbrad Foothills 49.31,55.49 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
click Alterac Granite##2714+
|tip They look like flat grey stones standing upright near the walls inside the cave.
|tip Watch for patrols and respawns while inside the cave. |only if hardcore
collect 5 Alterac Granite##4521 |q 689/1 |goto Hillsbrad Foothills 46.18,31.83
step
label "Collect_YetiFur"
Kill Yetis in the area
collect 10 Yeti Fur##3720 |q 565/4 |goto Hillsbrad Foothills 46.18,31.83
stickystart "Kill_Hulking_Mountain_Lions"
step
Leave the cave |goto Hillsbrad Foothills 46.18,31.83 < 15 |walk |only if subzone("Darrow Hill") and _G.IsIndoors()
kill 8 Mountain Lion##2406 |q 564/1 |goto Alterac Mountains 43.94,77.87
You can find more around: |notinsticky
[Alterac Mountains 37.69,85.48]
[Alterac Mountains 32.86,83.10]
stickystart "Kill_Syndicate_Thieves"
stickystart "Kill_Syndicate_Footpads"
step
click Syndicate Documents##1738
|tip Be careful, the enemies in these camps respawn pretty quickly.
|tip If you have trouble, try to find someone to help you.
accept Foreboding Plans##510 |goto Alterac Mountains 47.91,82.13
accept Encrypted Letter##511 |goto Alterac Mountains 47.91,82.13
If it's not here, check the other camp at [58.32,67.92]
step
label "Kill_Syndicate_Thieves"
Follow the path up |goto Alterac Mountains 53.84,65.36 < 30 |only if walking and not subzone("Sofera's Naze")
kill 8 Syndicate Thief##2241 |q 505/2 |goto Alterac Mountains 58.32,67.92
|tip Focus on killing them in this camp. |notinsticky
|tip The next step in the guide is nearby this camp. |notinsticky
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
|tip Enemies near the camp tend to pull in a group.		|only if hardcore |notinsticky
step
label "Kill_Syndicate_Footpads"
Follow the path up |goto Alterac Mountains 53.84,65.36 < 30 |only if walking and not subzone("Sofera's Naze")
kill 12 Syndicate Footpad##2240 |q 505/1 |goto Alterac Mountains 58.32,67.92
|tip Focus on killing them in this camp. |notinsticky
|tip The next step in the guide is nearby this camp. |notinsticky
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
|tip Enemies near the camp tend to pull in a group.		|only if hardcore |notinsticky
step
label "Kill_Hulking_Mountain_Lions"
kill 10 Hulking Mountain Lion##2407 |q 564/2 |goto Alterac Mountains 43.94,77.87
You can find more around: |notinsticky
[37.69,85.48]
[32.86,83.10]
step
kill Snapjaw##2408+
collect 10 Turtle Meat##3712 |q 555/1 |goto Hillsbrad Foothills 70.16,11.90
|tip Be careful not to accidentally sell these to a vendor.
|tip There may be a patrolling elite enemy in the area.
You can find more around: |notinsticky
[Alterac Mountains 73.90,66.37]
[Alterac Mountains 80.00,58.78]
[Alterac Mountains 84.47,51.55]
[Alterac Mountains 89.72,47.03]
step
Follow the path north to the road |goto Alterac Mountains 80.36,53.97 < 100 |only if walking and not zone("Western Plaguelands")
Follow the road |goto Alterac Mountains 80.02,42.29 < 40 |only if walking and not zone("Western Plaguelands")
talk Bibilfaz Featherwhistle##12596
fpath Chillwind Camp |goto Western Plaguelands 42.93,85.06
step
talk Darren Malvew##2382
turnin Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
talk Bartolo Ginsetti##2438
turnin Bartolo's Yeti Fur Cloak##565 |goto Hillsbrad Foothills 49.60,55.80
step
talk Loremaster Dibbs##2277
turnin Encrypted Letter##511 |goto Hillsbrad Foothills 50.57,57.09
accept Letter to Stormpike##514 |goto Hillsbrad Foothills 50.57,57.09
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Chef Jessen##2430
|tip Inside the building.
turnin Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
step
Leave the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk |only if subzone("Southshore") and _G.IsIndoors()
talk Phin Odelic##2711
accept Hints of a New Plague?##659 |goto Hillsbrad Foothills 50.34,59.05
step
Enter the building |goto Hillsbrad Foothills 49.02,59.12 < 10 |walk
talk Magistrate Henry Maleb##2276
|tip Inside the building.
turnin Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
turnin Foreboding Plans##510 |goto Hillsbrad Foothills 48.14,59.11
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Arathi Highlands (33-33)',
  {
    image = ZGV.IMAGESDIR .. 'Arathi Highlands',
    condition_suggested = function()
      return level == 33 and not completedq(681)
    end,
    next = 'Leveling Guides\\Dustwallow Marsh (33-33)',
    hardcore = true,
  },
  [[
step
talk Captain Nials##2700
accept Northfold Manor##681 |goto Arathi Highlands 45.83,47.55
step
talk Skuerto##2789
turnin Malin's Request##690 |goto Arathi Highlands 46.65,47.01
step
Leave Refuge Pointe |goto Arathi Highlands 48.35,44.93 < 40 |only if walking and subzone("Refuge Pointe")
talk Quae##2712
turnin Hints of a New Plague?##659 |goto Arathi Highlands 60.19,53.85
accept Hints of a New Plague?##658 |goto Arathi Highlands 60.19,53.85
accept To The Hills##26546 |goto Arathi Highlands 60.19,53.85
step
talk Aquamentus##45547
accept Cooling Waters##26548 |goto Arathi Highlands 89.4,35.2
accept A Painful Dousing##26549 |goto Arathi Highlands 89.4,35.2
accept An Audience With Water##26550 |goto Arathi Highlands 89.4,35.2
step
talk Atrasies the Ancient##45548
accept Close The Vents##26551 |goto Arathi Highlands 82.8,57.3
accept Offering Of Feathers##26552 |goto Arathi Highlands 82.8,57.3
step
talk Aeromir##45555
accept Assistance Of Air##26554 |goto Arathi Highlands 82.5,42.8
step
talk Atrasies the Ancient##45548
accept Return To Fire##26556 |goto Arathi Highlands 82.8,57.3
accept Convening The Council##26557 |goto Arathi Highlands 82.8,57.3
step
stickystart "Scout_Hills"
collect 8 Cooled Aqual Essence##63106 |q 26548/1 |goto Arathi Highlands 89.4,35.2
|tip Kill Aqual Sprayers in the water near Aquamentus.
step
label "Scout_Hills"
scout the Blazing Hills for disturbances |q 26546/1 |goto Arathi Highlands 89.4,35.2
|tip This auto-completes by exploring the area.
step
notinsticky
use Bottle of Soothing Waters##63107
collect Raging Bindings##63108 |q 26549/1 |goto Arathi Highlands 89.4,35.2
|tip Use on weakened Raging Cinders. These are fire elementals you can find.
step
talk Aquamentus##45547
accept An Audience With Water##26550 |goto Arathi Highlands 89.4,35.2
step
complete An Audience With Water |q 26550/1 |goto Arathi Highlands 89.4,35.2
|tip Speaking with Aquamentus completes the objective.
step
kill Coal Elementals
collapse 8 Steam Vents |q 26551/1 |goto Arathi Highlands 82.8,57.3
|tip Use Rushing Water power on thermal vents. They're in the southern area.
step
collect 6 Pristine Strider Feathers##63109 |q 26552/1 |goto Arathi Highlands 82.5,42.8
|tip Kill Striders in the area for feathers.
step
talk Aeromir##45555
speak with Aeromir to complete the blessing |q 26554/1 |goto Arathi Highlands 82.5,42.8
|tip This grants you Air blessing and transport.
step
talk Atrasies the Ancient##45548
inform Atrasies that elementals will convene |q 26556/1 |goto Arathi Highlands 82.8,57.3
step
talk Atrasies the Ancient##45548
witness the Council of Elements |q 26557/1 |goto Arathi Highlands 82.8,57.3
|tip Return and speak with Atrasies to witness the council.
step
talk Quae##2712
turnin To The Hills##26546 |goto Arathi Highlands 60.19,53.85
|tip Return to Quae in Refuge Pointe.
step
talk Aquamentus##45547
turnin Cooling Waters##26548 |goto Arathi Highlands 89.4,35.2
turnin A Painful Dousing##26549 |goto Arathi Highlands 89.4,35.2
turnin An Audience With Water##26550 |goto Arathi Highlands 89.4,35.2
step
talk Atrasies the Ancient##45548
turnin Close The Vents##26551 |goto Arathi Highlands 82.8,57.3
turnin Return To Fire##26556 |goto Arathi Highlands 82.8,57.3
turnin Convening The Council##26557 |goto Arathi Highlands 82.8,57.3
step
talk Aeromir##45555
turnin Offering Of Feathers##26552 |goto Arathi Highlands 82.5,42.8
step
talk Paula Alestone##45567
accept Save The Animals##26559 |goto Arathi Highlands 94.0,71.7
step
go to Alestone Estate
lasso 6 Terrified Animals##63110 |q 26559/1 |goto Arathi Highlands 94.0,71.7
|tip Use the lasso rope on scared animals at the estate.
|tip This quest can be bugged - if animals don't respond, skip it.
step
talk Paula Alestone##45567
turnin Save The Animals##26559 |goto Arathi Highlands 94.0,71.7
step
stickystart "Kill_Syndicate_Highwaymen"
kill 6 Syndicate Mercenary##2589 |q 681/2 |goto Arathi Highlands 32.67,29.22
|tip They are also inside the buildings.					|only if not hardcore
|tip They can also be found inside buildings, but it's dangerous to enter.	|only if hardcore
|tip Enemies tend to be bunched together inside buildings. |only if hardcore
step
label "Kill_Syndicate_Highwaymen"
kill 10 Syndicate Highwayman##2586 |q 681/1 |goto Arathi Highlands 32.67,29.22
|tip They are usually stealthed, so be careful.
|tip They are also inside the buildings. |notinsticky
|tip You can find more stealted along the small hill ridges surrounding this village.
step
talk Captain Nials##2700
turnin Northfold Manor##681 |goto Arathi Highlands 45.83,47.55
step
talk Vikki Lonsav##2808
|tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
|tip You will be out questing for a while without access to an arrow vendor.
Visit the Vendor |vendor Vikki Lonsav##2808 |goto Arathi Highlands 46.45,47.60 |q 658
|only if Hunter
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Dustwallow Marsh (33-33)',
  {
    image = ZGV.IMAGESDIR .. 'Arathi Highlands',
    condition_suggested = function()
      return level == 33 and not completedq(1253)
    end,
    next = 'Leveling Guides\\Thousand Needles (33-34)',
    hardcore = true,
  },
  [[
step
talk Baldruc##4321
fpath Theramore |goto Dustwallow Marsh 67.48,51.30
step
Enter the building |goto Dustwallow Marsh 66.12,51.56 < 10 |walk
talk Helenia Olden##4897
|tip Inside the building.
buy 3 Soothing Spices##3713 |goto Dustwallow Marsh 66.44,51.46 |q 1218 |future
|tip Be careful not to accidentally sell these to a vendor.
step
Enter the building |goto Dustwallow Marsh 65.99,45.20 < 10 |walk
talk Fiora Longears##4456
|tip Inside the building.
accept Highperch Venom##1135 |goto Dustwallow Marsh/0 66.46,45.15
step
talk Innkeeper Janene##6272
|tip Inside the building.
home Theramore Isle |goto Dustwallow Marsh/0 66.59,45.22
step
Leave the building |goto Dustwallow Marsh/0 65.99,45.20 < 10 |walk |only if subzone("Theramore Isle") and _G.IsIndoors()
Enter the building |goto Dustwallow Marsh/0 67.81,47.69 < 15 |walk
Run up the stairs |goto Dustwallow Marsh/0 68.17,48.77 < 7 |walk
talk Clerk Lendry##5083
|tip Upstairs inside the building.
turnin James Hyal##1302 |goto Dustwallow Marsh/0 67.88,48.24
step
talk Commander Samaul##4964
|tip Upstairs inside the building.
turnin The Missing Diplomat##1264 |goto Dustwallow Marsh/0 68.02,48.71
accept The Missing Diplomat##1265 |goto Dustwallow Marsh/0 68.02,48.71
step
Leave the building |goto Dustwallow Marsh/0 67.81,47.69 < 15 |walk |only if subzone("Foothold Citadel")
Leave Theramore Isle and follow the road |goto Dustwallow Marsh/0 64.82,46.60 < 40 |only if walking and subzone("Theramore Isle")
talk "Swamp Eye" Jarl##4792
accept Soothing Spices##1218 |goto Dustwallow Marsh/0 55.44,26.27
step
talk "Swamp Eye" Jarl##4792
turnin Soothing Spices##1218 |goto Dustwallow Marsh/0 55.44,26.27
step
click Loose Dirt
accept The Orc Report##1219 |goto Dustwallow Marsh/0 55.44,25.93
step
talk Mudcrush Durtfeet##4503
|tip Follow the road to this location.
|tip Be careful to avoid Brackenwall Village and enemies along the way.
|tip The enemies in this zone are a good bit higher level than you.
accept Hungry!##1177 |goto Dustwallow Marsh/0 35.15,38.25
step
click Suspicious Hoofprint
accept Suspicious Hoofprints##1284 |goto Dustwallow Marsh/0 29.70,47.63
|tip This requires that you complete the "James Hyal" questline started in the "Stranglethorn Vale (32-32)" guide.
step
click Theramore Guard Badge
|tip It looks like a tiny metal object on the floor.
accept Lieutenant Paval Reethe##1252 |goto Dustwallow Marsh/0 29.83,48.24
|tip This requires that you complete the "James Hyal" questline started in the "Stranglethorn Vale (32-32)" guide.
step
click Black Shield
accept The Black Shield##1253 |goto Dustwallow Marsh/0 29.63,48.59
|tip This requires that you complete the "James Hyal" questline started in the "Stranglethorn Vale (32-32)" guide.
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Thousand Needles (33-34)',
  {
    image = ZGV.IMAGESDIR .. 'Thousand Needles',
    condition_suggested = function()
      return level >= 33 and level <= 34 and not completedq(1175)
    end,
    next = 'Leveling Guides\\Dustwallow Marsh (34-34)',
    hardcore = true,
  },
  [[
step
Ride an elevator down |goto Thousand Needles 31.72,23.63 < 30 |only if walking
click Henrig Lonebrow's Journal
|tip It looks like a small brown book in a dead dwarf's hand.
|tip If someone looted it recently, it can take a few minutes to reappear.
|tip Don't worry, the horde NPCs won't attack you. |only if hardcore
collect Henrig Lonebrow's Journal##5791 |goto Thousand Needles 30.73,24.35 |q 1100 |future
step
use Henrig Lonebrow's Journal##5791
accept Lonebrow's Journal##1100
step
talk Thyssiana##4319
fpath Thalanaar |goto Feralas 89.50,45.85
step
talk Falfindel Waywarder##4048
turnin Lonebrow's Journal##1100 |goto Feralas 89.64,46.56
turnin Reclaiming the Charred Vale##1059 |goto Feralas 89.64,46.56
step
Follow the path up |goto Thousand Needles 14.00,32.15 < 20 |only if walking and not subzone("Highperch")
Kill Highperch enemies around this area
|tip They look like wyverns.
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect 10 Highperch Venom Sac##5809 |q 1135/1 |goto Thousand Needles 11.09,35.88
step
Leave Highperch |goto Thousand Needles 13.79,33.69 < 20 |only if walking and subzone("Highperch")
talk Kravel Koalbeard##4452
|tip Avoid Freewind Post while you travel here.
accept Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
accept Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
talk Wizzle Brassbolts##4453
turnin The Brassbolts Brothers##1179 |goto Thousand Needles 78.14,77.12
accept Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
talk Pozzik##4630
accept Load Lightening##1176 |goto Thousand Needles 80.18,75.89
step
talk Trackmaster Zherin##4629
accept A Bump in the Road##1175 |goto Thousand Needles 81.64,77.95
stickystart "Collect_Rocket_Car_Parts"
stickystart "Kill_Saltstone_Crystalhides"
step
kill 6 Saltstone Gazer##4150 |q 1175/3 |goto Thousand Needles 77.51,87.20
|tip You can back away from their gaze cast to not be stunned. |only if hardcore
stickystart "Collect_Hollow_Vulture_Bones"
stickystart "Collect_Hardened_Tortoise_Shells"
stickystart "Collect_Salty_Scorpid_Venom"
stickystart "Kill_Saltstone_Basilisks"
step
label "Collect_Hollow_Vulture_Bones"
Kill Salt Flats enemies around this area
|tip They look like vultures.
|tip You can rarely find individual ones all around Shimmering Flats.
|tip However, this is the only location where there are multiple of them.
collect 10 Hollow Vulture Bone##5848 |q 1176/1 |goto Thousand Needles 87.45,65.73
|tip Work on other quests in the northern part of Shimmering Flats, and keep revisiting this area until you have them all.
step
label "Collect_Salty_Scorpid_Venom"
Kill Scorpid enemies around this area
'|kill Scorpid Reaver##4140, Scorpid Terror##4139, Vile Sting##5937
|tip They look like scorpions.
|tip These should be your second priority, the drop rate is rather low.
collect 6 Salty Scorpid Venom##5794 |q 1104/1 |goto Thousand Needles 71.60,73.80
You can find more around: |notinsticky
[77.95,53.29]
[73.56,56.98]
[71.30,66.70]
[77.61,68.70]
step
label "Collect_Hardened_Tortoise_Shells"
Kill Sparkleshell enemies around this area
|tip They look like turtles.
|tip Save your Turtle Meat for a future quest.
collect 9 Hardened Tortoise Shell##5795 |q 1105/1 |goto Thousand Needles 82.53,55.37
You can find more around: |notinsticky
[77.41,53.72]
[73.05,56.51]
[74.82,63.33]
step
label "Kill_Saltstone_Basilisks"
kill 10 Saltstone Basilisk##4147 |q 1175/1 |goto Thousand Needles 77.73,59.22
|tip These are primarily found around the crater.
You can find more around: |notinsticky
[73.41,57.27]
[70.97,66.69]
[77.48,52.40]
step
label "Kill_Saltstone_Crystalhides"
kill 10 Saltstone Crystalhide##4151 |q 1175/2 |goto Thousand Needles 77.51,87.20
step
label "Collect_Rocket_Car_Parts"
click Rocket Car Rubble##19868+
|tip They look like various machine parts scattered on the ground.
|tip You can find them all throughout the Shimmering Flats.
collect 30 Rocket Car Parts##5798 |q 1110/1 |goto Thousand Needles 83.06,61.38
You can find more around: |notinsticky
[77.95,53.29]
[73.56,56.98]
[71.30,66.70]
[77.61,68.70]
step
talk Kravel Koalbeard##4452
|tip Avoid Freewind Post while you travel here.
turnin Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
accept Wharfmaster Dizzywig##1111 |goto Thousand Needles 77.79,77.27
accept Hemet Nesingwary##5762 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
turnin Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
talk Wizzle Brassbolts##4453
turnin Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
talk Pozzik##4630
turnin Load Lightening##1176 |goto Thousand Needles 80.18,75.88
accept Goblin Sponsorship##1178 |goto Thousand Needles 80.18,75.88
step
talk Trackmaster Zherin##4629
turnin A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
talk Bera Stonehammer##7823
fpath Gadgetzan |goto Tanaris 51.01,29.34
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Dustwallow Marsh (34-34)',
  {
    image = ZGV.IMAGESDIR .. 'Dustwallow Marsh',
    condition_suggested = function()
      return level == 34 and not completedq(1112)
    end,
    next = 'Leveling Guides\\Stranglethorn Vale (34-35)',
    hardcore = true,
  },
  [[
step
talk Fiora Longears##4456
|tip Inside the building.
turnin Highperch Venom##1135 |goto Dustwallow Marsh/0 66.46,45.15
step
Leave the building |goto Dustwallow Marsh/0 65.99,45.20 < 10 |walk |only if subzone("Theramore Isle") and _G.IsIndoors()
talk Theramore Lieutenant##4947
turnin The Orc Report##1219 |goto Dustwallow Marsh/0 65.07,47.13
accept Captain Vimes##1220 |goto Dustwallow Marsh/0 65.07,47.13
step
Enter the building |goto Dustwallow Marsh/0 67.78,47.59 < 15 |walk
Run up the stairs |goto Dustwallow Marsh/0 68.17,48.76 < 10 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Captain Vimes##1220 |goto Dustwallow Marsh/0 68.21,48.62
turnin Suspicious Hoofprints##1284 |goto Dustwallow Marsh/0 68.21,48.62
turnin Lieutenant Paval Reethe##1252 |goto Dustwallow Marsh/0 68.21,48.62
accept Lieutenant Paval Reethe##1259 |goto Dustwallow Marsh/0 68.21,48.62
turnin The Black Shield##1253 |goto Dustwallow Marsh/0 68.21,48.62
accept The Black Shield##1319 |goto Dustwallow Marsh/0 68.21,48.62
step
talk Adjutant Tesoran##4948
|tip Upstairs inside the building.
turnin Lieutenant Paval Reethe##1259 |goto Dustwallow Marsh/0 68.05,48.11
accept Daelin's Men##1285 |goto Dustwallow Marsh/0 68.05,48.11
step
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Daelin's Men##1285 |goto Dustwallow Marsh/0 68.21,48.62
step
Leave the building |goto Dustwallow Marsh/0 67.78,47.59 < 15 |walk |only if subzone("Foothold Citadel")
Follow the road and enter the building |goto Dustwallow Marsh/0 64.69,49.97 < 10 |walk
talk Caz Twosprocket##4941
|tip Inside the building.
turnin The Black Shield##1319 |goto Dustwallow Marsh/0 64.75,50.43
accept The Black Shield##1320 |goto Dustwallow Marsh/0 64.75,50.43
step
Follow the road and enter the building |goto Dustwallow Marsh/0 67.78,47.59 < 15 |walk
Run up the stairs |goto Dustwallow Marsh/0 68.17,48.76 < 7 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin The Black Shield##1320 |goto Dustwallow Marsh/0 68.21,48.62
step
Run up the ramp and jump over the wall to leave Theramore Isle |goto Dustwallow Marsh 65.64,45.37 < 10 |only if walking and subzone("Theramore Isle")
Follow the beach north to reach Ratchet in the Barrens |goto Dustwallow Marsh 64.60,39.77 < 40 |only if walking and zone("Dustwallow Marsh")
Avoid the murloc islands |goto Dustwallow Marsh 59.97,14.53 < 40 |only if walking and zone("Dustwallow Marsh")
Avoid the murloc islands and follow the path north toward Ratchet |goto The Barrens 64.04,58.31 < 40 |only if walking and zone("Dustwallow Marsh")
talk Klannoc Macleod##6236
turnin The Islander##1718 |goto The Barrens 68.62,49.17
accept The Affray##1719 |goto The Barrens 68.62,49.17
|only if Warrior
step
Step on the Grate to Begin the Affray |q 1719/1 |goto The Barrens 68.61,48.72
|only if Warrior
step
kill Affray Challenger##6240+
|tip You will have to kill six of them before Big Will will appear.
|tip You will fight them one at a time.
kill Big Will##6238 |q 1719/2 |goto The Barrens 68.61,48.72
|tip It may take a while before he appears.
|only if Warrior
step
talk Klannoc Macleod##6236
|tip You will learn Berserker Stance from completing this quest.
turnin The Affray##1719 |goto The Barrens 68.62,49.17
accept The Windwatcher##1791 |goto The Barrens 68.62,49.17
|only if Warrior
step
Run up the ramp and jump over the wall to leave Theramore Isle |goto Dustwallow Marsh 65.64,45.37 < 10		|only if walking and subzone("Theramore Isle")
Follow the beach north to reach Ratchet in the Barrens |goto Dustwallow Marsh 64.60,39.77 < 40			|only if walking and zone("Dustwallow Marsh")
Avoid the murloc islands |goto Dustwallow Marsh 59.97,14.53 < 40						|only if walking and zone("Dustwallow Marsh")
Avoid the murloc islands and follow the path north toward Ratchet |goto The Barrens 64.04,58.31 < 40		|only if walking and zone("Dustwallow Marsh") |notravel
talk Fuzruckle##3496
|tip Deposit these items into the bank.
bank Alterac Granite##4521 |goto The Barrens 62.64,37.42 |q 689 |future
|tip You should have 5 of these.
bank Cleverly Encrypted Letter##3521 |goto The Barrens 62.64,37.42 |q 514 |future
bank Farren's Report##3721 |goto The Barrens 62.64,37.42 |q 563 |future
step
talk Bragok##16227
fpath Ratchet |goto The Barrens 63.09,37.16
step
Enter the building |goto The Barrens 62.89,36.52 < 10 |walk
talk Gazlowe##3391
|tip Upstairs inside the building.
turnin Goblin Sponsorship##1178 |goto The Barrens 62.68,36.23
accept Goblin Sponsorship##1180 |goto The Barrens 62.68,36.23
step
talk Wharfmaster Dizzywig##3453
turnin The Barrens Port##1039 |goto The Barrens 63.35,38.45
accept Passage to Booty Bay##1040 |goto The Barrens 63.35,38.45
turnin Wharfmaster Dizzywig##1111 |goto The Barrens 63.35,38.45
accept Parts for Kravel##1112 |goto The Barrens 63.35,38.45
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stranglethorn Vale (34-35)',
  {
    image = ZGV.IMAGESDIR .. 'Stranglethorn Vale',
    condition_suggested = function()
      return level >= 34 and level <= 35 and not completedq(575)
    end,
    next = 'Leveling Guides\\Duskwood (35-35)',
    hardcore = true,
  },
  [[
step
talk Wharfmaster Lozgil##4631
turnin Goblin Sponsorship##1180 |goto Stranglethorn Vale 26.35,73.56
accept Goblin Sponsorship##1181 |goto Stranglethorn Vale 26.35,73.56
|tip This requires that you complete the "Load Lightening" questline started in the "Thousand Needles (33-34)" guide.
step
talk Caravaneer Ruzzgot##3945
turnin Passage to Booty Bay##1040 |goto Stranglethorn Vale 27.37,74.08
|tip This quest is received in the Dustwallow Marsh (34-34) guide.
accept The Caravan Road##1041 |goto Stranglethorn Vale 27.37,74.08
step
Enter the building |goto Stranglethorn Vale 28.11,74.98 < 10 |walk
talk Zarena Cromwind##2482
|tip Inside the building.
buy Big Stick##12251 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Zarena Cromwind##2482 |goto Stranglethorn Vale 28.34,75.46 |q 605 |future
|only if Warrior and itemcount(12251) == 0
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk |only if not subzone ("The Salty Sailor Tavern")
talk Innkeeper Skindle##6807
|tip Inside the building.
home Booty Bay |goto Stranglethorn Vale 27.04,77.31
step
talk Crank Fizzlebub##2498
|tip Inside the building.
accept Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
talk Ian Strom##1411
trainer Ian Strom##1411 |goto Stranglethorn Vale/0 26.82,77.16 |q 605
|tip He is on the second floor of the inn, in a back room.
|tip Train your spells.
|only if Rogue
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Investigate the Camp##201 |goto Stranglethorn Vale 26.94,77.21
accept Supplies to Private Thorsen##198 |goto Stranglethorn Vale 26.94,77.21
accept The Haunted Isle##616 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
accept Hostile Takeover##213 |goto Stranglethorn Vale 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin The Haunted Isle##616 |goto Stranglethorn Vale 27.23,76.87
accept The Stone of the Tides##578 |goto Stranglethorn Vale 27.23,76.87
turnin Goblin Sponsorship##1181 |goto Stranglethorn Vale 27.23,76.87
accept Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
step
_Destroy This Item:_
|tip It is no longer needed.
trash Library Scrip##3898 |goto Stranglethorn Vale 26.54,76.57
step
talk Viznik Goldgrubber##2625
|tip Deposit these items into the bank.
bank Kravel's Parts##5800 |goto Stranglethorn Vale 26.54,76.57 |q 1112 |future
step
Run up the ramp |goto Stranglethorn Vale 27.85,76.76 < 10 |only if walking
Cross the bridge |goto Stranglethorn Vale 28.15,76.52 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.33 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
accept Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building and run up the stairs |goto Stranglethorn Vale 27.52,77.86 < 7 |only if walking
talk Gyll##2859
|tip Upstairs on the balcony of the building.
fpath Booty Bay |goto Stranglethorn Vale 27.53,77.79
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale 39.05,5.20 < 20 |only if walking
talk Private Thorsen##738
|tip He periodically walks along the path to the south, from the Rebel Camp.
|tip If he's not here, skip this step, you'll have another chance to turn in this quest later.
turnin Supplies to Private Thorsen##198 |goto Stranglethorn Vale 37.98,3.42
step
talk Sergeant Yohwa##733
accept The Second Rebellion##203 |goto Stranglethorn Vale 38.02,3.33
accept Bad Medicine##204 |goto Stranglethorn Vale 38.02,3.33
step
Leave the Rebel Camp |goto Stranglethorn Vale 39.29,5.56 < 30 |only if walking and subzone("Rebel Camp")
Locate the Hunters' Camp |q 201/1 |goto Stranglethorn Vale 35.55,10.55
step
talk Hemet Nesingwary##715
turnin Hemet Nesingwary##5762 |goto Stranglethorn Vale 35.66,10.81
accept Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
step
talk Ajeck Rouack##717
accept Tiger Mastery##186 |goto Stranglethorn Vale 35.61,10.62
step
talk Sir S. J. Erlgadin##718
accept Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
stickystart "Kill_Stranglethorn_Tigers"
step
Follow the path up |goto Stranglethorn Vale 30.79,8.27 < 20 |only if walking
kill 10 Panther##736 |q 191/1 |goto Stranglethorn Vale 30.02,10.56
You can find more around: |notinsticky
[28.35,12.13]
[28.55,16.11]
[30.33,15.29]
step
label "Kill_Stranglethorn_Tigers"
kill 10 Stranglethorn Tiger##682 |q 186/1 |goto Stranglethorn Vale 30.02,10.56
You can find more around: |notinsticky
[28.35,12.13]
[28.55,16.11]
[30.33,15.29]
step
kill 10 Stranglethorn Raptor##685 |q 194/1 |goto Stranglethorn Vale 26.04,16.19
step
kill Crystal Spine Basilisk##689+
collect 10 Singing Crystal Shard##3918 |q 605/1 |count 5 |goto Stranglethorn Vale 27.06,18.51
|tip You don't need to finish this quest now.
You can find more around [25.11,17.42]
step
Kill enemies around this area
|tip You should already be level 35, or pretty close.
|tip You will be completing some difficult quest soon, so being a level higher will help.
ding 35 |goto Stranglethorn Vale 27.06,18.51
You can find more around [25.11,17.42]
step
Locate the Haunted Island |q 578/1 |goto Stranglethorn Vale 21.33,21.93
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
accept Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
talk Ajeck Rouack##717
turnin Tiger Mastery##186 |goto Stranglethorn Vale 35.61,10.62
accept Tiger Mastery##187 |goto Stranglethorn Vale 35.61,10.62
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
accept Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
map Stranglethorn Vale
path follow strictbounce; loop off; ants straight; dist 70; markers none
path	32.29,7.85	33.67,8.61	35.19,9.28	36.74,9.43	37.75,10.14
path	39.11,11.77	40.34,13.97
kill River Crocolisk##1150+
|tip On the shore along the river around this area.
|tip They can be on both sides of the river.
collect 2 Large River Crocolisk Skin##4053 |q 575/1
stickystart "Collect_Jungle_Remedies"
stickystart "Kill_Kurzen_Jungle_Fighters"
step
Follow the path |goto Stranglethorn Vale 40.33,8.32 < 40 |only if walking and not subzone("Kurzen's Compound")
click Kurzen Supplies##264
|tip In front of the building.
|tip Be careful to stay out of sight of the enemies near the doorway inside the building.
collect Venom Fern Extract##2634 |q 204/2 |goto Stranglethorn Vale 44.10,9.56
step
label "Collect_Jungle_Remedies"
kill Kurzen Medicine Man##940+
|tip Try to interrupt their spell casts, or drain their mana if you can.
|tip They can heal themselves and other enemies.
collect 7 Jungle Remedy##2633 |q 204/1 |goto Stranglethorn Vale 43.88,10.71
step
label "Kill_Kurzen_Jungle_Fighters"
kill 15 Kurzen Jungle Fighter##937 |q 203/1 |goto Stranglethorn Vale 43.88,10.71
|tip If you don't have help, stay on western outskirts, around this area, and just wait for the enemies to respawn.
|tip They respawn pretty quickly.
step
kill Crystal Spine Basilisk##689+
|tip They spawn all along the mountain here.
collect 10 Singing Crystal Shard##3918 |q 605/1 |goto Stranglethorn Vale 48.20,8.20
stickystart "Collect_Tumbled_Crystals"
step
Follow the path up |goto Stranglethorn Vale 42.25,18.10 < 10 |only if walking
kill Foreman Cozzle##4723
|tip Inside the building at the top of the platform.
|tip He's level 38, but you should be able to kill him at this level.
|tip Be careful not to accidentally aggro him while killing other enemies near the building.
|tip If you have trouble, try to find someone to help you.
|tip Skip this step if you're worried, you'll have another chance later. |only if hardcore
collect Cozzle's Key##5851 |goto Stranglethorn Vale 42.65,18.35 |q 1182
step
Enter the building |goto Stranglethorn Vale 43.45,20.36 < 10 |walk
click Cozzle's Footlocker##20691
|tip Inside the building.
collect Fuel Regulator Blueprints##5852 |q 1182/1 |goto Stranglethorn Vale 43.34,20.34
step
label "Collect_Tumbled_Crystals"
kill Venture Co. Geologist##1096+
collect 8 Tumbled Crystal##4106 |q 213/1 |goto Stranglethorn Vale 44.63,21.45
|tip These are ranged attackers that deal heavy damage.			|only if hardcore |notinsticky
|tip Enemies around this area may run away in fear when at low health.	|only if hardcore |notinsticky
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale 39.05,5.20 < 20 |only if walking
talk Sergeant Yohwa##733
turnin The Second Rebellion##203 |goto Stranglethorn Vale 38.02,3.33
turnin Bad Medicine##204 |goto Stranglethorn Vale 38.02,3.33
step
talk Corporal Kaleb##770
accept Krazek's Cookery##210 |goto Stranglethorn Vale 37.74,3.30
step
talk Crank Fizzlebub##2498
|tip Inside the building.
turnin Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
talk Viznik Goldgrubber##2625
|tip Withdraw these items from the bank.
collect 4 Lesser Bloodstone Ore##4278 |goto Stranglethorn Vale 26.54,76.57 |q 627 |future
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin Investigate the Camp##201 |goto Stranglethorn Vale 26.94,77.21
turnin Krazek's Cookery##210 |goto Stranglethorn Vale 26.94,77.21
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Favor for Krazek##627 |goto Stranglethorn Vale 26.94,77.21
|only if itemcount(4278) >= 4
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin Favor for Krazek##627 |goto Stranglethorn Vale 26.94,77.21
accept Return to Corporal Kaleb##622 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
turnin Hostile Takeover##213 |goto Stranglethorn Vale 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
accept Goblin Sponsorship##1183 |goto Stranglethorn Vale 27.23,76.87
turnin The Stone of the Tides##578 |goto Stranglethorn Vale 27.23,76.87
step
talk Viznik Goldgrubber##2625
|tip Collect these items from the bank.
collect 5 Alterac Granite##4521 |goto Stranglethorn Vale 26.54,76.57 |q 689
collect Cleverly Encrypted Letter##3521 |goto Stranglethorn Vale 26.54,76.57 |q 514
collect Farren's Report##3721 |goto Stranglethorn Vale 26.54,76.57 |q 563
step
Run up the ramp and cross the bridge |goto Stranglethorn Vale 28.15,76.52 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.33 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
turnin Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building |goto Stranglethorn Vale 28.11,74.98 < 10 |walk
talk Zarena Cromwind##2482
|tip Inside the building.
buy Big Stick##12251 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Zarena Cromwind##2482 |goto Stranglethorn Vale 28.34,75.46 |q 1183
|only if Warrior and itemcount(12251) == 0
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Duskwood (35-35)',
  {
    image = ZGV.IMAGESDIR .. 'Duskwood',
    condition_suggested = function()
      return level == 35 and not completedq(514)
    end,
    next = 'Leveling Guides\\Desolace (35-37)',
    hardcore = true,
  },
  [[
step
talk Malissa##3135
|tip Walking around here.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 1041
|only if Rogue
step
Enter the building |goto Duskwood 72.92,46.81 < 10 |walk
talk Clerk Daltry##267
|tip Inside the building.
turnin The Caravan Road##1041 |goto Duskwood 72.53,46.85
accept The Carevin Family##1042 |goto Duskwood 72.53,46.85
|only if haveq(1041)
step
Enter the building |goto Duskwood 75.23,48.25 < 10 |walk
talk Jonathan Carevin##661
|tip Inside the building.
turnin The Carevin Family##1042 |goto Duskwood 75.32,49.02
accept The Scythe of Elune##1043 |goto Duskwood 75.32,49.02
|only if completedq(1041)
step
Enter the mine |goto Duskwood 73.04,75.09 < 10 |walk
|tip Enemies tend to pull in groups around here. |only if hardcore
click Mound of Dirt##19030
|tip Inside the mine.
|tip Try not to linger around the cave longer than needed as the respawns are inconsistent. |only if hardcore
Find Evidence of the Scythe of Elune |q 1043/1 |goto Duskwood 73.53,79.14
|only if haveq(1043)
step
Leave the mine |goto Duskwood 73.04,75.09 < 10 |walk |only if subzone("Roland's Doom")
Enter the building |goto Duskwood 75.23,48.25 < 10 |walk
talk Jonathan Carevin##661
|tip Inside the building.
turnin The Scythe of Elune##1043 |goto Duskwood 75.32,49.02
|only if haveq(1043)
step
Enter the building |goto Stormwind City 54.08,59.01 < 10 |walk
talk Auctioneer Jaxon##15659
|tip Inside the building.
|tip Buy these items from the auction house.
|tip If they're not available, or you can't afford them, skip this step.
|tip You will be able to kill enemies soon to get them, but it will be slower.
collect 8 Liferoot##3357 |goto Stormwind City 53.61,59.76 |q 1712 |future
|only if Warrior and not selfmade
step
Enter Stormwind Keep |goto Stormwind City 69.08,28.70 < 15 |walk
Follow the path |goto Stormwind City 75.95,17.58 < 10 |walk
talk Major Samuelson##2439
|tip Inside the building.
turnin Reassignment##563 |goto Stormwind City 72.60,15.87
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 689
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 689
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 689
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 689
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 689
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 689
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 689
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 689
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
Leave Stormwind Keep |goto Stormwind City 69.08,28.70 < 15 |walk |only if subzone("Stormwind Keep")
Run up the stairs and enter the building |goto Ironforge 38.51,85.81 < 7 |walk
talk Grand Mason Marblesten##2790
|tip He walks around inside the building.
turnin A King's Tribute##689 |goto Ironforge 39.04,88.05
|tip The prerequisite for this quest was accepted in the "Wetlands (24-25)" guide.
step
Watch the dialogue
talk Grand Mason Marblesten##2790
|tip He walks around inside the building.
accept A King's Tribute##700 |goto Ironforge 39.04,88.05
step
Follow the path |goto Ironforge 44.56,49.58 < 10 |walk
talk King Magni Bronzebeard##2784
turnin A King's Tribute##700 |goto Ironforge 39.09,56.20
step
talk Roetten Stonehammer##5637
|tip He walks around inside the building.
accept Reclaimers' Business in Desolace##1453 |goto Ironforge 67.91,17.49
step
talk Prospector Stormpike##1356
|tip Inside the building.
turnin Letter to Stormpike##514 |goto Ironforge 74.64,11.73
step
talk Bath'rah the Windwatcher##6176
|tip Inside the building.
|tip Follow the river north to travel to this location.
|tip Avoid Tarren Mill as you travel here.
turnin The Windwatcher##1791 |goto Alterac Mountains 80.50,66.92
accept Cyclonian##1712 |goto Alterac Mountains 80.50,66.92
|only if Warrior
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Desolace (35-37)',
  {
    image = ZGV.IMAGESDIR .. 'Desolace',
    condition_suggested = function()
      return level >= 35 and level <= 37 and not completedq(1187)
    end,
    next = 'Leveling Guides\\Stranglethorn Vale (37-38)',
    hardcore = true,
  },
  [[
step
talk Fahran Silentblade##3969
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Fahran Silentblade##3969 |goto Ashenvale 36.49,49.46 |q 1453
|only if Rogue
step
talk Innkeeper Lyshaerya##11103
|tip Inside the building.
home Nijel's Point |goto Desolace 66.27,6.56
step
talk Brother Anton##1182
|tip Inside the building.
accept Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
talk Kreldig Ungor##5638
turnin Reclaimers' Business in Desolace##1453 |goto Desolace 66.20,9.63
accept The Karnitol Shipwreck##1454 |goto Desolace 66.20,9.63
accept Reagents for Reclaimers Inc.##1458 |goto Desolace 66.20,9.63
step
talk Captain Pentigast##5396
accept Strange Alliance##1382 |goto Desolace 66.66,10.93
step
talk Corporal Melkins##5752
accept Centaur Bounty##1387 |goto Desolace 66.74,10.87
step
talk Vahlarriel Demonslayer##5642
accept Vahlarriel's Search##1437 |goto Desolace 66.44,11.82
step
Follow the path west |goto Desolace 36.3,45.4 < 20 |walk
talk Mannoroc Warden##46091
accept Remnants of the Nether##27258 |goto Desolace 36.3,45.4
accept Wanted: Wilfiz Silverbit##27265 |goto Desolace 36.3,45.4
|tip Both quests are in the Mannoroc Coven area. Wilfiz is found north of the coven.
step
collect 10 Remnants of the Nether##63126 |q 27258/1 |goto Desolace 36.3,45.4
|tip These drop from demons in Mannoroc Coven.
|tip You can collect them while doing other quests in this area.
step
kill Wilfiz Silverbit##46097 |q 27265/1 |goto Desolace 51.3,68.6
|tip He's found north of Mannoroc Coven.
stickystart "Collect_Hatefury_Horns"
step
Follow the path down |goto Desolace 67.05,13.04 < 20 |only if walking and subzone("Nijel's Point")
Kill Hatefury enemies around this area
collect 10 Hatefury Claw##6246 |q 1458/1 |goto Desolace 75.60,23.34
|tip Hatefury Rogues will pop in and out of stealth periodically. |only if hardcore |notinsticky
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
label "Collect_Hatefury_Horns"
Kill Hatefury enemies around this area |notinsticky
collect 10 Hatefury Horn##6247 |q 1458/2 |goto Desolace 75.60,23.34
|tip Hatefury Rogues will pop in and out of stealth periodically. |only if hardcore |notinsticky
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
Kill enemies around this area
|tip Getting this far into level 35 will allow you to reach level 36 after turning in quests soon.
|tip Hatefury Rogues will pop in and out of stealth periodically. |only if hardcore |notinsticky
ding 35,64500 |goto Desolace 75.60,23.34
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
Follow the path up into Nijel's Point |goto Desolace 67.43,15.57 < 20 |only if walking
talk Kreldig Ungor##5638
turnin Reagents for Reclaimers Inc.##1458 |goto Desolace 66.20,9.63
accept Reagents for Reclaimers Inc.##1459 |goto Desolace 66.20,9.63
stickystart "Collect_Aged_Kodo_Hides"
stickystart "Collect_Scorp_Venom"
step
click Malem Chest##50961
turnin Vahlarriel's Search##1437 |goto Desolace 56.54,17.83
accept Vahlarriel's Search##1465 |goto Desolace 56.54,17.83
step
talk Bibbly F'utzbuckle##11438
|tip He walks around this area.
accept Bone Collector##5501 |goto Desolace 62.33,38.98
accept Massive Profits##27253 |goto Desolace 62.33,38.98
|tip Do this quest along with the Kodo Roundup coming up.
step
talk Azore Aldamort##11863
accept Sceptre of Light##5741 |goto Desolace 38.88,27.17
stickystop "Collect_Scorp_Venom"
stickystop "Collect_Aged_Kodo_Hides"
step
click Karnitol's Chest##35251
turnin The Karnitol Shipwreck##1454 |goto Desolace 36.11,30.45
accept The Karnitol Shipwreck##1455 |goto Desolace 36.11,30.45
step
click Rackmore's Log##177787
|tip It's a small book on the ground.
accept Claim Rackmore's Treasure!##6161 |goto Desolace 36.07,30.41
step
Kill Drysnap enemies around this area
|tip They look like lobsters underwater around this area.
|tip Pull enemies to the top of the water so your breath meter doesn't deteriorate while fighting. |only if hardcore
collect Rackmore's Silver Key##15878 |q 6161/1 |goto Desolace 32.78,31.37
stickystart "Collect_Aged_Kodo_Hides"
stickystart "Collect_Scorp_Venom"
step
Leave the water |goto Desolace 36.05,31.01 < 40 |only if walking and subzone("Sar'theris Strand")
talk Smeed Scrabblescrew##11596
|tip Avoid Ghost Walker Post as you travel here.
accept Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
collect 3 Fossilised Gallbladder##63124 |q 27253/1 |goto Desolace 54.45,63.19
|tip These are found in large kodo skeletons around the Kodo Graveyard.
|tip Look for the largest skeleton remains and right-click them.
stickystart "Collect_Kodo_Bones"
step
use the Kodo Kombobulator##13892
|tip Use it on Kodo enemies around this area.
|tip You can find more all around this bone graveyard area.
Tame #5# Kodos |q 5561/1 |goto Desolace 54.45,63.19
|tip You must bring them back to Smeed Scrabblescrew to tame them.
|tip Talk to the kodos after you bring them to Smeed Scrabblescrew.
Bring the Kodos back to [60.73,61.96]
Gather more Kodos from here [54.45,63.19]
step
talk Smeed Scrabblescrew##11596
turnin Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
talk Bibbly F'utzbuckle##11438
turnin Massive Profits##27253 |goto Desolace 62.33,38.98
step
label "Collect_Kodo_Bones"
click Kodo Bones##176751
|tip They look like large white horned animal skulls on the ground around this area.
|tip A Kodo Apparition may appear and attack you.
collect 10 Kodo Bone##13703 |q 5501/1 |goto Desolace 51.31,58.04
step
label "Collect_Aged_Kodo_Hides"
kill Aged Kodo##4700+
collect 3 Aged Kodo Hide##6249 |q 1459/2 |goto Desolace 51.41,58.45
stickystop "Collect_Scorp_Venom"
stickystart "Collect_CentaurEars"
step
label "Reach_Friendly_Reputation_With_The_Gelkis_Clan_Centaur"
Kill Magram enemies around this area
|tip The ones in the outskirts of the village are a bit lower level and easier to grind.
|tip Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards.
|tip Magram Stormers are ranged attackers that deal heavy damage.						|only if hardcore
Reach Friendly Reputation with the Gelkis Clan Centaur |q 1382/1 |goto Desolace 70.30,73.77
stickystop "Collect_CentaurEars"
stickystart "Collect_Scorp_Venom"
step
talk Doomfang##46083
|tip He is in the Magram Village area.
accept An End To Dread##27237 |goto Desolace 70.30,73.77
step
Follow the road |goto Desolace 50.33,75.54 < 30 |only if walking
talk Mannoroc Warden##46091
turnin Remnants of the Nether##27258 |goto Desolace 36.3,45.4
|tip On the way to Uthek, travel to Mannoroc Coven to turnin first.
step
Follow the road |goto Desolace 50.33,75.54 < 30 |only if walking
talk Uthek the Wise##5397
turnin Strange Alliance##1382 |goto Desolace 36.23,79.25
accept Raid on the Kolkar##1384 |goto Desolace 36.23,79.25
step
talk Kreldig Ungor##5638
turnin The Karnitol Shipwreck##1455 |goto Desolace 66.20,9.63
accept The Karnitol Shipwreck##1456 |goto Desolace 66.20,9.63
turnin Reagents for Reclaimers Inc.##1459 |goto Desolace 66.20,9.63
step
talk Corporal Melkins##5752
turnin Centaur Bounty##1387 |goto Desolace 66.74,10.87
step
talk Vahlarriel Demonslayer##5642
turnin Vahlarriel's Search##1465 |goto Desolace 66.44,11.82
accept Vahlarriel's Search##1438 |goto Desolace 66.44,11.82
stickystop "Collect_Scorp_Venom"
stickystart "Collect_CentaurEars"
step
Kill Kolkar enemies around this area
|tip Watch for patrols and respawns here.				|only if hardcore
|tip Kolkar Windchasers are ranged attackers that deal heavy damage.	|only if hardcore
|tip Enemies may run away in fear when at low health.			|only if hardcore
collect 10 Crude Charm##6079 |q 1384/1 |goto Desolace 70.03,41.94
You can find more around: |notinsticky
[72.07,47.01]
[73.61,50.00]
step
label "Collect_CentaurEars"
Kill Centaur enemies around this area. |notinsticky
|tip Watch for patrols and respawns here.	|only if hardcore |notinsticky
|tip Enemies may run away in fear when at low health. |only if hardcore |notinsticky
collect 15 Centaur Ear##6067 |q 1387/1 |goto Desolace 70.03,41.94
stickystart "Collect_Scorp_Venom"
step
talk Bibbly F'utzbuckle##11438
|tip He walks around this area.
turnin Bone Collector##5501 |goto Desolace 62.33,38.98
step
Follow the path |goto Desolace 56.06,29.54 < 10 |only if walking
kill Burning Blade Seer##13019
|tip At the top of the tower.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Burning Blade Adepts/Augurs are ranged attackers that deal heavy damage |only if hardcore
|tip Be careful while traveling through the area. |only if hardcore
|tip Enemies are often hidden around corners resulting in undesirable adds in fights. |only if hardcore
collect Sceptre of Light##15750 |q 5741/1 |goto Desolace 55.17,30.15
stickystop "Collect_Scorp_Venom"
step
Enter the building |goto Desolace 55.48,27.83 < 10 |walk
|tip Watch for the patrol that walks counter clock-wise around this building. |only if hardcore
talk Dalinda Malem##5644
|tip Inside the building.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
turnin Vahlarriel's Search##1438 |goto Desolace 54.86,26.13
accept Search for Tyranis##1439 |goto Desolace 54.86,26.13
step
Leave the building |goto Desolace 55.48,27.83 < 10 |walk
Enter the building |goto Desolace 53.73,29.42 < 10 |walk
|tip Watch for the patrol that walks clock-wise around this building. |only if hardcore
kill Tyranis Malem##5643
|tip Inside the building.
|tip Try to pull him toward the building entrance, so you don't accidentally aggro other enemies.
collect Tyranis' Pendant##6767 |q 1439/1 |goto Desolace 53.01,29.08
step
Leave the building |goto Desolace 53.73,29.42 < 10 |walk
Enter the building |goto Desolace 55.48,27.83 < 10 |walk
|tip Watch for the patrol that walks counter clock-wise around this building. |only if hardcore
talk Dalinda Malem##5644
|tip Inside the building.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
|tip Clear enemies inside the building if you end up having to wait. |only if hardcore
turnin Search for Tyranis##1439 |goto Desolace 54.86,26.13
accept Return to Vahlarriel##1440 |goto Desolace 54.86,26.13 |noautoaccept
|tip This is an escort quest.
|tip Kill all enemies in this room before starting the quest.
step
Watch the dialogue
|tip Follow Dalinda Malem and protect her as she walks.
|tip She eventually walks to this location.
Rescue Dalinda Malem |q 1440/1 |goto Desolace 58.26,30.95
step
talk Azore Aldamort##11863
turnin Sceptre of Light##5741 |goto Desolace 38.89,27.17
accept Book of the Ancients##6027 |goto Desolace 38.89,27.17
stickystart "Collect_Karnitols_Satchel"
step
click Serpent Statue
|tip You will be attacked immediately, so make sure you are ready before hand.
kill Lord Kragaru##12369
|tip He's level 38, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
collect Book of the Ancients##15803 |q 6027/1 |goto Desolace 28.19,6.62
step
click Rackmore's Chest##177786
|tip On the ground at the base of the tree.
|tip Enemies around this area may run away when at low health.			|only if hardcore
|tip Destroy totems that Slitherblade Oracles summon.				|only if hardcore
|tip Slitherblade Sorceress' are ranged attackers that deal heavy damage.	|only if hardcore
turnin Claim Rackmore's Treasure!##6161 |goto Desolace 30.00,8.70
step
label "Collect_Karnitols_Satchel"
Kill Slitherblade enemies around this area
|tip Only Slitherblade Tidehunters and Slitherblade Sea Witches will drop the quest item.
|tip They share spawn points with other types of naga on this island.
|tip Kill all types of naga on this island, to try to get more to spawn.
|tip This drop rate is very low but it is worth doing, it is not advised to skip this step.
|tip Enemies around this area may run away when at low health.			|only if hardcore |notinsticky
|tip Destroy totems that Slitherblade Oracles summon.				|only if hardcore |notinsticky
|tip Slitherblade Sorceress' are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
collect Karnitol's Satchel##6245 |q 1456/1 |goto Desolace 28.19,6.62
You can find more underwater around [32.18,9.57]
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 37.
|tip Grinding a bit here will reduce the amount you have to grind all at once later.
|tip Enemies around this area may run away when at low health.			|only if hardcore
|tip Destroy totems that Slitherblade Oracles summon.				|only if hardcore
|tip Slitherblade Sorceress' are ranged attackers that deal heavy damage.	|only if hardcore
ding 37 |goto Desolace 28.92,7.85
step
Kill Slitherblade enemies around this area
|tip Underwater.
|tip Pull enemies to the top of the water so your breath meter doesn't deteriorate while fighting. |only if hardcore
collect Rackmore's Golden Key##15881 |q 6161/2 |goto Desolace 35.20,24.86
step
Follow the path up |goto Desolace 40.99,28.91 < 20 |only if walking
talk Azore Aldamort##11863
turnin Book of the Ancients##6027 |goto Desolace 38.89,27.17
stickystart "Collect_Scorp_Venom"
step
Follow the path through the mountains |goto Desolace 41.53,65.03 < 70 |only if walking and not subzone("Gelkis Village")
talk Uthek the Wise##5397
turnin Raid on the Kolkar##1384 |goto Desolace 36.22,79.25
accept Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
Follow the road |goto Desolace 47.02,75.18 < 40 |only if walking and not subzone("Magram Village")
click Sack of Meat##22245+
|tip They look like tan leather bags on the ground near the buildings around this area.
|tip Not all of the tan bags you see will be clickable.
|tip The ones in the outskirts of the village are a bit lower level and easier to grind.			|notinsticky
|tip Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards.	|notinsticky
|tip Magram Stormers are ranged attackers that deal heavy damage.						|only if hardcore |notinsticky
collect 6 Crudely Dried Meat##6069 |q 1370/1 |goto Desolace 70.90,75.47
step
kill 30 Undead Ravager##11561 |q 261/1 |goto Desolace 63.96,91.95
|tip They look like brown skeletons.
|tip This quest can be hard at this level, skip it if you don't feel safe. You will get another chance later. |only if hardcore
|tip We recommend trying to complete this quest now if you want to run Scarlet Monastery at level 39-40. |only if hardcore
|tip Watch for respawns while in the area.	|only if hardcore
You can find more around: |notinsticky
[59.78,89.83]
[64.52,82.42]
step
talk Mannoroc Warden##46091
|tip Travel to Mannoroc Coven north of the village.
turnin Wanted: Wilfiz Silverbit##27265 |goto Desolace 36.3,45.4
turnin An End To Dread##27237 |goto Desolace 36.3,45.4
step
Follow the road |goto Desolace 48.39,75.67 < 40 |only if walking and not subzone("Gelkis Village")
talk Uthek the Wise##5397
turnin Stealing Supplies##1370 |goto Desolace 36.22,79.25
accept Ongeku##1373 |goto Desolace 36.22,79.25 |only if not hardcore
step
label "Collect_Scorp_Venom"
Kill Scorpashi enemies as you quest.
'|kill Scorpashi Snapper##4696, Scorpashi Lasher##4697, Scorpashi Venomlash##4699
|tip These scorpions share spawn points with basilisk enemies, so kill those too, if you can't find any.
collect 10 Scorpashi Venom##6248 |q 1459/1 |goto Desolace 72.00,31.00
You can find more around: |notinsticky
[65.00,23.00]
[59.00,21.00]
step
talk Kreldig Ungor##5638
turnin The Karnitol Shipwreck##1456 |goto Desolace 66.20,9.63
accept The Karnitol Shipwreck##1457 |goto Desolace 66.20,9.63
turnin Reagents for Reclaimers Inc.##1459 |goto Desolace 66.20,9.63
step
talk Vahlarriel Demonslayer##5642
turnin Return to Vahlarriel##1440 |goto Desolace 66.44,11.82
step
talk Brother Anton##1182
|tip Inside the building.
turnin Down the Scarlet Path##261 |goto Desolace 66.52,7.91
accept Down the Scarlet Path##1052 |goto Desolace 66.52,7.91
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Kravel's Parts##5800 |goto Tanaris 52.30,28.91 |q 1112
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Karnitol's Satchel##6245 |goto Tanaris 52.30,28.91 |q 1457 |future
step
talk Kravel Koalbeard##4452
turnin Parts for Kravel##1112 |goto Thousand Needles 77.79,77.26
step
Watch the dialogue
talk Kravel Koalbeard##4452
accept Delivery to the Gnomes##1114 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
turnin Delivery to the Gnomes##1114 |goto Thousand Needles 78.06,77.12
step
talk Kravel Koalbeard##4452
accept The Rumormonger##1115 |goto Thousand Needles 77.79,77.27
step
talk Pozzik##4630
turnin Goblin Sponsorship##1183 |goto Thousand Needles 80.18,75.88
accept The Eighteenth Pilot##1186 |goto Thousand Needles 80.18,75.88
step
talk Razzeric##4706
turnin The Eighteenth Pilot##1186 |goto Thousand Needles 80.33,76.09
accept Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stranglethorn Vale (37-38)',
  {
    image = ZGV.IMAGESDIR .. 'Stranglethorn Vale',
    condition_suggested = function()
      return level >= 37 and level <= 38 and not completedq(577)
    end,
    next = 'Leveling Guides\\Swamp of Sorrows (38-39)',
    hardcore = true,
  },
  [[
step
Enter the building |goto Stranglethorn Vale 28.11,74.98 < 10 |walk
talk Zarena Cromwind##2482
|tip Inside the building.
buy Big Stick##12251 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Zarena Cromwind##2482 |goto Stranglethorn Vale 28.34,75.46 |q 577 |future
|only if Warrior and itemcount(12251) == 0
step
Run up the ramp |goto Stranglethorn Vale 27.85,76.76 < 10 |only if walking
Cross the bridge |goto Stranglethorn Vale 28.15,76.53 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.33 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
accept Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk
talk Innkeeper Skindle##6807
|tip Inside the building.
home Booty Bay |goto Stranglethorn Vale 27.04,77.31
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin The Rumormonger##1115 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
accept Bloodscalp Ears##189 |goto Stranglethorn Vale 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
accept Water Elementals##601 |goto Stranglethorn Vale 27.23,76.87
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale 39.06,5.21 < 20 |only if walking
talk Brother Nimetz##739
accept Kurzen's Mystery##207 |goto Stranglethorn Vale 37.83,3.56
step
talk Sergeant Yohwa##733
accept Special Forces##574 |goto Stranglethorn Vale 38.02,3.33
step
talk Corporal Sethman##1422
accept Stop The Shrinking##26902 |goto Stranglethorn Vale 37.7,3.4
|tip This quest requires you to pick up a tablet in Booty Bay and kill trolls to unlock cages.
step
talk Corporal Kaleb##770
turnin Return to Corporal Kaleb##622 |goto Stranglethorn Vale 37.74,3.30
step
talk Lieutenant Doren##469
accept Bookie Herod##200 |goto Stranglethorn Vale 38.04,3.01
|tip This requires you to complete the quest "Jungle Secrets" in the "Stranglethorn Vale (32-32)" guide.
|only if completedq(215)
step
Follow the path |goto Stranglethorn Vale 40.32,8.35 < 50 |only if walking and not subzone("Kurzen's Compound")
Enter the building |goto Stranglethorn Vale 44.02,9.46 < 10 |walk
click Bookie Herod's Records
|tip Upstairs inside the building.
turnin Bookie Herod##200 |goto Stranglethorn Vale 43.67,9.37
accept The Hidden Key##328 |goto Stranglethorn Vale 43.67,9.37
step
label "Collect_Liferoot_Warrior"
kill Kurzen Medicine Man##940+
|tip They share spawn points with the other enemies around this area, so kill those too, if you can't find any.
collect 8 Liferoot##3357 |q 1712/1 |goto Stranglethorn Vale 44.34,10.02
|tip You need these for an important class quest soon.
|tip Be careful not to accidentally sell these to a vendor.
|only if Warrior
stickystart "Collect_Silk_Cloth"
stickystart "Kill_Kurzen_Headshrinkers"
stickystart "Kill_Kurzen_Commandos"
step
Enter the cave |goto Stranglethorn Vale 45.82,8.18 < 40 |walk
Follow the path |goto Stranglethorn Vale 46.65,6.99 < 15 |walk
Follow the path down |goto Stranglethorn Vale 47.78,7.81 < 10 |walk
Follow the path |goto Stranglethorn Vale 48.78,8.64 < 10 |walk
click Bookie Herod's Strongbox##288
|tip Downstairs inside the cave.
|tip Kurzen Headshrinkers are ranged attackers that deal heavy damage.	|only if hardcore
|tip Watch for stealthed Kurzen Commandos while traversing the cave.	|only if hardcore
|tip Enemies may flee when at low health in the cave.			|only if hardcore
turnin The Hidden Key##328 |goto Stranglethorn Vale 49.61,7.57
accept The Spy Revealed!##329 |goto Stranglethorn Vale 49.61,7.57
step
Follow the path up |goto Stranglethorn Vale 48.20,8.53 < 10 |c |q 574
step
label "Collect_Silk_Cloth"
Kill Kurzen enemies around this area |notinsticky
|tip Inside the cave. |notinsticky
|tip Kurzen Headshrinkers will not drop Silk Cloth. |notinsticky
|tip Kurzen Headshrinkers are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
|tip Watch for stealthed Kurzen Commandos while traversing the cave.	|only if hardcore |notinsticky
|tip Enemies may flee when at low health in the cave.			|only if hardcore |notinsticky
collect 15 Silk Cloth##4306 |goto Stranglethorn Vale 46.48,7.08 |q 4449 |future
|tip Be careful not to accidentally sell these to a vendor.
|tip You will need these for a quest in Searing Gorge later.
step
label "Kill_Kurzen_Headshrinkers"
kill 6 Kurzen Headshrinker##941 |q 574/2 |goto Stranglethorn Vale 46.48,7.08
|tip Inside the cave, on the top level.
|tip Watch for stealthed Kurzen Commandos while traversing the cave.	|only if hardcore |notinsticky
|tip Enemies may flee when at low health in the cave.			|only if hardcore |notinsticky
step
label "Kill_Kurzen_Commandos"
kill 10 Kurzen Commando##938 |q 574/1 |goto Stranglethorn Vale 46.48,7.08
|tip They are stealthed upstairs inside the cave, on the top level.
|tip Kurzen Headshrinkers are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
|tip Enemies may flee when at low health in the cave.			|only if hardcore |notinsticky
step
Leave the cave |goto Stranglethorn Vale 45.82,8.18 < 40 |walk |only if subzone("The Stockpile")
Follow the path up |goto Stranglethorn Vale 42.25,18.10 < 10 |only if walking
kill Foreman Cozzle##4723
|tip Inside the building at the top of the platform.
|tip Be careful not to accidentally aggro him while killing other enemies near the building.
|tip Try to clear all enemies as you travel up as they can aggro randomly through the floor.
|tip If you have trouble, try to find someone to help you.
collect Cozzle's Key##5851 |goto Stranglethorn Vale 42.65,18.35 |q 1182
|only if hardcore
step
Enter the building |goto Stranglethorn Vale 43.45,20.36 < 10 |walk
click Cozzle's Footlocker##20691
|tip Inside the building.
collect Fuel Regulator Blueprints##5852 |q 1182/1 |goto Stranglethorn Vale 43.34,20.34
|only if hardcore
stickystart "Kill_CrocolisksSTV"
step
kill 10 Shadowmaw Panther##684 |q 192/1 |goto Stranglethorn Vale 49.23,22.66
|tip They are stealthed around this area.
|tip They do not share spawn points with Stranglethorn Tigresses.
|tip When waiting on respawns, go to the coast and kill Crocolisks then return.
|tip Be careful to avoid the level 40 elite non-stealthed black panther, Bhag'thera, if you see him.
You can find more around [46.42,27.34]
step
label "Kill_CrocolisksSTV"
kill Snapjaw Crocolisk##1152+
|tip Underwater and on the shores near the water around this area.
collect 5 Snapjaw Crocolisk Skin##4104 |q 577/1 |goto Stranglethorn Vale 39.28,30.27
You can find more around: |notinsticky
[40.03,24.70]
[41.52,19.48]
step
kill 10 Lashtail Raptor##686 |q 195/1 |goto Stranglethorn Vale 38.29,19.37
You can find more around: |notinsticky
[38.52,26.06]
[35.81,26.67]
[32.72,24.28]
[30.55,24.12]
step
kill 10 Elder Stranglethorn Tiger##1085 |q 187/1 |goto Stranglethorn Vale 34.68,18.95
You can find more around [31.55,19.39]
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
accept Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
talk Ajeck Rouack##717
turnin Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
accept Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
kill Sin'Dall##729
|tip He looks like an orange tiger that walks around this area.
|tip He's usually on top of this hill, though.
collect Paw of Sin'Dall##3879 |q 188/1 |goto Stranglethorn Vale 32.21,17.39
stickystart "Collect_Bloodscalp_Ears"
step
click Moon Over the Vale##57
|tip Enemies are close togheter around this area.				|only if hardcore
|tip Try to pull form the North Eastern end of the ruins while clearing.	|only if hardcore
collect The First Troll Legend##2005 |q 207/1 |goto Stranglethorn Vale 29.48,19.15
stickystop "Collect_Bloodscalp_Ears"
step
click Gri'lek the Wanderer##179426
|tip Underwater.
|tip Be careful to avoid the elite murlocs nearby.
|tip Swim down when near the coordinate provided for the step.		|only if hardcore
|tip You should be able to easily avoid the elite enemies if doing so.	|only if hardcore
collect The Second Troll Legend##2006 |q 207/2 |goto Stranglethorn Vale 24.75,22.84
step
kill Lesser Water Elemental##691+
|tip These enemies are immune to frost damage.
collect 6 Water Elemental Bracers##3923 |q 601/1 |goto Stranglethorn Vale 21.13,22.70
stickystart "Collect_Bloodscalp_Ears"
step
Follow the path up |goto Stranglethorn Vale 21.42,10.16 < 15 |only if walking and not subzone("Ruins of Zul'Kunda")
step
free 8 Alliance Adventurer |q 26902/1 |goto Stranglethorn Vale 23.53,10.29
|tip These are NPCs in cages around the Ruins of Zul'Kunda.
|tip Click on the Alliance Adventurers to free them.
step
Continue up the path |goto Stranglethorn Vale 23.84,10.65 < 20 |only if walking
click The Emperor's Tomb##54
|tip Watch for patrols and respawns while traveling through this area.					|only if hardcore
|tip Be wary of Bloodscalp Headhunters as they are ranged attackers and may aggro from a distance.	|only if hardcore
|tip Bloodscalp enemies enrage to deal more damage when at low health.					|only if hardcore
collect The Fourth Troll Legend##2008 |q 207/4 |goto Stranglethorn Vale 24.70,8.93
step
Follow the path |goto Stranglethorn Vale 24.51,11.72 < 15 |only if walking
click Fall of Gurubashi##52
|tip Watch for patrols and respawns while traveling through this area.					|only if hardcore
|tip Be wary of Bloodscalp Headhunters as they are ranged attackers and may aggro from a distance.	|only if hardcore
|tip Bloodscalp enemies enrage to deal more damage when at low health.					|only if hardcore
collect The Third Troll Legend##2007 |q 207/3 |goto Stranglethorn Vale 22.95,12.02
stickystart "Collect_Bloodscalp_Tusks_Warrior"
step
label "Collect_Bloodscalp_Ears"
Kill Bloodscalp enemies around this area
|tip Watch for patrols and respawns while traveling through this area.					|only if hardcore |notinsticky
|tip Be wary of Bloodscalp Headhunters as they are ranged attackers and may aggro from a distance.	|only if hardcore |notinsticky
|tip Bloodscalp enemies enrage to deal more damage when at low health.					|only if hardcore |notinsticky
collect 15 Bloodscalp Ear##1519 |q 189/1 |goto Stranglethorn Vale 25.21,11.30
step
label "Collect_Bloodscalp_Tusks_Warrior"
Kill Bloodscalp enemies around this area
collect 9 Bloodscalp Tusk##3901 |q 1712/2 |goto Stranglethorn Vale 25.21,11.30
|only if Warrior
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 38.
|tip Grinding a bit here will reduce the amount you have to grind all at once later.
ding 38 |goto Stranglethorn Vale 28.36,11.33
You can find more around [Stranglethorn Vale 26.26,16.06]
step
talk Ajeck Rouack##717
turnin Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale 39.04,5.19 < 20 |only if walking
talk Brother Nimetz##739
turnin Kurzen's Mystery##207 |goto Stranglethorn Vale 37.83,3.56
accept Troll Witchery##205 |goto Stranglethorn Vale 37.83,3.56
step
talk Lieutenant Doren##469
turnin Special Forces##574 |goto Stranglethorn Vale 38.04,3.01
turnin The Spy Revealed!##329 |goto Stranglethorn Vale 38.04,3.01
accept Patrol Schedules##330 |goto Stranglethorn Vale 38.04,3.01
step
talk Corporal Sethman##1422
turnin Patrol Schedules##330 |goto Stranglethorn Vale 37.66,3.39
turnin Stop The Shrinking##26902 |goto Stranglethorn Vale 37.66,3.39
accept Report to Doren##331 |goto Stranglethorn Vale 37.66,3.39
step
talk Lieutenant Doren##469
turnin Report to Doren##331 |goto Stranglethorn Vale 38.04,3.01
step
talk Corporal Bluth##734
|tip Buy enough ammo to fill your ammo bag, plus 6-8 extra stacks.
|tip You will be questing and grinding for a while without access to an arrow vendor.
Visit the Vendor |vendor Corporal Bluth##734 |goto Stranglethorn Vale 37.96,2.99 |q 205
|only if Hunter
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
turnin Bloodscalp Ears##189 |goto Stranglethorn Vale 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87 |only if hardcore
accept Goblin Sponsorship##1183 |goto Stranglethorn Vale 27.23,76.87 |only if hardcore
turnin Water Elementals##601 |goto Stranglethorn Vale 27.23,76.87
accept Magical Analysis##602 |goto Stranglethorn Vale 27.23,76.87
step
talk Viznik Goldgrubber##2625
|tip Deposit these items into the bank.
bank Bag of Water Elemental Bracers##3960 |goto Stranglethorn Vale 26.54,76.57 |q 602 |future
bank Silk Cloth##4306 |goto Stranglethorn Vale 26.54,76.57 |q 4449 |future
|tip You should have 15 of these.
step
Run up the ramp |goto Stranglethorn Vale 27.85,76.74 < 10 |only if walking
Cross the bridge |goto Stranglethorn Vale 28.15,76.53 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.33 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
turnin Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building |goto Stranglethorn Vale 28.11,74.98 < 10 |walk
talk Zarena Cromwind##2482
|tip Inside the building.
buy Big Stick##12251 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Zarena Cromwind##2482 |goto Stranglethorn Vale 28.34,75.46 |q 602
|only if Warrior and itemcount(12251) == 0
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Swamp of Sorrows (38-39)',
  {
    image = ZGV.IMAGESDIR .. 'Swamp of Sorrows',
    condition_suggested = function()
      return level >= 38 and level <= 39 and not completedq(525)
    end,
    next = 'Leveling Guides\\Alterac Mountains (39-39)',
    hardcore = true,
  },
  [[
step
talk Jasper Fel##1325
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 1448 |future
|only if Rogue
step
Enter the building |goto Stormwind City 63.60,22.83 < 10 |walk
talk Brohann Caskbelly##5384
|tip Inside the building.
accept In Search of The Temple##1448 |goto Stormwind City 64.33,20.66
step
Enter the building |goto Stormwind City 39.84,85.25 < 10 |walk
talk Angus Stern##1141
|tip Inside the building.
accept Morgan Stern##1260 |goto Stormwind City 41.50,89.39
step
Enter the building |goto Stormwind City 50.94,57.84 < 7 |walk
talk Frederick Stover##1298
buy Massive Longbow##11307 |n
|tip If you can afford it.
|tip It's a limited supply item, so it may not be for sale.
|tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
|tip We will check vendors for it along the way, if it's not here right now.
|tip If you have better, skip this step.
Visit the Vendor |vendor Frederick Stover##1298 |goto Stormwind City 49.98,57.64 |q 1260
|only if Hunter and itemcount(11307) == 0
step
Enter the building |goto Stormwind City 29.14,74.17 < 10 |walk
talk Spackle Thornberry##5520
|tip Downstairs inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 1260
|only if Warlock
step
Enter the building |goto Duskwood 75.56,45.37 < 10 |walk
talk Alyssa Eva##1673
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Alyssa Eva##1673 |goto Duskwood 76.28,45.27 |q 1260
|only if Mage
step
_Note_
Be very careful to avoid the Stonard Scouts
|tip They are currently bugged and will PvP flag you just for being near them.
|tip This will let horde players attack and kill your character for the next 5 minutes.
Click Here To Confirm |confirm
|only if hardcore
step
Follow the road through Deadwind Pass |goto Duskwood 87.73,40.68 < 40 |only if walking and not zone("Swamp of Sorrows")
Cross the bridge |goto Deadwind Pass/0 41.89,34.66 < 20 |only if walking and not zone("Swamp of Sorrows")
Continue following the road into Swamp of Sorrows |goto Deadwind Pass 52.04,43.41 < 30 |only if walking and not zone("Swamp of Sorrows")
Kill Whelp enemies around this area
|tip They look like tiny flying dragons.
|tip There's not enough whelps here to complete the quest without waiting for respawns.
|tip Kill all of the whelps you can find, then skip to the next step.
|tip We'll come back later to finish up the quest.
collect 10 Speck of Dream Dust##5803 |q 1116/1 |goto Swamp of Sorrows 14.74,60.20
step
_NOTE:_
Pick up all the gathering quests from the quest givers around the Harborage
talk Ocniir##45875
accept Ocniir's Beloved Rods##26913 |goto Swamp of Sorrows 29.53,35.14
step
talk Barthus##45877
accept Karabor Stew##26916 |goto Swamp of Sorrows 28.15,36.12
accept Eight-Legged Fillets##26917 |goto Swamp of Sorrows 28.15,36.12
accept A Real Kick##26918 |goto Swamp of Sorrows 28.15,36.12
step
talk Elder Ghast##11874
accept Skins of the Swamp##26920 |goto Swamp of Sorrows 26.97,40.45
|tip This quest has a follow-up that you'll pick up later with driftwood.
step
click Wanted: Spinnaret poster
accept Wanted: Spinnaret##26923 |goto Swamp of Sorrows 23.68,43.12
step
click Ocniir's Chest##250357
|goto Swamp of Sorrows 31.30,39.34
|tip This is the shipwreck south of the Harborage.
step
kill 10 Silt Crawler##922 |q 26916/1 |goto Swamp of Sorrows 45,55
|tip These are found along the eastern coast of the Swamp.
collect 10 Massive Crawler Claw##62780 |q 26916/1
step
kill 10 Deathstrike Tarantula##769 |q 26917/1 |goto Swamp of Sorrows 35,45
|tip These are found southeast of the Harborage.
collect 10 Engorged Spider Fillet##62781 |q 26917/1
step
collect 8 Fire Snap Chili Pepper##62782 |q 26918/1 |goto Swamp of Sorrows 25,40
|tip These are Fire Snap Chili plants scattered around the Swamp.
|tip Click on the plants to collect peppers.
step
kill 8 Young Sawtooth Crocolisk##1084 |q 26920/1 |goto Swamp of Sorrows 24.26,41.68
|tip You can find more around the area.
collect 8 Thick Crocolisk Skin##62785 |q 26920/1
step
kill 8 Swamp Jaguar##767 |q 26920/2 |goto Swamp of Sorrows 22.74,42.75
|tip You can find these around the swamp.
collect 8 Tough Jaguar Skin##62786 |q 26920/2
step
kill Spinnaret##45883 |q 26923/1 |goto Swamp of Sorrows 40,55
|tip This spider boss is found east of the Harborage.
step
Follow the path |goto Swamp of Sorrows 17.74,55.71 < 40 |only if walking and subzone("Itharius's Cave")
talk Watcher Biggs##5476
accept Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
stickystart "Kill_Young_Sawtooth_Crocolisks"
stickystart "Kill_Sorrow_Spinners"
stickystart "Kill_Swamp_Jaguars"
step
path	follow strict;	loop;	ants curved;	dist 30
path	32.39,35.38		33.15,43.58		37.34,46.76		42.24,33.84
path	47.11,38.83		49.86,40.28		54.02,39.21		55.84,35.85
kill Noboru the Cudgel##5477
|tip He looks like a larger Lost One creature that walks around this area with 2 bodyguards.
collect Noboru's Cudgel##6196 |q 1392 |future
step
use Noboru's Cudgel##6196
accept Noboru the Cudgel##1392
step
talk Magtoor##1776
turnin Noboru the Cudgel##1392 |goto Swamp of Sorrows 25.99,31.40
accept Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.99,31.40
step
label "Kill_Young_Sawtooth_Crocolisks"
kill 8 Young Sawtooth Crocolisk##1084 |q 1396/1 |goto Swamp of Sorrows 24.26,41.68
You can find more around: |notinsticky
[26.24,52.44]
[31.68,47.06]
[30.90,39.17]
[35.26,34.86]
step
label "Kill_Sorrow_Spinners"
kill 10 Sorrow Spinner##858 |q 1396/2 |goto Swamp of Sorrows 21.91,40.55
|tip They look like spiders.
You can find more around: |notinsticky
[26.91,46.17]
[24.13,61.24]
[38.10,30.72]
step
label "Kill_Swamp_Jaguars"
kill 10 Swamp Jaguar##767 |q 1396/3 |goto Swamp of Sorrows 22.74,42.75
You can find more around: |notinsticky
[30.59,51.52]
[37.17,47.91]
[43.06,42.32]
[37.77,38.04]
[37.85,31.20]
step
Kill Whelp enemies around this area
|tip They look like tiny flying dragons.
|tip Skip this step once you fully clear the area, we'll come back again.
collect 10 Speck of Dream Dust##5803 |q 1116/1 |goto Swamp of Sorrows 14.74,60.20
step
Follow the path |goto Swamp of Sorrows 17.74,55.71 < 40 |only if walking and subzone("Itharius's Cave")
talk Watcher Biggs##5476
turnin Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
accept The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
stickystart "Collect_Draenethyst_Crystals"
step
kill Ongeku##5622
|tip He walks around this area, and can spawn in multiple locations.
|tip Watch for enemies around the buildings here as they tend to aggro in groups. |only if hardcore
|tip Pull carefully while in the area. |only if hardcore
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect Draenethyst Shard##6190 |q 1373/1 |goto Swamp of Sorrows 61.31,23.25
Also check around [65.12,22.22]
|only if not hardcore
step
click Caravan Chest##28024
|tip Watch for enemies around the buildings here as they tend to aggro in groups. |only if hardcore
|tip Pull carefully while in the area. |only if hardcore
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect Wizards' Reagents##6170 |q 1421/1 |goto Swamp of Sorrows 64.46,18.34
step
talk Galen Goodward##5391
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
|tip Clear nearby enemies while waiting. |only if hardcore
|tip He walks through enemies to the south, so you may want to clear a path before accepting this quest.
accept Galen's Escape##1393 |goto Swamp of Sorrows 65.41,18.23 |noautoaccept
|only if not hardcore
step
Watch the dialogue
|tip Follow Galen Goodward and protect him as he walks.
|tip He eventually walks to this location.
Escort Galen Out of the Fallow Sanctuary |q 1393/1 |goto Swamp of Sorrows 53.05,29.64
|only if not hardcore
step
label "Collect_Draenethyst_Crystals"
click Draenethyst Crystal##22550+
|tip They look like large clusters of blue crystals on the ground around this area.
|tip Watch for enemies around the buildings here as they tend to aggro in groups. |only if hardcore |notinsticky
|tip Pull carefully while in the area. |only if hardcore |notinsticky
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
collect 6 Draenethyst Crystal##6071 |q 1389/1 |goto Swamp of Sorrows 55.74,27.60
You can find more around [63.50,22.72]
step
Search for the Temple of Atal'Hakkar |q 1448/1 |goto Swamp of Sorrows 66.68,49.62
step
click Galen's Strongbox##32569
turnin Galen's Escape##1393 |goto Swamp of Sorrows 47.81,39.76
|only if not hardcore
step
talk Magtoor##1776
turnin Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.99,31.40
step
talk Watcher Biggs##5476
turnin The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
step
talk Ocniir##45875
turnin Ocniir's Beloved Rods##26913 |goto Swamp of Sorrows 29.53,35.14
step
talk Barthus##45877
turnin Karabor Stew##26916 |goto Swamp of Sorrows 28.15,36.12
turnin Eight-Legged Fillets##26917 |goto Swamp of Sorrows 28.15,36.12
turnin A Real Kick##26918 |goto Swamp of Sorrows 28.15,36.12
step
talk Elder Ghast##11874
turnin Skins of the Swamp##26920 |goto Swamp of Sorrows 26.97,40.45
step
talk Wanted Master##45876
turnin Wanted: Spinnaret##26923 |goto Swamp of Sorrows 26.97,40.45
step
Kill Whelp enemies around this area
|tip They look like tiny flying dragons.
|tip If you don't finish in one clear, grind mobs in the area and come back once the whelps are respawned.
collect 10 Speck of Dream Dust##5803 |q 1116/1 |goto Swamp of Sorrows 14.74,60.20
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.94,77.21
step
Watch the dialogue
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Rumors for Kravel##1117 |goto Stranglethorn Vale 26.94,77.21
step
Enter the building |goto Stormwind City 50.94,57.84 < 7 |walk
talk Frederick Stover##1298
buy Massive Longbow##11307 |n
|tip If you can afford it.
|tip It's a limited supply item, so it may not be for sale.
|tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
|tip We will check vendors for it along the way, if it's not here right now.
|tip If you have better, skip this step.
Visit the Vendor |vendor Frederick Stover##1298 |goto Stormwind City 49.98,57.64 |q 1448
|only if Hunter and itemcount(11307) == 0
step
Enter the building |goto Stormwind City 55.30,68.14 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect Karnitol's Satchel##6245 |goto Stormwind City 57.66,72.78 |q 1457
collect Bag of Water Elemental Bracers##3960 |goto Stormwind City 57.66,72.78 |q 602
step
talk Jasper Fel##1325
|tip Inside the building.
|tip You're about to travel to an area where there aren't poison vendors nearby.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 1448
|only if Rogue
step
talk Olivia Burnside##2455
|tip Inside the building.
|tip Deposit these items into the bank.
bank Goblin Rumors##5804 |goto Stormwind City/0 57.66,72.78 |q 1117 |future
step
Enter the building |goto Stormwind City/0 54.07,59.02 < 10 |walk
talk Auctioneer Jaxon##15659
|tip Buy these items from the Auction House.
|tip If you can't get them, you can skip this step. They just make some quests easier to do later, but you can still get it done without them.
collect 2 Elixir of Water Breathing##5996 |goto Stormwind City/0 53.61,59.76 |q 668 |future
|only if not (Druid or Warlock)	and not selfmade
step
Enter the building |goto Stormwind City 73.64,43.52 < 10 |walk
talk Heinrich Stone##1324
|tip Inside the building.
buy Rondel##2534 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Heinrich Stone##1324 |goto Stormwind City 74.37,42.56 |q 668 |future
|only if Rogue and itemcount(2534) == 0
step
Enter the building |goto Stormwind City 63.59,22.85 < 10 |walk
talk Brohann Caskbelly##5384
|tip Inside the building.
turnin In Search of The Temple##1448 |goto Stormwind City 64.33,20.66
accept To The Hinterlands##1449 |goto Stormwind City 64.33,20.66
step
Optional Route Change
|tip You can opt to do Scarlet Monastery around level 39 instead of grinding.
|tip This is highly recommended due to weapon upgrades from a quest. |only if Rogue or Warrior
|tip We will do Library, Armory, and Cathedral.
|tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
|tip If you choose to do Scarlet Monastery, we will say when to accept and turnin dungeon quests that are worth doing in your route.
|tip We will also say when it is a good time to do the dungeon.
_Note_
|tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
|tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Scarlet Monastery later |confirm SMflag
Click Here if you'd prefer to grind |confirm
step
talk Roetten Stonehammer##5637
|tip He walks around inside the building.
turnin The Karnitol Shipwreck##1457 |goto Ironforge 67.91,17.52
step
talk Prospector Stormpike##1356
|tip Inside the building.
accept Further Mysteries##525 |goto Ironforge 74.64,11.74
step
talk Librarian Mae Paledust##3979
accept Mythology of the Titans##1050 |goto Ironforge 74.97,12.46
|only if guideflag("SMflag")
step
Enter the building |goto Ironforge 72.16,67.56 < 7 |walk
talk Skolmin Goldfury##5122
buy Massive Longbow##11307 |n
|tip If you can afford it.
|tip It's a limited supply item, so it may not be for sale.
|tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
|tip We will check vendors for it along the way, if it's not here right now.
|tip If you have better, skip this step.
Visit the Vendor |vendor Skolmin Goldfury##5122 |goto Ironforge 71.76,66.70 |q 500 |future
|only if Hunter and itemcount(11307) == 0
step
Enter the building |goto Ironforge 26.10,72.19 < 15 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
|tip Buy these items from the Auction House.
|tip If you can't get them, you can kill enemies for them later, but it will likely take a long time.
|tip You need these for your Whirlwind weapon class quest, which gives a big weapon upgrade.
collect 8 Thundering Charm##4480 |goto Ironforge 24.16,74.67 |q 1714 |future
collect 8 Burning Charm##4479 |goto Ironforge 24.16,74.67 |q 1714 |future
collect 8 Cresting Charm##4481 |goto Ironforge 24.16,74.67 |q 1714 |future
collect 2 Nature Protection Potion##6052 |goto Ironforge 24.16,74.67 |q 1713 |future
|tip You will have to kill a level 40 elite enemy soon, which hits hard and deals only Nature damage.
|tip These will help you to have more time to kill it to be able to get a big weapon upgrade.
|tip Alternatively, if you can easily get a friend to help you kill it very soon, you can skip buying the potions.
|only if Warrior and not selfmade
step
kill Cresting Exile##2761+
collect 8 Cresting Charm##4481 |goto Arathi Highlands 66.71,30.04 |q 1714 |future
|only if Warrior
step
kill Thundering Exile##2762+
collect 8 Thundering Charm##4480 |goto Arathi Highlands 52.05,50.59 |q 1714 |future
|only if Warrior
step
kill Burning Exile##2760+
|tip Be careful to avoid Refuge Point while traveling here.
collect 8 Burning Charm##4479 |goto Arathi Highlands 25.40,30.28 |q 1714 |future
|only if Warrior
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Alterac Mountains (39-39)',
  {
    image = ZGV.IMAGESDIR .. 'Alterac Mountains',
    condition_suggested = function()
      return level == 39 and not completedq(554)
    end,
    next = 'Leveling Guides\\Arathi Highlands (39-40)',
    hardcore = true,
  },
  [[
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Innkeeper Anderson##2352
|tip Inside the building.
home Southshore |goto Hillsbrad Foothills 51.17,58.93
step
talk Raleigh the Devout##3980
|tip He's upstairs in the inn.
turnin Down the Scarlet Path##1052 |goto Hillsbrad Foothills 51.40,58.60
accept In the Name of the Light##1053 |goto Hillsbrad Foothills 51.46,58.36 |only if guideflag("SMflag")
step
Prepare for Scarlet Monastery
|tip It will be a good time to start Scarlet Monastery soon.
|tip We will do Library, Armory and Cathedral.
|tip You should run it after finishing the quests from this guide, roughly 45 minutes.
|tip Start looking for a group.
|confirm
|only if guideflag("SMflag")
step
use Assassin's Contract##3668
accept Assassin's Contract##522 |goto Hillsbrad Foothills 48.14,59.11
|only if itemcount(3668) == 1
step
Enter the building |goto Hillsbrad Foothills 49.01,59.12 < 10 |walk
talk Magistrate Henry Maleb##2276
|tip Inside the building.
turnin Further Mysteries##525 |goto Hillsbrad Foothills 48.14,59.11
accept Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
accept Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
accept Crushridge Bounty##500 |goto Hillsbrad Foothills 48.14,59.11
turnin Assassin's Contract##522 |goto Hillsbrad Foothills 48.14,59.11 |only if itemcount(3668) == 1
step
talk Magistrate Henry Maleb##2276
accept Baron's Demise##523 |goto Hillsbrad Foothills 48.14,59.11
|only if completedq(522)
step
Leave the building |goto Hillsbrad Foothills 49.01,59.12 < 10 |walk |only if subzone("Southshore Town Hall")
talk Archmage Ansirem Runeweaver##2543
turnin Magical Analysis##602 |goto Alterac Mountains 18.84,78.49
step
Watch the dialogue
talk Archmage Ansirem Runeweaver##2543
accept Ansirem's Key##603 |goto Alterac Mountains 18.84,78.49
stickystart "Collect_Alterac_Signet_Rings"
step
Follow the past up the coast |goto Alterac Mountains 23.21,51.60 < 70 |only if walking and subzone("Dalaran")
Enter the building |goto Alterac Mountains 39.45,15.38 < 10 |walk
kill Nagaz##2320
|tip Inside the building.
|tip Be careful, some enemies around this area can be stealthed.	|only if not hardcore
|tip There are several enemies between the door and Nagaz.		|only if hardcore
|tip You will almost always aggro another enemy from inside.		|only if hardcore
|tip Enemies may run away in fear when at low health.			|only if hardcore
|tip Clear enemies outside before pulling from inside.			|only if hardcore
|tip Watch for respawns while you are attempting to clear your way.	|only if hardcore
collect Head of Nagaz##3672 |q 537/2 |goto Alterac Mountains 39.22,14.31
step
click Worn Wooden Chest##1765
|tip Inside the building.
|tip Try not to linger while inside the building.	|only if hardcore
|tip Enemies tend to respawn quickly around here.	|only if hardcore
collect Ensorcelled Parchment##3706 |goto Alterac Mountains 39.18,14.66 |q 26518 |future
step
use the Ensorcelled Parchment##3706
accept The Ensorcelled Parchment##26518
|only if itemcount(3706) > 0
stickystart "Collect_Alterac_Signet_Rings"
stickystart "Kill_Baron_ATM"
step
kill 4 Argus Shadow Mage##2318 |q 537/1 |goto Alterac Mountains 62.31,43.49
|tip Inside the buildings and at the camps around this area.
|tip Be careful to slowly pull enemies one by one, this area can be very dangerous.
|tip These enemies deal a lot of damage.		|only if hardcore
|tip Watch for stealthed enemies.			|only if hardcore
|tip Watch for respawns and patrols around here.	|only if hardcore
You can usually find another one around [57.51,46.13]
step
label "Collect_Alterac_Signet_Rings"
Kill Syndicate enemies around this area
|tip Be careful, some of them can be stealthed.		|notinsticky
|tip These enemies deal a lot of damage.		|only if hardcore |notinsticky
|tip Watch for respawns and patrols around here.	|only if hardcore |notinsticky
collect 7 Alterac Signet Ring##3505 |q 512/1 |goto Alterac Mountains 62.31,43.49
You can find more around [58.20,44.87]
step
label "Kill_Baron_ATM"
kill Baron Vardus##2306
|tip He can spawn at any of the camps in the area
|tip Be careful to slowly pull enemies one by one, this area can be very dangerous. |notinsticky
collect Head of Baron Vardus##3626 |q 523 |goto Alterac Mountains 62.31,43.49
step
use a Nature Protection Potion##6052
|tip You are about to accept a quest soon to kill a level 40 elite enemy.
|tip You will need to use another Nature Protection Potion during the fight, so use one now, and wait until your potion cooldown is finished before accepting the quest in the next step.
|tip The potion lasts 1 hour, so you have plenty of time to get to the quest location in a few steps.
Click Here to Continue |confirm |q 1713 |future
|only if Warrior and itemcount(6052) > 0
step
click Bah'rah's Cauldron
|tip Follow the river north to travel to this location.
|tip Complete the "Essence of the Exile" quest.
collect Essence of the Exile##6851 |q 1712/3 |goto Alterac Mountains 79.32,66.81
|only if Warrior
step
talk Bath'rah the Windwatcher##6176
|tip Inside the building.
turnin Cyclonian##1712 |goto Alterac Mountains 80.50,66.92
accept The Summoning##1713 |goto Alterac Mountains 80.50,66.92 |noautoaccept
|tip Make sure your potion cooldown is finished before accepting this quest.
|only if Warrior
step
Watch the dialogue
|tip Follow Bath'rah the Windwatcher as he walks.
|tip He will summon Cyclonian, a level 40 elite.
kill Cyclonian##6239
|tip Use the other Nature Protection Potion when the effect of the first one ends. |only if itemcount(6052) > 0
|tip If you have trouble, try to find someone to help you.
collect Whirlwind Heart##6894 |q 1713/1 |goto Alterac Mountains 80.60,62.52
|only if Warrior
step
talk Bath'rah the Windwatcher##6176
|tip Inside the building.
turnin The Summoning##1713 |goto Alterac Mountains 80.50,66.92
accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.50,66.92 |instant
|only if Warrior
step
Avoid Tarren Mill and follow the path the Hinterlands |goto Hillsbrad Foothills 84.06,32.80 < 70 |only if walking and not zone("The Hinterlands")
Follow the path up |goto The Hinterlands 13.50,47.99 < 20 |only if walking
talk Falstad Wildhammer##5635
turnin To The Hinterlands##1449 |goto The Hinterlands 11.81,46.76
accept Gryphon Master Talonaxe##1450 |goto The Hinterlands 11.81,46.76
step
talk Guthrum Thunderfist##8018
|tip At the top of the path.
fpath Aerie Peak |goto The Hinterlands 11.07,46.15
step
Enter the building |goto The Hinterlands 11.00,45.67 < 10 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
turnin Gryphon Master Talonaxe##1450 |goto The Hinterlands 9.76,44.48
accept Rhapsody Shindigger##1451 |goto The Hinterlands 9.76,44.48
step
Follow the path up |goto The Hinterlands 20.81,47.82 < 20 |only if walking
talk Rhapsody Shindigger##5634
turnin Rhapsody Shindigger##1451 |goto The Hinterlands 26.94,48.59
accept Rhapsody's Kalimdor Kocktail##1452 |goto The Hinterlands 26.94,48.59
step
talk Marshal Redpath##2263
turnin Crushridge Bounty##500 |goto Hillsbrad Foothills 49.48,58.73
step
Enter the building |goto Hillsbrad Foothills 49.01,59.12 < 10 |walk
talk Magistrate Henry Maleb##2276
|tip Inside the building.
turnin Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
turnin Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
step
Leave the building |goto Hillsbrad Foothills 49.01,59.12 < 10 |walk |only if subzone("Southshore Town Hall")
talk Loremaster Dibbs##2277
turnin The Ensorcelled Parchment##26518 |goto Hillsbrad Foothills 50.57,57.09
accept Stormpike's Deciphering##554 |goto Hillsbrad Foothills 50.57,57.09
step
Enter the building |goto Tirisfal Glades/0 82.65,32.88 < 7 |walk
Enter the Portal |goto Tirisfal Glades/0 85.33,32.27 < 7 |walk
Enter the Scarlet Monastery - Library Dungeon with Your Group |goto Scarlet Monastery/0 0.00,0.00 < 500 |c |noway |q 1053
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Library Dungeon:
kill Houndmaster Loksey##3974 |q 1053/4
|tip He is the first boss of the dungeon.
|tip Follow the path to enter Huntsman's Cloister, then continue south to the small room.
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Library Dungeon:
click Mythology of the Titans##19284
|tip Continue through Huntsman's Cloister to enter the Gallery of Treasures.
|tip Once through the Gallery of Treasures the map will change back to Scarlet Monastery.
|tip It will be on the ground on the left side of the room.
|tip It looks like a small book on the ground below a window.
collect Mythology of the Titans##5536 |q 1050/1
|only if guideflag("SMflag")
step
Leave the Scarlet Monastery Library Dungeon
Click Here to Continue |confirm |q 1050
|only if guideflag("SMflag")
step
click Armory Door |goto Tirisfal Glades/0 85.41,31.59 < 7 |walk
|tip You will need The Scarlet Key from the chest behind Arcanist Doan in the Library to open this.
|tip A rogue with 175 Lockpicking skill can pick it and a Truesilver Key opens it too.
|tip Engineers can also blast the door open.
Enter the Portal |goto Tirisfal Glades/0 85.67,31.76 < 7 |walk
Enter the Scarlet Monastery - Armory Dungeon with Your Group |goto Scarlet Monastery/0 0.00,0.00 < 500 |c |noway |q 1053
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Armory Dungeon:
kill Herod##3975 |q 1053/3
|tip He is the only boss of the dungeon, found all the way at the end.
|only if guideflag("SMflag")
step
Leave the Scarlet Monastery Armory Dungeon
Click Here to Continue |confirm |q 1053
|only if guideflag("SMflag")
step
click Cathedral Door |goto Tirisfal Glades/0 85.21,30.86 < 7 |walk
|tip You will need The Scarlet Key from the chest behind Arcanist Doan in the Library to open this.
|tip A rogue with 175 Lockpicking skill can pick it and a Truesilver Key opens it too.
|tip Engineers can also blast the door open.
Enter the Portal |goto Tirisfal Glades/0 85.32,30.48 < 7 |walk
Enter the Scarlet Monastery - Cathedral Dungeon with Your Group |goto Scarlet Monastery/0 0.00,0.00 < 500 |c |noway |q 1053
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Cathedral Dungeon:
kill Scarlet Commander Mograine##3976 |q 1053/2
|tip He is the last boss of the dungeon, found all the way at the end.
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Cathedral Dungeon:
kill High Inquisitor Whitemane##3977 |q 1053/1
|tip She is the last boss of the dungeon, found all the way at the end.
|only if guideflag("SMflag")
step
Leave the Scarlet Monastery Cathedral Dungeon
Click Here to Continue |confirm |q 1053
|only if guideflag("SMflag")
step
Enter the building |goto Hillsbrad Foothills 50.47,58.56 < 6 |walk
talk Raleigh the Devout##3980
|tip Upstairs inside the building.
turnin In the Name of the Light##1053 |goto Hillsbrad Foothills 51.46,58.36
|only if guideflag("SMflag")
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Arathi Highlands (39-40)',
  {
    image = ZGV.IMAGESDIR .. 'Arathi Highlands',
    condition_suggested = function()
      return level >= 39 and level <= 40 and not completedq(661)
    end,
    next = 'Leveling Guides\\Dustwallow Marsh (40-40)',
    hardcore = true,
  },
  [[
step
_NOTE:_
Save Cloth in Your Bank as You Level
|tip Once you are close to reaching level 60, you will need 240 of each type of cloth.
|tip As you level and collect Mageweave Cloth naturally from killing enemies while following the guide, make sure you deposit the cloth into a bank whenever you are near one.
|tip This will give you about 40,000 quick and easy xp to help you get to level 60 faster in the longer later levels.
Click Here to Continue |confirm
|only if level < 60
step
map Hillsbrad Foothills
path follow strict; loop off; ants straight; dist 40; markers none
path	55.64,19.67	55.67,24.84	55.96,29.02	57.76,36.69	62.45,41.43
path	65.74,42.56	68.19,45.57	72.49,48.23	77.21,53.20	80.37,55.32
path	81.99,56.91
map Arathi Highlands
path	20.22,29.62	21.63,31.75	22.57,34.04	22.76,38.68	23.72,43.33
path	25.44,46.63	26.54,49.19	31.09,51.86	34.82,52.25	38.27,53.51
path	39.53,54.77	43.02,55.12	45.37,58.95	46.82,59.78	48.79,59.23
path	50.81,59.99	52.10,61.37	55.34,62.36	56.58,62.96	57.64,62.70
path	59.19,62.94	60.56,61.21	61.12,59.49	60.24,59.11
kill Forsaken Courier##2714
|tip She walks one-way on the road from Go'Shek Farms in Arathi Highlands to Tarren Mill in Hillsbrad Foothills.
|tip She walks with a group of 4 bodyguards with her.
|tip Kite her away from her bodyguards, so you can fight her alone.
|tip If she makes it to Tarren Mill, she respawns at the small house in Arathi Highlands and starts the walk over again.
|tip If you make it to the small house in Arathi Highlands, and still haven't found her, kill orcs nearby the house until she spawns.
|tip If you have trouble, try to find someone to help you.
|tip The Sealed Folder is not a guaranteed drop, you may need to kill her more than once.
collect Sealed Folder##4482 |q 658/1
step
talk Apprentice Kryten##2788
accept Worth Its Weight in Gold##691 |goto Arathi Highlands 46.20,47.75
step
click Shards of Myzrael##138492
accept The Princess Trapped##642 |goto Arathi Highlands 62.50,33.80
step
Avoid Hammerfall |goto Arathi Highlands 72.95,40.77 < 50 |only if walking
Kill Drywhisker enemies around this area
|tip You can find more in the cave at the top of the path referenced below.
|tip You turn this quest in at the very back of the cave, start clearing your way towards the end once you have 9 of the Motes.
|tip Be mindful of your surroundings. |only if hardcore
|tip Specifically, watch out for Drywhisker Surveyors as they are casters that deal heavy damage. |only if hardcore
collect 12 Mote of Myzrael##4435 |q 642/1 |goto Arathi Highlands 76.13,44.11
You can find more:
Around [78.07,35.28]
Up the path that starts at [80.84,39.91]
step
Follow the path up |goto Arathi Highlands 80.90,39.96 < 10 |only if walking and not _G.IsIndoors()
Enter the cave |goto Arathi Highlands 82.66,36.16 < 15 |walk |only if not _G.IsIndoors()
click Iridescent Shards
|tip Upstairs inside the cave.
|tip Watch for patrols and respawns while in the cave.		|only if hardcore
|tip Drywhisker Surveyors are casters that deal heavy damage.	|only if hardcore
turnin The Princess Trapped##642 |goto Arathi Highlands 84.31,30.92
accept Stones of Binding##651 |goto Arathi Highlands 84.31,30.92
step
Leave the cave |goto Arathi Highlands 82.69,36.21 < 15 |walk |only if subzone("Drywhisker Gorge") and _G.IsIndoors()
Avoid Hammerfall |goto Arathi Highlands 73.48,41.26 < 50 |only if walking and (subzone("Drywhisker Gorge") or subzone("Hammerfall"))
click Stone of East Binding##2691
collect Cresting Key##4484 |q 651/2 |goto Arathi Highlands 66.75,29.75
step
talk Quae##2712
turnin Hints of a New Plague?##658 |goto Arathi Highlands 60.19,53.85
accept Hints of a New Plague?##657 |goto Arathi Highlands 60.19,53.85
step
_NOTE:_
Incoming Escort Quest
|tip This quest has enemies that will ambush you in 2's and 3's.
|tip The difficulty may vary depending on the levels of control your class has.
|tip Skipping this will result in a loss of 6,400 xp.
|tip Be sure to turn in the quest before the escort if you decide not to do the quest.
Click Here to Continue |confirm |q 660 |future
|only if hardcore
step
talk Kinelory##2713
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait for her to respawn.
turnin Hints of a New Plague?##657 |goto Arathi Highlands 60.24,53.92
accept Hints of a New Plague?##660 |goto Arathi Highlands 60.24,53.92 |noautoaccept
step
Watch the dialogue
|tip Follow Kinelory and protect her as she walks.
|tip She eventually walks back to this location.
|tip If you have trouble, try to find someone to help you.
Protect Kinelory |q 660/1 |goto Arathi Highlands 60.24,53.92
step
talk Quae##2712
turnin Hints of a New Plague?##660 |goto Arathi Highlands 60.19,53.85
accept Hints of a New Plague?##661 |goto Arathi Highlands 60.19,53.85
stickystart "Collect_Witherbark_Medicine_Pouches"
stickystart "Collect_Witherbark_Tusks"
step
Enter the cave |goto Arathi Highlands 68.32,75.18 < 15 |walk
kill Witherbark Shadow Hunter##2557+
|tip Inside the cave.
|tip These tend to have a low drop rate.
|tip Watch for patrols and respawns while in the cave.		|only if hardcore
|tip Enemies may run away in fear at low health.		|only if hardcore
|tip Destroy totems that Witherbark Witch Doctores create.	|only if hardcore
|tip Witherbark Axe Throwers are ranged attackers.		|only if hardcore
collect Shadow Hunter Knife##5040 |q 691/3 |goto Arathi Highlands 67.59,78.45
|tip Be careful not to accidentally sell this to a vendor.
step
label "Collect_Witherbark_Medicine_Pouches"
Leave the cave |goto Arathi Highlands 68.32,75.18 < 15 |walk |only if subzone("Witherbark Village") and _G.IsIndoors()
kill Witherbark Witch Doctor##2555+
|tip Inside and outside the cave. |notinsticky
|tip Be mindful of your surroundings as it's easy to be overwhelmed. |only if hardcore |notinsticky
|tip Witherbark Witch Doctors, Axe Throwers and Headhunters are all ranged enemies to look out for. |only if hardcore |notinsticky
collect 4 Witherbark Medicine Pouch##4522 |q 691/2 |goto Arathi Highlands 66.66,64.37
You can find more outside the cave around: |notinsticky
[61.45,72.04]
[64.79,72.83]
[70.29,68.39]
[72.11,64.09]
[70.82,60.27]
step
label "Collect_Witherbark_Tusks"
Kill Witherbark enemies around this area |notinsticky
|tip Inside and outside the cave. |notinsticky
|tip Be mindful of your surroundings as it's easy to be overwhelmed. |only if hardcore |notinsticky
|tip Witherbark Witch Doctors, Axe Throwers and Headhunters are all ranged enemies to look out for. |only if hardcore |notinsticky
collect 10 Witherbark Tusk##4503 |q 691/1 |goto Arathi Highlands 66.66,64.37
You can find more outside the cave around: |notinsticky
[61.45,72.04]
[64.79,72.83]
[70.29,68.39]
[72.11,64.09]
[70.82,60.27]
step
click Stone of Outer Binding##2690
collect Thundering Key##4485 |q 651/3 |goto Arathi Highlands 52.04,50.77
step
talk Apprentice Kryten##2788
turnin Worth Its Weight in Gold##691 |goto Arathi Highlands 46.20,47.75
step
talk Skuerto##2789
accept Wand over Fist##693 |goto Arathi Highlands 46.65,47.01
step
Leave Refuge Pointe |goto Arathi Highlands 43.94,50.56 < 30 |only if walking and subzone("Refuge Pointe")
Enter the cave |goto Arathi Highlands 53.75,77.37 < 15 |walk
Follow the path |goto Arathi Highlands 54.63,79.26 < 10 |walk
kill Kor'gresh Coldrage##2793
|tip Inside the cave.
collect Trelane's Wand of Invocation##4525 |q 693/1 |goto Arathi Highlands 54.75,81.87
step
Leave the cave |goto Arathi Highlands 53.68,77.23 < 15 |walk |only if subzone("Boulderfist Hall") and _G.IsIndoors()
Kill enemies around this area
|tip Getting this far into level 39 will allow you to reach level 40 after turning in quests soon.
|tip You are about to have to complete a fairly difficult escort quest, and a handful of quests underwater, so it will help to be a level higher.
ding 39,80000 |goto Arathi Highlands 52.56,75.33
step
Leave the cave |goto Arathi Highlands 53.68,77.23 < 15 |walk |only if subzone("Boulderfist Hall") and _G.IsIndoors()
talk Skuerto##2789
turnin Wand over Fist##693 |goto Arathi Highlands 46.65,47.01
step
talk Vikki Lonsav##2808
|tip Buy enough ammo to fill your ammo bag, plus 4-6 extra stacks.
|tip You will be questing for a while without access to an ammo vendor.
Visit the Vendor |vendor Vikki Lonsav##2808 |goto Arathi Highlands 46.45,47.60 |q 651
|only if Hunter
step
Leave Refuge Pointe |goto Arathi Highlands 43.94,50.56 < 30 |only if walking and subzone("Refuge Pointe")
click Stone of West Binding
collect Burning Key##4483 |q 651/1 |goto Arathi Highlands 25.45,30.16
step
click Stone of Inner Binding##2702
turnin Stones of Binding##651 |goto Arathi Highlands 36.19,57.37
step
Follow the path |goto Arathi Highlands 31.22,65.35 < 30 |only if walking and not subzone("Faldir's Cove")
Enter the tunnel |goto Arathi Highlands 21.58,75.61 < 15 |only if walking and not subzone("Faldir's Cove")
Leave the tunnel |goto Arathi Highlands 22.00,79.55 < 15 |only if walking and not subzone("Faldir's Cove")
talk Lolo the Lookout##2766
|tip He walks around this area.
accept Land Ho!##663 |goto Arathi Highlands 31.78,82.70
step
talk Shakes O'Breen##2610
turnin Land Ho!##663 |goto Arathi Highlands 32.28,81.38
step
talk First Mate Nilzlix##2767
|tip He walks around this area.
accept Deep Sea Salvage##662 |goto Arathi Highlands 32.77,81.47
step
talk Captain Steelgut##2769
accept Drowned Sorrows##664 |goto Arathi Highlands 34.00,80.79
step
talk Professor Phizzlethorpe##2768
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Sunken Treasure##665 |goto Arathi Highlands 33.87,80.55 |noautoaccept
step
Watch the dialogue
|tip Follow Professor Phizzlethorpe as he walks.
|tip He eventually walks back to this location.
Kill the enemies that attack
|tip Two level 40 water elementals will attack.
|tip They will be immune to Frost damage.
|tip If you have trouble, try to find someone to help you.
Defend Professor Phizzlethorpe |q 665/1 |goto Arathi Highlands 33.87,80.55
step
talk Doctor Draxlegauge##2774
turnin Sunken Treasure##665 |goto Arathi Highlands 33.86,80.45
accept Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
Equip the Goggles of Gem Hunting
|tip They should be in your bags.
Click Here After Equipping The Goggles |confirm |q 666
step
use an Elixir of Water Breathing##5996
|tip You should have these from purchasing them earlier in the guide from the auction house in Stormwind City.
Gain Water Breathing |havebuff Water Breathing##7178 |goto Arathi Highlands 28.42,84.79 |q 666
|only if not (Druid or Warlock) and itemcount(5996) > 0 and not selfmade
stickystart "Collect_Elven_Gems"
stickystart "Kill_Daggerspine_Sorceresses"
stickystart "Kill_Daggerspine_Raiders"
step
click Maiden's Folly Log##2709
|tip It looks like a large brown book in a grey metal cauldron.
|tip On the middle floor of the sunken ship.
collect Maiden's Folly Log##4489 |q 662/2 |goto Arathi Highlands 23.41,85.10
step
click Maiden's Folly Charts##2707
|tip It looks like a tan scroll laying flat on a wooden ledge.
|tip On the middle floor of the sunken ship.
collect Maiden's Folly Charts##4487 |q 662/1 |goto Arathi Highlands 23.04,84.51
step
click Spirit of Silverpine Charts##2708
|tip It looks like a tan scroll laying flat on a wooden crate next to a cannon.
|tip On the middle floor of the sunken ship.
collect Spirit of Silverpine Charts##4488 |q 662/3 |goto Arathi Highlands 20.45,85.60
step
click Spirit of Silverpine Log##2710
|tip It looks like an open book laying on the ground.
|tip At the very bottom of the ship.
collect Spirit of Silverpine Log##4490 |q 662/4 |goto Arathi Highlands 20.65,85.10
step
label "Collect_Elven_Gems"
click Calcified Elven Gem##2712+
|tip They look like large gray stones on the ground underwater around this area.
|tip If you are wearing the Goggles of Gem Hunting, they will appear on your minimap as yellow dots.
collect 10 Elven Gem##4492 |q 666/1 |goto Arathi Highlands 25.03,85.70
You can find more around: |notinsticky
[24.65,90.70]
[18.60,90.36]
[19.70,84.18]
step
label "Kill_Daggerspine_Sorceresses"
kill 3 Daggerspine Sorceress##2596 |q 664/2 |goto Arathi Highlands 22.83,87.29
|tip Underwater around this area. |notinsticky
step
label "Kill_Daggerspine_Raiders"
kill 10 Daggerspine Raider##2595 |q 664/1 |goto Arathi Highlands 22.83,87.29
|tip Underwater around this area. |notinsticky
step
talk First Mate Nilzlix##2767
|tip He walks around this area.
turnin Deep Sea Salvage##662 |goto Arathi Highlands 32.80,81.48
step
talk Captain Steelgut##2769
turnin Drowned Sorrows##664 |goto Arathi Highlands 34.00,80.79
step
talk Doctor Draxlegauge##2774
turnin Sunken Treasure##666 |goto Arathi Highlands 33.85,80.45
|tip The Gnomish Zapper reward may be a decent upgrade.	|only if Priest
accept Sunken Treasure##668 |goto Arathi Highlands 33.85,80.45
step
Equip Your Regular Head Armor
Click Here After Equipping Your Regular Head Armor |confirm |q 668
step
talk Shakes O'Breen##2610
turnin Sunken Treasure##668 |goto Arathi Highlands 32.29,81.38
accept Sunken Treasure##669 |goto Arathi Highlands 32.29,81.38
step
talk Phin Odelic##2711
turnin Hints of a New Plague?##661 |goto Hillsbrad Foothills 50.34,59.04
step
_NOTE:_
You Have Access to Stronger Ammo
|tip Now that you're level 40, you can purchase stronger bullets or arrows.
|tip When you restock ammo at vendors, make sure to buy level 40 ammo.
Click Here to Continue |confirm |q 669
|only if Hunter
step
Enter the building |goto Stormwind City 43.02,34.40 < 10 |walk
talk Duthorian Rall##6171
|tip Inside the building.
accept The Tome of Nobility##1661 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Nobility##1661 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 1286 |future
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 1286 |future
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 1286 |future
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 1286 |future
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 1286 |future
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 1286 |future
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 1286 |future
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 1286 |future
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
|tip This is a good time to go buy your mount. |only if not Paladin or Warlock
step
Enter the building |goto Stormwind City 29.14,74.17 < 10 |walk
talk Spackle Thornberry##5520
|tip Downstairs inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 669
|only if Warlock
step
talk Librarian Mae Paledust##3979
turnin Mythology of the Titans##1050 |goto Ironforge 74.97,12.46
|only if guideflag("SMflag")
]]
)
