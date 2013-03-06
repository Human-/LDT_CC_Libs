-------------------------------------------------------------------------------
-- ##Turtle API
-- The [turtle API](http://computercraft.info/wiki/Turtle_%28API%29) is used to work with your Turtles.
-- ###Notes:  
-- >
-- > 1. It is only available on Turtles (i.e. @{os#os.version}() returns a string starting with `"TurtleOS"`).
-- @module turtle

-------------------------------------------------------------------------------
-- Crafts an item if items in the Turtle's inventory matches a valid recipe.
-- ###Notes:  
-- >
-- > 1. Only available to _Crafty_ Turtles.
-- > 2. If `quantity` > `0` is specified, it will craft only up to that many items. 
-- Otherwise, it will craft as many of the items as possible.
-- > 3. If `quantity` `0` is specified, it will test if the current items 
-- constitute a valid recipe. No items will be crafted/consumed. Returns 
-- `true` if the recipe is valid, otherwise `false`.
-- > 4. The items can be placed anywhere as long as they are oriented properly
-- with respect to one another.
-- > 5. Can craft a maximum of one stack of items at a time.
-- > 6. Will not craft if there are any items in the Turtle's inventory that
-- are not part of the recipe, including in the slots not used for crafting.
-- > 7. The produced items will appear in the [selected](turtle.html##\(turtle\).select) slot, if that slot is
-- free. If not, it will try the next available slot.
-- @function [parent=#turtle] craft
-- @param #number quantity either `0` to test the recipe or > `1` to specify the amount of items to craft (limited to one stack per call); defaults to one stack
-- @return #boolean `true` on successful crafting (or valid recipe if `quantity` is `0`), otherwise `false`.

-------------------------------------------------------------------------------
-- Attempts to move the Turtle forward.
-- @function [parent=#turtle] forward
-- @return #boolean `true` on successful movement, otherwise `false`.

-------------------------------------------------------------------------------
-- Attempts to move the Turtle backwards.
-- @function [parent=#turtle] back
-- @return #boolean `true` on successful movement, otherwise `false`.

-------------------------------------------------------------------------------
-- Attempts to move the Turtle upwards.
-- @function [parent=#turtle] up
-- @return #boolean `true` on successful movement, otherwise `false`.

-------------------------------------------------------------------------------
-- Attempts to move the Turtle downwards.
-- @function [parent=#turtle] down
-- @return #boolean `true` on successful movement, otherwise `false`.

-------------------------------------------------------------------------------
-- Attempts to turn the Turtle left.
-- @function [parent=#turtle] turnLeft
-- @return #boolean `true` on successful turning, otherwise `false`.

-------------------------------------------------------------------------------
-- Attempts to turn the Turtle right.
-- @function [parent=#turtle] turnRight
-- @return #boolean `true` on successful turning, otherwise `false`.

-------------------------------------------------------------------------------
-- The Turtle selects the given Slot.
-- ###Notes:  
-- >
-- > 1. In ComputerCraft <= v1.33: 1 is top left, 9 is bottom right.
-- > 2. In ComputerCraft > v1.33 : 1 is top left, 16 is bottom right.
-- @function [parent=#turtle] select
-- @param #number slotNumber which inventory slot to use for further `functions`.
-- @return #boolean `true` if `slotNumber` is > `9`, otherwise `false`.

-------------------------------------------------------------------------------
-- Counts how many items are in the given Slot.
-- @function [parent=#turtle] getItemCount
-- @param #number slotNumber which inventory slot to consider.
-- @return #number the amount of items found in the specified slot.

-------------------------------------------------------------------------------
-- Counts how many remaining items you need to fill the stack in the given Slot.
-- @function [parent=#turtle] getItemSpace
-- @param #number slotNumber which inventory slot to consider.
-- @return #number the amount of items that can still fit in the specified slot.

-------------------------------------------------------------------------------
-- Attempts to attack in front of the Turtle.
-- ###Notes:  
-- >
-- > 1. Only available to _Tool_ equipped Turtles.
-- > 2. Depending on the tool, it may perform an action other than attacking.
-- @function [parent=#turtle] attack
-- @return #boolean `true` on successful attack, otherwise `false`.

-------------------------------------------------------------------------------
-- Attempts to attack above of the Turtle.
-- ###Notes:  
-- >
-- > 1. Only available to _Tool_ equipped Turtles.
-- > 2. Depending on the tool, it may perform an action other than attacking.
-- @function [parent=#turtle] attackUp
-- @return #boolean `true` on successful attack, otherwise `false`.

-------------------------------------------------------------------------------
-- Attempts to attack below of the Turtle.
-- ###Notes:  
-- >
-- > 1. Only available to _Tool_ equipped Turtles.
-- > 2. Depending on the tool, it may perform an action other than attacking.
-- @function [parent=#turtle] attackDown
-- @return #boolean `true` on successful attack, otherwise `false`.

-------------------------------------------------------------------------------
-- Attempts to break/dig the block in front of the Turtle.
-- ###Notes:  
-- >
-- > 1. Only available to _Tool_ equipped Turtles.
-- > 2. If successful, @{#turtle.suck}() is automatically called, placing the item in
-- Turtle inventory in the [selected](turtle.html##\(turtle\).select) slot if possible, or in the next available
-- slot.
-- > 3. Depending on the tool, it may perform an action other than breaking/digging.
-- >     1. With hoe: tills the dirt in front of it.
-- @function [parent=#turtle] dig
-- @return #boolean `true` on successful dig, otherwise `false`.

-------------------------------------------------------------------------------
-- Attempts to break/dig the block above the Turtle.
-- ###Notes:  
-- >
-- > 1. Only available to _Tool_ equipped Turtles.
-- > 2. If successful, @{#turtle.suck}() is automatically called, placing the item in
-- Turtle inventory in the [selected](turtle.html##\(turtle\).select) slot if possible, or in the next available
-- slot.
-- > 3. Depending on the tool, it may perform an action other than breaking/digging.
-- >     1. With hoe: tills the dirt in front of it.
-- @function [parent=#turtle] digUp
-- @return #boolean `true` on successful dig, otherwise `false`.

-------------------------------------------------------------------------------
-- Attempts to break/dig the block below the Turtle.
-- ###Notes:  
-- >
-- > 1. Only available to _Tool_ equipped Turtles.
-- > 2. If successful, @{#turtle.suck}() is automatically called, placing the item in
-- Turtle inventory in the [selected](turtle.html##\(turtle\).select) slot if possible, or in the next available
-- slot.
-- > 3. Depending on the tool, it may perform an action other than breaking/digging.
-- >     1. With hoe: tills the dirt in front of it.
-- @function [parent=#turtle] digDown
-- @return #boolean `true` on successful dig, otherwise `false`.

-------------------------------------------------------------------------------
-- Places the [selected](turtle.html##\(turtle\).select) block in front of the Turtle. 
-- ###Notes:  
-- >
-- > 1. Add `signText` to sign if given and a sign is being placed.
-- > 2. In ComputerCraft >= v1.5: it tries all possible block orientations before failing.
-- @function [parent=#turtle] place
-- @param #string signText `string` to use if a sign is being placed.
-- @return #boolean `true` on successful placement, otherwise `false`.

-------------------------------------------------------------------------------
-- Places the [selected](turtle.html##\(turtle\).select) block above the Turtle.
-- @function [parent=#turtle] placeUp
-- @return #boolean `true` on successful placement, otherwise `false`.

-------------------------------------------------------------------------------
-- Places the [selected](turtle.html##\(turtle\).select) block below the Turtle.
-- @function [parent=#turtle] placeDown
-- @return #boolean `true` on successful placement, otherwise `false`.

-------------------------------------------------------------------------------
-- Detects if there is a block in front of the Turtle.
-- ###Notes:  
-- >
-- > 1. Does not detect mobs or liquids or floating items.
-- @function [parent=#turtle] detect
-- @return #boolean `true` if there is a block, otherwise `false`.

-------------------------------------------------------------------------------
-- Detects if there is a block above the Turtle.
-- ###Notes:  
-- >
-- > 1. Does not detect mobs or liquids or floating items.
-- @function [parent=#turtle] detectUp
-- @return #boolean `true` if there is a block, otherwise `false`.

-------------------------------------------------------------------------------
-- Detects if there is a block below the Turtle.
-- ###Notes:  
-- >
-- > 1. Does not detect mobs or liquids or floating items.
-- @function [parent=#turtle] detectDown
-- @return #boolean `true` if there is a block, otherwise `false`.

-------------------------------------------------------------------------------
-- Detects if the block in front of the Turtle is the same as the one in the
-- currently [selected](turtle.html##\(turtle\).select) slot.
-- @function [parent=#turtle] compare
-- @return #boolean `true` if the blocks match, otherwise `false`.

-------------------------------------------------------------------------------
-- Detects if the block above the Turtle is the same as the one in the
-- currently [selected](turtle.html##\(turtle\).select) slot.
-- @function [parent=#turtle] compareUp
-- @return #boolean `true` if the blocks match, otherwise `false`.

-------------------------------------------------------------------------------
-- Detects if the block below the Turtle is the same as the one in the
-- currently [selected](turtle.html##\(turtle\).select) slot.
-- @function [parent=#turtle] compareDown
-- @return #boolean `true` if the blocks match, otherwise `false`.

-------------------------------------------------------------------------------
-- Detects if the block in the specified slot is the same as the one in the 
-- [selected](turtle.html##\(turtle\).select) slot.
-- @function [parent=#turtle] compareTo
-- @param #number slotNumber which inventory slot to consider.
-- @return #boolean `true` if the blocks match, otherwise `false`.

-------------------------------------------------------------------------------
-- Drops all items in the [selected](turtle.html##\(turtle\).select) slot, or if `quantity` is specified, drops
-- that many items.
-- ###Notes:  
-- >
-- > 1. In ComputerCraft >= v1.4: If there is a inventory in front of the 
-- Turtle it will try to place the items in that inventory instead of dropping
-- them to the ground. Returns false if the inventory is full.
-- >     1. The items will be placed in the first available slot, starting at
-- the top left, moving right and then down. 
-- > 2. Respects sided inventories. 
-- @function [parent=#turtle] drop
-- @param #number quantity amount of items to drop; defaults to one stack.
-- @return #bool `true` if an item was dropped; otherwise `false.

-------------------------------------------------------------------------------
-- Drops all items in the [selected](turtle.html##\(turtle\).select) slot, or if `quantity` is specified, drops
-- that many items.
-- ###Notes:  
-- >
-- > 1. In ComputerCraft >= v1.4: If there is a inventory above the 
-- Turtle it will try to place the items in that inventory instead of dropping
-- them to the ground. Returns false if the inventory is full.
-- >     1. The items will be placed in the first available slot, starting at
-- the top left, moving right and then down. 
-- > 2. Respects sided inventories. i.e. dropUp when below a furnace will 
-- load the items as fuel in the furnace's bottom slot.
-- @function [parent=#turtle] dropUp
-- @param #number quantity amount of items to drop; defaults to one stack.
-- @return #bool `true` if an item was dropped; otherwise `false.

-------------------------------------------------------------------------------
-- Drops all items in the [selected](turtle.html##\(turtle\).select) slot, or if `quantity` is specified, drops
-- that many items.
-- ###Notes:  
-- >
-- > 1. In ComputerCraft >= v1.4: If there is a inventory below the 
-- Turtle it will try to place the items in that inventory instead of dropping
-- them to the ground. Returns false if the inventory is full.
-- >     1. The items will be placed in the first available slot, starting at
-- the top left, moving right and then down. 
-- > 2. Respects sided inventories. i.e. dropDown when above a furnace will 
-- load the top slot for smelting.
-- @function [parent=#turtle] dropDown
-- @param #number quantity amount of items to drop; defaults to one stack.
-- @return #bool `true` if an item was dropped; otherwise `false.

-------------------------------------------------------------------------------
-- Tries to pick up an item stack of any quantity from the ground or
-- an inventory in front of the Turtle.
-- ###Notes:  
-- >
-- > 1. If an item is in the square directly in front of the turtle, 
-- it picks up one of those items.
-- > 2. If a chest is in the square directly in front of the turtle, 
-- it picks up the items from the first non-empty slot, moving from top left
-- to bottom right.
-- >      1. The items are moved into the currently selected slot, if there is room.
-- >      2. If the currently selected slot is filled up before all of the items
-- are picked up, the remaining items are put in the next available slot.
-- (wrapping around from slot `16` to slot `1` as needed).
-- > 3. Respects sided inventories. 
-- @function [parent=#turtle] suck
-- @return #boolean `true` if an item was moved into the Turtle's inventory; otherwise `false.

-------------------------------------------------------------------------------
-- Tries to pick up an item stack of any quantity from the ground or
-- an inventory above the Turtle.
-- ###Notes:  
-- >
-- > 1. If an item is in the square directly above the turtle, 
-- it picks up one of those items.
-- > 2. If a chest is in the square directly above the turtle, 
-- it picks up the items from the first non-empty slot, moving from top left
-- to bottom right.
-- >      1. The items are moved into the currently selected slot, if there is room.
-- >      2. If the currently selected slot is filled up before all of the items
-- are picked up, the remaining items are put in the next available slot.
-- (wrapping around from slot `16` to slot `1` as needed).
-- > 3. Respects sided inventories. i.e. suckUp when below a furnace will 
-- retrieve the items as fuel in the furnace's bottom slot.
-- @function [parent=#turtle] suckUp
-- @return #boolean `true` if an item was moved into the Turtle's inventory; otherwise `false.

-------------------------------------------------------------------------------
-- Tries to pick up an item stack of any quantity from the ground or
-- an inventory below the Turtle.
-- ###Notes:  
-- >
-- > 1. If an item is in the square directly below the turtle, 
-- it picks up one of those items.
-- > 2. If a chest is in the square directly below the turtle, 
-- it picks up the items from the first non-empty slot, moving from top left
-- to bottom right.
-- >      1. The items are moved into the currently selected slot, if there is room.
-- >      2. If the currently selected slot is filled up before all of the items
-- are picked up, the remaining items are put in the next available slot.
-- (wrapping around from slot `16` to slot `1` as needed).
-- > 3. Respects sided inventories. i.e. suckDown when above a furnace will 
-- retrieve items in the top slot for smelting.
-- @function [parent=#turtle] suckDown
-- @return #boolean `true` if an item was moved into the Turtle's inventory; otherwise `false.

-------------------------------------------------------------------------------
-- If the current [selected](turtle.html##\(turtle\).select) slot contains a fuel item, it will consume 
-- it to give the Turtle the ability to perform actions such as movement. 
-- ###Notes:  
-- >
-- > 1. Available only in ComputerCraft >= v1.4: it is only needed in `needfuel`
-- mode. If the current slot doesn't contain a fuel item, it yields false.
-- > 2. If `quantity` > `0` is specified, it will refuel only up to that many items, 
-- otherwise, it will consume all the items in the slot.
-- > 3. If `quantity` `0` is specified, it will test if a fuel item is [selected](turtle.html##\(turtle\).select).
-- Returns `true` if the item counts as fuel, otherwise `false`.
-- > 4. The formula for calculating the movement gain from a fuel is `((fuel * 5) / 100)`.
-- >      1. Where fuel is the items burn time in ticks in a regular furnace and `/` is integer division. 
-- > 5. Fuel values for different items can be found at [Turtle.refuel](http://computercraft.info/wiki/Turtle.refuel#Fuel_Values).
-- @function [parent=#turtle] refuel
-- @param #number quantity either `0` to test the item or > `1` to specify the amount of items to consume (limited to one stack per call); defaults to one stack
-- @return #bool `true` if the [selected](turtle.html##\(turtle\).select) slot contains a fuel item; otherwise, `false`.

-------------------------------------------------------------------------------
-- Returns the current fuel level of the turtle.
-- This is the number of actions that the Turtle can perform.
-- i.e. moving one block consumes 1 fuel. 
-- @usage if turtle.getFuelLevel() < 1 then
--    turtle.refuel()
-- end
-- @function [parent=#turtle] getFuelLevel
-- @return #number amount of fuel remaining.
-- @return #string `"unlimited"` if `turtleNeedFuel = 0`.

-------------------------------------------------------------------------------
-- Transfers `quantity` items from the [selected](turtle.html##\(turtle\).select) slot to the specified slot.
-- ###Notes:  
-- >
-- > 1. If the `quantity` argument is omitted, it tries to transfer all the items
-- from the [selected](turtle.html##\(turtle\).select) slot.
-- > 2. If the destination slot is unavailable, it does not try the next slot 
-- like @{#turtle.suck}. 
-- > 3. If there are fewer than `quantity` items in the [selected](turtle.html##\(turtle\).select) slot or 
-- there is insufficient room for the requested amount of items, it transfers 
-- as many as possible and returns true.
-- @function [parent=#turtle] transferTo
-- @param #number slotNumber which inventory slot to use for further `functions`.
-- @param #number quantity amount of items to move; defaults to one stack.
-- @return #boolean `true` if any items were moved; otherwise, `false`.

return nil