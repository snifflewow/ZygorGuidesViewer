local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
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
