-------------------------------------------------------------------------------
-- ##Textutils API
-- The [textutils API](http://computercraft.info/wiki/Textutils_%28API%29) is a collection of string utility functions.
-- @module textutils

-------------------------------------------------------------------------------
-- Slowly prints a `string` to the screen.
-- ###Notes:  
-- >
-- > 1. Unlike slowWrite, it prints a newline at the end of the `string`.
-- @function [parent=#textutils] slowPrint
-- @param #string text `string` to be displayed.
-- @param #number rate rate at which the `string` will be displayed.
-- @return #string `string` printed on the screen.

-------------------------------------------------------------------------------
-- Slowly writes a `string` to the screen.
-- ###Notes:  
-- >
-- > 1. Unlike slowPrint, it does not add a newline to the end of the `string`.
-- @function [parent=#textutils] slowWrite
-- @param #string text `string` to be written.
-- @param #number rate rate at which the `string` will be written.
-- @return #string `string` written on the screen.

-------------------------------------------------------------------------------
-- Converts @{os#time} to a human readable `string`.
-- ###Example results:
-- >
-- > 1. `5:30 PM` if `TwentyFourHour` is `false`.
-- > 2. `17:30` if `TwentyFourHour` is `true`.
-- @function [parent=#textutils] formatTime
-- @param os#time time `time` to be formatted.
-- @param #boolean TwentyFourHour if `true`, `time` will be formatted in 24 hour format instead of 12 hour.
-- @return #string the human readable `string`.

-------------------------------------------------------------------------------
-- Prints `tables` in an ordered form. Each `table`'s row and column width is auto-adjusted.
-- @function [parent=#textutils] tabulate
-- @param ... list of `tables` to be printed.
-- @return #string `string` printed on the screen.

-------------------------------------------------------------------------------
-- TODO: Needs a description.
-- @function [parent=#textutils] pagedTabulate
-- @param ... list of `tables` to be printed.
-- @return #string `string` printed on the screen.

-------------------------------------------------------------------------------
-- Prints a `string` onto the screen, but waits for confirmation before
-- scrolling down.
-- @function [parent=#textutils] pagedPrint
-- @param #string text `string` to be printed.
-- @param #string confirmation_lines `string` prompt to be displayed when awaiting confirmation.
-- @return #string `string` printed on the screen.

-------------------------------------------------------------------------------
-- Returns a `string` representation of the `table` `t` that can be saved
-- or sent over [`rednet`](rednet.html).
-- ###Notes:  
-- >
-- > 1. Nested structures are supported, but `tables` with circular graphs will
-- be detected and raise an error.
-- @function [parent=#textutils] serialize
-- @param #table t `table` to be serialized into a `string`.
-- @return #string serialized `string` form of `table` t.

-------------------------------------------------------------------------------
-- Returns a `table` reassembled from the `string` `s`.
-- ###Notes:  
-- >
-- > 1. The representation used by [`textutils`](textutils.html) actually 
-- creates Lua-friendly syntax, so that [`loadstring()`](global.html#loadstring) will also work
-- to unserialize.
-- @function [parent=#textutils] unserialize
-- @param #string s serialized `string` form of a `table`.
-- @return #table `table` reconstructed from `string` `s`.

-------------------------------------------------------------------------------
-- Replaces certain characters in a `string` to make it safe for use on the internet.
-- ###Notes:  
-- >
-- > 1. This is a `string` function and will even replace characters that are
-- allowed in URLs.
-- > 2. Use this only for `string`'s to be inserted in an URL, not the
-- URL itself.
-- @function [parent=#textutils] urlEncode
-- @param #string url url `string` to be safely encoded for transmission.
-- @return #string A `string` safe for use on the internet.

return nil