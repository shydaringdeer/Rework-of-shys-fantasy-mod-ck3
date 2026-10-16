# rsfantasy – Changelog

## Version 0.2.11

### Compatibility
- Updated mod files for Crusader Kings III version 1.20 compatibility.
- Fully implemented the new 1.20 Religion > Faith > Rite structure.
- Separated faiths from `religion_types` into the new `faith_types` folder.
- Created explicitly defined custom Rites in `rite_types` for each fantasy race.
- Transferred tenets and doctrines from the faiths down to the new Main Rites.
- Migrated `holy_site` fields to the new `eminent_holy_sites` format.
- Added explicit weights to virtue and sin traits to support the new Spiritual Fulfillment system.
- Added English localization keys and descriptions for all 5 new custom rites.

---

## Version 0.2.10

### Gameplay
- **Summon**: After spawn age and race traits are applied, `rsfantasy_grant_immortal_blessing_if_longlived_adult_effect` runs on `scope:summoned_courtier` so elf, dark elf, and dwarf summons who are **18+** receive **Immortal Blessing** (same rules as birthday / post-lobby).

---

## Version 0.2.9

### Gameplay
- **Long-lived races (Elf, Dark Elf, Dwarf)**: Removed `immortal` from the genetic race traits. Engine immortality is applied via the **Immortal Blessing** character modifier (`rsfantasy_immortal_blessing`) instead.
- **Age 18**: `on_birthday` grants the permanent modifier (via `rsfantasy_grant_immortal_blessing_effect`) when the character turns **18** and has one of those race traits.
- **Game start / load**: Hidden event `rsfantasy_immortal_blessing.0001` runs once after lobby so any **adult** elf / dark elf / dwarf who is missing the modifier receives it (covers bookmarks and older saves).

### New files
- `common/modifiers/rsfantasy_immortal_blessing.txt`, `common/scripted_effects/rsfantasy_immortal_blessing_effects.txt`, `events/rsfantasy_immortal_blessing_events.txt`, `common/on_action/rsfantasy_immortal_blessing_on_actions.txt`, `localization/english/rsfantasy_modifiers_l_english.yml`.

### Localization
- **UTF-8 with BOM** on `rsfantasy_traits_l_english.yml`, `rsfantasy_modifiers_l_english.yml`, and `culture/rsfantasy_ethnicities_l_english.yml`.

---

## Version 0.2.8

### Compatibility
- **Game version**: `supported_version` set to `1.19.*` in `descriptor.mod`.

### Localization
- **Ethnicities**: English display names for `rsfantasy_*` ethnicities in `localization/english/culture/rsfantasy_ethnicities_l_english.yml` (UTF-8 with BOM).

### Portraits
- **Orc / Goblin / Uruk-Hai**: `common/ethnicities/rsfantasy_ethnicities.txt` biases default rolls toward vanilla ugly complexion (`complexion_ugly_1`) and heavier jaw morphs (visual only; no beauty traits).

### Summon
- **Summon Creature**: `events/rsfantasy_summon_events.txt` (`rsfantasy_summon.0311` / `.0312`) now forces `set_character_culture` and `set_faith` after creation so the random race always matches culture and faith (same idea as Orc warrior summons).

---

## Version 0.2.7

### Gameplay
- **Multiplayer stability**: Updated `gfx/portraits/trait_portrait_modifiers/00_rsfantasy_trait_modifiers.txt` to follow vanilla grouping format more closely (traits -> dna_modifiers pipeline) while keeping the same ear/skin/height appearance logic.
- **Genes cleanup**: Remade `common/genes/rsfantasy_genes.txt` to include only the genes actually used by the trait portrait modifier pipeline.
- **Appearance polish**: Applied vanilla “ugly” complexion for Orcs, Goblins, and Uruk-Hai through the portrait modifier DNA morph chain.
- **Culture clothing**: Set `rsfantasy_orc`, `rsfantasy_goblin`, and `rsfantasy_uruk_hai` to use vanilla `norse_clothing_gfx`.

---

## Version 0.2.6

