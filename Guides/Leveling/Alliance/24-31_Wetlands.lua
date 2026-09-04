local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
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
