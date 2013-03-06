-------------------------------------------------------------------------------
-- ##Operating System API
-- The [os API](http://computercraft.info/wiki/OS_%28API%29) allows for 
-- interfacing with the Lua based Operating System itself. 
-- @module os

--------------------------------------------------------------------------------
-- Time in seconds. Implemented as a @{#number}.
-- @type time

--------------------------------------------------------------------------------
-- In-game time in seconds. Implemented as a @{#number}.
-- @type gametime

--------------------------------------------------------------------------------
-- Unique ID of a Computer. Implemented as a @{#number}.
-- @type computerID

--------------------------------------------------------------------------------
-- Unique ID of a Timer. Implemented as a @{#table}.
-- @type timerID

--------------------------------------------------------------------------------
-- Unique ID of an Alarm. Implemented as a @{#table}.
-- @type alarmID
-- 

-------------------------------------------------------------------------------
-- Returns the `string` version of the OS that the Computer is running.
-- ###Notes:  
-- >
-- > 1. Returns `"CraftOS " .. osVersion` on a Computer.
-- > 2. Returns `"TurtleOS " .. osVersion` on a Turtle.
-- > 3. May return other strings if a modded OS is loaded.
-- @function [parent=#os] version
-- @return #string the version `string`.

-------------------------------------------------------------------------------
-- Returns the `computerID` of this Computer. Behaves exactly as @{#os.computerID}.
-- @function [parent=#os] getComputerID
-- @return #computerID the `computerID` of the Computer.

-------------------------------------------------------------------------------
-- Returns the `computerID` of this Computer. Behaves exactly as @{#os.getComputerID}.
-- @function [parent=#os] computerID
-- @return #computerID the `computerID` of the Computer.

-------------------------------------------------------------------------------
-- Returns the `string` label of this Computer. Behaves exactly as @{#os.computerLabel}.
-- @function [parent=#os] getComputerLabel
-- @return #string the `string` label of the Computer.

-------------------------------------------------------------------------------
-- Returns the `string` label of this Computer. Behaves exactly as @{#os.getComputerLabel}.
-- @function [parent=#os] computerLabel
-- @return #string the `string` label of the Computer.

-------------------------------------------------------------------------------
-- Set the `string` label of this Computer.
-- @function [parent=#os] setComputerLabel
-- @param #string label the `string` label to be used by the Computer.

-------------------------------------------------------------------------------
-- An advanced way of starting programs.
-- A started program will have a given environment `table` which determines what
-- `functions` it has available, as well as any variables it will be able to
-- access by default.
-- ###Notes:
-- >
-- > 1. You may prefer to use the [shell (API)](shell.html) unless you need to do something special.
-- @function [parent=#os] run
-- @param #table envVars environment variables for the program to run under.
-- @param fs#path path `path` to the program to be run.
-- @param ... arguments for the program to be run.
-- @return #boolean `false` on error, otherwise `true`.

-------------------------------------------------------------------------------
-- Loads a Lua script as an API in its own namespace.
-- ###Notes:
-- >
-- > 1. It will be available to all programs that run on the terminal.
-- @function [parent=#os] loadAPI
-- @param fs#path path `path` to the API file to load.

-------------------------------------------------------------------------------
-- Unloads a previously loaded API.
-- @function [parent=#os] unloadAPI
-- @param fs#path path `path` to the API file to load.

-------------------------------------------------------------------------------
-- Blocks until the Computer receives an event, or if target-event is specified,
-- will block until an instance of target-event occurs.
-- ###Notes:
-- >
-- > 1. If a target-event is specified, the computer will not break for any
-- other events (except `termination`).
-- 
-- ### Events:  
-- 
-- * `char` (`string` _letter_)  
-- * `key` (@{keys#keycode} _keycode_)  
-- * `timer` (@{#timerID} _timerID_)  
-- * `alarm` (@{#alarmID} _alarmID_)  
-- * `redstone`  
-- * `terminate`  
-- * `disk` (`string` _side_)  
-- * `disk_eject` (`string` _side_)  
-- * `peripheral` (`string` _side_)  
-- * `peripheral_detach` (`string` _side_)  
-- * `rednet_message` (@{#computerID} _senderID_, `string` _message_, `number` _distance_)  
-- * `http_success` (`string` _url_, `table` _text_)  
-- * `http_failure` (`string` _url_)  
-- * `mouse_click` (@{keys#keycode} _mouse button_, `number` _x coord_, `number` _y coord_)  
-- * `mouse_scroll` (`number` direction, `number` _x coord_, `number` _y coord_)  
-- * `mouse_drag` (@{keys#keycode} _mouse button_ , `number` _x coord_, `number` _y coord_)  
-- * `monitor_touch` (`string` _side_, `number` _x coord_, `number` _y coord_)
-- @function [parent=#os] pullEvent
-- @param #string target-event Only accept the specified event.
-- @return #string, #Untyped Returns event type and any event parameters.

-------------------------------------------------------------------------------
-- Advanced version of pullEvent().
-- ###Notes:
-- >
-- > 1. Unlike @{#os.pullEvent}( target-event ), this function will not break for
-- system events, and can be used to handle termination events.
-- @function [parent=#os] pullEventRaw
-- @return #string, #Untyped Returns event type and any event parameters.

-------------------------------------------------------------------------------
-- Adds an event eventName with the specified parameters to the event queue.
-- 
-- ### Events:  
-- 
-- * `char` (`string` _letter_)  
-- * `key` (@{keys#keycode} _keycode_)  
-- * `timer` (@{#timerID} _timerID_)  
-- * `alarm` (@{#alarmID} _alarmID_)  
-- * `redstone`  
-- * `terminate`  
-- * `disk` (`string` _side_)  
-- * `disk_eject` (`string` _side_)  
-- * `peripheral` (`string` _side_)  
-- * `peripheral_detach` (`string` _side_)  
-- * `rednet_message` (@{#computerID} _senderID_, `string` _message_, `number` _distance_)  
-- * `http_success` (`string` _url_, `table` _text_)  
-- * `http_failure` (`string` _url_)  
-- * `mouse_click` (@{keys#keycode} _mouse button_, `number` _x coord_, `number` _y coord_)  
-- * `mouse_scroll` (`number` direction, `number` _x coord_, `number` _y coord_)  
-- * `mouse_drag` (@{keys#keycode} _mouse button_ , `number` _x coord_, `number` _y coord_)  
-- * `monitor_touch` (`string` _side_, `number` _x coord_, `number` _y coord_)
-- @function [parent=#os] queueEvent
-- @param #string eventName
-- @param ... any event parameters

-------------------------------------------------------------------------------
-- Returns CPU `time`.
-- @function [parent=#os] clock
-- @return #time amount of `time` the ComputerCraft computer has been running.

-------------------------------------------------------------------------------
-- Adds a timer which will fire a `timer` event once after time seconds have passed.
-- ###Notes:
-- >
-- > 1. The `timerID` of the timer is returned from this function to differentiate
-- multiple timers.
-- @function [parent=#os] startTimer
-- @param #time time Seconds to pass before the event fires.
-- @return #timerID timerID

-------------------------------------------------------------------------------
-- Makes the system wait a number of seconds before continuing in the program.
-- ###Notes:
-- >
-- > 1. @{#os.sleep}( timeout ) may also be used as simply [`sleep( timeout )`](global.html#sleep).
-- > 2. Fractions of a second are supported, but only down to a game tick, 
-- or 1/20 of a second (0.05s). `times` are rounded up to the next tick.
-- @function [parent=#os] sleep
-- @param #time time Seconds to pass before resuming.

-------------------------------------------------------------------------------
-- Returns the current Minecraft world `gametime`.
-- @function [parent=#os] time
-- @return #gametime The current `gametime`.

-------------------------------------------------------------------------------
-- Returns the current Minecraft day.
-- @function [parent=#os] day
-- @return #number The current in-game day.

-------------------------------------------------------------------------------
-- Adds an alarm which will fire an `alarm` event at the specified Minecraft
-- `gametime`.
-- ###Notes:
-- >
-- > 1. The `alarmID` is returned from this function to differentiate
-- multiple alarms.
-- @function [parent=#os] setAlarm
-- @param #gametime time Minecraft world time to fire the event.
-- @return #alarmID alarmID

-------------------------------------------------------------------------------
-- Turns off the computer.
-- @function [parent=#os] shutdown

-------------------------------------------------------------------------------
-- Reboots the computer.
-- @function [parent=#os] reboot

return nil
