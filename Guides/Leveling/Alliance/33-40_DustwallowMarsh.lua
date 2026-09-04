local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
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
