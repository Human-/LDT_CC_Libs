-------------------------------------------------------------------------------
-- ##GPS API
-- The [gps API](http://computercraft.info/wiki/Gps_%28API%29) provides a method
-- for turtles and computers to retrieve their own locations.
-- ###Notes:  
-- >
-- > 1. It broadcasts a PING message over rednet and wait for responses.
-- > 2. In order for this system to work, there must be at least 4 computers
-- used as gps hosts which will respond and allow trilateration. Three of these 
-- hosts should be in a plane, and the fourth should be either above or below 
-- the other three.
-- > 3. You can set up hosts using the gps program.
-- @module gps

-------------------------------------------------------------------------------
-- Tries to retrieve the Computers or Turtles own location.
-- @function [parent=#gps] locate
-- @param os#time timeout the amount of `time`, in seconds, to wait for a rednet response.
-- @param #boolean debug if `true`, outputs debug messages.
-- @return #table the location (x, y, z) of the modem attached to the Computer or Turtle
-- @return #nil `nil` if the location could not be determined

-------------------------------------------------------------------------------
-- Used by Wireless Modems to restrict the receiving modems.
-- @field  [parent=#gps] #number CHANNEL_GPS

return nil