PREFABS.Hallway_metro_locked_red =
{
  file   = "hall/metro_k.wad"
  map    = "MAP01"
  theme  = "!hell"

  kind   = "terminator"
  group  = "metro"
  key    = "k_red"

  prob   = 50

  where  = "seeds"
  shape  = "I"

  seed_w = 2
  seed_h = 1

  deep   = 16
}

PREFABS.Hallway_metro_locked_blue =
{
  template = "Hallway_metro_locked_red"
  key      = "k_blue"
  line_135 = 133

  tex_DOORRED = "DOORBLU"
}

PREFABS.Hallway_metro_locked_yellow =
{
  template = "Hallway_metro_locked_red"
  key      = "k_yellow"
  line_135 = 137

  tex_DOORRED = "DOORYEL"
}

PREFABS.Hallway_metro_barred =
{
  file   = "hall/metro_k.wad"
  map    = "MAP02"
  theme  = "!hell"

  kind   = "terminator"
  group  = "metro"
  key    = "barred"

  prob   = 50

  where  = "seeds"
  shape  = "I"

  seed_w = 2
  seed_h = 1

  deep   = 16

  tag_1  = "?door_tag"
  door_action = "S1_OpenDoor"
}
