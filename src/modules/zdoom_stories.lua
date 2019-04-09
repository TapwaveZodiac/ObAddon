----------------------------------------------------------------
--  MODULE: ZDoom Story Tables
----------------------------------------------------------------
--
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
-------------------------------------------------------------------

--[[
Some keywords for parsing later on:

  _SPACE = creates a linebreak

  _RAND_DEMON = name of a demonic entity
               (based on the GOTHIC entity names table)

  -RAND_CONTRIBUTOR = name of a random contributor
                      (actually based on the specific
                      contributors table under TITLE)

  _RAND_GAL
  _RAND_GUY
  _RAND_HUMAN = names for a mere mortals (there is no human name generator
               yet as of 2019-04-09)

  _GOTHIC_LEVEL = name from the gothic level generator

Notes and Tips:

* Hooks are the 'pull' of the story as per D&D terminology, a method
  of getting the characters' attention towards something. When writing
  hooks, make it as universal as possible i.e. the situation can start
  at any point of play.

* Conclusions are the resulting effect after a hook has been engaged.
  Conclusions can vary from positive, to negative, or even weird results.
  Be creative!

* For each story chunk under the STORIES table, there can be any number
  of hooks and conclusion per story.

* Hooks are placed at any point before the end of the episode
  but preferably at least in the first few maps of that episode.
  Conclusions are strictly placed at the end of each episode so
  it meshes with the climax of a boss battle or procedural gotcha.

* Doomguy doesn't care about story. But we do, we can just keep saying
  things about things he ends up doing, so be creative.

]]

ZDOOM_STORIES = { }

ZDOOM_STORIES.LIST =
{
  portal_to_hell = 50
  fuck_argent_energy = 10
  rescue_scientists = 30
  reinforce_marines = 40
  attack = 50
  i_challenge_you_to_a_duel = 60
  deus_ex_machina = 5
  beacon = 50
  aa_guns = 10
}

