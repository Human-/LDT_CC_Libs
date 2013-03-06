-------------------------------------------------------------------------------
-- ##Shell API
-- The [shell API](http://computercraft.info/wiki/Help_%28API%29) allows limited 
-- manipulation of the running shell.
-- @module shell

-------------------------------------------------------------------------------
-- Exits the current program (or shell if no program is open).
-- @function [parent=#shell] exit
-- @return #string `string` displayed on the screen.

-------------------------------------------------------------------------------
-- Returns the `path` to the active directory.
-- @function [parent=#shell] dir
-- @return fs#path `path` of the active directory.

-------------------------------------------------------------------------------
-- Sets the active directory to the given `path`.
-- @function [parent=#shell] setDir
-- @param fs#path path `path` to use as the active directory.

-------------------------------------------------------------------------------
-- Returns a `string` containing multiple `paths` separated by colons. 
-- It is used to locate programs when no absolute `path` is stated.
-- ###Examples:  
-- >
-- > 1. Running `id` looks for the `id` program under each `path` returned by
-- this `function` (by default, `./id` then `/rom/programs/id`).
-- > 2. Running `/rom/programs/id` on the other hand only checks the location
-- specified.
-- @function [parent=#shell] path
-- @return #string `:` separated list of `paths`.

-------------------------------------------------------------------------------
-- Sets the `paths` used to locate programs when no absolute `path` is stated.
-- ###Notes:  
-- >
-- > 1. May contain multiple `paths` separated by a `:`.
-- > 2. Default value: `".:/rom/programs"`
-- @function [parent=#shell] setPath
-- @param #string path `:` separated list of `paths`.

-------------------------------------------------------------------------------
-- Resolves a `string` path relative to @{#shell.dir} to an absolute `path`.
-- ###Notes:  
-- >
-- > 1. Does nothing if the `path` is already absolute.
-- > 2. Uses @{fs#fs.combine} internally.
-- > 3. Does not verify if the `path` actually exists (or is even valid).
-- @function [parent=#shell] resolve
-- @param #string localpath `string` or `path` to convert to a `path`.
-- @return fs#path an absolute `path` to a given file system resource.

-------------------------------------------------------------------------------
-- Resolves the absolute path to the program whose name you provided.
-- ###Notes:  
-- >
-- > 1. Accounts for any aliases set.
-- > 2. Looks along the @{#shell.path} as needed.
-- @function [parent=#shell] resolveProgram
-- @param #string name filename or alias of the requested program.
-- @return fs#path `path` to the requested program.
-- @return #nil `nil` if the program `path` could not be located.

-------------------------------------------------------------------------------
-- Returns a `table` of all set aliases.
-- @function [parent=#shell] aliases
-- @return #table `table` of all aliases currently in use.

-------------------------------------------------------------------------------
-- Sets an alias for a given program.
-- ###Notes:  
-- >
-- > 1. Allows access to a program via multiple names.
-- > 2. Default aliases include: `mv` for `move`, `dir` for `list`, 
-- `ls` for `list`, `cp` for `copy`, and `rm` for `delete`.
-- @function [parent=#shell] setAlias
-- @param #string alias `string` to add as an alias.
-- @param #string command program that is being aliased.

-------------------------------------------------------------------------------
-- Removes an alias to a program.
-- @function [parent=#shell] clearAlias
-- @param #string alias previously set alias to remove.

-------------------------------------------------------------------------------
-- Returns a sorted `table` of all programs found along @{#shell.path}.
-- @function [parent=#shell] programs
-- @param #boolean IncludeHidden if `false`, hidden programs remain hidden.
-- @return #table `table` of all programs available to run.

-------------------------------------------------------------------------------
-- Runs the specified program with the specified arguments
-- @function [parent=#shell] run
-- @param #string either the name or `path` of the program to be run
-- @param ... arguments for the program to be run.
-- @return #boolean `false` on error, otherwise `true`.

-------------------------------------------------------------------------------
-- Returns the `path` of the currently running shell or program.
-- @function [parent=#shell] getRunningProgram
-- @return fs#path `path` of the currently running shell or program.

return nil