------------------------------------------------------------------------------- 
-- ##Terminal API
-- The [term API](http://computercraft.info/wiki/Term_%28API%29) provides
-- functions for writing text to the terminal and monitors, and drawing ASCII
-- graphics.
-- ###Notes:  
-- >
-- > 1. [Color](colors.html)/[Colour](colours.html) setting functions are only available on advanced computers
-- and monitors.
-- @module term

-------------------------------------------------------------------------------
-- Writes a `string` to the screen.
-- @function [parent=#term] write
-- @param #string text The `string` to be written.
-- @return #string `string` written on the screen.
 
-------------------------------------------------------------------------------
-- Clears the entire screen.
-- @function [parent=#term] clear
 
-------------------------------------------------------------------------------
-- Clears the line the cursor is on.
-- @function [parent=#term] clearLine

-------------------------------------------------------------------------------
-- Returns two arguments containing the `x` and the `y` position of the cursor.
-- @function [parent=#term] getCursorPos
-- @return #number, #number The `x`,`y` coordinates of the cursor.

-------------------------------------------------------------------------------
-- Sets the location of the cursor on screen.
-- @function [parent=#term] setCursorPos
-- @param #number x the new `x` coordinate of the cursor.
-- @param #number y the new `y` coordinate of the cursor.

-------------------------------------------------------------------------------
-- Sets whether the cursor is blinking or not.
-- @function [parent=#term] setCursorBlink
-- @param #boolean state `true` to enable cursor blinking, `false` to disable.

-------------------------------------------------------------------------------
-- Returns if the computer supports color.
-- ###Notes:  
-- >
-- > 1. Used to determine whether or not an Advanced Computer is being used.
-- @function [parent=#term] isColor
-- @return #boolean `true` if the Computer is Advanced.

-------------------------------------------------------------------------------
-- Returns if the computer supports colour.
-- ###Notes:  
-- >
-- > 1. Used to determine whether or not an Advanced Computer is being used.
-- @function [parent=#term] isColour
-- @return #boolean `true` if the Computer is Advanced.

-------------------------------------------------------------------------------
-- Returns the `width` and `height` of the terminal window.
-- ###Notes:  
-- >
-- > 1. Good for if you're making something to be compatible with both Turtles
-- and Computers.
-- @function [parent=#term] getSize
-- @return #number, #number `width` and `height` of the terminal.

-------------------------------------------------------------------------------
-- Scrolls the terminal `n` lines.
-- @function [parent=#term] scroll
-- @param #number n Lines to scroll.

-------------------------------------------------------------------------------
-- Redirects terminal output to a monitor or other redirect target.
-- ###Notes:  
-- >
-- > 1. Use [`peripheral.wrap`](peripheral.html##\(peripheral\).wrap) to acquire a monitor "object".
-- @function [parent=#term] redirect
-- @param #table target The wrapped peripheral (ie. `monitor`).

-------------------------------------------------------------------------------
-- Restores terminal output to the previous target.
-- @function [parent=#term] restore

-------------------------------------------------------------------------------
-- Internal.
-- ###Notes:  
-- >
-- > 1. Copy of the original terminal environment for use with term.restore()
-- @field  [parent=#term] #table native

return nil