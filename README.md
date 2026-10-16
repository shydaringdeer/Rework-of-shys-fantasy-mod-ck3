# Rework of Shy's Fantasy (rsfantasy)

Adds six fantasy races to **Crusader Kings III** with unique cultures, faiths, rites, governments, and summon decisions. No half-breeds; traits use normal genetic inheritance.

---

## Supported Version
- **Crusader Kings III**: 1.20.*

---

## Races & Traits
- **Elf** – Long-lived, learning and prowess bonuses, extended fertility window, same-race opinion.
- **Dark Elf** – Long-lived, intrigue-focused, shadow-touched, same-race opinion.
- **Orc** – Short-lived, martial and prowess focus, accelerated fertility.
- **Uruk-Hai** – Bred-for-war orc variant, high prowess and martial capability.
- **Dwarf** – Extended lifespan, stewardship and martial focus, hold masters.
- **Goblin** – Short-lived, intrigue and stewardship focus, high fertility, survivalist.
- **Summoned Warrior** – +5 Prowess, +3 Martial (from summon decisions).
- **Summoned Scholar** – +5 Learning, +2 Intrigue (from summon decisions).

> [!NOTE]
> All core fantasy race traits inherit via normal genetic rules (`inherit_chance = 100`).

---

## Religions, Faiths & Rites (CK3 1.20 Compatibility)
- Fully updated to the **1.20 Religion > Faith > Rite** structure.
- Dedicated custom **Main Rites** for each race in `common/religion/rite_types/`.
- Distinct faiths defined in `common/religion/faith_types/`.
- Custom holy site setups with eminent holy sites and weighted virtues/sins for spiritual fulfillment.
- Custom DDS faith icons and full localization.

---

## Governments
- **High Elvish Feudalism** – Elf and Dark Elf (county+).
- **Orcish Warband** – Orc and Uruk-Hai (kingdom+).
- **Dwarven Hold** – Dwarf (county+).
- **Goblin Warren** – Goblin (kingdom+).
- Adoptable via player decisions with custom requirements and flavor text.

---

## Summon Decisions (Player Only)
- **Summon [Race] to Court** – Basic courtier (25 gold, 25 prestige) for each race.
- **Summon [Race] Warrior** – Combat-focused courtier with Summoned Warrior trait (35 gold, 35 prestige).
- **Summon [Race] Scholar** – Learning-focused courtier with Summoned Scholar trait (35 gold, 35 prestige).
- **Summon a Creature** – Random fantasy race warrior with Summoned Warrior trait (50 gold, 50 prestige).
- All summoned characters are generated as adults (aged 16–28).

---

## Appearance & Visuals
- **Elf Ears**: Custom 3D mesh blend shape integrated with male/female head assets.
- **Portrait Modifiers**: Race-specific ear, skin, and height morph pipelines.
- **Trait Icons**: Custom 64x64 DDS icons for all races, summoned warriors, and scholars.

---

## Changelog
For version-by-version release history, see [CHANGELOG.md](CHANGELOG.md).
