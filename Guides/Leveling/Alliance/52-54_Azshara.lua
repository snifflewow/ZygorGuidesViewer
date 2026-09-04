local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
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
