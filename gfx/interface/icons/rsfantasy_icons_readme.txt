# rsfantasy mod - correct icon layout (matches vanilla CK3: game\gfx\interface\icons)

Vanilla uses these subfolders under gfx/interface/icons/:

  faith/               Religion/faith icons (unreformed + reformed). One .dds per faith;
                       sprite names referenced in common/religion/religions (icon = "...", reformed_icon = "..._reformed").
                       rsfantasy: gfx/interface/icons/faith/rsfantasy_*_faith.dds + rsfantasy_religion_icons.gfx

  traits/              Character trait icons. Referenced by common/traits (icon = "x.dds").
                       rsfantasy: rsfantasy_elf.dds, rsfantasy_orc.dds, rsfantasy_dwarf.dds,
                       rsfantasy_goblin.dds, rsfantasy_dark_elf.dds, rsfantasy_uruk_hai.dds,
                       rsfantasy_summoned_warrior.dds, rsfantasy_summoned_scholar.dds.

  government_types/   GUI uses vanilla paths (feudal_government.dds, tribal_government.dds).

  text_icons/         Small inline icons for GUI text (optional).

  (plus many others: achievements, building_types, event_types, focuses, etc.)

rsfantasy layout:
  • Faith icons only in faith/ (10 .dds + .gfx). Do not put trait/race art here.
  • Trait icons only in traits/ (6 race .dds: elf, orc, dwarf, goblin, dark_elf, uruk_hai). Do not put faith art here.
  • No custom government_types icons in use; GUI uses vanilla paths. Only remove assets that are not referenced anywhere.
