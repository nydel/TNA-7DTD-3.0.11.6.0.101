# TNA-7DTD-3.0.11.6.0.101

7 Days To Die Dedicated Server Manager

Writen in LISP and heavily-dependent upon :BORDEAUX-THREADS, :CL-PPCRE and :TELNETLIB systems - as well as upon Alloc's "Server Fixes" Revision 237 - this elegantly-designed management tool is ripe for expansion.

The initial push of TNA for 7 Days To Die Dedicated includes only the basic module source and a few test functions. However, during development for TNA 2.0.11.X.101-503, we added numerous modules.

The development was experimental in nature, and as such, much functionality ended up a bit less compartmentalized than we had planned. In any case, these modules exist and will be added to TNA3.0 over the next few days and refined over the coming weeks. They include:

- An in-game economy module featuring a shop, p2p transaction, and creation of new coins by surviving minutes and slaying zombies. The baseline rules for this module vis a vis coin payout and item prices are easily-adjustable in a configuration file.
- Our famous "sethome" and "home" commands, part of the coming waypoint module which allows players to bookmark locations and - in some cases - teleport to them for an administrator-defined fee; of course this waypoint module is fully integrated with the economy module unless otherwise specified.
- Gambling against the house/server! Using the syntax "gamble //coins// //odds//" a player can bet their coins when desperate and receive a payout appropriate to the odds within one hundredth of a billionth of a coin.
- Vouching System. We at theGrapevine believe that MMO servers should not have traditional admins/moderators but rather a community of people who can vouch for one another and - pending administrator-defined procedure - gain access to the kick, kill and ban console commands.
- Cross-Server Chat. Our community plays 03 separate games on the same server. For example, if Player1 says "hello" in Game1, players in Game2 and Game3 see "Server: [Player1|G1]: hello" in their world.
- Advanced administrative commands including a "!blacklist/add" chat feature to automatically look up and ban by steamid a player who has logged out, so that they cannot log back in.
- DPF aka Difficult Pro-Fairplay, our module that takes over where EAC (Easy Anti-Cheat) leaves off.
- Refuge! A command and/or item in the shop that, when night begins, teleports a player to a included-in-mod prefab surrounded by unbreakable bedrock, then sends them back to their last position at morning. On a server where players begin with 500.0 TNA coins, we price this at 100.0, giving new users a couple of nights to get started. We also built a Jail module built on similar principles to store rulebreakers, cheaters & other undesirables.
- Lockers for player storage. A command teleports a player to their personal impregnable locker, a small empty room with bedrock surroundings containing several storage containers and a gun safe. This integrates with the economy module, and locker visits can have a price attached. Note: a module's prefab doesn't necessarily need to be used if the user wishes to build something differnt for the same purpose.
- Multiple Characters on one server for the same user.
- Compatibility with NAML, our companion project, the Non-API Markup Language, which enables users to easily add their own commands with simple markup; a NAML-added module can be written in any language, not just Common Lisp! Also it could add modules that involve no programming whatsoever.
- GNU-sympathetic memory module that debugs the current - A11.6b6 - 7 Days To Die Dedicated Server process as it runs, solving problems automatically when possible, and alerting the administrator of an impending problem - with the option of automatic announcement, shutdown & restart - when it is detected; this multi-faceted project will be forked into its own system with the aim of supporting 64-bit memory-leaking server daemons in addition to its specific focus on 32-bit software run upon x86 hardware.
- Subgames including: Small Stone Basketball, Hopscotch and Horse - Short-Session Murder Mystery Roleplay - An interactive MUD/Multi-User Dungeon with...
- Guilds/Groups connecting various players together in sub-communities; an easily-customizable module that can be implemented as Clans, Couples/Marriages, Government Titles - all simultaneously if desired - each capable of to come with benefits/salaries when linked to the economy module.
- Much much much more somehow, believe it or not.

TNA For 7 Days To Die is Free as in Freedom for Open-Source and Fair Use. The TNA Technological Standard, Specification and Request for Comment are Copyright 2015 and owned in entirety by Joshua Ryan "Nydel" Trout and may not be used for any purpose without written consent from the owner punishable by law. Attempts to duplicate the Specification &or apply its theory to 7DTD or any other API or API-Like service for profit will be taken seriously.

If you would like TNA applied to your project, please contact nydel at ma dot sdf dot org. Rest assured that I am very willing to share the specification and a Registry Key representing permission to know, expand upon, and use TNA so long as you'll provide a brief or detailed explanation of what your project is and why you think TNA will benefit it. Additionally, I may consider writing an implementation of TNA for your project myself for a fee appropriate to the situation, ranging from NIL to a sizable advance &or hourly wage &or lump sum upon completion of release &or royalties for value earned by your project.

More details exist in the Modified LLGPL/Lesser Lisp GNU Public Lisence included in this repository.