ZDOOM_STORIES.STORIES =
{
  portal_to_hell =
  {
    hooks =
    {
      [[It seems as though demons continue to spill into the area
      despite your best efforts. Your locator marks a massive spike
      in energy nearby. It seems the source of the demonic surge
      is from that direction...]],

      [[Hell's forces continue to lay siege upon this region. It
      is clear their numbers are being reinforced from elsewhere.
      You begin a search for the potential existence of a hell
      portal...]],

      [[You are slowly drawn to a mysterious source of energy
      as you progress and notice the continued flow of demons
      into the fray. There must be an entrance to hell nearby...]],
    }

    conclusions =
    {
      [[You have destroyed the guardian waiting upon a portal to hell!
      With his defeat, the portal collapses. Hell will find it more
      difficult to return to this place!]],

      [[Hell's commanders went through great means to guard this portal
      to hell. You slip through to find yourself in a new place, in which
      the source of the demonic invasion seems to further come from...]],

      [[It was a trap! As the demon's corpse crashes into the floor,
      a portal to hell was underneath all along! The platform crumbles
      and throws you into its maw - you find yourself in a new place...]],
    }
  }

  fuck_argent_energy =
  {
    hooks =
    {
      [[As you continue, a quiet but distinct hum of power seems
      to permeate this area. It feels hair-raising and ominous.
      It must be Argent Energy. The source must be closed.]],

      [[Monitors flicker on and off, and occult runes and symbols
      seem to occasionally appear on them. The area seems to be
      powered by Argent Energy, the impure power source from hell.
      It must be stopped.]]
    }

    conclusions =
    {
      [[You have found a conduit through which Argent Energy
      is being transmitted through from hell! With a quick bash
      with your fists, the conduit is damaged beyond repair.
      The power goes out through the region - but so does the
      corruption hell has radiated throughout.]],

      [[The generator translating hellish energies into
      electrical power has allowed the decaying force
      of Argent Energy to mutate this place. You destroy
      the generator but as it falls silent, a well of souls
      burst open, flying about and escaping into the atmosphere!]],
    }
  }

  rescue_scientists =
  {
    hooks =
    {
      [[Your tracker lights up and is apparently receiving a
      distress signal from a nearby location. A few UAC scientists
      seem to have barricaded themselves, surrounded by the
      demonic horde and is looking for an escape. You acknowledge
      and proceed...]],

      [[A portable terminal has revealed the position of a group
      of scientists nearby. You attempt to establish communications,
      but no response returns. The last footage from the terminal
      reveals them panicking, running from demons. You may still
      have opportunity for to save them...]],

      [[Heavily hysteric chatter suddenly sounds off on your
      radio. It seems a group of scientists are looking for a way
      out of this place and hellspawn are on their trails.
      You are not able to respond to them, so you attempt to make
      your way towards their position...]],
    }

    conclusions =
    {
      [[With the defeat of the demonic host, you have freed
      the scientists from their assault! The scientists have
      sworn off any continued cooperation with UAC's experimentation
      with hell and leave through some escape pods! You remain
      as there is more to discover...]],

      [[As the final demon collapses before its feet, it utters
      a terrible laughter that echoes through the chambers.
      Behind it you discover the remains of the butchered scientists.
      Misfortunate has befallen them and there is no way you
      could have reached them in time. You trudge on...]],

      [[You have found the scientists! It seems however they are
      not what they seem... one of them carries a strange artifact
      with a fiery glow through its gaps. You suddenly notice
      madness in the scientist's eyes! A burst of energy
      throws you across the floor, killing the scientist instantly!
      A surge of demonic energies herald the coming of new hellspawn!
      It looks like your task isn't over yet!]],
    }
  }

  reinforce_marines =
  {
    hooks =
    {
      [[Your radio receives a badly garbled transmission but
      you can make out a few words. "Need assistance! *ZZT*
      Surrounded! *ZZT* Running low on supplies!" The transmission
      abruptly cuts off. You hurry to track their last position.]],

      [[Your tracker reveals several green dots on the map.
      They are fleet-footed, and it seems the dots are moving
      quickly. They are marines and it seems they are in the middle
      of an engagement. They are some distance away, but you
      may still be able to reach them...]],

      [[As you step across the floor, you come up to a pair of dog tags
      below your boots. You pick it up and hear the distant thunder
      of gunfire. It seems a group of marines have gone through
      here some time ago. It might be a good idea to join them.]],
    }

    conclusions =
    {
      [[A mess of craters and holes now lie where demonic
      figures used to stand. The marines congratulate
      you on a swift assist and hell is held back! The marines
      extract for now, awaiting their next mission as you stay
      behind to explore further...]],

      [[As the final creature falls, it harkens to you.
      "Foolish mortal. Attracted to the sound of despair.
      Such easy trickey for a famed warrior as you."
      The demon's corpse fades into ashes.
      There is no sign of the embattled marines
      anywhere but general of hell still lies defeated.]],

      [[The armies of hell rout from your relentless onslaught.
      You find a badly blasted barricade and find the corpses
      of the marines who sacrificed themselves to battle hell.
      You pick up their dog tags in respect and scurry on...]],
    }
  }

  attack =
  {
    hooks =
    {
      [[A fetid odor fills the air of this place. It seems the
      forces of hell are amassing ahead in preparation for
      an assault. It is prime opportunity to throw off their
      gathering before an attack can begin...]],

      [[A hellish infestation seems to be running amuck about
      this region. Hell's reign is expanding and their armies
      gather in number elsewhere. Perhaps you can get a shot
      on them first before they begin a new assault...]],

      [[A strange overgrowth of bloody viscera seems to be
      overtaking this place. Hell's infestion is interacting
      with reality to accomodate hellspawn over mortals.
      Time to change that.]],
    }

    conclusions =
    {
      [[You have destroyed the horde leader,
      _DEMON_NAME of _GOTHIC_LEVEL! The demonic
      forces scatter, unable to continue their assault! With
      this place freed, the taint of hell's energies fades with
      the retreat of the darkness.]],

      [[It was a trap! An entire batallion of hall's banners fall
      before you. It turns out you were the target all along
      but with your dexterity and wit, you have outmaneuvered
      their forces and crushed them utterly.]],

      [[With your relentless barrage upon the hellspawn, their
      numbers shrink but you have a feeling this was not the bulk
      of their force... it seems you were lured here through
      a ruse! The demonic army unleashes itself elsewhere...]],
    }
  }

  i_challenge_you_to_a_duel =
  {
    hooks =
    {
      [[A deep harrowing wail suddenly resounds through the halls.
      A visage of fire manifests before you and speaks in a monstrous tone:
      "Pitiful mortal. You think you can defeat me,
      _RAND_DEMON the Lord of _GOTHIC_LEVEL?
      Come to me and meet your fate. I shall demonstrate
      the powers of the underworld to you."]],

      [[A strange shadow seems to creep up the walls before you.
      It shudders and shakes. A pair of searing red eyes open
      from the inky surface. It speaks:
      "I am _RAND_DEMON the King of _GOTHIC_LEVEL.
      You have entered my realm. I shall deal with you accordingly."
      The shadow fades away.]],

      [[Stranges echoes reverberate through the walls. A dark figure
      menaces you with its presence and speaks.
      "You may have defeated me before but know this, mortal.
      Perhaps once I was a lowly imp, but now I am
      _RAND_DEMON the baron of _GOTHIC_LEVEL.
      I will repay your insolence by crushing and dragging your
      entrails across the stone!"]],
    }

    conclusions =
    {
      [[A great battle has just concluded. _RAND_DEMON collapses
      before you. "No! How could this be?! The forces of hell
      are infinite and unfor-"
      _SPACE
      Its dialogue is interrupted as with the crack of your knuckles,
      you send its head flying square off its shoulders across
      the room with an upper cut. The remaining minions of hell
      shriek in fear and retreat!]],

      [[As a critical hit falls upon the demon's body, _RAND_DEMON
      stutters. "This is not how it ends, mortal! I will return
      and feast upon your soul!"
      _SPACE
      The creature quickly steps into a newly opened portal behind
      and dissapates.
      _RAND_DEMON escapes your grasp, but it is scarred forever.]],

      [[As _RAND_DEMON falls, its body implodes into a cloud of
      darkness, and slowly fades. An ethereal voice speaks.
      "You have returned me to the void, mortal. Your strength
      is admirable but remember: the Dark Lords are watching you."
      The voice fades.]],
    }
  }

  deus_ex_machina =
  {
    hooks =
    {
      [[The situation seems to be growing hopeless. Hell has opened
      a great rift and the tides of hell's forces have befallen
      this place greatly. You have no choice but to escape and thus attempt
      to breach between their gaps...]],

      [[Hell's grip upon this area seems to be tightening. Swarms
      of hellspawn rigorously continue their defense and it seems
      their numbers are unending. You decide to fight on however
      bleak the circumstance.]],
    }
    conclusions =
    {
      [[Despite your great efforts, the forces of hell have surrounded
      you entirely! Towering beasts march over the carcasses of the
      hellspawn you have just felled. Suddenly, a bright opening
      in the skies appear.
      _SPACE
      It is _RAND_CONTRIBUTOR, one of the Contributors of ObAddon!
      A rain of plasma bolts fall from the sky, searing every beast
      around you down to ashes. _RAND_CONTRIBUTOR waves at you
      and disappears again above the clouds...]],

      [[As you down the final demon, horrifying screams and screaches
      fill the room! As you turn back, an entire host of demons
      are charging at you! From the opposite direction however, comes
      an immense orb of light! The orb shoots beams into the belly of
      each creature turning them into nothing but clouds of dust.
      _SPACE
      It's _RAND_CONTRIBUTOR, one of the Contributors of ObAddon!
      "You'll need all the help you can get." _RAND_CONTRIBUTOR
      turns back and leaves, while gesturing at you to keep up
      the good fight.]]
    }
  }

  beacon =
  {
    hooks =
    {
      [[Your tracker lights up and informs you that a beacon with a
      UAC signature has suddenly began transmitting nearby. It seems
      someone is deliberately calling your attention. The position is
      logged and you attempt to head in its direction...]],

      [[It seems a reinforcement beacon has been activated nearby.
      A group of friendly forces may be attempting to fight it out
      with the forces of hell. You begin your journey towards the
      position of the beacon...]],

      [[Your radio picks up on a mysterious signal. Parsing it through
      your tracker, you find a beacon transmitting at a military frequency.
      It is a potential point of interest so you begin your journey towards
      it accepting the potential risk.]],
    }

    conclusions =
    {
      [[After destroying the hordes, it seems you have found a cache
      of essential supplies they were attempting to keep from you.
      You help yourself to the newfound munitions. It seems there is no
      evidence as to who activated the beacon. You shut it off.]],

      [[It was a trap all along! The hell general _DEMON_NAME activated the beacon,
      expecting you to follow it. They did not, however, expect a thorough
      defeat despite their machinations. You deactivate the beacon
      so no further individual may fall prey to it.]],

      [[You have found the beacon attached to a badly damaged cargo pod.
      You pry open the doors pocked with bullet holes and claw marks.
      Out spill a group of civilians.
      _SPACE
      "Thank you for saving us! Those creatures just appeared out of nowhere!"
      You gesture towards the exit. "Yes, we know a way out of here. We can't
      repay you with anything, but we hope you bring down more of those demons!"
      The civilians leave.]],

      [[After a great battle with the minions of hell, you find a group of fallen
      marines before you who have made a last stand, their bodies scattered around
      a crater. One of them still grips an emergency beacon tightly in their bloody hands.
      You disable the beacon and take their dog tags.
      Their sacrifices will be remembered.]],
    }
  }

  aa_guns =
  {
    hooks =
    {
      [[You hear the great roaring of explosions in the distance.
      You look up the skies and see spacecraft cashing down the
      atmosphere. It seems hell has taken control of the ground defense
      systems and have turned them against humans. You must find a way
      to disable the rogue system!]],

      [[Your radio stutters open and an indirected transmission blares out
      the following instruction: "If you are hearing this, we are
      attempting to land in our target area but hostiles have taken control
      of the ground defense system! If you have means to disable it,
      this will allow friendly forces to land and push through!"]]
    }
    conclusions =
    {
      [[The great demon _DEMON_NAME of _GOTHIC_LEVEL has fallen!
      In the wake of its defeat, your tracker informs you that
      the local ground defense system has rebooted. You watch as
      civilian spacecraft rise to the skies and exit the atmosphere safely.]],

      [[The battle with _DEMON_NAME of _GOTHIC_LEVEL was difficult
      but you came out victorious nonetheless. You smash the
      defense terminal, causing it to power down. You watch as friendly dropships
      safely descend in the distance from the clouds. Hell will fight back
      but this should make your own battle easier. Hopefully.]]
    }
  }
}

ZDOOM_STORIES.ABSOLUTE_ENDINGS =
{
  [[While hell's forces continues its assault elsewhere,
  your efforts at keeping the demons at bay is rest assured for now!
  _SPACE
  The story will continue!]],
}