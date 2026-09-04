# VanillaEpochLeveling

# Current focus is on fixing alliance night elf 1-60. 
# Do not use this version of the addon if you are playing horde

## Overview

This is a port of Zygor 3.3.5 addon to Project Epoch (Vanilla+ 1-60), with the following guides :

- **(Recommended) Modified Zygor Leveling Guide for alliance** : Era guide backported to 3.3.5 and modified for epoch

The goal of this project is to have a strong leveling base with Zygor, then to expand them as new quests are discovered.

Important : Coordinates might be incorrect in some places since NPCs have been moved around (known issues : Stormwind and Goldshire). Please report any bugs you see in the Github issues.

<img width="653" height="339" alt="zygor_ingame" src="https://github.com/user-attachments/assets/ec84af4d-14ce-4005-aa5f-512bdc38456b" />

## Installing

Either :

- **(Recommended) Use [GitAddonsManager](https://woblight.gitlab.io/overview/gitaddonsmanager/). Then change the folder name to `ZygorGuidesViewer` (the name is very important, otherwise the addon won't load)**
- (Alternative for git users) Clone the repository in your `Addon` folder with name `ZygorGuidesViewer`
- (Not recommended as you will not get updates) Download the Addon as a zip file, unzip it in your Addon folder, rename the extrated folder to `ZygorGuidesViewer`

## Custom content status tracker

Alliance guides live in `Guides/Leveling/Alliance/`, split by zone. Empty status means no Epoch-specific updates yet.

| File | Zone | Status |
|------|------|--------|
| `01-15_HumanStarter.lua` | Human Starter (1-15) | |
| `01-13_DwarfGnomeStarter.lua` | Dwarf & Gnome Starter (1-13) | |
| `01-13_NightElfStarter.lua` | Night Elf Starter (1-13) | |
| `13-22_Darkshore.lua` | Darkshore (13-22) | |
| `17-18_LochModan.lua` | Loch Modan (17-18) | |
| `18-28_RedridgeMountains.lua` | Redridge Mountains (18-28) | |
| `22-30_Ashenvale.lua` | Ashenvale (22-30) | |
| `23-29_StonetalonMountains.lua` | Stonetalon Mountains (23-29) | |
| `24-31_Wetlands.lua` | Wetlands (24-31) | |
| `25-35_Duskwood.lua` | Duskwood (25-35) | |
| `32-33_HillsbradFoothills.lua` | Hillsbrad Foothills (32-33) | |
| `32-45_StranglethornVale.lua` | Stranglethorn Vale (32-45) | |
| `33-34_ThousandNeedles.lua` | Thousand Needles (33-34) | |
| `33-40_ArathiHighlands.lua` | Arathi Highlands (33-40) | |
| `33-40_DustwallowMarsh.lua` | Dustwallow Marsh (33-40) | |
| `35-41_Desolace.lua` | Desolace (35-41) | |
| `38-43_SwampofSorrows.lua` | Swamp of Sorrows (38-43) | |
| `39-39_AlteracMountains.lua` | Alterac Mountains (39-39) | |
| `41-42_Badlands.lua` | Badlands (41-42) | |
| `43-50_Tanaris.lua` | Tanaris (43-50) | |
| `45-53_Feralas.lua` | Feralas (45-53) |  |
| `49-50_TheHinterlands.lua` | The Hinterlands (49-50) | |
| `50-51_SearingGorge.lua` | Searing Gorge (50-51) | |
| `50-55_UnGoroCrater.lua` | Un'Goro Crater (50-55) | |
| `51-51_BlastedLands.lua` | Blasted Lands (51-51) | |
| `51-59_Plaguelands.lua` | Western & Eastern Plaguelands (51-59) | |
| `52-54_Azshara.lua` | Azshara (52-54) | |
| `52-55_Felwood.lua` | Felwood (52-55) |  |
| `52-59_Winterspring.lua` | Winterspring (52-59) | |
| `56-57_BurningSteppes.lua` | Burning Steppes (56-57) | |
| `ClassQuests.lua` | All class quests | |
| `ExtraZones_Westfall.lua` | Westfall (extra) | |

Horde :

(Not updated yet)

## Credits

All credits for the Addon and the base Zygor guide go to Zygor !

Credits for the original TUG route (and initial port) all go to TUG !
