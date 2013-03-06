-------------------------------------------------------------------------------
-- ##Help API
-- The [help API](http://computercraft.info/wiki/Help_%28API%29) allows limited 
-- access to the help files.
-- @module help

-------------------------------------------------------------------------------
-- Returns the current `path` for the help API.
-- @function [parent=#help] path
-- @return fs#path `path` of help API.

-------------------------------------------------------------------------------
-- Sets the `path` of the API to apiPath.
-- @function [parent=#help] setPath
-- @param fs#path apiPath `path` to set the API to.

-------------------------------------------------------------------------------
-- Looks up the `path` for a help file using the @{#help.path} directory.
-- @function [parent=#help] lookup
-- @param #string topic `string` topic to look up for help.
-- @return fs#path `path` of help file for topic.
-- @return #nil `nil` if help file for topic is not found.

-------------------------------------------------------------------------------
-- Returns a `table` of valid help topics.
-- @function [parent=#help] topics
-- @return #table all valid topics.

return nil