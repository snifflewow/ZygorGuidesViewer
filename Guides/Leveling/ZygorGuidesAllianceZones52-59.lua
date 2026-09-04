local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end

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
  'Leveling Guides\\Feralas (53-53)',
  {
    image = ZGV.IMAGESDIR .. 'Feralas',
    condition_suggested = function()
      return level == 53 and not completedq(2942)
    end,
    next = 'Leveling Guides\\Azshara (53-54)',
    hardcore = true,
  },
  [[
step
talk Fahran Silentblade##3969
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Fahran Silentblade##3969 |goto Ashenvale 36.49,49.46 |q 2943
|only if Rogue
step
talk Pratt McGrubben##7852
accept Improved Quality##7733 |goto Feralas 30.63,42.71
step
talk Innkeeper Shyria##7736
|tip Inside the building.
home Feathermoon Stronghold |goto Feralas 30.97,43.49
step
talk Troyas Moonbreeze##7764
|tip Inside the building.
turnin Return to Troyas##2943 |goto Feralas 31.78,45.50
step
Watch the dialogue
talk Troyas Moonbreeze##7764
|tip Inside the building.
accept The Stave of Equinex##2879 |goto Feralas 31.78,45.50
step
Run onto the dock and ride the boat or swim across the water |goto Feralas 31.03,39.92 < 40 |only if walking and subzone("Feathermoon Stronghold")
talk Zorbin Fandazzle##14637
accept Zapped Giants##7003 |goto Feralas 44.81,43.42
accept Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
stickystart "Collect_Water_Elemental_Cores"
step
use Zorbin's Ultra-Shrinker##18904
|tip Use it on Wave Striders around this area.
|tip They look like tall green giants that walks on the shore and in the water around this area.
|tip This quest item only lasts for 2 hours.
|tip If you need a new one, abandon the quest and accept it again from the goblin in the previous guide step.
|tip Watch out for the water elementals here as they are immune to frost damage.	|only if hardcore
kill Zapped Wave Strider##14638+
collect 15 Miniaturization Residue##18956 |q 7003/1 |goto Feralas 44.38,50.11
You can find more around: |notinsticky
[46.63,59.79]
[45.36,67.94]
[40.03,37.38]
[36.09,33.74]
step
label "Collect_Water_Elemental_Cores"
Kill Sea enemies around this area
|tip They look like water elementals.
|tip Up and down this whole shore.
|tip They are immune to frost damage.	|only if hardcore
collect 10 Water Elemental Core##18958 |q 7721/1 |goto Feralas 46.73,60.23
You can find more around: |notinsticky
[46.30,52.00]
[40.71,37.59]
step
talk Zorbin Fandazzle##14637
turnin Zapped Giants##7003 |goto Feralas 44.81,43.42
turnin Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
_Destroy This Item:_
|tip It is no longer needed.
trash Zorbin's Ultra-Shrinker##18904 |goto Feralas 47.18,44.52
step
Follow the road |goto Feralas 47.18,44.52 < 30 |only if walking and subzone("The Forgotten Coast")
Discover Dire Maul |goto Feralas 59.12,44.62 < 20
|tip Run slightly onto the huge ramp to discover the Dire Maul dungeon.
|tip As soon as you reach the ramp and discover Dire Maul, run away from the ogres and go back to the road.
|tip You need to discover the Dire Maul dungeon to be able to accept a quest later in the guide.
stickystart "Collect_Perfect_Yeti_Hide"
step
Follow the road around and run up the path to the yeti cave |goto Feralas 51.42,32.47 < 20 |only if walking
Kill Rage Scar enemies around this area
|tip Inside and outside the cave.
|tip Watch for patrols and respawns while here.	|only if hardcore
collect 10 Rage Scar Yeti Hide##18947 |q 7733/1 |goto Feralas 53.17,31.82
step
label "Collect_Perfect_Yeti_Hide"
Kill Rage Scar enemies around this area |notinsticky
|tip Inside and outside the cave. |notinsticky
collect Pristine Yeti Hide##18969 |goto Feralas 53.17,31.82 |q 7735 |future
|tip You can also get this item by skinning enemies. |only if skill('Skinning') > 0
step
use Pristine Yeti Hide##18969
accept Pristine Yeti Hide##7735 |goto Feralas 42.38,22.00
step
talk Rockbiter##7765
accept The Giant Guardian##2844 |goto Feralas 42.38,22.00
step
Jump onto this break in the wall from the nearby ledge |goto Feralas 44.62,9.81 < 3 |only if walking
click Evoroot##164798
|tip Inside the building.
collect Evoroot##11242 |goto Feralas 44.55,10.13 |q 3909
step
Jump out of the building |goto Feralas 44.64,9.95 < 7 |only if walking and subzone("Ruins of Ravenwind")
Jump up on the ledge |goto Feralas 40.33,11.04 < 7 |only if walking
Jump across here |goto Feralas 40.59,11.45 < 7 |only if walking
Jump up here |goto Feralas 40.97,11.87 < 7 |only if walking
click Flame of Samha
collect Samha Essence##9257 |goto Feralas 40.54,12.65 |q 2879
step
click Flame of Imbel##142187
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Imbel Essence##9256 |goto Feralas 39.93,9.44 |q 2879
step
click Flame of Lahassa##142186
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Lahassa Essence##9255 |goto Feralas 37.76,12.17 |q 2879
step
click Flame of Byltan##142185
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Byltan Essence##9258 |goto Feralas 38.50,15.80 |q 2879
step
use Troyas' Stave##9263
collect Stave of Equinex##9306 |q 2879/1 |goto Feralas 38.87,13.23
step
click Equinex Monolith##144063
use Stave of Equinex##9306
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin The Stave of Equinex##2879 |goto Feralas 38.87,13.23
accept The Morrow Stone##2942 |goto Feralas 38.87,13.23
step
Follow the path up |goto Feralas 39.94,13.34 < 30 |only if walking
talk Shay Leafrunner##7774
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin The Giant Guardian##2844 |goto Feralas 38.22,10.30
accept Wandering Shay##2845 |goto Feralas 38.22,10.30
step
click Shay's Chest##144054
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Shay's Bell##9189 |q 2845/1 |goto Feralas 38.25,10.29
step
use Shay's Bell##9189
|tip Shay Leafrunner will follow you.
|tip Protect her as you walk.
|tip She will sometimes wander off and stop following you.
|tip You will see a message in your chat when she wanders off.
|tip When this happens, use Shay's Bell to get her to start following you again.
|tip This quest is timed, so try to hurry.
Take Shay Leafrunner to Rockbiter's Camp |q 2845/2 |goto Feralas 42.38,22.00
step
talk Rockbiter##7765
turnin Wandering Shay##2845 |goto Feralas 42.38,22.00
step
talk Gregan Brewspewer##7775
turnin A Visit to Gregan##4142 |goto Feralas 45.12,25.57
step
talk Gregan Brewspewer##7775
|tip Complete the repeatable "The Videre Elixir" quest.
collect Videre Elixir##11243 |q 3909/1 |goto Feralas 45.12,25.57
|tip Do NOT drink the Elixir, it will kill your character.
|tip If you drink it in the Tanaris graveyard it will not kill you on Hardcore Realms |only if hardcore
step
Kill enemies around this area
|tip Grind enemies until your Hearthstone is ready to use.
|tip You will be hearthing back to Feathermoon Stronghold.
|tip The guide doesn't take into account this grind, so any extra xp you get now will put you a little bit ahead, and reduce any grinding you have to do later.
|tip This step will complete when your Hearthstone is ready to use.
Grind XP Until You Can Hearth to Feathermoon Stronghold |complete C_Container.GetItemCooldown(6948) == 0 |goto Feralas 39.46,13.80 |q 2942
step
talk Pratt McGrubben##7852
turnin Improved Quality##7733 |goto Feralas 30.63,42.71
turnin Pristine Yeti Hide##7735 |goto Feralas 30.63,42.71
step
talk Troyas Moonbreeze##7764
|tip Inside the building.
turnin The Morrow Stone##2942 |goto Feralas 31.78,45.50
|tip The Cairnstone Sliver want is a potential upgrade. |only if Priest
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Azshara (53-54)',
  {
    image = ZGV.IMAGESDIR .. 'Azshara',
    condition_suggested = function()
      return level >= 53 and level <= 54 and not completedq(3461)
    end,
    next = "Leveling Guides\\Un'Goro Crater (54-55)",
    hardcore = true,
  },
  [[
step
talk Islen Waterseer##5901
turnin Seeking Spiritual Aid##5158 |goto The Barrens 65.83,43.78
step
Watch the dialogue
talk Islen Waterseer##5901
accept Cleansed Water Returns to Felwood##5159 |goto The Barrens 65.83,43.78
step
Enter the building |goto The Barrens 62.08,39.26 < 15 |walk
talk Innkeeper Wiley##6791
|tip Inside the building.
home Ratchet |goto The Barrens 62.05,39.41
step
Enter the building |goto The Barrens 62.52,38.58 < 10 |walk
talk Liv Rizzlefix##8496
|tip Inside the building.
accept Volcanic Activity##4502 |goto The Barrens 62.45,38.74
step
talk Fuzruckle##3496
|tip Desposit these items into the bank.
bank Eridan's Vial##11682 |goto The Barrens 62.64,37.42 |q 4441 |future
bank Filled Cursed Ooze Jar##11947 |goto The Barrens 62.64,37.42 |q 4512 |future
|tip You should have 6 of these.
bank Filled Tainted Ooze Jar##11949 |goto The Barrens 62.64,37.42 |q 4512 |future
|tip You should have 6 of these.
bank Moontouched Feather##12383 |goto The Barrens 62.64,37.42 |q 978 |future
|tip You should have 10 of these.
bank Purified Moonwell Water##12906 |goto The Barrens 62.64,37.42 |q 5159 |future
bank Videre Elixir##11243 |goto The Barrens 62.64,37.42 |q 3909 |future
|tip You should have 3 of these.
step
Kill enemies around this area
|tip You are about to go back to Un'Goro Crater soon, and have to fight higher level enemies, so being a level higher is important.
|tip This is the last long grind you will have to do before reaching level 60.
|tip These Blood Elves drop Runecloth, and you will need 240 Runecloth for cloth turn ins in the major cities, for a quick burst of xp.
|tip If you'd rather run dungeons to reach level 54, skip this step and run dungeons after you hearth back to Ratchet soon.
|tip Blood Elf Reclaimers are ranged attackers that deal heavy damage.	|only if hardcore
|tip Enemies may bunch together so be careful.				|only if hardcore
|tip Watch for patrols and respawns while in the area.			|only if hardcore
ding 54 |goto Azshara 56.94,29.30
It's a long run, but you can get more arrows at [12.00,78.38]		|only if Hunter
|only if not hardcore
]]
)
ZygorGuidesViewer:RegisterGuide(
  "Leveling Guides\\Un'Goro Crater (54-55)",
  {
    image = ZGV.IMAGESDIR .. "Un'Goro Crater",
    condition_suggested = function()
      return level >= 54 and level <= 55 and not completedq(7800)
    end,
    next = 'Leveling Guides\\Felwood Part 2 (55-55)',
    hardcore = true,
  },
  [[
step
talk Fuzruckle##3496
|tip Collect these items from the bank.
collect Un'Goro Soil##11018 |goto The Barrens 62.64,37.42 |q 3764 |future
|tip As many as you have.
collect Torwa's Pouch##11568 |goto The Barrens 62.64,37.42 |q 4292
collect Mithril Casing##10561 |goto The Barrens 62.64,37.42 |q 4244 |future
step
talk Tran'rek##7876
accept Super Sticky##4504 |goto Tanaris 51.57,26.76
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin March of the Silithid##4493 |goto Tanaris 50.89,26.96
accept Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
talk Williden Marshal##9270
accept Expedition Salvation##3881 |goto Un'Goro Crater 43.95,7.14
step
talk Hol'anyee Marshal##9271
accept Alien Ecology##3883 |goto Un'Goro Crater 43.89,7.24
step
talk Spark Nilminer##9272
accept Roll the Bones##3882 |goto Un'Goro Crater 43.50,7.42
step
Enter the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk
talk J.D. Collie##9117
|tip Inside the cave.
accept The Northern Pylon##4285 |goto Un'Goro Crater 41.92,2.70
step
Leave the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
click Beware of Pterrordax##174682
|tip It's a wanted board.
accept Beware of Pterrordax##4501 |goto Un'Goro Crater 43.55,8.42
step
talk Shizzle##9998
accept Shizzle's Flyer##4503 |goto Un'Goro Crater 44.24,11.59
step
talk Karna Remtravel##9618
accept Chasing A-Me 01##4243 |goto Un'Goro Crater 46.38,13.45
stickystart "Collect_UnGoro_Soil"
stickystart "Collect_Webbed_Pterrordax_Scales"
step
Run around the huge tree and follow the path up |goto Un'Goro Crater 54.83,13.49 < 40 |only if walking
click Northern Crystal Pylon##164955
Choose _"I want to examine this pylon."_
Discover and Examine the Northern Crystal Pylon |q 4285/1 |goto Un'Goro Crater 56.48,12.45
step
kill Pterrordax##9166+
|tip Kill all of them around this area.
|tip You will kill more of these later, so you don't need to complete the quest now.
Clike Here to Continue |confirm |goto Un'Goro Crater 56.71,9.55 |q 4501
stickystop "Collect_Webbed_Pterrordax_Scales"
step
Kill Tar enemies around this area
collect 12 Super Sticky Tar##11834 |q 4504/1 |goto Un'Goro Crater 59.96,30.56
You can find more around: |notinsticky
[59.75,24.49]
[63.54,23.41]
stickystart "Collect_UnGoro_Thunderer_Pelts"
stickystart "Collect_UnGoro_Stomper_Pelts"
step
kill Un'Goro Gorilla##6514+
|tip Inside and outside the cave.
|tip The gorillas share spawn points.
|tip They will call for help at low health, which will cause nearby gorillas to come to their aid.	|only if hardcore
|tip If you can't find any more of these, kill the other types of gorillas to get them to spawn.
collect 2 Un'Goro Gorilla Pelt##11478 |q 4289/1 |goto Un'Goro Crater 64.02,16.32
step
label "Collect_UnGoro_Stomper_Pelts"
kill Un'Goro Stomper##6513+
|tip Inside and outside the cave. |notinsticky
|tip The gorillas share spawn points. |notinsticky
|tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
|tip If you can't find any more of these, kill the other types of gorillas to get them to spawn. |notinsticky
collect 2 Un'Goro Stomper Pelt##11479 |q 4289/2 |goto Un'Goro Crater 64.02,16.32
step
label "Collect_UnGoro_Thunderer_Pelts"
kill Un'Goro Thunderer##6516+
|tip Inside and outside the cave. |notinsticky
|tip The gorillas share spawn points. |notinsticky
|tip Be mindful of your surroundings while fighting the Gorillas. |only if hardcore |notinsticky
|tip They can call for help, which will aggro gorillas that are a decent bit away from you. |only if hardcore |notinsticky
|tip If you can't find any more of these, kill the other types of gorillas to get them to spawn. |notinsticky
collect 2 Un'Goro Thunderer Pelt##11480 |q 4289/3 |goto Un'Goro Crater 64.02,16.32
step
Enter the cave |goto Un'Goro Crater 63.88,16.44 < 15 |walk |only if not _G.IsIndoors()
Follow the path inside the cave |goto Un'Goro Crater 65.87,16.75 < 10 |walk
talk A-Me 01##9623
|tip Inside the cave.
|tip She gives an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
|tip If you have to wait, clear enemies between this spot and the cave entrance while waiting. |only if hardcore
turnin Chasing A-Me 01##4243 |goto Un'Goro Crater 67.65,16.76
accept Chasing A-Me 01##4244 |goto Un'Goro Crater 67.65,16.76 |only if (itemcount(10561) > 0) or (haveq(4244) or completedq(4244))
step
_NOTE:_
Grind to Catch Up XP
|tip You don't have the Mithril Casing item, so you're unable to complete 2 quests from A-Me 01.
|tip Grind 12,000 xp on the apes inside and outside this cave to make up for the lost xp.
Click Here to Continue After Grinding |confirm |q 4491 |future
|only if (itemcount(10561) == 0) and (completedq(4243) and not (haveq(4244) or completedq(4244)))
step
talk A-Me 01##9623
|tip Inside the cave.
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
|tip If you are waiting, clear enemies between this spot and the cave entrance while waiting.	|only if hardcore
turnin Chasing A-Me 01##4244 |goto Un'Goro Crater 67.65,16.76
|tip If you don't have the Mithril Casing to complete this quest, abandon the quest and grind 12,000 xp on the apes.  |only if (itemcount(10561) == 0) and not completedq(4244)
|tip This will make up for skipping this quest, and the escort quest followup. |only if (itemcount(10561) == 0) and not completedq(4244)
accept Chasing A-Me 01##4245 |goto Un'Goro Crater 67.65,16.76 |noautoaccept
|only if haveq(4244) or completedq(4244)
step
Watch the dialogue
|tip Follow A-Me 01 and protect her as she walks.
|tip She eventually walks to this location.
Protect A-Me 01 Until You Reach Karna Remtravel |q 4245/1 |goto Un'Goro Crater 46.32,13.68
|only if haveq(4245) or completedq(4245)
step
talk Karna Remtravel##9618
turnin Chasing A-Me 01##4245 |goto Un'Goro Crater 46.38,13.45
|only if haveq(4245) or completedq(4245)
step
Enter the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk
talk J.D. Collie##9117
|tip Inside the cave.
turnin The Northern Pylon##4285 |goto Un'Goro Crater 41.92,2.70
accept The Eastern Pylon##4287 |goto Un'Goro Crater 41.92,2.70
accept The Western Pylon##4288 |goto Un'Goro Crater 41.92,2.70
stickystart "Collect_Dinosaur_Bones"
stickystart "Collect_Webbed_Diemetradon_Scales"
step
Leave the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
click Crate of Foodstuffs##249
collect Crate of Foodstuffs##11113 |q 3881/1 |goto Un'Goro Crater 68.51,36.54
step
Follow the path up |goto Un'Goro Crater 76.66,48.69 < 20 |only if walking
click Eastern Crystal Pylon##164957
Choose _"I want to examine this pylon."_
Discover and Examine the Eastern Crystal Pylon |q 4287/1 |goto Un'Goro Crater 77.24,49.97
step
use Torwa's Pouch##11568
collect Preserved Threshadon Meat##11569 |q 4292
collect Preserved Pheromone Mixture##11570 |q 4292
step
use the Preserved Threshadon Meat##11569
|tip Use this first.
use the Preserved Pheromone Mixture##11570
|tip Use this second.
kill Lar'korwi##9684
|tip Be sure to heal up before engaging.
|tip He's level 56, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
|tip You can do this quest when we return to Un'Goro later if you're worried |only if hardcore
collect Lar'korwi's Head##11510 |q 4292/1 |goto Un'Goro Crater 79.92,49.90
step
talk Torwa Pathfinder##9619
turnin The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.97
turnin The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.63,75.96
accept The Mighty U'cha##4301 |goto Un'Goro Crater 71.64,75.97
stickystart "Collect_Webbed_Pterrordax_Scales"
step
Follow the path up |goto Un'Goro Crater 58.01,85.25 < 20 |only if walking
kill 10 Pterrordax##9166 |q 4501/1 |goto Un'Goro Crater 56.23,90.09
You can find more: |notinsticky
Up the path that starts at [51.26,86.64]
Up the path that starts at [45.88,86.65]
stickystop "Collect_Dinosaur_Bones"
stickystop "Collect_Webbed_Pterrordax_Scales"
stickystart "Collect_Gorishi_Scent_Gland"
step
Enter the cave |goto Un'Goro Crater 49.95,81.70 < 10 |walk
Follow the path down |goto Un'Goro Crater 49.48,83.08 < 7 |walk
use the Unused Scraping Vial##11132
|tip Inside the cave.
|tip This cave is dangerous. |only if hardcore
|tip Be mindful of patrolling enemies while you travel through. |only if hardcore
collect Hive Wall Sample##11131 |q 3883/1 |goto Un'Goro Crater 48.74,85.21
step
Leave the cave |goto Un'Goro Crater 49.94,81.65 < 10 |c |q 4496
|only if subzone("The Slithering Scar") and _G.IsIndoors()
step
label "Collect_Gorishi_Scent_Gland"
Kill Gorishi enemies around this area
|tip You can find more inside the insect cave in the ground nearby. |only if not hardcore
|tip There are more inside the cave, but it is safer outside. |only if hardcore
collect Gorishi Scent Gland##11837 |q 4496/1 |goto Un'Goro Crater 50.66,77.01
step
Leave the cave |goto Un'Goro Crater 49.94,81.65 < 10 |only if subzone("The Slithering Scar") and _G.IsIndoors()
click Research Equipment##161521
collect Research Equipment##11112 |q 3881/2 |goto Un'Goro Crater 38.47,66.11
stickystart "Collect_Dinosaur_Bones"
stickystart "Kill_Frenzied_Pterrordax"
step
talk Krakle##10302
accept Finding the Source##974 |goto Un'Goro Crater 30.93,50.43
stickystart "Collect_Webbed_Pterrordax_Scales"
step
Follow the path up |goto Un'Goro Crater 24.20,61.28 < 20 |only if walking
click Western Crystal Pylon##164956
Choose _"I want to examine this pylon."_
Discover and Examine the Western Crystal Pylon |q 4288/1 |goto Un'Goro Crater 23.79,59.19
step
label "Kill_Frenzied_Pterrordax"
kill 15 Frenzied Pterrordax##9167 |q 4501/2 |goto Un'Goro Crater 21.75,59.39
You can find more around: |notinsticky
[23.26,49.89]
[22.81,41.53]
[23.36,41.24]
[39.05,47.06]
[28.28,33.06]
[34.49,37.63]
[31.25,44.33]
step
label "Collect_Webbed_Pterrordax_Scales"
Kill Pterrordax enemies around this area
|tip They look like pterodactyls.
collect 8 Webbed Pterrordax Scale##11831 |q 4503/2 |goto Un'Goro Crater 24.15,38.86
You can find more around: |notinsticky
[39.05,47.06]
[28.28,33.06]
[34.49,37.63]
[31.25,44.33]
step
label "Collect_Webbed_Diemetradon_Scales"
Kill Diemetradon enemies around this area
|tip Be careful, Elder Dimetradon can kick. |only if Paladin or Mage or Priest or Warlock
collect 8 Webbed Diemetradon Scale##11830 |q 4503/1 |goto Un'Goro Crater 59.18,53.99
You can find more around: |notinsticky
[56.74,63.47]
[49.24,61.78]
[50.79,67.25]
[45.26,68.91]
[41.52,56.95]
step
label "Collect_Dinosaur_Bones"
Kill Diemetradon enemies around this area
collect 8 Dinosaur Bone##11114 |q 3882/1 |goto Un'Goro Crater 59.18,53.99
These can be looted from bones on the ground around: |notinsticky
[32.70, 73.50]
[31.50, 68.90]
step
label "Collect_UnGoro_Soil"
click Un'Goro Dirt Pile##157936+
|tip They look like piles of dark brown dirt on the ground around this area.
|tip You can find them all over the entire zone.
Kill enemies around this area
|tip Any enemy in Un'Goro Crater can drop the quest item.
collect 25 Un'Goro Soil##11018 |q 3764 |future
|tip Be careful not to accidentally sell these to a vendor.
step
talk Shizzle##9998
turnin Shizzle's Flyer##4503 |goto Un'Goro Crater 44.23,11.59
step
talk Spraggle Frock##9997
turnin Beware of Pterrordax##4501 |goto Un'Goro Crater 43.62,8.50
accept Lost!##4492 |goto Un'Goro Crater 43.62,8.50
step
talk Spark Nilminer##9272
turnin Roll the Bones##3882 |goto Un'Goro Crater 43.50,7.43
step
talk Hol'anyee Marshal##9271
turnin Alien Ecology##3883 |goto Un'Goro Crater 43.89,7.24
step
talk Williden Marshal##9270
turnin Expedition Salvation##3881 |goto Un'Goro Crater 43.95,7.14
step
Enter the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk
talk J.D. Collie##9117
|tip Inside the cave.
turnin The Eastern Pylon##4287 |goto Un'Goro Crater 41.92,2.70
turnin The Western Pylon##4288 |goto Un'Goro Crater 41.92,2.70
accept Making Sense of It##4321 |goto Un'Goro Crater 41.92,2.70
step
talk J.D. Collie##9117
|tip Inside the cave.
turnin Making Sense of It##4321 |goto Un'Goro Crater 41.92,2.70
step
_Destroy This Item:_
|tip It is no longer needed.
trash Crystal Pylon User's Manual##11482 |goto Un'Goro Crater 43.47,6.79
stickystart "Collect_UnGoro_Ash"
step
Leave the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
Follow the path up |goto Un'Goro Crater 52.84,42.05 < 20 |only if walking
Follow the path up |goto Un'Goro Crater 52.33,45.52 < 10 |only if walking
Continue up the path |goto Un'Goro Crater 51.18,47.35 < 10 |only if walking
use Krakle's Thermometer##12472
|tip At the top of the mountain.
Find the Hottest Area of Fire Plume Ridge |q 974/1 |goto Un'Goro Crater 49.70,45.74
step
label "Collect_UnGoro_Ash"
Kill enemies around this area
|tip They look like fire elementals on and around this volcano mountain.
|tip Avoid the elite enemy in the cave at the top of the mountain.
collect 9 Un'Goro Ash##11829 |q 4502/1 |goto Un'Goro Crater 50.98,47.18
step
Enter the cave |goto Un'Goro Crater 52.44,51.07 < 15 |walk
talk Ringo##9999
|tip Inside the cave.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
turnin Lost!##4492 |goto Un'Goro Crater 51.90,49.85
accept A Little Help From My Friends##4491 |goto Un'Goro Crater 51.90,49.85 |noautoaccept
step
Leave the cave |goto Un'Goro Crater 52.50,51.16 < 15 |walk
Follow the path down |goto Un'Goro Crater 54.19,50.77 < 15 |only if walking
Follow the path |goto Un'Goro Crater 56.72,43.18 < 50 |only if walking
Follow the path up |goto Un'Goro Crater 46.04,13.45 < 20 |only if walking
Watch the dialogue
|tip Ringo will follow you, protect him as you walk.
|tip He will faint multiple times as he walks, so make sure he is with you at all times.
|tip You will see a message in your chat when he faints.
use Spraggle's Canteen##11804
|tip Use it on Ringo to revive him when he faints.
Escort Ringo to Spraggle Frock at Marshal's Refuge |q 4491/1 |goto Un'Goro Crater 43.62,8.51
step
Watch the dialogue
talk Spraggle Frock##9997
turnin A Little Help From My Friends##4491 |goto Un'Goro Crater 43.62,8.51
step
_Destroy This Item:_
|tip It is no longer needed.
trash Spraggle's Canteen##11804	|goto Un'Goro Crater 63.94,16.39
step
Enter the cave |goto Un'Goro Crater 63.94,16.39 < 15 |walk
Follow the path |goto Un'Goro Crater 65.98,15.65 < 10 |walk
Continue following the path |goto Un'Goro Crater 69.08,17.63 < 10 |walk
Continue following the path |goto Un'Goro Crater 69.41,16.57 < 10 |walk
Continue following the path |goto Un'Goro Crater 68.61,13.57 < 10 |walk
|tip Un'goro Gorilla will call for support when at low health, aggroing nearby allies onto you.	|only if hardcore
|tip Watch for patrols and respawn while in the area.	|only if hardcore
kill U'cha##9622
|tip Upstairs inside the cave.
collect U'cha's Pelt##11476 |q 4301/1 |goto Un'Goro Crater 68.15,12.58
step
Leave the cave |goto Un'Goro Crater 63.88,16.43 < 15 |walk |only if subzone("Fungal Rock") and _G.IsIndoors()
talk Torwa Pathfinder##9619
turnin The Mighty U'cha##4301 |goto Un'Goro Crater 71.63,75.96
step
talk Krakle##10302
turnin Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
accept The New Springs##980 |goto Un'Goro Crater 30.93,50.44
step
Kill enemies around this area
|tip Getting this far into level 54 will allow you to reach level 55 when turning in quests soon.
|tip You should already be pretty close to reaching level 55.
ding 54,163500 |goto Un'Goro Crater 46.34,17.42
step
talk Tran'rek##7876
turnin Super Sticky##4504 |goto Tanaris 51.57,26.76
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
collect Eridan's Vial##11682 |goto Tanaris 52.30,28.91 |q 4441
collect 10 Moontouched Feather##12383 |goto Tanaris 52.30,28.91 |q 978
collect Purified Moonwell Water##12906 |goto Tanaris 52.30,28.91 |q 5159
collect 3 Videre Elixir##11243 |goto Tanaris 52.30,28.91 |q 3909
step
Enter the building |goto The Barrens 62.52,38.57 < 10 |walk
talk Liv Rizzlefix##8496
|tip Inside the building.
turnin Volcanic Activity##4502 |goto The Barrens 62.45,38.73
step
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Moontouched Wildkin##978 |goto Teldrassil 55.50,92.04
accept Find Ranshalla##979 |goto Teldrassil 55.50,92.04
step
talk Daryn Lightwind##7907
|tip Upstairs inside the building.
accept Starfall##5250 |goto Teldrassil 55.41,92.23
step
map Darnassus
path	follow strict; loop on; ants curved; dist 20; markers none
path	36.00,41.30		38.50,47.91		40.25,73.62		49.94,80.49
path	54.88,74.47		57.42,82.41		67.68,57.45		62.02,52.75
path	61.79,40.59		43.80,41.10		36.79,14.21		39.17,20.89
path	49.77,18.95		52.37,18.62		54.33,10.03		57.70,7.66
path	65.06,16.66		60.60,22.94		61.80,32.53		61.54,40.48
Enter the building |goto Darnassus 39.04,76.76 < 15 |walk
use Eridan's Vial##11682
|tip Inside the building.
collect Vial of Blessed Water##5646 |q 4441/1 |goto Darnassus 39.51,83.92
step
Leave the building |goto Darnassus 39.04,76.76 < 15 |walk |only if subzone("Temple of the Moon")
Enter the building |goto Darnassus 35.52,10.70 < 10 |walk
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
accept Un'Goro Soil##3764 |goto Darnassus 34.82,9.25
step
talk Jenal##9047
|tip On the ground, outside the building.
turnin Un'Goro Soil##3764 |goto Darnassus 31.49,8.23
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Un'Goro Soil##11018 |goto Darnassus 35.52,10.70
step
Enter the building |goto Darnassus 35.52,10.70 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building, on the middle floor.
accept Rabine Saturna##6762 |goto Darnassus 35.38,8.40
step
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
accept Morrowgrain Research##3781 |goto Darnassus 34.80,9.25
step
talk Mathrengyl Bearwalker##4217
|tip Inside the tower, on the middle level.
turnin Morrowgrain Research##3781 |goto Darnassus 35.37,8.40
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Sildanair##4089 |only if Warrior
talk Denatharion##4218 |only if Druid
talk Jandria##4091 |only if Priest
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter |q 5159
trainer Sildanair##4089 |goto Darnassus/0 61.78,42.28 |only if Warrior |q 5159
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue |q 5159
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid |q 5159
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80 |only if Priest |q 5159
|tip In the basement of the tree. |only if Rogue
|tip Train your spells.
step
talk Cyroen##4220
|tip Inside the building, on the bottom floor.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Cyroen##4220 |goto Darnassus 33.85,9.51 |q 5159
|only if Mage
step
talk Auctioneer Golothas##8723
|tip Inside the building.
|tip Buy these items from the auction house or collect them from your bank.
|tip You will turn them in for a lot of experience.
|tip If you have any in your bank, get them out before you buy more.
|tip If you can't get them, it's okay, but you may have to grind a bit later to make up for it.
collect 60 Wool Cloth##2592 |goto Darnassus 56.24,54.04 |q 7792 |future
collect 60 Silk Cloth##4306 |goto Darnassus 56.24,54.04 |q 7798 |future
collect 60 Mageweave Cloth##4338 |goto Darnassus 56.24,54.04 |q 7799 |future
collect 60 Runecloth##14047 |goto Darnassus 56.24,54.04 |q 7800 |future
|only if not selfmade
step
Run up the ramp |goto Darnassus 61.25,23.25 < 10 |only if walking
talk Raedon Duskstriker##14725
accept A Donation of Wool##7792 |goto Darnassus 64.02,23.00 |instant
|only if itemcount(2592) >= 60
step
talk Raedon Duskstriker##14725
accept A Donation of Silk##7798 |goto Darnassus 64.02,23.00 |instant
|only if itemcount(4306) >= 60
step
talk Raedon Duskstriker##14725
accept A Donation of Mageweave##7799 |goto Darnassus 64.02,23.00 |instant
|only if itemcount(4338) >= 60
step
talk Raedon Duskstriker##14725
accept A Donation of Runecloth##7800 |goto Darnassus 64.02,23.00 |instant
|only if itemcount(14047) >= 60
step
talk Kyrai##3561
|tip Upstairs inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 5159
|only if Rogue
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
  'Leveling Guides\\Winterspring (55-55)',
  {
    image = ZGV.IMAGESDIR .. 'Winterspring',
    condition_suggested = function()
      return level == 55 and not completedq(3942)
    end,
    next = 'Leveling Guides\\Felwood Part 3 (55-55)',
    hardcore = true,
  },
  [[
step
Enter the tunnel to leave Felwood |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Winterspring")
Leave the tunnel to enter Winterspring |goto Felwood 68.40,5.84 < 10 |walk |only if not zone("Winterspring")
talk Salfa##11556
turnin Speak to Salfa##8465 |goto Winterspring 27.74,34.50
step
talk Donova Snowden##9298
turnin The New Springs##980 |goto Winterspring 31.27,45.16
accept Strange Sources##4842 |goto Winterspring 31.27,45.16
turnin The Videre Elixir##3909 |goto Winterspring 31.27,45.16
accept Meet at the Grave##3912 |goto Winterspring 31.27,45.16
accept Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
stickystart "Kill_Winterfall_Pathfinders"
stickystart "Kill_Winterfall_Den_Watchers"
stickystart "Collect_Empty_Firewater_Flask"
stickystart "Accept_Winterfall_Firewater"
step
kill 8 Winterfall Totemic##7441 |q 5082/3 |goto Winterspring 30.57,37.17
|tip They share spawn points with the other Winterfall enemies.
|tip Kill the other types also, to get more to spawn.
You can find more around: |notinsticky
[39.46,43.70]
[41.78,43.14]
step
label "Kill_Winterfall_Pathfinders"
kill 8 Winterfall Pathfinder##7442 |q 5082/1 |goto Winterspring 30.57,37.17
|tip They share spawn points with the other Winterfall enemies.	|notinsticky
|tip Kill the other types also, to get more to spawn.		|notinsticky
You can find more around: |notinsticky
[39.46,43.70]
[41.78,43.14]
step
label "Kill_Winterfall_Den_Watchers"
kill 8 Winterfall Den Watcher##7440 |q 5082/2 |goto Winterspring 30.57,37.17
|tip They share spawn points with the other Winterfall enemies. |notinsticky
|tip Kill the other types also, to get more to spawn.		|notinsticky
You can find more around: |notinsticky
[39.46,43.70]
[41.78,43.14]
step
label "Collect_Empty_Firewater_Flask"
Kill Winterfall enemies around this area
collect Empty Firewater Flask##12771 |goto Winterspring 30.57,37.17 |q 5083 |future
You can find more around: |notinsticky
[39.46,43.70]
[41.78,43.14]
step
label "Accept_Winterfall_Firewater"
use the Empty Firewater Flask##12771
accept Winterfall Firewater##5083
|only if itemcount(12771) > 0
step
talk Donova Snowden##9298
turnin Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
turnin Winterfall Firewater##5083 |goto Winterspring 31.27,45.16
accept Falling to Corruption##5084 |goto Winterspring 31.27,45.16 |only if not hardcore
step
Enter the tunnel to leave Winterspring |goto Winterspring 27.89,34.44 < 10 |walk |only if not zone("Felwood")
Leave the tunnel to enter Felwood |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Felwood")
click Deadwood Cauldron##176091
|tip Try to kite the enemies near the cauldron away one at a time to fight them alone, until you can kill the rest.
|tip If you have trouble, try to find someone to help you.
turnin Falling to Corruption##5084 |goto Felwood 60.20,5.87
accept Mystery Goo##5085 |goto Felwood 60.20,5.87
step
Follow the road |goto Felwood 64.18,15.20 < 30 |only if walking and not zone("Winterspring")
Enter the tunnel to leave Felwood |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Winterspring")
Leave the tunnel to enter Winterspring |goto Felwood 68.40,5.84 < 10 |walk |only if not zone("Winterspring")
talk Donova Snowden##9298
turnin Mystery Goo##5085 |goto Winterspring 31.27,45.16
accept Toxic Horrors##5086 |goto Winterspring 31.27,45.16
step
use the Videre Elixir##11243
|tip You will die. |only if not hardcore
|tip It will bring you to 1 hp, make sure no other enemies are nearby that could hit you. |only if hardcore
|tip This quest was updated to no longer kill you on Hardcore servers |only if hardcore
Drink the Videre Elixir |complete isdead |goto Tanaris 54.03,28.73 |q 3912
step
talk Gaeriyan##9299
|tip He looks like a human ghost that walks around this small area.
turnin Meet at the Grave##3912 |goto Tanaris 53.93,23.34 |zombiewalk |only if not hardcore
accept A Grave Situation##3913 |goto Tanaris 53.93,23.34 |zombiewalk |only if not hardcore
turnin Meet at the Grave##3912 |goto Tanaris 53.93,23.34 |only if hardcore
accept A Grave Situation##3913 |goto Tanaris 53.93,23.34 |only if hardcore
step
click A Conspicuous Gravestone
turnin A Grave Situation##3913 |goto Tanaris 53.82,29.06
accept Linken's Sword##3914 |goto Tanaris 53.82,29.06
step
talk Linken##8737
turnin Linken's Sword##3914 |goto Un'Goro Crater 44.66,8.10
accept A Gnome's Assistance##3941 |goto Un'Goro Crater 44.66,8.10
step
Enter the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk
talk J.D. Collie##9117
|tip Inside the cave.
turnin A Gnome's Assistance##3941 |goto Un'Goro Crater 41.92,2.70
step
Watch the dialogue
talk J.D. Collie##9117
|tip Inside the cave.
accept Linken's Memory##3942 |goto Un'Goro Crater 41.92,2.70
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
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Winterspring (55-56)',
  {
    image = ZGV.IMAGESDIR .. 'Winterspring',
    condition_suggested = function()
      return level >= 55 and level <= 56 and not completedq(4902)
    end,
    next = 'Leveling Guides\\Western Plaguelands (56-56)',
    hardcore = true,
  },
  [[
step
Follow the road |goto Felwood 64.18,15.20 < 30 |only if walking and not zone("Winterspring")
Enter the tunnel to leave Felwood |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Winterspring")
Leave the tunnel to enter Winterspring |goto Felwood 68.40,5.84 < 10 |walk |only if not zone("Winterspring")
talk Donova Snowden##9298
turnin Toxic Horrors##5086 |goto Winterspring 31.27,45.16
accept Winterfall Runners##5087 |goto Winterspring 31.27,45.16
|only if not hardcore
step
kill Winterfall Runner##10916+
|tip They look like a group of 3 white furbolgs that walk back and forth along this road.
|tip Check these locations, and if you don't find them, wait at the location in this step closest to Everlook.
|tip They will eventually walk past this location.
collect Winterfall Crate##12829 |q 5087/1 |goto Winterspring 30.04,42.55
You can also find them around: |notinsticky
[46.96,39.54]
[53.55,33.96]
If you don't want to wait for the patrol, there's also usually one in Felwood around [Felwood 60.23,5.75]
|only if not hardcore
step
Follow the path up |goto Winterspring 53.48,28.64 < 50 |only if walking and not subzone("Starfall Village")
Enter the building |goto Winterspring 51.39,29.82 < 15 |only if walking
talk Wynd Nightchaser##11079
|tip Inside the building.
turnin Starfall##5250 |goto Winterspring 51.97,30.39
accept The Ruins of Kel'Theril##5244 |goto Winterspring 51.97,30.39
step
talk Jaron Stoneshaper##10301
|tip Inside the building.
turnin The Ruins of Kel'Theril##5244 |goto Winterspring 52.14,30.43
accept Troubled Spirits of Kel'Theril##5245 |goto Winterspring 52.14,30.43
accept Enraged Wildkin##4861 |goto Winterspring 52.14,30.43
step
click Highborne Relic Fragment##175892
|tip Two enemies will appear and attack you.
|tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
collect Second Relic Fragment##12897 |q 5245/2 |goto Winterspring 50.88,41.71
step
click Highborne Relic Fragment##175892
|tip Two enemies will appear and attack you.
|tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
collect Fourth Relic Fragment##12899 |q 5245/4 |goto Winterspring 52.42,41.50
step
click Highborne Relic Fragment##175892
|tip Two enemies will appear and attack you.
|tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
collect Third Relic Fragment##12898 |q 5245/3 |goto Winterspring 53.31,43.43
step
click Highborne Relic Fragment##175892
|tip Two enemies will appear and attack you.
|tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
collect First Relic Fragment##12896 |q 5245/1 |goto Winterspring 55.14,42.98
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 56.
|tip You are about to have to go to an area with higher level enemies, so being a level higher will help.
|tip Watch for respawns while here.	|only if hardcore
|tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
ding 56 |goto Winterspring 50.88,41.71
You can find more around: |notinsticky
[52.42,41.50]
[53.31,43.43]
[55.14,42.98]
step
Enter Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking
talk Umi Rumplesnicker##10305
accept Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
Enter the building |goto Winterspring 61.32,38.72 < 10 |walk
talk Innkeeper Vizzie##11118
|tip Inside the building.
home Everlook |goto Winterspring 61.36,38.83
step
Enter the building |goto Winterspring 61.33,37.35 < 10 |walk
talk Izzy Coppergrab##13917
|tip Inside the building.
|tip Deposit these items into the bank.
bank Irontree Heart##11173 |goto Winterspring 61.45,36.98 |q 4084 |only if not hardcore
bank Silvery Claws##11172 |goto Winterspring 61.45,36.98 |q 4084 |only if not hardcore
|tip You should have 11 of these.
bank Jaron's Pick##12891 |goto Winterspring 61.45,36.98 |q 5245
bank First Relic Fragment##12896 |goto Winterspring 61.45,36.98 |q 5245
bank Second Relic Fragment##12897 |goto Winterspring 61.45,36.98 |q 5245
bank Third Relic Fragment##12898 |goto Winterspring 61.45,36.98 |q 5245
bank Fourth Relic Fragment##12899 |goto Winterspring 61.45,36.98 |q 5245
step
Leave Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking and subzone("Everlook")
Kill Ice Thistle enemies around this area
|tip Watch for patrols and respawns while here.	|only if hardcore
|tip Ice Thistle Yeti can stun, be careful. |only if hardcore
collect 10 Thick Yeti Fur##12366 |q 3783/1 |goto Winterspring 66.79,43.34
You can find more inside the cave at [67.65,41.75]
step
Leave the cave |goto Winterspring 67.65,41.75 < 30 |walk |only if subzone("Ice Thistle Hills") and _G.IsIndoors()
click Damaged Crate##175587
turnin Enraged Wildkin##4861 |goto Winterspring 59.00,59.78
accept Enraged Wildkin##4863 |goto Winterspring 59.00,59.78
step
click Jaron's Wagon##175586
turnin Enraged Wildkin##4863 |goto Winterspring 61.41,60.68
accept Enraged Wildkin##4864 |goto Winterspring 61.41,60.68
step
click Jaron's Supplies##175629
|tip It is a small box beside the wagon.
collect Jaron's Supplies##12525 |q 4864/1 |goto Winterspring 61.39,60.73
step
talk Ranshalla##10300
turnin Find Ranshalla##979 |goto Winterspring 63.07,59.47
accept Guardians of the Altar##4901 |goto Winterspring 63.07,59.47
stickystart "Collect_Blue_Feathered_Amulet"
step
Watch the dialogue
|tip Follow Ranshalla and protect her as she walks.
|tip Let her get attacked first, so she will help you fight.
click Fire of Elune+
|tip They look like brown torch poles in each of the caves she walks into.
|tip Click them to get her to start walking again.
click Altar of Elune
|tip It looks like a stone table, at this location, that she eventually walks to.
Discover the Secret of the Altar of Elune |q 4901/1 |goto Winterspring 64.86,63.69
|tip If you have trouble, try to find someone to help you.
step
label "Collect_Blue_Feathered_Amulet"
Kill Owlbeast enemies around this area |notinsticky
|tip Watch for respawns while here.	|only if hardcore|notinsticky
collect Blue-feathered Amulet##12524 |q 4864/2 |goto Winterspring 65.42,60.38
|tip If you have trouble, try to find someone to help you. |notinsticky
step
Cross the bridge |goto Winterspring 62.42,67.44 < 40 |only if walking
Discover Darkwhisper Gorge |q 4842/1 |goto Winterspring 59.84,74.12
step
talk Gregor Greystone##10431
|tip Inside the building.
accept The Everlook Report##6028 |goto Winterspring 61.35,38.97
accept Duke Nicholas Zverenhoff##6030 |goto Winterspring 61.35,38.97
step
talk Jessica Redpath##11629
|tip Inside the building.
accept Sister Pamela##5601 |goto Winterspring 61.28,38.98
step
Enter the building |goto Winterspring 61.33,37.35 < 10 |walk
talk Izzy Coppergrab##13917
|tip Inside the building.
|tip Collect these items from the bank.
collect Black Dragonflight Molt##10575 |goto Winterspring 61.45,36.98 |q 4022 |future |only if not hardcore
collect 6 Filled Cursed Ooze Jar##11947 |goto Winterspring 61.45,36.98 |q 4512
collect 6 Filled Tainted Ooze Jar##11949 |goto Winterspring 61.45,36.98 |q 4512
collect Drawing Kit##10445 |goto Winterspring 61.45,36.98 |q 3461
step
talk Izzy Coppergrab##13917
|tip Inside the building.
|tip Deposit these items into the bank.
bank Studies in Spirit Speaking##15790 |goto Winterspring 61.45,36.98 |q 6030
step
talk Umi Rumplesnicker##10305
turnin Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
Leave Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking and subzone("Everlook")
Follow the path up |goto Winterspring 53.48,28.64 < 50 |only if walking and not subzone("Starfall Village")
Enter the building |goto Winterspring 51.39,29.82 < 15 |only if walking
talk Jaron Stoneshaper##10301
|tip Inside the building.
turnin Enraged Wildkin##4864 |goto Winterspring 52.14,30.43
step
talk Natheril Raincaller##2084
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
|tip You will be questing a while.
Visit the Vendor |vendor Natheril Raincaller##2084 |goto Winterspring 51.45,30.83 |q 4842
|only if Hunter
step
talk Donova Snowden##9298
turnin Strange Sources##4842 |goto Winterspring 31.27,45.16
turnin Winterfall Runners##5087 |goto Winterspring 31.27,45.16 |only if not hardcore
step
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Guardians of the Altar##4901 |goto Teldrassil 55.50,92.05
accept Wildkin of Elune##4902 |goto Teldrassil 55.50,92.05
step
Enter the building |goto Darnassus 35.52,10.70 < 10 |walk
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
turnin Wildkin of Elune##4902 |goto Darnassus 34.82,9.25
step
talk Kyrai##3561
|tip Upstairs inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 6028
|only if Rogue
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Western Plaguelands (56-56)',
  {
    image = ZGV.IMAGESDIR .. 'Western Plaguelands',
    condition_suggested = function()
      return level == 56 and not completedq(5217)
    end,
    next = 'Leveling Guides\\Burning Steppes (56-57)',
    hardcore = true,
  },
  [[
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 6028
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 6028
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 6028
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 6028
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 6028
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 6028
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 6028
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 6028
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
talk High Priestess MacDonnell##11053
accept Target: Felstone Field##5216 |goto Western Plaguelands 42.97,84.50
step
talk Argent Officer Pureheart##10840
turnin The Everlook Report##6028 |goto Western Plaguelands 42.97,83.55
step
kill Cauldron Lord Bilemaw##11075
collect Felstone Field Cauldron Key##13194 |q 5216/1 |goto Western Plaguelands 37.03,57.11
step
click Scourge Cauldron##176392
turnin Target: Felstone Field##5216 |goto Western Plaguelands 37.19,56.87
accept Return to Chillwind Camp##5217 |goto Western Plaguelands 37.19,56.87
step
Enter the building |goto Western Plaguelands 38.04,54.61 < 10 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
accept Better Late Than Never##5021 |goto Western Plaguelands 38.40,54.05
step
Enter the building |goto Western Plaguelands 38.52,55.33 < 10 |walk
click Janice's Parcel##175894
|tip Inside the building.
turnin Better Late Than Never##5021 |goto Western Plaguelands 38.73,55.24
accept Better Late Than Never##5022 |goto Western Plaguelands 38.73,55.24
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5217 |goto Western Plaguelands 42.97,84.50
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Burning Steppes (56-57)',
  {
    image = ZGV.IMAGESDIR .. 'Burning Steppes',
    condition_suggested = function()
      return level >= 56 and level <= 57 and not completedq(7811)
    end,
    next = 'Leveling Guides\\Western Plaguelands (57-57)',
    hardcore = true,
  },
  [[
step
talk Laris Geardawdle##9616
|tip Inside the building.
turnin A Little Slime Goes a Long Way##4512 |goto Ironforge 75.77,23.37
step
Enter the building |goto Ironforge 20.65,53.22 < 7 |walk
talk Innkeeper Firebrew##5111
|tip Inside the building.
home Ironforge |goto Ironforge 18.16,51.46
step
Enter the building |goto Ironforge 34.08,62.40 < 10 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Deposit these items into the bank.
bank Janice's Parcel##12724 |goto Ironforge 35.92,60.14 |q 5022
step
Leave the bank |goto Ironforge 34.29,62.11 < 10 |walk |only if subzone("Vault of Ironforge")
Enter the High Seat |goto Ironforge 44.57,49.50 < 10 |walk |only if not subzone("The High Seat")
talk Royal Historian Archesonus##8879
|tip Inside the building.
accept The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
step
talk Royal Historian Archesonus##8879
|tip Inside the building.
Select _"I am ready, Historian Archesonus."_
Listen to the Story of Thaurissan |q 3702/1 |goto Ironforge 38.37,55.31
step
talk Royal Historian Archesonus##8879
|tip Inside the building.
turnin The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
accept The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
talk Tynnus Venomsprout##5169
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66 |q 3823 |future
|only if Rogue
step
Follow the path up into Morgan's Vigil |goto Burning Steppes 82.85,63.33 < 20 |only if walking
talk Borgus Stoutarm##2299
fpath Morgan's Vigil |goto Burning Steppes 84.33,68.33
step
talk Oralius##9177
accept Extinguish the Firegut##3823 |goto Burning Steppes 84.56,68.68
accept FIFTY! YEP!##4283 |goto Burning Steppes 84.56,68.68
step
_NOTE:_
Incoming Important Quest
|tip The quest "Dragonkin Menace" is part of a huge chain of quests, but requires that you kill elite enemies.
|tip Skipping the quest will result in needing to grind 20,720 xp.
|tip Try to find help to do this quest, it is HIGHLY recommended.
Click Here to Continue |confirm |q 4182 |future
|only if hardcore
step
talk Helendis Riverhorn##9562
accept Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.94
|tip We are accepting this quest now so you get credit for killing Whelps. |only if hardcore
|tip Skip this if you never intend to find help doing this elite quest. |only if hardcore
stickystart "Kill_Firegut_Brutes"
stickystart "Kill_Firegut_Ogre_Mages"
step
kill 7 Firegut Ogre##7033 |q 3823/2 |goto Burning Steppes 75.39,38.44
|tip You can find more all around on this mountain, and in the caves on the mountain.
|tip Go out of your way to kill Firegut Ogres, they are more rare than the other types.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
step
label "Kill_Firegut_Brutes"
kill 7 Firegut Brute##7035 |q 3823/3 |goto Burning Steppes 75.39,38.44
|tip You can find more all around on this mountain, and in the caves on the mountain. |notinsticky
|tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
step
label "Kill_Firegut_Ogre_Mages"
kill 15 Firegut Ogre Mage##7034 |q 3823/1 |goto Burning Steppes 75.39,38.44
|tip You can find more all around on this mountain, and in the caves on the mountain. |notinsticky
|tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
step
Follow the path up into Morgan's Vigil |goto Burning Steppes 82.85,63.33 < 20 |only if walking
talk Oralius##9177
turnin Extinguish the Firegut##3823 |goto Burning Steppes 84.56,68.68
accept Gor'tesh the Brute Lord##3824 |goto Burning Steppes 84.56,68.68
step
Follow the path up |goto Burning Steppes 63.93,29.93 < 20 |only if walking
talk Tinkee Steamboil##10267
accept Broodling Essence##4726 |goto Burning Steppes 65.24,24.00
step
talk Maxwort Uberglint##9536
accept Tablet of the Seven##4296 |goto Burning Steppes 65.16,23.92
step
Enter the cave |goto Burning Steppes 65.52,23.08 < 15 |walk
talk Yuka Screwspigot##9544
|tip Inside the cave.
turnin Yuka Screwspigot##4324 |goto Burning Steppes 66.06,21.95
stickystart "Kill_Black_Drake"
stickystart "Kill_Black_Wyrmkins"
stickystart "Kill_Black_Dragonspawns"
stickystart "Kill_Black_Broodlings"
step
use the Draco-Incarcinatrix 900##12284
|tip Use it on Broodling enemies around this area.
|tip They look like small flying dragons.
|tip They share spawn points with the scorpids and wolves, so kill those also, if you can't find any.
|tip Use the Draco-Incarcinatrix before pulling the whelp, or when it is casting fireball.
Kill Broodling enemies around this area
click Broodling Essence##175264+
|tip They look like red floating crystals that appear above their corpses after you kill them.
collect 8 Broodling Essence##12283 |q 4726/1 |goto Burning Steppes 72.83,28.41
|tip Be careful, avoid the elite enemies around the area. |only if hardcore
You can find more around: |notinsticky
[80.05,27.94]
[87.34,32.01]
[91.96,35.64]
step
Enter the cave |goto Burning Steppes 94.11,31.92 < 15 |walk
talk Cyrus Therepentous##9459
|tip Inside the cave.
accept A Taste of Flame##4022 |goto Burning Steppes 95.06,31.57
|only if not hardcore
step
talk Cyrus Therepentous##9459
|tip Inside the cave.
Select _"I do not posess proof any proof, Cyrus."_
kill Frenzied Black Drake##9461
|tip This dragon is a 54 elite and will immediately attack you.
|tip You may need help with this.
|tip The molt item is not group loot, so only one person can loot it.
collect Black Dragonflight Molt##10575 |q 4022/1 |goto Burning Steppes 95.06,31.57
|only if not hardcore
step
talk Cyrus Therepentous##9459
|tip Inside the cave.
Select _"I present you with proof of my deeds, Cyrus."_
Present the Proof |q 4022/2 |goto Burning Steppes 95.06,31.57
|only if not hardcore
step
talk Cyrus Therepentous##9459
|tip Inside the cave.
turnin A Taste of Flame##4022 |goto Burning Steppes 95.06,31.57
|only if not hardcore
step
label "Kill_Black_Drake"
kill Black Drake##7044 |q 4182/3 |goto Burning Steppes 86.33,30.69
|tip SKIP THIS STEP IF YOU WERE UNABLE TO FIND HELP |only if hardcore
|tip They look like large red dragons flying low to the ground around this area.
|tip If you have trouble, try to find someone to help you. |notinsticky
|tip It's important to get this quest completed. |notinsticky
Also check around: |notinsticky
[89.89,37.22]
[89.50,56.92]
[81.84,58.36]
step
label "Kill_Black_Wyrmkins"
kill 4 Black Wyrmkin##7041 |q 4182/4 |goto Burning Steppes 84.25,27.76
|tip SKIP THIS STEP IF YOU WERE UNABLE TO FIND HELP |only if hardcore
|tip If you have trouble, try to find someone to help you. |notinsticky
|tip It's important to get this quest completed. |notinsticky
You can find more around: |notinsticky
[88.83,39.34]
[91.82,54.43]
step
label "Kill_Black_Dragonspawns"
kill 10 Black Dragonspawn##7040 |q 4182/2 |goto Burning Steppes 84.25,27.76
|tip SKIP THIS STEP IF YOU WERE UNABLE TO FIND HELP |only if hardcore
|tip If you have trouble, try to find someone to help you. |notinsticky
|tip It's important to get this quest completed. |notinsticky
You can find more around: |notinsticky
[88.83,39.34]
[91.82,54.43]
step
label "Kill_Black_Broodlings"
kill 15 Black Broodling##7047 |q 4182/1 |goto Burning Steppes 72.83,28.41
|tip SKIP THIS STEP IF YOU WERE UNABLE TO FIND HELP |only if hardcore
|tip Be careful, avoid the elite enemies around the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[80.05,27.94]
[87.34,32.01]
[91.96,35.64]
[89.92,45.69]
[84.65,61.84]
stickystart "Recover_Information"
step
click Tablet of the Seven##169294
Choose _"Transcribe the tablet."_
collect Tablet Transcript##11470 |q 4296/1 |goto Burning Steppes 54.09,40.73
step
label "Recover_Information"
click Thaurissan Relic##153556+
|tip They look like cylindrical grey stones sitting upright on the ground around this area.
Recover #12# Information |q 3701/1 |goto Burning Steppes 68.42,37.33
You can find more around: |notinsticky
[66.04,44.05]
[62.21,40.68]
[58.93,42.59]
[57.80,37.02]
[52.89,35.96]
stickystart "Collect_Blackrock_Medallions"
step
kill Gor'tesh##9176
|tip He walks around this area, in and out of this building.
|tip Be careful.  He hits hard and has a guard that may pull with him.
|tip He hurts VERY hard and does a stun. You likely want to use a health potion and do not be greedy with it incase he stuns you when you're low. |only if hardcore
|tip Skip this step if you're not comfortable. |only if hardcore
|tip Watch for patrols and respawns while in the area.		|only if hardcore
collect Gor'tesh's Lopped Off Head##11080 |q 3824/1 |goto Burning Steppes 39.26,55.36
step
label "Collect_Blackrock_Medallions"
Kill Blackrock enemies around this area
|tip They look like orcs and wolves.
|tip You can find more inside the buildings around this area.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect 50 Blackrock Medallion##11467 |q 4283/1 |goto Burning Steppes 39.31,55.42
You can find more around: |notinsticky
[43.90,56.18]
[49.30,55.43]
[52.98,53.87]
step
Follow the path up into Morgan's Vigil |goto Burning Steppes 82.85,63.33 < 20 |only if walking
talk Oralius##9177
turnin Gor'tesh the Brute Lord##3824 |goto Burning Steppes 84.56,68.67
accept Ogre Head On A Stick = Party##3825 |goto Burning Steppes 84.56,68.67
turnin FIFTY! YEP!##4283 |goto Burning Steppes 84.56,68.67
step
_Destroy These Items:_
|tip They are no longer needed.
trash Blackrock Medallion##11467 |goto Burning Steppes 85.82,68.95
step
talk Helendis Riverhorn##9562
turnin Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
accept The True Masters##4183 |goto Burning Steppes 85.82,68.95
step
Enter the building |goto Redridge Mountains 29.49,46.11 < 10 |walk
talk Magistrate Solomon##344
|tip Inside the building.
turnin The True Masters##4183 |goto Redridge Mountains 29.99,44.45
accept The True Masters##4184 |goto Redridge Mountains 29.99,44.45
step
Leave the building |goto Redridge Mountains 29.49,46.11 < 10 |walk |only if subzone("Lakeshire Town Hall")
Enter the bank |goto Stormwind City 55.30,68.14 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect Janice's Parcel##12724 |goto Stormwind City 57.66,72.78 |q 5022
step
Enter the building |goto Stormwind City 47.79,31.24 < 10 |walk
talk Royal Factor Bathrilor##10782
|tip Upstairs inside the building.
turnin Better Late Than Never##5022 |goto Stormwind City 48.47,30.55
accept Good Natured Emma##5048 |goto Stormwind City 48.47,30.55
step
map Stormwind City
path	follow strict;	loop on;	ants curved;	dist 20;	markers none
path	52.46,41.98		48.29,49.03		50.15,51.53		55.04,47.69
path	57.64,47.70		59.73,51.45		57.66,55.16		60.62,60.33
path	57.16,54.48		57.05,54.37		55.65,53.48		52.74,55.15
path	50.88,51.60		49.66,51.59		48.32,48.32
talk Ol' Emma##3520
|tip She looks like an old human woman that walks in a counter-clockwise path around Stormwind City.
|tip This step's path will take you clockwise to help you find her faster.
|tip She sometimes stands upstairs inside the house that this path leads you to.
|tip Keep an eye on your minimap as you walk around, she will show up as a yellow dot.
turnin Good Natured Emma##5048
accept Good Luck Charm##5050
step
Enter Stormwind Keep |goto Stormwind City 69.09,28.71 < 15 |walk
talk Highlord Bolvar Fordragon##1748
|tip Inside the building.
turnin The True Masters##4184 |goto Stormwind City 78.22,17.99			|only if readyq(4184)
accept The True Masters##4185 |goto Stormwind City 78.22,17.99			|only if completedq(4184)
accept The First and the Last##6182 |goto Stormwind City 78.22,17.99
step
talk Lady Katrana Prestor##1749
|tip Inside the building.
Select _"Pardon the intrusion, Lady Prestor, but Highlord Bolvar suggested that I seek your advice."_
Seek Advice from Lady Prestor |q 4185/1 |goto Stormwind City 78.11,17.75
step
talk Highlord Bolvar Fordragon##1748
|tip Inside the building.
|tip He may be bugged if another player has recently completed the Onyxia event.
|tip If so, you can skip this quest but you will need to grind a bit later to make up for skipping a few quests.
turnin The True Masters##4185 |goto Stormwind City 78.22,17.99
accept The True Masters##4186 |goto Stormwind City 78.22,17.99
step
Leave Stormwind Keep |goto Stormwind City 69.01,28.80 < 15 |walk |only if subzone("Stormwind Keep")
Follow the path |goto Stormwind City 74.74,53.71 < 10 |only if walking
Enter the building |goto Stormwind City 77.12,58.01 < 10 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin The First and the Last##6182 |goto Stormwind City 75.79,59.85
accept Honor the Dead##6183 |goto Stormwind City 75.79,59.85
step
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin Honor the Dead##6183 |goto Stormwind City 75.79,59.85
accept Flint Shadowmore##6184 |goto Stormwind City 75.79,59.85
step
Leave the building |goto Stormwind City 77.12,58.01 < 10 |walk |only if subzone("SI:7")
Follow the path |goto Stormwind City 74.74,53.71 < 10 |only if walking and subzone("SI:7")
Enter the building |goto Redridge Mountains 29.49,46.11 < 10 |walk
talk Magistrate Solomon##344
|tip Inside the building.
turnin The True Masters##4186 |goto Redridge Mountains 29.99,44.45
accept The True Masters##4223 |goto Redridge Mountains 29.99,44.45
step
Leave the building |goto Redridge Mountains 29.49,46.11 < 10 |walk |only if subzone("Lakeshire Town Hall")
talk Marshal Maxwell##9560
turnin The True Masters##4223 |goto Burning Steppes 84.75,69.02
accept The True Masters##4224 |goto Burning Steppes 84.75,69.02
step
Follow the path up |goto Burning Steppes 63.96,29.79 < 20 |only if walking
talk Tinkee Steamboil##10267
turnin Broodling Essence##4726 |goto Burning Steppes 65.23,23.99
accept Felnok Steelspring##4808 |goto Burning Steppes 65.23,23.99
step
talk Maxwort Uberglint##9536
turnin Tablet of the Seven##4296 |goto Burning Steppes 65.15,23.91
step
talk Ragged John##9563
Select _"Official business, John.  I need some information about Marshal Windsor.  Tell me about the last time you saw him."_
Listen to Ragged John's Story |q 4224/1 |goto Burning Steppes 65.01,23.76
step
Kill enemies around this area
|tip You should already be level 57, or very close.					|only if not hardcore
|tip We are grinding here to catch up in XP after skipping a long quest chain.		|only if hardcore
ding 57 |goto Burning Steppes 62.67,40.88
step
Cross the hanging bridge and follow the path up |goto Burning Steppes 76.13,38.04 < 10 |only if walking
click Soft Dirt Mound
|tip On top of the mountain.
Plant Gor'tesh's Head |q 3825/1 |goto Burning Steppes 80.99,46.78
step
Follow the path up |goto Burning Steppes 82.85,63.31 < 20 |only if walking
talk Oralius##9177
turnin Ogre Head On A Stick = Party##3825 |goto Burning Steppes 84.56,68.67
step
talk Marshal Maxwell##9560
turnin The True Masters##4224 |goto Burning Steppes 84.74,69.01
step
Enter the building |goto Ironforge 34.08,62.40 < 10 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Collect these items from the bank.
collect Jaron's Pick##12891 |goto Ironforge 35.92,60.14 |q 5245
collect First Relic Fragment##12896 |goto Ironforge 35.92,60.14 |q 5245
collect Second Relic Fragment##12897 |goto Ironforge 35.92,60.14 |q 5245
collect Third Relic Fragment##12898 |goto Ironforge 35.92,60.14 |q 5245
collect Fourth Relic Fragment##12899 |goto Ironforge 35.92,60.14 |q 5245
collect Studies in Spirit Speaking##15790 |goto Ironforge 35.92,60.14 |q 6030
step
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Deposit these items into the bank.
bank Tinkee's Letter##12438 |goto Ironforge 35.92,60.14 |q 4808
step
Leave the bank |goto Ironforge 34.29,62.11 < 10 |walk |only if subzone("Vault of Ironforge")
Enter the High Seat |goto Ironforge 44.57,49.50 < 10 |walk |only if not subzone("The High Seat")
talk Royal Historian Archesonus##8879
|tip Inside the building.
turnin The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
Enter the building |goto Ironforge 26.11,72.17 < 15 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
|tip Buy these items from the auction house or collect them from your bank.
|tip You will turn them in for a lot of experience.
|tip If you have any in your bank, get them out before you buy more.
|tip If you can't get them, it's okay, but you may have to grind a bit later to make up for it.
collect 60 Wool Cloth##2592 |goto Ironforge 24.16,74.67 |q 7802 |future
collect 60 Silk Cloth##4306 |goto Ironforge 24.16,74.67 |q 7803 |future
collect 60 Mageweave Cloth##4338 |goto Ironforge 24.16,74.67 |q 7804 |future
collect 60 Runecloth##14047 |goto Ironforge 24.16,74.67 |q 7805 |future
|only if not selfmade
step
talk Mistina Steelshield##14723
accept A Donation of Wool##7802 |goto Ironforge 43.22,31.57 |instant
|only if itemcount(2592) >= 60
step
talk Mistina Steelshield##14723
accept A Donation of Silk##7803 |goto Ironforge 43.22,31.57 |instant
|only if itemcount(4306) >= 60
step
talk Mistina Steelshield##14723
accept A Donation of Mageweave##7804 |goto Ironforge 43.22,31.57 |instant
|only if itemcount(4338) >= 60
step
talk Mistina Steelshield##14723
accept A Donation of Runecloth##7805 |goto Ironforge 43.22,31.57 |instant
|only if itemcount(14047) >= 60
step
Enter the building |goto Ironforge 26.11,72.17 < 15 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
|tip Buy these items from the auction house or collect them from your bank.
|tip You will turn them in for a lot of experience.
|tip If you have any in your bank, get them out before you buy more.
|tip If you can't get them, it's okay, but you may have to grind a bit later to make up for it.
collect 60 Wool Cloth##2592 |goto Ironforge 24.16,74.67 |q 7807 |future
collect 60 Silk Cloth##4306 |goto Ironforge 24.16,74.67 |q 7808 |future
collect 60 Mageweave Cloth##4338 |goto Ironforge 24.16,74.67 |q 7809 |future
collect 60 Runecloth##14047 |goto Ironforge 24.16,74.67 |q 7811 |future
|only if not selfmade
step
talk Bubulo Acerbus##14724
accept A Donation of Wool##7807 |goto Ironforge 74.09,48.22 |instant
|only if itemcount(2592) >= 60
step
talk Bubulo Acerbus##14724
accept A Donation of Silk##7808 |goto Ironforge 74.09,48.22 |instant
|only if itemcount(4306) >= 60
step
talk Bubulo Acerbus##14724
accept A Donation of Mageweave##7809 |goto Ironforge 74.09,48.22 |instant
|only if itemcount(4338) >= 60
step
talk Bubulo Acerbus##14724
accept A Donation of Runecloth##7811 |goto Ironforge 74.09,48.22 |instant
|only if itemcount(14047) >= 60
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Western Plaguelands (57-57)',
  {
    image = ZGV.IMAGESDIR .. 'Western Plaguelands',
    condition_suggested = function()
      return level == 57 and not completedq(4985)
    end,
    next = 'Leveling Guides\\Eastern Plaguelands (57-58)',
    hardcore = true,
  },
  [[
step
talk Tynnus Venomsprout##5169
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66 |q 5219 |future
|only if Rogue
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Innkeeper Anderson##2352
|tip Inside the building.
home Southshore |goto Hillsbrad Foothills 51.17,58.93
step
talk High Priestess MacDonnell##11053
accept Target: Dalson's Tears##5219 |goto Western Plaguelands 42.97,84.50
step
talk Commander Ashlam Valorfist##10838
accept All Along the Watchtowers##5097 |goto Western Plaguelands 42.70,84.03
step
talk Argent Officer Pureheart##10840
accept Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55 |instant
step
Equip the Argent Dawn Commission
|tip Wearing it will allow Minion's Scourgestones to drop from undead enemies in Western and Eastern Plaguelands.
Gain the Argent Dawn Commission Buff |havebuff Argent Dawn Commission##17670 |q 5408 |future
step
talk Flint Shadowmore##12425
turnin Flint Shadowmore##6184 |goto Western Plaguelands 43.61,84.51
accept The Eastern Plagues##6185 |goto Western Plaguelands 43.61,84.51
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Mark Tower One |q 5097/1 |goto Western Plaguelands 40.13,71.52
step
use the Beacon Torch##12815
|tip Avoid the large group of enemies in the center of town as you travel here.
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Mark Tower Four |q 5097/4 |goto Western Plaguelands 46.70,71.10
step
Enter the building |goto Western Plaguelands 53.60,64.79 < 10 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
|tip Watch for respawns while clearing your way to Mulgris.	|only if hardcore
accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.72,64.67
step
kill 8 Diseased Wolf##1817 |q 4984/1 |goto Western Plaguelands 42.74,54.83
|tip They share spawn points with Carrion Lurker spiders.
|tip Kill those as well, if you can't find any wolves.
You can find more around: |notinsticky
[45.96,48.00]
[46.92,39.81]
step
Enter the building |goto Western Plaguelands 47.52,50.94 < 10 |walk
click Mrs. Dalson's Diary##175926
|tip Inside the barn.
|tip Wait for the scarlet patrol to move away from the door before entering and exiting the barn!
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
accept Mrs. Dalson's Diary##5058 |goto Western Plaguelands 47.79,50.67 |instant
step
kill Wandering Skeleton##10816
|tip It looks like a white skeleton that spawns here and walks around this area around the buildings nearby.
|tip You can wait here until it walks by here, or respawns, or you can search around the buildings.
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
collect Dalson Outhouse Key##12738 |goto Western Plaguelands 47.85,49.32 |q 5060 |future
step
click Outhouse##175925
|tip Accept the "Locked Away" quest.
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
kill Farmer Dalson##10836
collect Dalson Cabinet Key##12739 |goto Western Plaguelands 48.11,49.71 |q 5060 |future
step
Enter the building |goto Western Plaguelands 47.14,50.19 < 10 |walk
click Locked Cabinet##175924
|tip Upstairs inside the building.
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
accept Locked Away##5060 |goto Western Plaguelands 47.37,49.65 |instant
step
kill Cauldron Lord Malvinious##11077
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
collect Dalson's Tears Cauldron Key##13195 |q 5219/1 |goto Western Plaguelands 46.18,52.38
step
click Scourge Cauldron##177289
turnin Target: Dalson's Tears##5219 |goto Western Plaguelands 46.18,52.02
accept Return to Chillwind Camp##5220 |goto Western Plaguelands 46.18,52.02
step
Enter the building |goto Western Plaguelands 38.04,54.61 < 10 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
|tip Skeletal Sorcerers are ranged attackers that deal heavy damage.	|only if hardcore
turnin Good Luck Charm##5050 |goto Western Plaguelands 38.40,54.05
accept Two Halves Become One##5051 |goto Western Plaguelands 38.40,54.05
step
kill Jabbering Ghoul##10801
|tip It looks like a green ghoul holding a pitchfork.
|tip He can possibly spawn in multiple locations, and may walk around this area.
|tip Skeletal Sorcerers are ranged attackers that deal heavy damage.	|only if hardcore
collect Good Luck Other-Half-Charm##12722 |goto Western Plaguelands 36.84,58.23 |q 5051
step
use the Good Luck Other-Half-Charm##12722
collect Good Luck Charm##12723 |q 5051/1
step
Enter the building |goto Western Plaguelands 38.04,54.61 < 10 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
|tip Skeletal Sorcerers are ranged attackers that deal heavy damage.	|only if hardcore
turnin Two Halves Become One##5051 |goto Western Plaguelands 38.40,54.05
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Mark Tower Three |q 5097/3 |goto Western Plaguelands 44.22,63.37
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Mark Tower Two |q 5097/2 |goto Western Plaguelands 42.44,66.27
step
talk Commander Ashlam Valorfist##10838
turnin All Along the Watchtowers##5097 |goto Western Plaguelands 42.70,84.03
accept Scholomance##5533 |goto Western Plaguelands 42.70,84.03
step
_Destroy This Item:_
|tip It is no longer needed.
trash Beacon Torch##12815 |goto Western Plaguelands 42.67,83.77
step
talk Alchemist Arbington##11056
turnin Scholomance##5533 |goto Western Plaguelands 42.67,83.77
accept Skeletal Fragments##5537 |goto Western Plaguelands 42.67,83.77
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5220 |goto Western Plaguelands 42.97,84.50
accept Target: Writhing Haunt##5222 |goto Western Plaguelands 42.97,84.50
step
talk Nathaniel Dumah##11616
accept A Plague Upon Thee##5903 |goto Western Plaguelands 43.42,84.84
step
Kill Skeletal enemies around this area
|tip Only enemies that look like skeletons will drop the quest item.
|tip They share spawn points with the ghoul enemies, so kill those too, if you can't find any.
|tip Watch for respawns while here.	|only if hardcore
|tip If you don't want to use your Holy Mightstone in a raid, now is a good time to get good value out of it. |only if Paladin and itemcount(20620) > 0
collect 15 Skeletal Fragments##14619 |q 5537/1 |goto Western Plaguelands 49.56,80.05
You can find more inside and outside the crypt at [54.33,79.90]
step
Leave the crypt |complete not subzone("Crypt") |goto Western Plaguelands 54.32,79.90 |q 5537
step
kill Cauldron Lord Razarch##11076
|tip Watch for stealthed enemies while in the field.						|only if hardcore
|tip Freezing Ghouls may incapacitate you, so fight them with full health when possible.	|only if hardcore
|tip Be VERY careful to never pull two Freezing Ghouls at once, they can CC you to death. Run immediately if you do. |only if hardcore
collect Writhing Haunt Cauldron Key##13197 |q 5222/1 |goto Western Plaguelands 53.02,66.06
step
click Scourge Cauldron##176393
|tip Watch for stealthed enemies while in the field.						|only if hardcore
|tip Freezing Ghouls may incapacitate you, so fight them with full health when possible.	|only if hardcore
|tip Be VERY careful to never pull two Freezing Ghouls at once, they can CC you to death. Run immediately if you do. |only if hardcore
turnin Target: Writhing Haunt##5222 |goto Western Plaguelands 53.02,65.72
accept Return to Chillwind Camp##5223 |goto Western Plaguelands 53.02,65.72
step
Enter the building |goto Western Plaguelands 53.60,64.79 < 10 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
|tip Watch for stealthed enemies while in the field.						|only if hardcore
|tip Freezing Ghouls may incapacitate you, so fight them with full health when possible.	|only if hardcore
|tip Be VERY careful to never pull two Freezing Ghouls at once, they can CC you to death. Run immediately if you do. |only if hardcore
turnin The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.72,64.67
accept The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.72,64.67
step
kill 8 Diseased Grizzly##1816 |q 4985/1 |goto Western Plaguelands 56.81,63.63
|tip They share spawn points with Plague Lurker spiders.
|tip Kill those as well, if you can't find any bears.
You can find more around: |notinsticky
[58.69,58.24]
[57.20,52.78]
[61.55,52.23]
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Eastern Plaguelands (57-58)',
  {
    image = ZGV.IMAGESDIR .. 'Eastern Plaguelands',
    condition_suggested = function()
      return level >= 57 and level <= 58 and not completedq(5211)
    end,
    next = 'Leveling Guides\\Western Plaguelands (58-59)',
    hardcore = true,
  },
  [[
step
Cross into Eastern Plaguelands and follow the river north |goto Western Plaguelands 69.30,45.04 < 50 |only if walking and zone("Western Plaguelands")
talk Tirion Fordring##1855
|tip He walks around this area.
accept Demon Dogs##5542 |goto Eastern Plaguelands 7.56,43.70
accept Blood Tinged Skies##5543 |goto Eastern Plaguelands 7.56,43.70
accept Carrion Grubbage##5544 |goto Eastern Plaguelands 7.56,43.70
stickystart "Kill_Plaguebats"
stickystart "Kill_Plaguehound_Runts"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
click Mangled Human Remains
|tip It looks like a human skeleton on the ground.
|tip Do not get too close to the building.	|only if hardcore
collect SI:7 Insignia (Turyen)##16002 |q 6185/3 |goto Eastern Plaguelands 28.81,74.88
step
Uncover the Blightcaller |q 6185/4 |goto Eastern Plaguelands 27.28,74.96
|tip Be careful to stay out of range of the elite enemies nearby.
step
click Mangled Human Remains
|tip It looks like a human skeleton on the ground.
|tip Be careful to stay out of range of the elite enemies nearby.
collect SI:7 Insignia (Fredo)##16001 |q 6185/2 |goto Eastern Plaguelands 27.28,74.96
step
click Mangled Human Remains
|tip It looks like a human skeleton on the ground.
collect SI:7 Insignia (Rutger)##16003 |q 6185/1 |goto Eastern Plaguelands 28.81,79.85
step
talk Pamela Redpath##10926
|tip She walks around this area inside this crumbled house.
turnin Sister Pamela##5601 |goto Eastern Plaguelands 36.45,90.80
accept Pamela's Doll##5149 |goto Eastern Plaguelands 36.45,90.80
stickystop "Kill_Plaguebats"
stickystop "Kill_Plaguehound_Runts"
stickystop "Collect_Slabs_Of_Carrion_Worm_Meat"
stickystart "Collect_Pamelas_Dolls_Left_Side"
stickystart "Collect_Pamelas_Dolls_Right_Side"
step
click Pamela's Doll's Head##176116
|tip It looks like a brown ball, with two X's for eyes, with flies buzzing around it.
|tip It can be in any of the 3 buildings around this area.
|tip Enemies may spawn after interacting with the doll.	|only if hardcore
collect Pamela's Doll's Head##12886 |goto Eastern Plaguelands 39.07,91.53 |q 5149
step
label "Collect_Pamelas_Dolls_Left_Side"
click Pamela's Doll's Left Side##176142
|tip It looks like a brown half of a doll, with one arm and one leg, with flies buzzing around it.
|tip It can be in any of the 3 buildings around this area.
|tip Enemies may spawn after interacting with the doll.	|only if hardcore
collect Pamela's Doll's Left Side##12887 |goto Eastern Plaguelands 39.07,91.53 |q 5149
step
label "Collect_Pamelas_Dolls_Right_Side"
click Pamela's Doll's Right Side##176143
|tip It looks like a brown half of a doll, with one arm and one leg, with flies buzzing around it.
|tip It can be in any of the 3 buildings around this area.
|tip Enemies may spawn after interacting with the doll.	|only if hardcore
collect Pamela's Doll's Right Side##12888 |goto Eastern Plaguelands 39.07,91.53 |q 5149
step
use Pamela's Doll's Head##12886
collect Pamela's Doll##12885 |q 5149/1
step
talk Pamela Redpath##10926
|tip She walks around this area inside this crumbled house.
turnin Pamela's Doll##5149 |goto Eastern Plaguelands 36.45,90.80
accept Auntie Marlene##5152 |goto Eastern Plaguelands 36.45,90.80
accept Uncle Carlin##5241 |goto Eastern Plaguelands 36.45,90.80
stickystart "Kill_Plaguehound_Runts"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
label "Kill_Plaguebats"
kill 30 Plaguebat##8600 |q 5543/1 |goto Eastern Plaguelands 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[35.16,74.32]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
label "Kill_Plaguehound_Runts"
kill 20 Plaguehound Runt##8596 |q 5542/1 |goto Eastern Plaguelands 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
kill 5 Plaguehound##8597 |q 5542/2 |goto Eastern Plaguelands 70.01,68.38
You can find more around: |notinsticky
[76.41,66.59]
[71.11,56.12]
stickystop "Collect_Slabs_Of_Carrion_Worm_Meat"
step
talk Caretaker Alen##11038
|tip He walks around this area.
accept Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 79.54,63.77
accept The Restless Souls##5281 |goto Eastern Plaguelands 79.54,63.77
step
talk Duke Nicholas Zverenhoff##11039
turnin Duke Nicholas Zverenhoff##6030 |goto Eastern Plaguelands 81.43,59.82
step
talk Carlin Redpath##11063
turnin Uncle Carlin##5241 |goto Eastern Plaguelands 81.52,59.77
accept Defenders of Darrowshire##5211 |goto Eastern Plaguelands 81.52,59.77
step
talk Khaelyn Steelwing##12617
fpath Light's Hope Chapel |goto Eastern Plaguelands 81.63,59.28
stickystart "Kill_Frenzied_Plaguehounds"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
talk Aurora Skycaller##10304
turnin Troubled Spirits of Kel'Theril##5245 |goto Eastern Plaguelands 53.51,22.00
stickystart "Darrowshire_Spirits"
step
_Destroy This Item:_
|tip It is no longer needed.
trash Jaron's Pick##12891
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 58.
ding 58 |goto Eastern Plaguelands 66.88,40.62
step
label "Kill_Frenzied_Plaguehounds"
kill 5 Frenzied Plaguehound##8598 |q 5542/3 |goto Eastern Plaguelands 62.63,47.95
|tip When fighting near the road, watch for a group of elite patrols and avoid them.	|only if hardcore
You can find more around: |notinsticky
[51.17,43.24]
[49.69,35.97]
step
click Large Termite Mound##177464+
|tip They look like large brown and white stones cracked open with green goo leaking out of the top of them around this area.
|tip When fighting near the road, watch for a group of elite patrols and avoid them.	|only if hardcore
collect 100 Plagueland Termites##15043 |q 5903/1 |goto Eastern Plaguelands 45.90,34.10
You can find more around: |notinsticky
[42.19,38.20]
[42.84,34.28]
[40.61,31.38]
[36.03,31.81]
[32.08,35.71]
[26.47,37.57]
[25.22,37.89]
[28.46,32.49]
[26.16,29.78]
[23.87,25.24]
[22.45,21.52]
[20.40,27.00]
step
label "Darrowshire_Spirits"
Kill ghouls around this area
|tip Only enemies that look like ghouls will count.
|tip They share spawn points with other undead in the area.
talk Darrowshire Spirit##11064+
|tip They appear after you kill the ghouls.
Free #15# Darrowshire Spirits |q 5211/1 |goto Eastern Plaguelands 66.88,40.62
You can find more around: |notinsticky
[42.19,38.20]
[42.84,34.28]
[40.61,31.38]
[36.03,31.81]
[32.08,35.71]
[26.47,37.57]
[25.22,37.89]
[28.46,32.49]
[26.16,29.78]
[23.87,25.24]
[22.45,21.52]
[20.40,27.00]
step
Enter the building |goto Eastern Plaguelands 14.59,33.47 < 10 |walk
talk Egan##11140
|tip Inside the building.
turnin The Restless Souls##5281 |goto Eastern Plaguelands 14.45,33.74
step
talk Augustus the Touched##12384
|tip Inside the building.
accept Augustus' Receipt Book##6164 |goto Eastern Plaguelands 14.45,33.48
step
Enter the building |goto Eastern Plaguelands 17.56,33.03 < 10 |walk
click Augustus' Receipt Book
|tip Upstairs inside the building.
collect Augustus' Receipt Book##15884 |q 6164/1 |goto Eastern Plaguelands 17.43,31.09
step
Enter the building |goto Eastern Plaguelands 14.59,33.47 < 10 |walk
talk Augustus the Touched##12384
|tip Inside the building.
turnin Augustus' Receipt Book##6164 |goto Eastern Plaguelands 14.45,33.48
step
label "Collect_Slabs_Of_Carrion_Worm_Meat"
kill Carrion Grub##8603+
|tip Go out of your way to kill grubs, the drop rate can be bad.
collect 15 Slab of Carrion Worm Meat##13853 |q 5544/1 |goto Eastern Plaguelands 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[35.16,74.32]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
Follow the path |goto Eastern Plaguelands 11.93,61.49 < 40 |only if walking
talk Tirion Fordring##1855
|tip He walks around this area.
|tip Run all the way around the mountain.
|tip You will die if you go through the cave, run all the way around. |only if hardcore
turnin Demon Dogs##5542 |goto Eastern Plaguelands 7.57,43.70
turnin Blood Tinged Skies##5543 |goto Eastern Plaguelands 7.57,43.70
turnin Carrion Grubbage##5544 |goto Eastern Plaguelands 7.57,43.70
accept Redemption##5742 |goto Eastern Plaguelands 7.57,43.70
step
talk Tirion Fordring##1855
|tip He walks around this area.
|tip Type "/sit" into your chat, or press X.
|tip You must be sitting for the dialogue option to appear when you talk to him.
Select _"I am ready to hear your tale, Tirion."_
Listen to Tirion's Tale |q 5742/1 |goto Eastern Plaguelands 7.57,43.70
step
_Destroy These Items:_
|tip They are no longer needed.
trash Slab of Carrion Worm Meat##13853 |goto Eastern Plaguelands 7.57,43.70
step
talk Tirion Fordring##1855
|tip He walks around this area.
turnin Redemption##5742 |goto Eastern Plaguelands 7.57,43.70
step
Enter the crypt |goto Eastern Plaguelands 27.86,85.48 < 10 |walk
kill Zaeldarr the Outcast##12250
|tip Downstairs inside the crypt.
collect Zaeldarr's Head##15785 |q 6021/1 |goto Eastern Plaguelands 27.46,84.88
step
talk Caretaker Alen##11038
|tip He walks around this area.
turnin Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 79.54,63.77
step
talk Carlin Redpath##11063
turnin Defenders of Darrowshire##5211 |goto Eastern Plaguelands 81.52,59.76
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Western Plaguelands (58-59)',
  {
    image = ZGV.IMAGESDIR .. 'Western Plaguelands',
    condition_suggested = function()
      return level >= 58 and level <= 59 and not completedq(7795)
    end,
    next = 'Leveling Guides\\Winterspring (59-59)',
    hardcore = true,
  },
  [[
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5223 |goto Western Plaguelands 42.97,84.50
accept Target: Gahrron's Withering##5225 |goto Western Plaguelands 42.97,84.50
step
talk Alchemist Arbington##11056
turnin Skeletal Fragments##5537 |goto Western Plaguelands 42.67,83.77
step
talk Flint Shadowmore##12425
turnin The Eastern Plagues##6185 |goto Western Plaguelands 43.61,84.51
accept The Blightcaller Cometh##6186 |goto Western Plaguelands 43.61,84.51
step
talk Nathaniel Dumah##11616
turnin A Plague Upon Thee##5903 |goto Western Plaguelands 43.42,84.84
accept A Plague Upon Thee##5904 |goto Western Plaguelands 43.42,84.84
step
_Destroy These Items:_
|tip They are no longer needed.
trash Plagueland Termites##15043 |goto Western Plaguelands 49.29,78.56
step
Enter the building |goto Western Plaguelands 49.29,78.56 < 10 |walk
talk Marlene Redpath##10927
|tip Upstairs inside the building.
turnin Auntie Marlene##5152 |goto Western Plaguelands 49.17,78.58
accept A Strange Historian##5153 |goto Western Plaguelands 49.17,78.58
step
click Joseph Redpath's Monument
collect Joseph's Wedding Ring##12894 |q 5153/1 |goto Western Plaguelands 49.68,76.77
step
Cross the bridge |goto Western Plaguelands 49.22,73.14 < 30 |only if walking and subzone("Sorrow Hill")
Enter the building |goto Western Plaguelands 39.57,68.38 < 10 |walk
talk Chromie##10667
|tip Upstairs inside the building.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin A Strange Historian##5153 |goto Western Plaguelands 39.45,66.76
accept The Annals of Darrowshire##5154 |goto Western Plaguelands 39.45,66.76
accept A Matter of Time##4971 |goto Western Plaguelands 39.45,66.76
step
use the Temporal Displacer##12627
|tip Use it near the cylinder structures with blue light shining out of them around this area.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
|tip The parasites evade in water, run to the river if you're overwhelmed |only if hardcore
kill 15 Temporal Parasite##10717 |q 4971/1 |goto Western Plaguelands 45.02,62.68
You can find more around: |notinsticky
[46.77,62.41]
[47.93,63.01]
[48.14,66.12]
[49.95,66.69]
[48.97,68.53]
step
Be careful to avoid the enemies nearby and enter the building |goto Western Plaguelands 44.09,69.22 < 10 |walk
click Musty Tome+
|tip They look like blue books on the floor inside this building.
|tip Only one of them is the real book, and it's random.
|tip If you click fake books, enemies will spawn, so try to only click the real book.
|tip To identify the real book, zoom in your view, mouse over the books to highlight them, and look at the book pages.
|tip The fake books will have very blurry pages, with the top half of pages shaded darker than the bottom half of pages.
|tip The real book pages look sharper and the top half and bottom half of the pages are not shaded differently. It will be pure white.
|tip If the correct book isn't there, click other books and kill enemies until the correct book appears.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Annals of Darrowshire##12900 |q 5154/1 |goto Western Plaguelands 43.52,69.55
step
Leave the building and be careful to avoid the enemies nearby |goto Western Plaguelands 44.09,69.22 < 10 |walk |only if subzone("Ruins of Andorhal") and _G.IsIndoors()
Enter the building |goto Western Plaguelands 39.57,68.38 < 10 |walk
talk Chromie##10667
|tip Upstairs inside the building.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin A Matter of Time##4971 |goto Western Plaguelands 39.45,66.76
turnin The Annals of Darrowshire##5154 |goto Western Plaguelands 39.45,66.76
accept Counting Out Time##4972 |goto Western Plaguelands 39.45,66.76
accept Brother Carlin##5210 |goto Western Plaguelands 39.45,66.76
step
click Small Lockbox##175802+
|tip They look like small grey metal chests on the ground inside the crumbled buildings around this area.
|tip There's typically one per ruined building.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect 5 Andorhal Watch##12638 |q 4972/1 |goto Western Plaguelands 38.29,69.63
You can find more at: |notinsticky
[38.88,68.06]
[40.27,68.17]
[40.85,67.14]
[40.32,66.48]
step
Enter the building |goto Western Plaguelands 39.57,68.38 < 10 |walk
talk Chromie##10667
|tip Upstairs inside the building.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin Counting Out Time##4972 |goto Western Plaguelands 39.45,66.76
step
Enter the building |goto Western Plaguelands 53.60,64.79 < 10 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
|tip Freezing Ghouls may incapacitate you, so fight them with full health when possible.	|only if hardcore
turnin The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.72,64.67
accept Glyphed Oaken Branch##4986 |goto Western Plaguelands 53.72,64.67
step
kill Cauldron Lord Soulwrath##11078
|tip He walks around this area.
collect Gahrron's Withering Cauldron Key##13196 |q 5225/1 |goto Western Plaguelands 62.78,58.75
step
click Scourge Cauldron##176392
turnin Target: Gahrron's Withering##5225 |goto Western Plaguelands 62.56,58.57
accept Return to Chillwind Point##5226 |goto Western Plaguelands 62.56,58.57
step
click Northridge Lumber Mill Crate##177490
|tip Inside the building.
Choose _"Place Termite Barrel on the crate."_
click Termite Barrel##
|tip It appears on top of the crate.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin A Plague Upon Thee##5904 |goto Western Plaguelands 48.35,32.00
accept A Plague Upon Thee##6389 |goto Western Plaguelands 48.35,32.00
step
talk Kirsta Deepshadow##11610
accept Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
stickystart "Kill_Scarlet_Hunters"
stickystart "Kill_Scarlet_Mages"
stickystart "Kill_Scarlet_Knights"
step
kill 2 Scarlet Medic##10605 |q 6004/1 |goto Western Plaguelands 51.67,44.39
|tip They share spawn points with other Scarlet enemies, so kill them too, if you can't find any.
step
label "Kill_Scarlet_Hunters"
kill 2 Scarlet Hunter##1831 |q 6004/2 |goto Western Plaguelands 51.67,44.39
|tip They share spawn points with other Scarlet enemies, so kill them too, if you can't find any. |notinsticky
step
label "Kill_Scarlet_Mages"
kill 2 Scarlet Mage##1826 |q 6004/3 |goto Western Plaguelands 50.47,41.12
|tip They share spawn points with other Scarlet enemies, so kill them too, if you can't find any. |notinsticky
step
label "Kill_Scarlet_Knights"
kill 2 Scarlet Knight##1833 |q 6004/4 |goto Western Plaguelands 50.47,41.12
|tip They share spawn points with other Scarlet enemies, so kill them too, if you can't find any. |notinsticky
step
Follow the path |goto Western Plaguelands 50.41,29.78 < 40 |only if walking
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
accept Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
Run around the mountain and follow the path up |goto Western Plaguelands 55.23,34.61 < 30 |only if walking
kill Huntsman Radley##11613 |q 6023/1 |goto Western Plaguelands 57.83,36.09
step
kill Cavalier Durgen##11611 |q 6023/2 |goto Western Plaguelands 54.37,23.77
|tip He walks back and forth, between this spot and the top of the tower.
|tip Wait outside the tower near this spot, he will eventually walk outside.
|tip Pull him away into the road nearby, so you can fight him alone.
step
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5226 |goto Western Plaguelands 42.97,84.50
step
talk Commander Ashlam Valorfist##10838
accept Mission Accomplished!##5237 |goto Western Plaguelands 42.70,84.03 |instant
step
talk Nathaniel Dumah##11616
turnin A Plague Upon Thee##6389 |goto Western Plaguelands 43.42,84.83
step
talk Carlin Redpath##11063
turnin Brother Carlin##5210 |goto Eastern Plaguelands 81.52,59.77
accept Villains of Darrowshire##5181 |goto Eastern Plaguelands 81.52,59.77
step
click Horgus' Skull
|tip Underwater in the purple beam.
collect Skull of Horgus##12956 |q 5181/1 |goto Eastern Plaguelands 51.11,49.94
step
Jump down carefully here |goto Eastern Plaguelands 53.38,65.50 < 20 |only if walking
click Shattered Sword of Marduk
collect Shattered Sword of Marduk##12957 |q 5181/2 |goto Eastern Plaguelands 53.92,65.76
step
Leave the canyon |goto Eastern Plaguelands 49.23,74.85 < 40 |only if walking and subzone("The Infectis Scar")
talk Carlin Redpath##11063
turnin Villains of Darrowshire##5181 |goto Eastern Plaguelands 81.51,59.77
step
talk Jasper Fel##1325
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 6186
|only if Rogue
step
Enter the building |goto Stormwind City 55.30,68.12 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect Tinkee's Letter##12438 |goto Stormwind City 57.66,72.78 |q 4808
step
Enter Stormwind Keep |goto Stormwind City 69.08,28.69 < 15 |walk
talk Highlord Bolvar Fordragon##1748
|tip Inside the building.
turnin The Blightcaller Cometh##6186 |goto Stormwind City 78.22,17.98
step
Leave Stormwind Keep |goto Stormwind City 69.08,28.69 < 15 |walk |only if subzone("Stormwind Keep")
Enter the building |goto Stormwind City 54.06,59.00 < 10 |walk
talk Auctioneer Jaxon##15659
|tip Inside the building.
|tip Buy these items from the auction house or collect them from your bank.
|tip You will turn them in for a lot of experience.
|tip If you have any in your bank, get them out before you buy more.
|tip If you can't get them, it's okay, but you may have to grind a bit later to make up for it.
collect 60 Wool Cloth##2592 |goto Stormwind City 53.61,59.76 |q 7791 |future
collect 60 Silk Cloth##4306 |goto Stormwind City 53.61,59.76 |q 7793 |future
collect 60 Mageweave Cloth##4338 |goto Stormwind City 53.61,59.76 |q 7794 |future
collect 60 Runecloth##14047 |goto Stormwind City 53.61,59.76 |q 7795 |future
|only if not selfmade
step
Enter the building |goto Stormwind City 44.52,73.91 < 10 |walk
talk Clavicus Knavingham##14722
|tip Upstairs inside the building.
accept A Donation of Wool##7791 |goto Stormwind City 44.27,73.97 |instant
|only if itemcount(2592) >= 60
step
talk Clavicus Knavingham##14722
|tip Upstairs inside the building.
accept A Donation of Silk##7793 |goto Stormwind City 44.27,73.97 |instant
|only if itemcount(4306) >= 60
step
talk Clavicus Knavingham##14722
|tip Upstairs inside the building.
accept A Donation of Mageweave##7794 |goto Stormwind City 44.27,73.97 |instant
|only if itemcount(4338) >= 60
step
talk Clavicus Knavingham##14722
|tip Upstairs inside the building.
accept A Donation of Runecloth##7795 |goto Stormwind City 44.27,73.97 |instant
|only if itemcount(14047) >= 60
step
Enter the building |goto The Barrens 62.08,39.26 < 15 |walk
talk Innkeeper Wiley##6791
|tip Inside the building.
home Ratchet |goto The Barrens 62.05,39.41
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Winterspring (59-59)',
  {
    image = ZGV.IMAGESDIR .. 'Winterspring',
    condition_suggested = function()
      return level == 59 and not completedq(5163)
    end,
    hardcore = true,
  },
  [[
step
Enter Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking
talk Umi Rumplesnicker##10305
accept Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
step
talk Felnok Steelspring##10468
turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61
accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
Leave Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking and subzone("Everlook")
kill Chillwind Chimaera##7448+
|tip They look like chimaeras.
|tip They share spawn points with the bears, so kill them too.
collect 8 Uncracked Chillwind Horn##12444 |q 4809/1 |goto Winterspring 59.97,21.54
You can find more around: |notinsticky
[54.75,22.59]
[59.18,18.02]
[60.13,12.28]
[57.99,14.79]
step
Run around the mountain |goto Winterspring 62.28,36.37 < 50 |only if walking and subzone("Winterfall Village")
Kill Ice Thistle enemies around this area
|tip Inside and outside the cave.
|tip Only the Matriarchs or Patriarchs will drop the quest item.
|tip Watch for patrols and respawns while here.	|only if hardcore
collect 2 Pristine Yeti Horn##12367 |q 977/1 |goto Winterspring 67.65,41.75
step
Leave the cave |goto Winterspring 67.70,41.57 < 30 |walk |only if subzone("Ice Thistle Hills") and _G.IsIndoors()
Enter Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking
talk Umi Rumplesnicker##10305
turnin Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
accept Are We There, Yeti?##5163 |goto Winterspring 60.88,37.62
step
use Umi's Mechanical Yeti##12928
|tip Use it on Legacki.
Scare Legacki |q 5163/1 |goto Winterspring 61.54,38.62
step
talk Felnok Steelspring##10468
turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
Enter the building |goto Winterspring 61.33,37.35 < 10 |walk
talk Izzy Coppergrab##13917
|tip Inside the building.
|tip Collect these items from the bank.
collect Irontree Heart##11173 |goto Winterspring 61.45,36.98 |q 4084
collect 11 Silvery Claws##11172 |goto Winterspring 61.45,36.98 |q 4084
|only if not hardcore
step
Leave Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking and subzone("Everlook")
Follow the road and enter the building |goto Moonglade 51.47,41.45 < 15 |walk
talk Rabine Saturna##11801
|tip Inside the building.
turnin Rabine Saturna##6762 |goto Moonglade 51.68,45.09
accept Wasteland##1124 |goto Moonglade 51.68,45.09
step
talk Rabine Saturna##11801
|tip Inside the building.
step
talk Auctioneer Golothas##8723
|tip Inside the building.
|tip Buy these items from the auction house or collect them from your bank.
|tip They are for a quest later and it is highly recommended you purchase them now.
|tip The mobs you farm these from can be very deadly but the quests are a lot of experience. |only if hardcore
collect 20 Encrypted Twilight Text##2592 |goto Darnassus 56.24,54.04 |q 8318 |future
step
Enter the building |goto Darnassus 35.52,10.70 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Glyphed Oaken Branch##4986 |goto Darnassus 35.38,8.40
step
talk Kyrai##3561
|tip Upstairs inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 4084
|only if Rogue
step
Enter the building |goto Felwood 51.26,81.70 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Silver Heart##4084 |goto Felwood 51.35,81.51
accept Aquementas##4005 |goto Felwood 51.35,81.51
step
use the Umi's Mechanical Yeti##12928
|tip Use it on Sprinkle.
Scare Sprinkle |q 5163/2 |goto Tanaris 51.06,26.87
step
use Eridan's Supplies##11617
collect Irontree Heart##11173 |q 4005
collect 11 Silvery Claws##11172 |q 4005
collect Book of Aquor##11169 |q 4005
step
Enter the tunnel |goto Tanaris 68.62,41.46 < 15 |only if walking
Follow the path |goto Tanaris 73.19,45.54 < 20 |only if walking
Continue following the path |goto Tanaris 72.22,48.95 < 30 |only if walking
use the Book of Aquor##11169
Watch the dialogue
|tip Aquementas will appear and approach from the east and attack you.
kill Aquementas##9453
collect Silver Totem of Aquementas##11522 |q 4005/1 |goto Tanaris 70.42,49.90
step
Enter the cave |goto Un'Goro Crater 43.44,6.77 < 15 |walk
talk J.D. Collie##9117
|tip Inside the cave.
turnin Aquementas##4005 |goto Un'Goro Crater 41.92,2.70
accept Linken's Adventure##3961 |goto Un'Goro Crater 41.92,2.70
step
_Destroy These Items:_
|tip They are no longer needed.
trash Irontree Heart##11173 |goto Un'Goro Crater 43.44,6.77
trash 11 Silvery Claws##11172 |goto Un'Goro Crater 43.44,6.77
trash Book of Aquor##11169 |goto Un'Goro Crater 43.44,6.77
step
Leave the cave |goto Un'Goro Crater 43.44,6.77 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
talk Linken##8737
turnin Linken's Adventure##3961 |goto Un'Goro Crater 44.66,8.10
step
use the Umi's Mechanical Yeti##12928
|tip Use it on Quixxil.
Scare Quixxil |q 5163/3 |goto Un'Goro Crater 43.67,9.38
]]
)
