-------------------------------------------------------------------------------
-- ##Global API
-- The [global API](http://computercraft.info/wiki/Category:Lua_Core_Functions) is all of the Lua global variables.
-- The basic library provides some core functions to Lua.
-- All the preloaded module of Lua are declared here.
-- @module global

------------------------------------------------------------------------------
-- This library provides extra functions for http manipulation.
-- This is a global variable which holds the preloaded @{http} module.
-- @field[parent = #global] http#http http preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for shell manipulation.
-- This is a global variable which holds the preloaded @{shell} module.
-- @field[parent = #global] shell#shell shell preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for turtle manipulation.
-- This is a global variable which holds the preloaded @{turtle} module.
-- @field[parent = #global] turtle#turtle turtle preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for redstone manipulation.
-- This is a global variable which holds the preloaded @{redstone} module.
-- @field[parent = #global] redstone#redstone redstone preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for redstone manipulation.
-- This is a global variable which holds the preloaded @{rs} module.
-- @field[parent = #global] rs#rs rs preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for locational awareness.
-- This is a global variable which holds the preloaded @{gps} module.
-- @field[parent = #global] gps#gps gps preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for key code lookups.
-- This is a global variable which holds the preloaded @{keys} module.
-- @field[parent = #global] keys#keys keys preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for peripheral manipulation.
-- This is a global variable which holds the preloaded @{peripheral} module.
-- @field[parent = #global] peripheral#peripheral peripheral preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for bit manipulation.
-- This is a global variable which holds the preloaded @{bit} module.
-- @field[parent = #global] bit#bit bit preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for disk manipulation.
-- This is a global variable which holds the preloaded @{disk} module.
-- @field[parent = #global] disk#disk disk preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for rednet manipulation.
-- This is a global variable which holds the preloaded @{rednet} module.
-- @field[parent = #global] rednet#rednet rednet preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for help manipulation.
-- This is a global variable which holds the preloaded @{help} module.
-- @field[parent = #global] help#help help preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for parallel tasks.
-- This is a global variable which holds the preloaded @{parallel} module.
-- @field[parent = #global] parallel#parallel parallel preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for text manipulation.
-- This is a global variable which holds the preloaded @{textutils} module.
-- @field[parent = #global] textutils#textutils textutils preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for vector manipulation.
-- This is a global variable which holds the preloaded @{vector} module.
-- @field[parent = #global] vector#vector vector preloaded module

------------------------------------------------------------------------------
-- This library provides extra functions for image manipulation.
-- This is a global variable which holds the preloaded @{paintutils} module.
-- @field[parent = #global] paintutils#paintutils paintutils preloaded module

-------------------------------------------------------------------------------
-- Makes the system wait a number of seconds before continuing in the program.
-- ###Notes:
-- >
-- > 1. sleep( timeout ) may also be used as [`os.sleep( timeout )`](os.html##\(os\).sleep).
-- > 2. Fractions of a second are supported, but only down to a game tick, 
-- or 1/20 of a second (0.05s). Times are rounded up to the next tick.
-- @function [parent=#global] sleep
-- @param os#time time Seconds to pass before resuming.

-------------------------------------------------------------------------------
-- Reads input from the user. 
-- @function [parent=#global] read
-- @return #string entire input in a `string`.

-------------------------------------------------------------------------------
-- Writes a `string` to the terminal.
-- @function [parent=#global] write
-- @param #string text `string` to be written to the terminal.

-------------------------------------------------------------------------------
-- Receives any number of arguments, and prints their values to `stderr`,
-- using the `tostring` function to convert them to `strings`.
-- @function [parent=#global] printError
-- @param ... values to print to `stderr`.

-------------------------------------------------------------------------------
-- Internal.
-- Tries to lookup `key` in a `table` and return `key`, value if found.
-- Otherwise, `nil`,`nil`.
-- @function [parent=#global] __inext
-- @param #table `table` to access.
-- @param #Untyped key `key` to use on `table`.
-- @return #Untyped, #Untyped key, value if found in `table`.
-- @return #nil, #nil `nil`, `nil` if `key` is not in `table`.

------------------------------------------------------------------------------
-- This library provides extra functions for file system manipulation.
-- This is a global variable which holds the preloaded @{fs} module.
-- @field[parent = #global] fs#fs fs preloaded module

------------------------------------------------------------------------------
-- This library provides functions for RedPower Bundled Cable Colour manipulation.
-- This is a global variable which holds the preloaded @{colours} module.
-- @field[parent = #global] colours#colours colours preloaded module

------------------------------------------------------------------------------
-- This library provides functions for RedPower Bundled Cable Color manipulation.
-- This is a global variable which holds the preloaded @{colors} module.
-- @field[parent = #global] colors#colors colors preloaded module

------------------------------------------------------------------------------
-- This library provides functions to interact with the terminal.
-- This is a global variable which holds the preloaded @{term} module.
-- @field[parent = #global] term#term term preloaded module

------------------------------------------------------------------------------
-- This library provides generic functions for coroutine manipulation.
-- This is a global variable which holds the preloaded @{coroutine} module.
-- @field[parent = #global] coroutine#coroutine coroutine preloaded module

------------------------------------------------------------------------------
-- This library provides generic functions for string manipulation.
-- This is a global variable which holds the preloaded @{string} module.
-- @field[parent = #global] string#string string preloaded module

------------------------------------------------------------------------------
-- This library provides generic functions for table manipulation.
-- This is a global variable which holds the preloaded @{table} module.
-- @field[parent = #global] table#table table preloaded module

------------------------------------------------------------------------------
-- This library is an interface to the standard C math library.
-- This is a global variable which holds the preloaded @{math} module.
-- @field[parent = #global] math#math math preloaded module

------------------------------------------------------------------------------
-- The I/O library provides function for file manipulation.
-- This is a global variable which holds the preloaded @{io} module.
-- @field[parent = #global] io#io io preloaded module

------------------------------------------------------------------------------
-- Operating System Facilities.
-- This is a global variable which holds the preloaded @{os} module.
-- @field[parent = #global] os#os os preloaded module

-------------------------------------------------------------------------------
-- Issues an error when the value of its argument `v` is `false` (i.e.,
-- **`nil`** or **`false`**); otherwise, returns all its arguments. `message` is an error
-- `string`; when absent, it defaults to *`"assertion failed!"`*.
-- @function [parent=#global] assert
-- @param v if this argument is `false` an error is issued.
-- @param #string message an error `string`. defaults value is *`"assertion failed"`*.
-- @return ... : All its arguments.

-------------------------------------------------------------------------------
-- Opens the named file and executes its contents as a Lua chunk. When
-- called without arguments, `dofile` executes the contents of the standard 
-- input (`stdin`). Returns all values returned by the chunk.
-- In case of errors, `dofile` propagates the error to its caller 
-- (that is, `dofile` does not run in protected mode).
-- @function [parent=#global] dofile
-- @param fs#path filename the `path` to the file. (optional)

-------------------------------------------------------------------------------
-- Terminates the last protected `function` called and returns `message`
-- as the error `string`. Function `error` never returns.
--
-- Usually, `error` adds some information about the error position at the
-- beginning of the `string`. The `level` argument specifies how to get the
-- error position.  
-- With level 1 (the default), the error position is where the
-- `error` function was called.  
-- Level 2 points the error to where the function
-- that called `error` was called; and so on.  
-- Passing a level 0 avoids the addition of error position information to the `string`.
-- @function [parent=#global] error
-- @param #string message an error `string`.
-- @param #number level specifies how to get the error position, default value is `1`.

-------------------------------------------------------------------------------
-- A global variable (not a function) that holds the global environment
-- (that is, `_G._G = _G`). Lua itself does not use this variable; changing
-- its value does not affect any environment, nor vice-versa. (Use `setfenv`
-- to change environments.)
-- @field [parent = #global] #table _G

-------------------------------------------------------------------------------
-- Returns the current environment in use by the `function`.
-- @function [parent=#global] getfenv
-- @param f can be a Lua `function` or a number that specifies the function at that
-- stack level: Level 1 is the `function` calling `getfenv`. If the given
-- `function` is not a Lua `function`, or if `f` is `0`, `getfenv` returns the
-- global environment. The default for `f` is `1`.

-------------------------------------------------------------------------------
-- If `object` does not have a `metatable`, returns `nil`. Otherwise, if the
-- object's `metatable has a `"__metatable"` field, returns the associated
-- value. Otherwise, returns the `metatable` of the given object.
-- @function [parent=#global] getmetatable
-- @param object
-- @return #table the `metatable` of object.

-------------------------------------------------------------------------------
-- Use to iterate over a `table` by index.
-- Returns three values: an iterator `function`, the `table` `t`, and `0`,
-- so that the construction :
-- 
--     for i,v in ipairs(t) do *body* end
-- will iterate over the pairs (`1,t[1]`), (`2,t[2]`), ..., up to the
-- first integer key absent from the `table`.
-- @function [parent=#global] ipairs
-- @param #table t a `table` by index.

-------------------------------------------------------------------------------
-- Similar to `load`, but gets the chunk from file `filename` or from the
-- standard input, if no file name is given.
-- @function [parent=#global] loadfile
-- @param fs#path filename the path to the file. (optional)

-------------------------------------------------------------------------------
-- Similar to `load`, but gets the chunk from the given `string`.
-- To load and run a given `string`, use the idiom  
-- 
--     assert(loadstring(s))()
-- When absent, `chunkname` defaults to the given `string`.
-- @function [parent=#global] loadstring
-- @param #string string lua code to load.
-- @param #string chunkname chunk name used for error `strings` and debug information, default value is the given `string`.

-------------------------------------------------------------------------------
-- Allows a program to traverse all fields of a `table`. Its first argument is
-- a `table` and its second argument is an index in this `table`. `next` returns
-- the next index of the `table` and its associated value.
--
-- When called with `nil` as its second argument, `next` returns an initial
-- index and its associated value. When called with the last index, or
-- with `nil` in an empty table, `next` returns `nil`.
--
-- If the second argument is absent, then it is interpreted as `nil`. 
-- In particular, you can use `next(t)` to check whether a `table` is empty.
-- The order in which the indices are enumerated is not specified, *even for
-- numeric indices*. (To traverse a `table` in numeric order, use a numerical
-- for or the `ipairs` `function`.)
--
-- The behavior of `next` is *undefined* if, during the traversal, you assign
-- any value to a non-existent field in the `table`. You may however modify
-- existing fields. In particular, you may clear existing fields.
-- @function [parent=#global] next
-- @param #table table `table` to traverse.
-- @param index initial index.

-------------------------------------------------------------------------------
-- Use to iterate over a `table`.
-- Returns three values: the `next` function, the `table` `t`, and `nil`,
-- so that the construction :
-- 
--     for k,v in pairs(t) do *body* end
-- will iterate over all key-value pairs of `table` `t`.
-- 
-- See function [`next`](global.html#next) for the caveats of modifying the `table` during its
-- traversal.
-- @function [parent=#global] pairs
-- @param #table t `table` to traverse.

-------------------------------------------------------------------------------
-- Calls `function` `f` with the given arguments in *protected mode*. This
-- means that any error inside `f` is not propagated; instead, `pcall` catches
-- the error and returns a status code. Its first result is the status code (a
-- `boolean`), which is `true` if the call succeeds without errors. In such case,
-- `pcall` also returns all results from the call, after this first result. In
-- case of any error, `pcall` returns `false` plus the error `string`.
-- @function [parent=#global] pcall
-- @param #func f function to be call in *protected mode*.
-- @param ... function arguments.
-- @return #boolean `true` plus the result of `f` `function` if its call succeeds without errors.
-- @return #boolean, #string `false` plus the error `string` in case of any error.

-------------------------------------------------------------------------------
-- Receives any number of arguments, and prints their values to `stdout`,
-- using the `tostring` `function` to convert them to `strings`. `print` is not
-- intended for formatted output, but only as a quick way to show a value,
-- typically for debugging. For formatted output, use @{string#string.format}.
-- @function [parent=#global] print
-- @param ... values to print to `stdout`.

-------------------------------------------------------------------------------
-- Checks whether `v1` is equal to `v2`, without invoking any
-- metamethod. Returns a `boolean`.
-- @function [parent=#global] rawequal
-- @param #Untyped v1
-- @param #Untyped v2
-- @return #boolean `true` if `v1` is equal to `v2`. 

-------------------------------------------------------------------------------
-- Gets the real value of `table[index]`, without invoking any
-- metamethod. `table` must be a `table`; `index` may be any value.
-- @function [parent=#global] rawget
-- @param #table table
-- @param #Untyped index may be any value.
-- @return #Untyped The real value of `table[index]`, without invoking any
-- metamethod.

-------------------------------------------------------------------------------
-- Sets the real value of `table[index]` to `value`, without invoking any
-- metamethod. `table` must be a table, `index` any value different from `nil`,
-- and `value` any Lua value.  
-- This function returns `table`.
-- @function [parent=#global] rawset
-- @param #table table
-- @param index any value different from `nil`.
-- @param value any Lua value.

-------------------------------------------------------------------------------
-- If `index` is a number, returns all arguments after argument number
-- `index`. Otherwise, `index` must be the `string` `"#"`, and `select` returns
-- the total number of extra arguments it received.
-- @function [parent=#global] select
-- @param #Untyped index a `number` or the `string` `"#"`
-- @param ...

-------------------------------------------------------------------------------
-- Sets the environment to be used by the given `function`. `f` can be a Lua
-- `function` or a number that specifies the `function` at that stack level: Level
-- 1 is the `function` calling `setfenv`. `setfenv` returns the given `function`.  
-- As a special case, when `f` is 0 `setfenv` changes the environment of the
-- running `thread`. In this case, `setfenv` returns no values.
-- @function [parent=#global] setfenv
-- @param f a Lua `function` or a number that specifies the stack level.
-- @param #table table used as environment for `f`.
-- @return #func The given `function`.

-------------------------------------------------------------------------------
-- Sets the `metatable` for the given `table`. (You cannot change the `metatable`
-- of other types from Lua, only from C.) If `metatable` is `nil`, removes the
-- `metatable` of the given `table`. If the original `metatable` has a `"__metatable"`
-- field, raises an error.  
-- This function returns `table`.
-- @function [parent=#global] setmetatable
-- @param #table table 
-- @param #table metatable
-- @return #table The first argument `table`. 

-------------------------------------------------------------------------------
-- Tries to convert its argument to a `number`. If the argument is already
-- a `number` or a `string` convertible to a `number`, then `tonumber` returns this
-- `number`; otherwise, it returns **`nil`**.
--
-- An optional argument specifies the base to interpret the numeral. The base
-- may be any integer between `2` and `36`, inclusive. In bases above `10`, the
-- letter '`A`' (in either upper or lower case) represents `10`, '`B`' represents
-- 11, and so forth, with '`Z`' representing 35. In base `10` (the default),
-- the `number` can have a decimal part, as well as an optional exponent part.
-- In other bases, only unsigned integers are accepted.
-- @function [parent=#global] tonumber
-- @param #Untyped e a `number` or `string` to convert to a `number`.
-- @param #number base the base to interpret the numeral, any integer between `2` and `36`.(default is `10`).
-- @return #number a `number` if conversion succeeds.
-- @return #nil `nil` if the conversion fails.

-------------------------------------------------------------------------------
-- Receives an argument of any type and converts it to a `string` in a
-- reasonable format. For complete control of how numbers are converted, use
-- @{string#string.format}.
--
-- If the `metatable` of `e` has a `"__tostring"` field, then `tostring` calls
-- the corresponding value with `e` as argument, and uses the result of the
-- call as its result.
-- @function [parent=#global] tostring
-- @param #Untyped e an argument of any type.
-- @return #string a `string` in a reasonable format.

-------------------------------------------------------------------------------
-- Returns the type of its only argument, coded as a `string`. The possible
-- results of this function are "`nil`" (a `string`, not the value `nil`),
-- "`number`", "`string`", "`boolean`", "`table`", "`function`", "`thread`",
-- and "`userdata`".
-- ###Notes:  
-- >
-- > 1. The function is actually named `type`, not `type_`. `type_` is used
-- due to a limitation of the LDT documentation language. Remove the trailing
-- underscore for the function to work!
-- @function [parent=#global] type_
-- @param #Untyped v any value.
-- @return #string the type of `v`.

-------------------------------------------------------------------------------
-- Returns the elements from the given `table`. This function is equivalent to
-- 
--     return list[i], list[i+1], ..., list[j]
-- except that the above code can be written only for a fixed number of
-- elements. By default, `i` is 1 and `j` is the length of the `list`, as
-- defined by the length operator.
-- @function [parent=#global] unpack
-- @param #table list a `table` by index
-- @param #number i index of first value.
-- @param #number j index of last value.

-------------------------------------------------------------------------------
-- A global variable (not a `function`) that holds a `string` containing the
-- current interpreter version. The current contents of this variable is
-- "`Lua 5.1`".
-- @field [parent = #global] #string _VERSION

-------------------------------------------------------------------------------
-- This `function` is similar to `pcall`, except that you can set a new
-- error handler.
--
-- `xpcall` calls `function` `f` in protected mode, using `err` as the error
-- handler. Any error inside `f` is not propagated; instead, `xpcall` catches
-- the error, calls the `err` `function` with the original error object, and
-- returns a status code. Its first result is the status code (a `boolean`),
-- which is `true` if the call succeeds without errors. In this case, `xpcall`
-- also returns all results from the call, after this first result. In case
-- of any error, `xpcall` returns `false` plus the result from `err`.
-- @function [parent=#global] xpcall
-- @param #func f `function` to be call in *protected mode*.
-- @param #func err `function` used as error handler.
-- @return #boolean `true` plus the result of `f` `function` if its call succeeds without errors.
-- @return #boolean, #string `false` plus the result of `err` `function`.

return nil
