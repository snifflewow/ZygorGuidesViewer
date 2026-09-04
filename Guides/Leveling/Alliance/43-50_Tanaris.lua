local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
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
