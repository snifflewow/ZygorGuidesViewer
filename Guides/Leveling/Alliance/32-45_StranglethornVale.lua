local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
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
