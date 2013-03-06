-------------------------------------------------------------------------------
-- ##IO API
-- The [io API](http://computercraft.info/wiki/IO_%28API%29) is a
-- reimplementation of the default Lua input / output API with some features 
-- trimmed.
-- @module io

-------------------------------------------------------------------------------
-- Reads input from the user.
-- ###Notes:  
-- >
-- > 1. This is simply a very thin wrapper around [read](global.html#read).
-- @function [parent=#io] read
-- @param #string format ignored parameter, always uses "*l".
-- @return #string entire input in a `string`.

-------------------------------------------------------------------------------
-- Writes a `string` to the terminal.
-- ###Notes:  
-- >
-- > 1. This is simply a very thin wrapper around [write](global.html#write).
-- @function [parent=#io] write
-- @param #string text `string` to be written to the terminal.

-------------------------------------------------------------------------------
-- Returns whether the given `file` is opened, closed, or invalid.
-- ###Notes:  
-- >
-- > 1. The function is actually named `type`, not `type_`. `type_` is used
-- due to a limitation of the LDT documentation language. Remove the trailing
-- underscore for the function to work!
-- @function [parent=#io] type_
-- @param fs#file handle `file` to be queried.
-- @return #string "closed file" if `file` is closed, otherwise "file".
-- @return #nil `nil` if the handle is invalid. 

-------------------------------------------------------------------------------
-- Opens a file `path` for reading/writing.
-- ###Valid Modes:  
-- >
-- > 1. `r` - read only
-- > 2. `w` - write only
-- > 3. `a` - equivalent to `w`
-- > 4. `rb` - binary read only
-- > 5. `wb` - binary write only
-- > 6. `ab` - equivalent to `wb`
-- @function [parent=#io] open
-- @param fs#path path` path` of the file to be opened.
-- @param #string mode `string` mode of the opened file. `r`,`w`,`a`,`rb`,`wb`, or `ab` supported.
-- @return fs#file `file` handle for reading/writing the opened file.

return nil