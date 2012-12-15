------------------------------------------------------------------------------- 
-- The Terminal API provides functions for writing text to the terminal and monitors, and drawing ASCII graphics.
-- Color/Colour setting functions are only available on advanced computers and monitors.
-- @module term

-------------------------------------------------------------------------------
-- Writes text to the screen.
-- @function [parent=#term] write
-- @param #string text The text to write
-- @return #string Text written on the screen
 
-------------------------------------------------------------------------------
-- Clears the entire screen
-- @function [parent=#term] clear
 
-------------------------------------------------------------------------------
-- Clears the line the cursor is on
-- @function [parent=#term] clearLine

-------------------------------------------------------------------------------
-- Returns two arguments containing the x and the y position of the cursor.
-- @function [parent=#term] getCursorPos
-- @return #number The x coordinate of the Cursor
-- @return #number The y coordinate of the Cursor

-------------------------------------------------------------------------------
-- Disables the blinking or turns it on.
-- @function [parent=#term] getCursorBlink
-- @param #boolean bool True if the cursor shall be enabled

-------------------------------------------------------------------------------
-- Returns if the computer supports color. (Used to determine whether or not an Advanced Computer is being used).
-- @function [parent=#term] isColor
-- @return #boolean True if the Computer is Advanced

-------------------------------------------------------------------------------
-- Returns if the computer supports colour. (Used to determine whether or not an Advanced Computer is being used).
-- @function [parent=#term] isColour
-- @return #boolean True if the Computer is Advanced

-------------------------------------------------------------------------------
-- Returns two arguments containing the x and the y values stating the size of the screen. (Good for if you're making something to be compatible with both Turtles and Computers).
-- @function [parent=#term] getSize
-- @return #number Width of the terminal
-- @return #number Height of the terminal

-------------------------------------------------------------------------------
-- Scrolls the terminal n lines.
-- @function [parent=#term] scroll
-- @param #number n Lines to scoll

-------------------------------------------------------------------------------
-- Redirects terminal output to a monitor or other redirect target. (Use peripheral.wrap to acquire a monitor "object").
-- @function [parent=#term] redirect
-- @param global#device target The wrapped peripheral (ie. monitor)

-------------------------------------------------------------------------------
-- Restores terminal output to the previous target.
-- @function [parent=#term] restore

-------------------------------------------------------------------------------
-- Sets the text-color of the terminal. Available only to Advanced Computers and Advanced Monitors.
-- @function [parent=#term] setTextColor
-- @param #number color The color to use

-------------------------------------------------------------------------------
-- Sets the text-colour of the terminal. Available only to Advanced Computers and Advanced Monitors.
-- @function [parent=#term] setTextColour
-- @param #number colour The colour to use

-------------------------------------------------------------------------------
-- Sets the background-color of the terminal. Available only to Advanced Computers and Advanced Monitors.
-- @function [parent=#term] setBackgroundColor
-- @param #number color the color to use

-------------------------------------------------------------------------------
-- Sets the background-colour of the terminal. Available only to Advanced Computers and Advanced Monitors.
-- @function [parent=#term] setBackgroundColour
-- @param #number colour the colour to use

return nil