Description
------

These files provide example vanilla-like Allied and Soviet/Yuri graphics for SuperWeapon Sidebar feature.

Usage
-----

To use the sidebar graphics, the files have to be added to your mod and the following tags should be specified to use the sidebar for vanilla sides.

In `rulesmd.ini`:
```ini
[GDI]
SuperWeaponSidebar.OnPCX=swside01on.pcx
SuperWeaponSidebar.OffPCX=swside01off.pcx
SuperWeaponSidebar.TopPCX=swside01top.pcx
SuperWeaponSidebar.CenterPCX=swside01center.pcx
SuperWeaponSidebar.BottomPCX=swside01bottom.pcx

[Nod]
SuperWeaponSidebar.OnPCX=swside02on.pcx
SuperWeaponSidebar.OffPCX=swside02off.pcx
SuperWeaponSidebar.TopPCX=swside02top.pcx
SuperWeaponSidebar.CenterPCX=swside02center.pcx
SuperWeaponSidebar.BottomPCX=swside02bottom.pcx

[ThirdSide]
SuperWeaponSidebar.OnPCX=swside02on.pcx
SuperWeaponSidebar.OffPCX=swside02off.pcx
SuperWeaponSidebar.TopPCX=swside02top.pcx
SuperWeaponSidebar.CenterPCX=swside02center.pcx
SuperWeaponSidebar.BottomPCX=swside02bottom.pcx
```

In `uimd.ini`:
```ini
[Sidebar]
SuperWeaponSidebar.Interval=12
SuperWeaponSidebar.LeftOffset=6
SuperWeaponSidebar.CameoHeight=50
```

Contributing
------------

You can either submit your improvements via forking and doing a pull request or just via a PM/Mod Haven server on Discord.

0. Make sure no other active [pull requests](https://github.com/Phobos-developers/PhobosSupplementaries/pulls) are changing the graphic files you're modifying (otherwise when one or another merges, **you will have to reapply your changes manually!**).
1. Do the changes you want to submit.
2. Submit your changes to us.

Changelog
------

Version 1:
- Initial version.

Credits
-------

- Mig Eater - spliced graphics from vanilla sidebars
- Westwood Pacific - original sidebar graphics