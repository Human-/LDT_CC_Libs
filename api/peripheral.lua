-------------------------------------------------------------------------------
-- ##Peripheral API
-- The [peripheral API](http://computercraft.info/wiki/Peripheral_%28API%29) is 
-- for interacting with external `peripherals`, such as the Disk Drive, the 
-- Advanced Monitor and Monitor.
-- ###Notes:  
-- >
-- > 1. Computers and Turtles are also considered `peripherals` and you can interface
-- two adjacent Computers, although in a more limited fashion compared to `rednet`.
-- @module peripheral

--------------------------------------------------------------------------------
-- The side of the computer to consider.
-- Implemented as a @{#string}. May be one of the following values:
--  
-- * `top`, `bottom`, `left`, `right`, `front` and `back`
-- @type side

--------------------------------------------------------------------------------
-- Computer `peripheral`. Implemented as a @{#table}.
-- @type computer

--------------------------------------------------------------------------------
-- Advanced Computer `peripheral`. Implemented as a @{#table}.
-- @type advcomputer

--------------------------------------------------------------------------------
-- Monitor `peripheral`. Implemented as a @{#table}.
-- @type monitor

--------------------------------------------------------------------------------
-- Advanced Monitor `peripheral`. Implemented as a @{#table}.
-- @type advmonitor

--------------------------------------------------------------------------------
-- Printer `peripheral`. Implemented as a @{#table}.
-- @type printer

--------------------------------------------------------------------------------
-- Modem `peripheral`. Implemented as a @{#table}.
-- @type modem

--------------------------------------------------------------------------------
-- Command Block `peripheral`. Implemented as a @{#table}.
-- @type command

-------------------------------------------------------------------------------
-- Tells you whether a `peripheral` is present on a `side` of the `computer` or the `turtle`.
-- @function [parent=#peripheral] isPresent
-- @param #side side the `side` of the computer to consider.
-- @return #boolean Returns `true` if a `peripheral` is present on side.

-------------------------------------------------------------------------------
-- Tells you what is attached to a `side` of a `computer`.
-- @function [parent=#peripheral] getType
-- @param #side side the `side` of the computer to consider.
-- @return #string Returns the type or `peripheral` present on side (`"modem"`, `"computer"`, `"turtle"`, `"drive"`, `"monitor"`, `"printer"`, `"command"`).
-- @return #nil Returns `nil` if side is empty.

-------------------------------------------------------------------------------
-- Returns a `table` with all available methods for the `peripheral` on `side`.
-- @function [parent=#peripheral] getMethods
-- @param #side side the `side` of the computer to consider.
-- @return #table Returns a `table` containing all methods for `peripheral` on side.

-------------------------------------------------------------------------------
-- Calls a method on the `peripheral` attached to `side`.
-- @function [parent=#peripheral] call
-- @param #side side the `side` of the computer to consider.
-- @param #string methodName the method to be called on the `peripheral` located on side.
-- @param ... arguments to be supplied to methodName.
-- @return ... : Return values match those of called method.

-------------------------------------------------------------------------------
-- Returns a handle to a `peripheral` that can then be used to call methods,
-- as if using @{#peripheral.call}(`side`, `method`)
-- @function [parent=#peripheral] wrap
-- @param #side side the `side` of the computer to consider.
-- @return #computer Returns a handle to the `computer` `peripheral` located on `side`.
-- @return #advcomputer Returns a handle to the `advcomputer` `peripheral` located on `side`.
-- @return #monitor Returns a handle to the `monitor` `peripheral` located on `side`.
-- @return #advmonitor Returns a handle to the `advmonitor` `peripheral` located on `side`.
-- @return #printer Returns a handle to the `printer` `peripheral` located on `side`.
-- @return #modem Returns a handle to the `modem` `peripheral` located on `side`.
-- @return #command Returns a handle to the `command` `peripheral` located on `side`.

-------------------------------------------------------------------------------
-- Turns on the Computer. 
-- @function [parent=#computer] turnOn

-------------------------------------------------------------------------------
-- Shuts off the Computer. 
-- @function [parent=#computer] shutdown

-------------------------------------------------------------------------------
-- Reboots the Computer. 
-- @function [parent=#computer] reboot

-------------------------------------------------------------------------------
-- Gets the `computerID` of the Computer.
-- @function [parent=#computer] getID
-- @return os#computerID the `computerID` of the Computer.

-------------------------------------------------------------------------------
-- Turns on the Advanced Computer. 
-- @function [parent=#advcomputer] turnOn

-------------------------------------------------------------------------------
-- Shuts off the Advanced Computer. 
-- @function [parent=#advcomputer] shutdown

-------------------------------------------------------------------------------
-- Reboots the Advanced Computer. 
-- @function [parent=#advcomputer] reboot

-------------------------------------------------------------------------------
-- Gets the `computerID` of the Advanced Computer. 
-- @function [parent=#advcomputer] getID
-- @return os#computerID the `computerID` of the Computer.

-------------------------------------------------------------------------------
-- Sets the size of all `strings` on the Monitor.
-- ### Notes:  
-- 
-- 1. Scale can be any multiple of 0.5, starting at 0.5 and ending at 5.
-- @function [parent=#monitor] setTextScale
-- @param #number size scale to use.

-------------------------------------------------------------------------------
-- Writes a `string` to the Monitor.
-- @function [parent=#monitor] write
-- @param #string text The `string` to be written.
-- @return #string `string` written on the Monitor.
 
-------------------------------------------------------------------------------
-- Clears the entire Monitor.
-- @function [parent=#monitor] clear
 
-------------------------------------------------------------------------------
-- Clears the line the cursor is on.
-- @function [parent=#monitor] clearLine

-------------------------------------------------------------------------------
-- Returns two arguments containing the `x` and the `y` coordinates of the cursor.
-- @function [parent=#monitor] getCursorPos
-- @return #number, #number The `x`,`y` coordinates of the cursor.

-------------------------------------------------------------------------------
-- Sets the location of the cursor on Monitor.
-- @function [parent=#monitor] setCursorPos
-- @param #number x the new `x` coordinate of the cursor.
-- @param #number y the new `y` coordinate of the cursor.

-------------------------------------------------------------------------------
-- Sets whether the cursor is blinking or not.
-- @function [parent=#monitor] setCursorBlink
-- @param #boolean state `true` to enable cursor blinking, `false` to disable.

-------------------------------------------------------------------------------
-- Returns if the Monitor supports color.
-- ###Notes:  
-- >
-- > 1. Used to determine whether or not an Advanced Monitor is being used.
-- @function [parent=#monitor] isColor
-- @return #boolean `true` if the Monitor is Advanced.

-------------------------------------------------------------------------------
-- Returns if the Monitor supports colour.
-- ###Notes:  
-- >
-- > 1. Used to determine whether or not an Advanced Monitor is being used.
-- @function [parent=#monitor] isColour
-- @return #boolean `true` if the Monitor is Advanced.

-------------------------------------------------------------------------------
-- Returns the `width` and `height` of the Monitor.
-- ###Notes:  
-- >
-- > 1. Good for if you're making something to be compatible with both Turtles
-- and Computers.
-- @function [parent=#monitor] getSize
-- @return #number, #number `width` and `height` of the Monitor.

-------------------------------------------------------------------------------
-- Scrolls the Monitor `n` lines.
-- @function [parent=#monitor] scroll
-- @param #number n Lines to scroll.

-------------------------------------------------------------------------------
-- Redirects output to another target.
-- ###Notes:  
-- >
-- > 1. Use peripheral.wrap to acquire a `monitor`.
-- @function [parent=#monitor] redirect
-- @param #table target The wrapped `peripheral` (ie. `monitor`).

-------------------------------------------------------------------------------
-- Restores output to the previous target.
-- @function [parent=#monitor] restore

-------------------------------------------------------------------------------
-- Sets the size of all `strings` on the Advanced Monitor.
-- ### Notes:  
-- 
-- 1. Scale can be any multiple of 0.5, starting at 0.5 and ending at 5.
-- @function [parent=#advmonitor] setTextScale
-- @param #number size scale to use.

-------------------------------------------------------------------------------
-- Writes a `string` to the Advanced Monitor.
-- @function [parent=#advmonitor] write
-- @param #string text The `string` to be written.
-- @return #string `string` written on the Advanced Monitor.
 
-------------------------------------------------------------------------------
-- Clears the entire Advanced Monitor.
-- @function [parent=#advmonitor] clear
 
-------------------------------------------------------------------------------
-- Clears the line the cursor is on.
-- @function [parent=#advmonitor] clearLine

-------------------------------------------------------------------------------
-- Returns two arguments containing the `x` and the `y` coordinates of the cursor.
-- @function [parent=#advmonitor] getCursorPos
-- @return #number, #number The `x`,`y` coordinates of the cursor.

-------------------------------------------------------------------------------
-- Sets the location of the cursor on Advanced Monitor.
-- @function [parent=#advmonitor] setCursorPos
-- @param #number x the new `x` coordinate of the cursor.
-- @param #number y the new `y` coordinate of the cursor.

-------------------------------------------------------------------------------
-- Sets whether the cursor is blinking or not.
-- @function [parent=#advmonitor] setCursorBlink
-- @param #boolean state `true` to enable cursor blinking, `false` to disable.

-------------------------------------------------------------------------------
-- Returns if the Advanced Monitor supports color.
-- ###Notes:  
-- >
-- > 1. Used to determine whether or not an Advanced Monitor is being used.
-- @function [parent=#advmonitor] isColor
-- @return #boolean `true` if the Monitor is Advanced.

-------------------------------------------------------------------------------
-- Returns if the Advanced Monitor supports colour.
-- ###Notes:  
-- >
-- > 1. Used to determine whether or not an Advanced Monitor is being used.
-- @function [parent=#advmonitor] isColour
-- @return #boolean `true` if the Monitor is Advanced.

-------------------------------------------------------------------------------
-- Returns the `width` and `height` of the Advanced Monitor.
-- ###Notes:  
-- >
-- > 1. Good for if you're making something to be compatible with both Turtles
-- and Computers.
-- @function [parent=#advmonitor] getSize
-- @return #number, #number `width` and `height` of the Advanced Monitor.

-------------------------------------------------------------------------------
-- Scrolls the Advanced Monitor `n` lines.
-- @function [parent=#advmonitor] scroll
-- @param #number n Lines to scroll.

-------------------------------------------------------------------------------
-- Redirects output to another target.
-- ###Notes:  
-- >
-- > 1. Use peripheral.wrap to acquire a `monitor`.
-- @function [parent=#advmonitor] redirect
-- @param #table target The wrapped `peripheral` (ie. `monitor`).

-------------------------------------------------------------------------------
-- Restores output to the previous target.
-- @function [parent=#advmonitor] restore

-------------------------------------------------------------------------------
-- Sets the foreground [`color`](colors.html) of subsequent `strings` displayed on the Advanced Monitor.
-- ###Notes:  
-- >
-- > 1. Available only to Advanced Monitors!
-- @function [parent=#advmonitor] setTextColor
-- @param colors#color color The [`color`](colors.html) to use.

-------------------------------------------------------------------------------
-- Sets the foreground [`colour`](colours.html) of the subsequent `strings` displayed on the Advanced Monitor.
-- ###Notes:  
-- >
-- > 1. Available only to Advanced Monitors!
-- @function [parent=#advmonitor] setTextColour
-- @param colours#colour colour The [`colour`](colours.html) to use.

-------------------------------------------------------------------------------
-- Sets the background [`color`](colors.html) of the subsequent `strings` displayed on the Advanced Monitor.
-- ###Notes:  
-- >
-- > 1. Available only to Advanced Monitors!
-- @function [parent=#advmonitor] setBackgroundColor
-- @param colors#color color The [`color`](colors.html) to use.

-------------------------------------------------------------------------------
-- Sets the background [`colour`](colours.html) of the subsequent `strings` displayed on the Advanced Monitor.
-- ###Notes:  
-- >
-- > 1. Available only to Advanced Monitors!
-- @function [parent=#advmonitor] setBackgroundColour
-- @param colours#colour colour The [`colour`](colours.html) to use.

-------------------------------------------------------------------------------
-- Returns the total amount of paper in the Printer.
-- @function [parent=#printer] getPaperLevel
-- @return #number amount of paper available.

-------------------------------------------------------------------------------
-- Starts a new page.
-- @function [parent=#printer] newPage
-- @return #boolean `true` if page creation was successful, otherwise `false`.

-------------------------------------------------------------------------------
-- Terminates and prints the page loaded.
-- @function [parent=#printer] endPage
-- @return #boolean `true` if page termination was successful, otherwise `false`.

-------------------------------------------------------------------------------
-- Writes text onto the loaded paper, at the cursor's current position.
-- ###Notes:  
-- >
-- > 1. This does not produce a new line, and anything else printed or written 
-- after this will be on the same line.
-- @function [parent=#printer] write
-- @param #string text `string` to be printed.
-- @return #string empty (bug?)

-------------------------------------------------------------------------------
-- Sets the title of the page being printed.
-- @function [parent=#printer] setPageTitle
-- @param #string title `string` to use as the title.

-------------------------------------------------------------------------------
-- Returns the amount of ink in the Printer.
-- @function [parent=#printer] getInkLevel
-- @return #number Amount of ink in Printer.

-------------------------------------------------------------------------------
-- Returns the coordinates of the cursor on the paper, works the same way as [`term.getCursorPos`](term.html##\(term\).getCursorPos)
-- @function [parent=#printer] getCursorPos
-- @return #number,#number The `x` and `y` coordinates of the Printer cursor.

-------------------------------------------------------------------------------
-- Sets the cursor position on the page.
-- @function [parent=#printer] setCursorPos
-- @param #number x the new `x` coordinate of the cursor.
-- @param #number y the new `y` coordinate of the cursor.

-------------------------------------------------------------------------------
-- Returns the size of the page.
-- @function [parent=#printer] getPageSize
-- @return #number,#number `width` and `height` of the page in the Printer

-------------------------------------------------------------------------------
-- Tells the Computer that the `side` can be used for networking.
-- @function [parent=#modem] open
-- @param #side side the `side` of the computer to consider.

-------------------------------------------------------------------------------
-- Tells the Computer that the `side` can no longer be used for networking.
-- @function [parent=#modem] close
-- @param #side side the `side` of the computer to consider.

-------------------------------------------------------------------------------
-- Sends a `string` to a specific Computer or Turtle using the opened sides.
-- ###Notes:  
-- >
-- > 1. To get the `computerID` from a Computer see @{os#computerID} or the id program.
-- @function [parent=#modem] send
-- @param os#computerID receiverID `computerID` of the Computer or Turtle to be communicated with.
-- @param #string message `string` to be sent to the Computer or Turtle matched by receiverID.
-- @param #boolean WaitUntilPortOpen Setting WaitUntilPortOpen to `true` can help when the server is not receiving a response from the responding client.
-- @return #boolean `true` if a `string` has been sent, `false` if not. `true` does not guarantee that the destination was reachable!

-------------------------------------------------------------------------------
-- Sends the `string` to ALL connected and open Computers in range.
-- @function [parent=#modem] broadcast
-- @param #string message `string` to be sent.
-- @return #boolean `true` if a message has been sent, `false` if not. `true` does not guarantee that the any computer was reachable!

-------------------------------------------------------------------------------
-- Waits until it either receives a `rednet` message or the timeout has passed.
-- ###Notes:  
-- >
-- > 1. Leave args empty to wait for a message forever.
-- > 2. senderID and message are set to `nil` if a timeout occurs.
-- > 3. To get the `computerID` from a computer see @{os#computerID} or the id program.
-- > 4. You must be calling this `function` at the moment a message is sent, or
-- you will miss it. If you need to watch for messages while doing something
-- else at the same time, see @{parallel#waitForAny}.
-- @function [parent=#modem] receive
-- @param os#time timeoutSeconds Seconds to wait for a message. If timeoutSeconds is `nil`, waits forever.
-- @return os#computerID, #string, #number senderID, message, distance-to-sender (or `nil` if using redpower bundled cable instead of a modem)

-------------------------------------------------------------------------------
-- Returns `true` if the Wireless Modem on `side` is open or `nil` if not. Returns `1` always.
-- @function [parent=#modem] isOpen
-- @param #side side the `side` of the computer to consider.
-- @return #boolean `true` if the Wireless Modem is open, otherwise `false`.

-------------------------------------------------------------------------------
-- Used by Wireless Modems to restrict the receiving modems.
-- @field  [parent=#modem] #number CHANNEL_BROADCAST

-------------------------------------------------------------------------------
-- Retrieves the [command](http://www.minecraftwiki.net/wiki/Command_block) `string` that the `command` peripheral is currently using.
-- @function [parent=#command] getCommand
-- @return #string [command](http://www.minecraftwiki.net/wiki/Command_block) `string` used in the `command` peripheral.

-------------------------------------------------------------------------------
-- Sets the [command](http://www.minecraftwiki.net/wiki/Command_block) `string` that the `command` peripheral is currently using.
-- @function [parent=#command] setCommand
-- @param #string `string` to use in the `command` peripheral.

-------------------------------------------------------------------------------
-- Runs the [command](http://www.minecraftwiki.net/wiki/Command_block) currently set on the `command` peripheral.
-- @function [parent=#command] runCommand

return nil