### Gameplay
- **Trait visuals**: Fantasy race appearance now uses trait portrait modifiers in `gfx/portraits/trait_portrait_modifiers/00_rsfantasy_trait_modifiers.txt`, applying ears/skin/height from race traits instead of forcing phenotype from ethnicity definitions.
- **Goblin visuals**: Goblin trait portrait modifier now also applies `dwarf_height`.
- **Inheritance**: Set `inherit_chance = 100` for all six core fantasy race traits (`rsfantasy_elf`, `rsfantasy_orc`, `rsfantasy_dwarf`, `rsfantasy_goblin`, `rsfantasy_dark_elf`, `rsfantasy_uruk_hai`).
- **Fertility tuning**: Reduced fertility for long-lived elf races (`rsfantasy_elf` and `rsfantasy_dark_elf`).
- **Portrait/DNA stability**: Reshaped `gfx/portraits/trait_portrait_modifiers/00_rsfantasy_trait_modifiers.txt` to follow vanilla grouping format, and remade `common/genes/rsfantasy_genes.txt` to only include genes actually used by the trait modifier pipeline (plus added vanilla “ugly” complexion for Orc/Goblin/Uruk-Hai).

---

## Version 0.2.5

### Gameplay
- **Cultures & innovations**: Added history files for all fantasy cultures (`rsfantasy_elf`, `rsfantasy_orc`, `rsfantasy_dwarf`, `rsfantasy_goblin`, `rsfantasy_uruk_hai`, `rsfantasy_dark_elf`) so they start with appropriate innovations in 867, 1066, and high-medieval (1150/1178) start dates.

---

## Version 0.2.4

### Minor
- **Events**: Fixed brace balance in `rsfantasy_summon_events.txt` (removed 5 extra closing braces in Summon Creature random_list). Removed unnecessary empty `immediate = { }` from choice events (courtier, warrior, scholar, creature).

---

## Version 0.2.3

### Gameplay
- **Character-view freeze**: Still under investigation. High Elf government icon now uses vanilla `feudal_government.dds`. See `TROUBLESHOOTING.md` for things to try.
- **Portrait**: Orc teeth assets disabled (teeth .asset files moved to `_disabled`); game uses vanilla teeth. Elf ears kept (pointy-ear blend shape still active in head assets).
- **Assets cleanup**: Removed only unused assets (no used files deleted): Summoned Warrior/Scholar .png sources, teeth folders, head _disabled folders, and unused trait/government .dds that are not referenced in traits or GUI.

---

## Version 0.2.2

### Minor
- **Traits**: Summoned Warrior and Summoned Scholar again use custom icons (`rsfantasy_summoned_warrior.dds`, `rsfantasy_summoned_scholar.dds`). Icons readme updated to list required trait .dds.

---

## Version 0.2.1

### Gameplay
- **Lifespans & fertility**: Races use custom `life_expectancy` and `years_of_fertility`. Long-lived (Elf, Dark Elf ~400 years; Dwarf ~250) have extended fertility windows (e.g. 150–200 years); shorter-lived (Orc, Goblin, Uruk-Hai) have reduced life expectancy and shorter fertility (e.g. 20–30 years). Fertility modifiers increased for Orcs and Uruk-Hai (0.05 → 0.15) and Goblins (0.1 → 0.2).

---

## Version 0.2

### Gameplay
- **Fantasy race traits**: Simplified to six core races (Elf, Orc, Dwarf, Goblin, Dark Elf, Uruk-Hai). Removed all half-breed traits; inheritance now uses normal genetic `inherit_chance` (base-game style).
- **Governments**: Orcish Warband adoptable by Orc or Uruk-Hai; Dwarven Hold and Goblin Warren require only full-race traits. Decision descriptions updated to match.
- **Summon system**: Kept "Summon [Race] to Court" as baseline; added **Summon [Race] Warrior** (Summoned Warrior trait), **Summon [Race] Scholar** (Summoned Scholar trait), and **Summon a Creature** (random-race warrior). All summon decisions are player-only with proper confirm text and tooltips.
- **Summoned character age**: All summoned characters (courtiers, warriors, scholars, creatures) are created between **16 and 28 years old** via scripted character templates.

### Traits & Icons
- Added non-genetic traits **Summoned Warrior** and **Summoned Scholar** (hidden from ruler designer), integrated into summon events.
- Custom trait icons: `rsfantasy_summoned_warrior.dds`, `rsfantasy_summoned_scholar.dds`.

### Cultures & Names
- Expanded name lists for all six cultures with 15–20+ extra male, female, and dynasty names each.
- Dynasty names are plain only (no "of ..." / "of the ..."); kept lore-flavored options (e.g. Silvan, Blackrock, Bronzebeard, Baenre).

### Technical & Cleanup
- Renamed all files and internal references from `sfantasy` to `rsfantasy`.
- Removed unused systems: on_actions, scripted_effects, scripted_triggers, opinion_modifiers.
- Localization updated for new decisions, traits, and governments; all `.yml` files use UTF-8 with BOM.
- Icons readme updated to document new trait icons.

---

## Version 0.1
- Initial rsfantasy release (Rework of Shy's Fantasy).
