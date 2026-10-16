# rsfantasy – Rework of Shy's Fantasy

Adds six fantasy races to Crusader Kings III with cultures, faiths, governments, and summon decisions. No half-breeds; traits use normal genetic inheritance.

---

## Races & Traits
- **Elf** – Long-lived, learning and prowess bonuses, same-race opinion.
- **Dark Elf** – Long-lived, intrigue-focused, shadow-touched.
- **Orc** – Short-lived, martial and prowess focus.
- **Uruk-Hai** – Bred-for-war orc variant, higher prowess/martial.
- **Dwarf** – Extended lifespan, stewardship and martial focus.
- **Goblin** – Short-lived, intrigue and stewardship, survivalist.
- **Summoned Warrior** – +5 Prowess, +3 Martial (from summon decisions).
- **Summoned Scholar** – +5 Learning, +2 Intrigue (from summon decisions).
- All race traits use **inherit_chance** (normal genetics); no scripted birth logic.

## Cultures & Names
- One culture per race (heritage, language, name list).
- Large name lists: many male, female, and dynasty names per culture.
- Dynasty names are plain only (no “of …” / “of the …”).

## Religions
- One faith per race (e.g. Eldric for Elf) with holy orders.
- Faith icons and localization for all.

## Governments
- **High Elvish Feudalism** – Elf and Dark Elf; county+.
- **Orcish Warband** – Orc and Uruk-Hai; kingdom+.
- **Dwarven Hold** – Dwarf; county+.
- **Goblin Warren** – Goblin; kingdom+.
- Adopt via **decisions** (player-only); requirements and descriptions updated.

## Summon Decisions (player-only)
- **Summon [Race] to Court** – Basic courtier (25 gold, 25 prestige) for each of the 6 races.
- **Summon [Race] Warrior** – Combat-focused courtier with Summoned Warrior trait (35 gold, 35 prestige) per race.
- **Summon [Race] Scholar** – Learning-focused courtier with Summoned Scholar trait (35 gold, 35 prestige) per race.
- **Summon a Creature** – Random fantasy race warrior with Summoned Warrior trait (50 gold, 50 prestige).
- Choose gender in an event; “Your Summons Has Arrived” when they join.
- All summoned characters are created **aged 16–28**.

## Appearance & UI
- **Ethnicities and genes** for fantasy skin/appearance (e.g. orc, goblin, dark elf).
- **Elf ears** – pointy-ear blend shape for Elf/Dark Elf portraits (head assets). Orc teeth override disabled; vanilla teeth used.
- **Trait icons** for all six races plus Summoned Warrior and Summoned Scholar.
- **Government type icons** in GUI (e.g. High Elvish Feudal, Orcish Warband).

## Technical
- No on_actions, scripted_effects, scripted_triggers, or opinion_modifier files; relies on base-game systems.
- All content uses the **rsfantasy_** prefix.
- Localization in English with UTF-8 BOM where needed.

---

**Requires:** Crusader Kings III 1.18.x
