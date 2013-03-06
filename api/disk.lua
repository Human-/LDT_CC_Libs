-------------------------------------------------------------------------------
-- ##Disk API
-- The [disk API](http://computercraft.info/wiki/Disk_%28API%29) allows you to 
-- interact with Disk Drives.
-- @module disk

--------------------------------------------------------------------------------
-- The unique ID of a Disk. Implemented as a @{#number}.
-- @type diskID

-------------------------------------------------------------------------------
-- Checks the given `side` for a Disk.
-- @function [parent=#disk] isPresent
-- @param peripheral#side side the `side` of the computer to consider.
-- @return #boolean `true` if there is a Disk, otherwise `false`.

-------------------------------------------------------------------------------
-- Checks whether the Disk on a given `side` is a Floppy Disk, as opposed to a Music Disk.
-- @function [parent=#disk] hasData
-- @param peripheral#side side the `side` of the computer to consider.
-- @return #boolean `true` if the disk has saved data, otherwise `false`.

-------------------------------------------------------------------------------
-- Returns the directory `path` on which the Disk on `side` has been mounted.
-- ###Example:
-- >
-- > 1. /disk
-- @function [parent=#disk] getMountPath
-- @param peripheral#side side the `side` of the computer to consider.
-- @return fs#path `path` of the mounted Disk.

-------------------------------------------------------------------------------
-- Sets the `string` label used by the Disk on `side`.
-- @function [parent=#disk] setLabel
-- @param peripheral#side side the `side` of the computer to consider.
-- @param #string label the `string` label to be used.

-------------------------------------------------------------------------------
-- Gets the `string` label used by the Disk on `side`.
-- @function [parent=#disk] getLabel
-- @param peripheral#side side the `side` of the computer to consider.
-- @return #string the `string` label used by the Disk.

-------------------------------------------------------------------------------
-- Gets `diskID` used by the Disk on `side`.
-- @function [parent=#disk] getID
-- @param peripheral#side side the `side` of the computer to consider.
-- @return #diskID the `diskID` of the Disk.

-------------------------------------------------------------------------------
-- Checks whether the Disk on `side` is a Music Disk, as opposed to a Floppy Disk.
-- @function [parent=#disk] hasAudio
-- @param peripheral#side side the `side` of the computer to consider.
-- @return #boolean `true` if the Disk has saved audio, otherwise `false`.

-------------------------------------------------------------------------------
-- Returns the audio title used by the Disk on `side`.
-- @function [parent=#disk] getAudioTitle
-- @param peripheral#side side the `side` of the computer to consider.
-- @return #string the title used by the Disk.

-------------------------------------------------------------------------------
-- Plays the audio contained in the Disk on `side`.
-- @function [parent=#disk] playAudio
-- @param peripheral#side side the `side` of the computer to consider.

-------------------------------------------------------------------------------
-- Stops the audio playing from the Disk on `side` (if any).
-- @function [parent=#disk] stopAudio
-- @param peripheral#side side the `side` of the computer to consider.

-------------------------------------------------------------------------------
-- Ejects the Disk on `side`.
-- @function [parent=#disk] eject
-- @param peripheral#side side the `side` of the computer to consider.

return nil