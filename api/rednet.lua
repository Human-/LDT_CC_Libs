-------------------------------------------------------------------------------
-- ##Rednet API
-- The [rednet API](http://computercraft.info/wiki/Rednet_%28API%29) allows
-- Computers to communicate between themselves without using Redstone Wires.
-- In order to send and receive data, a Modem is required.
-- ###Notes:  
-- >
-- > 1. The data is received immediately after sending it, but only by Computers
-- within a certain range. That range depends on the altitude of the sending
-- Computer increasing with higher altitudes to a max of `384`.
-- @module rednet

-------------------------------------------------------------------------------
-- Tells the Computer that the `side` can be used for networking.
-- @function [parent=#rednet] open
-- @param peripheral#side side the `side` of the computer to consider.

-------------------------------------------------------------------------------
-- Tells the Computer that the `side` can no longer be used for networking.
-- @function [parent=#rednet] close
-- @param peripheral#side side the `side` of the computer to consider.

-------------------------------------------------------------------------------
-- Sends a `string` to a specific Computer or Turtle using the opened sides.
-- ###Notes:  
-- >
-- > 1. To get the `computerID` from a Computer see @{os#computerID} or the id program.
-- @function [parent=#rednet] send
-- @param os#computerID receiverID `computerID` of the Computer or Turtle to be communicated with.
-- @param #string message `string` to be sent to the Computer or Turtle matched by receiverID.
-- @param #boolean WaitUntilPortOpen Setting WaitUntilPortOpen to `true` can help when the server is not receiving a response from the responding client.
-- @return #boolean `true` if a `string` has been sent, `false` if not. `true` does not guarantee that the destination was reachable!

-------------------------------------------------------------------------------
-- Sends the `string` to ALL connected and open Computers in range.
-- @function [parent=#rednet] broadcast
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
-- @function [parent=#rednet] receive
-- @param os#time timeoutSeconds Seconds to wait for a message. If timeoutSeconds is `nil`, waits forever.
-- @return os#computerID, #string, #number senderID, message, distance-to-sender (or `nil` if using redpower bundled cable instead of a modem)

-------------------------------------------------------------------------------
-- Returns `true` if the Wireless Modem on `side` is open or `nil` if not. Returns `1` always (?).
-- @function [parent=#rednet] isOpen
-- @param peripheral#side side the `side` of the computer to consider.
-- @return #boolean `true` if the Wireless Modem is open, otherwise `false`.

-------------------------------------------------------------------------------
-- Internal.
-- ###Notes:  
-- >
-- > 1. Used to emit `rednet` message events. Ran by the bios.
-- @function [parent=#rednet] run

-------------------------------------------------------------------------------
-- Used by Wireless Modems to restrict the receiving Modems.
-- @field  [parent=#rednet] #number CHANNEL_BROADCAST

return nil