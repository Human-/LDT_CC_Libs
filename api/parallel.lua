-------------------------------------------------------------------------------
-- ##Parallel API
-- The [parallel API](http://computercraft.info/wiki/Parallel_%28API%29) is an 
-- API that allows you to multitask. 
-- @module parallel

-------------------------------------------------------------------------------
-- Runs all the `functions` at the same time, and stops when any of them returns.
-- @function [parent=#parallel] waitForAny
-- @param ... list of `functions` to run in parallel.
-- @return #number A number indicating which `function` completed based on argument order.

-------------------------------------------------------------------------------
-- Runs all the functions at the same time, and stops when all of them have returned.
-- @function [parent=#parallel] waitForAll
-- @param ... list of `functions` to run in parallel.
-- @return #number A number indicating which `function` completed based on argument order.

return nil