# reference: https://www.gnu.org/software/sed/manual/sed.html#sed-scripts
# regexp playground (syntax may differ a bit): https://regexr.com

# from pre-0.3
# =============================================
s/^Gravity=0.*/Trajectory=Straight/I
s/^Trajectory\.Speed=(.*)/; &\n; FIXME ensure Trajectory\.Speed is on Projectile and not on Weapon/I
s/^Rad\.NoOwner=(y.*|t.*|1)/; &\n; FIXME put RadHasOwner=no on used RadType/I
s/^Rad\.NoOwner=(n.*|f.*|0)/; &\n; FIXME put RadHasOwner=yes on used RadType/I
s/^Death\.NoAmmo(.*)/AutoDeath\.OnAmmoDepletion\1\n; FIXME set appropriate AutoDeath\.Behavior if not set/I
s/^Death\.Countdown(.*)/AutoDeath\.AfterDelay\1\n; FIXME set appropriate AutoDeath\.Behavior if not set/I
s/^Death\.Peaceful=(y.*|t.*|1)/AutoDeath\.Behavior=vanish/I
s/^Death\.Peaceful=(n.*|f.*|0)/AutoDeath\.Behavior=kill/I
s/^([0-9]+)=(125|126),([0-9]+)/&  ; FIXME Ensure the time is specified in ingame seconds (15 frames per second)/I
s/^PassengerDeletion\.SoylentFriendlies=(y.*|t.*|1)/PassengerDeletion\.SoylentAllowedHouses=all/I
s/^PassengerDeletion\.SoylentFriendlies=(n.*|f.*|0)/PassengerDeletion\.SoylentAllowedHouses=enemies/I
# Placement Preview - [AudioVisual]
s/^BuildingPlacementPreview\.DefaultTranslucentLevel=/PlacementPreview\.Translucency=/I
s/^BuildingPlacementGrid\.TranslucentLevel=/PlacementGrid\.Translucency=/I
# Placement Preview - [BuildingType]
s/^PlacementPreview\.Show=/PlacementPreview=/I
s/^PlacementPreview\.TranslucentLevel=/PlacementPreview\.Translucency=/I
s/^PlacementPreview\.Translucent=/PlacementPreview\.Translucency=/I
# Placement Preview - Fix Translucency Value
s/^PlacementGrid\.Translucency=1(($|\s|;)+)/PlacementGrid\.Translucency=25\1/I
s/^PlacementGrid\.Translucency=2(($|\s|;)+)/PlacementGrid\.Translucency=50\1/I
s/^PlacementGrid\.Translucency=3(($|\s|;)+)/PlacementGrid\.Translucency=75\1/I
s/^PlacementPreview\.Translucency=1(($|\s|;)+)/PlacementPreview\.Translucency=25\1/I
s/^PlacementPreview\.Translucency=2(($|\s|;)+)/PlacementPreview\.Translucency=50\1/I
s/^PlacementPreview\.Translucency=3(($|\s|;)+)/PlacementPreview\.Translucency=75\1/I

# from 0.2.2.2
# =============================================
s/^PenetratesShield/Shield\.Penetrate/I
s/^BreaksShield/Shield\.Break/
