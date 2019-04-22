------------------------------------------------------------------------
--  PANEL: Architecture
------------------------------------------------------------------------
--
--  Copyright (C) 2016-2017 Andrew Apted
--  Copyright (C) 2019 Glaice
--  Copyright (C) 2019 MsrSgtShooterPerson
--
--  This program is free software; you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation; either version 2
--  of the License, or (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
------------------------------------------------------------------------

UI_ARCH = { }

UI_ARCH.SIZES =
{
  "epi",     _("Episodic"),
  "prog",    _("Progressive"),
  "mixed",   _("Mix It Up"),

  -- this is a separator (not a usable choice)
  "_",       "_",

  "small",        _("Tiny"),
  "subregular",   _("Small"),
  "regular",      _("Average"),
  "superregular", _("Large"),
  "large",        _("Huge"),
  "extreme",      _("Extreme"),
}

UI_ARCH.ABSURDITY_CHOICES =
{
  "none", _("NONE"),
  "all",  _("Every Level"),
  "75",   _("75% of Levels"),
  "50",   _("50% of Levels"),
  "25",   _("25% of Levels"),
}

UI_ARCH.ZDOOM_VISTA_CHOICES =
{
  "enable",  _("Enable"),
  "disable", _("Disable"),
}

UI_ARCH.ZDOOM_SKYBOX_CHOICES =
{
  "themed",  _("Per Theme"),
  "random",  _("Random"),
  "generic", _("Generic"),
  "disable", _("Disable"),
}

UI_ARCH.YES_NO =
{
  "yes", _("Yes"),
  "no",  _("No"),
}

UI_ARCH.PROC_GOTCHA_CHOICES =
{
  "none",  _("NONE"),
  "final", _("Final Map Only"),
  "epi",   _("Episodic (MAP11, MAP21, MAP30)"),
  "_",     _("_"),
  "5p",    _("5% Chance, Any Map After MAP04"),
  "10p",   _("10% Chance, Any Map After MAP04"),
  "all",   _("Everything"),
}

UI_ARCH.STREETS_CHOICES =
{
  "100urban", _("All Urban Maps"),
  "75urban",  _("75% of Urban Maps"),
  "50urban",  _("50% of Urban Maps"),
  "25urban",  _("25% of Urban Maps"),
  "all",      _("All Levels"),
  "75",       _("75% of All Levels"),
  "50",       _("50% of All Levels"),
  "25",       _("25% of All Levels"),
  "no",       _("NONE"),
}

UI_ARCH.LINEAR_CHOICES =
{
  "all",  _("All Levels"),
  "75",   _("75% of All Levels"),
  "50",   _("50% of All Levels"),
  "25",   _("25% of All Levels"),
  "10",   _("10% of All Levels"),
  "5",    _("5% of All Levels"),
  "none", _("NONE"),
}

OB_MODULES["ui_arch"] =
{
  label = _("Architecture")

  side = "left"
  priority = 104

  options =
  {
    { name="size", label=_("Level Size"), choices=UI_ARCH.SIZES,  default="epi"
      tooltip = "WARNING! If you are planning to play on any choices that involve maps potentially becoming Large or Extreme-sized, it is preferable to turn on Autodetail under Prefab Control to prevent BSP issues and breaking side count limits."
      gap = 1
    }

    {
      name = "streets_mode",
      label = _("Streets Mode"),
      choices = UI_ARCH.STREETS_CHOICES,
      default = "no"
      tooltip = "[EXPERIMENTAL FEATURE] Allows Oblige to create large street-like outdoor rooms. It is preferable to play on large to extreme sized maps to allow streets to grow as far as possible."
    }
    {
      name = "linear_mode"
      label = _("Linear Mode"),
      choices = UI_ARCH.LINEAR_CHOICES,
      default = "none"
      tooltip = "[EXPERIMENTAL FEATURE] Creates linear levels, where rooms are connected along a linear layout from start to exit. All choices except 'All' will excempt levels with secret level entrances from becoming becoming linear."
      gap = 1
    }

    { name="outdoors",     label=_("Outdoors"),   choices=STYLE_CHOICES }
    { name="caves",        label=_("Caves"),      choices=STYLE_CHOICES }
    { name="liquids",      label=_("Liquids"),    choices=STYLE_CHOICES,  gap=1 }

    { name="hallways",     label=_("Hallways"),   choices=STYLE_CHOICES }
    { name="teleporters",  label=_("Teleports"),  choices=STYLE_CHOICES }
    { name="steepness",    label=_("Steepness"),  choices=STYLE_CHOICES, gap=1 }

    {
      name="prebuilt_levels"
      label=_("Prebuilt Levels")
      choices=UI_ARCH.YES_NO
      tooltip = "Enable or disable prebuilt maps. When disabled, are replaced with generated maps instead."
    }
    {
      name="procedural_gotchas"
      label=_("Procedural Gotcha")
      choices=UI_ARCH.PROC_GOTCHA_CHOICES
      default="none"
      tooltip = "Procedural Gotchas are two room maps, where the second is an immediate but immensely-sized exit room with gratitiously intensified monster strength. Essentially an arena - prepare for a tough, tough fight!\n\nNotes:\n\n5% of levels may create at least 1 or 2 gotcha maps in a standard full game."
      gap=1
    }

    {
      name = "layout_absurdity"
      label = _("Layout Absurdity")
      choices=UI_ARCH.ABSURDITY_CHOICES
      default="none"
      tooltip = "This is an experimental feature. The layout absurdifier attempts to cause levels to overprefer specific shape rules from the ruleset in order to create odd and possibly broken but interesting combinations. Use at your own risk. These options will affect the amount of levels have the absurdity module activated on. Selecting ALL will not necessarily make all levels absurd as it is all still based on chance."
      gap=1
    }

    {
      name = "zdoom_vista"
      label = _("ZDoom Vista")
      choices=UI_ARCH.ZDOOM_VISTA_CHOICES
      default="disable"
      tooltip = "This is an experimental feature. If a ZDoom based engine is selected, one has the option to enable vistas to be bottomless, allowing you to see more of the skybox below the horizon. This does not prevent skybox tiling. If paired with the Sky Generator, simply disable terrain on the parameters to see the sky all the way to the bottom without tiling."
    }
    {
      name = "zdoom_skybox"
      label = _("ZDoom 3D Skybox")
      choices=UI_ARCH.ZDOOM_SKYBOX_CHOICES
      default="disable"
      tooltip = "This is an experimental and unfinished feature. If a ZDoom based engine is selected, one has the option to enable a custom 3D skybox to be rendered into the map. Currently includes only one generic 3D skybox and will follow through with the sky texture generated by the Sky Generator if enabled. It is preferable to put this on if you have ZDoom Vista enabled."
    }
  }
}

