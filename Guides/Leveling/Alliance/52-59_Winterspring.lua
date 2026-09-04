local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
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
