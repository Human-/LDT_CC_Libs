-------------------------------------------------------------------------------
-- ##FileSystem API
-- The [fs API](http://computercraft.info/wiki/Fs_%28API%29) allows access to 
-- the ComputerCraft FileSystem.
-- ###Notes:  
-- >
-- > 1. All of these functions except for fs.combine refer solely to absolute paths.
-- This means that the current working directory, as set by the cd command or
-- the shell.setDir function, is ignored. Each path name consists of a list of
-- nonempty path components separated by forward slashes, and those path
-- components are taken one by one with the first being contained in the
-- root directory of the computer.
-- > 2. If you need to deal with paths provided by the user that may be absolute or
-- may be relative to the current working directory, use shell.resolve.
-- > 3. Unlike most real-world operating systems, ComputerCraft's absolute path name
-- system does not need to be started with a forward slash ( / ). Making the 
-- directory "a/b/c" is the same as making "/a/b/c". Leaving the slashes is just
-- a matter of preference to the coder.
-- @module fs 

--------------------------------------------------------------------------------
-- Absolute filesystem path to a directory or file. Implemented as a @{#string}.
-- @type path

-------------------------------------------------------------------------------
-- Lists the directories and files in the given directory.
-- @function [parent=#fs] list
-- @param #path path `path` of the directory that should be listed.
-- @return #table `table` of files and folders in `path`, which must be a directory.

-------------------------------------------------------------------------------
-- Checks if a `path` refers to an existing file or directory.
-- @function [parent=#fs] exists
-- @param #path path The `path` of the file or directory that should be checked.
-- @return #boolean `true` if the file exists, or `false` if not.

-------------------------------------------------------------------------------
-- Checks if a `path` refers to an existing directory.
-- @function [parent=#fs] isDir
-- @param #path path The `path` of the file or directory that should be checked.
-- @return #boolean `true` if it is a directory, or `false` if not.

-------------------------------------------------------------------------------
-- Checks if a `path` is read-only (i.e. cannot be modified).
-- @function [parent=#fs] isReadOnly
-- @param #path path The `path` of the file or directory that should be checked.
-- @return #boolean `false` if `path` can be written to, or `true` if not.

-------------------------------------------------------------------------------
-- Returns the last `path` component (forward-slash-separated) component of a `path`.
-- (the path doesn't need to exist).
-- @function [parent=#fs] getName
-- @param #path path The `path` that should be parsed.
-- @return #path The last `path` component of the `path`, or the `string` `"root"` if the path refers to the root directory.

-------------------------------------------------------------------------------
-- Gets the type of storage medium holding a file or directory, or `nil` if the
-- `path` does not exist.
-- @function [parent=#fs] getDrive
-- @param #path path The `path` of the file or directory that should be checked.
-- @return #string The type of storage medium holding the `path`, as of ComputerCraft 1.3 either `"rom"` or `"hdd"`.

-------------------------------------------------------------------------------
-- Gets the size of a file.
-- @function [parent=#fs] getSize
-- @param #path path The `path` of the file that should be checked.
-- @return #number The size of the file in bytes.

-------------------------------------------------------------------------------
-- Gets the amount of space available on the `path`.
-- @function [parent=#fs] getFreeSpace
-- @param #path path The directory `path` that should be checked.
-- @return #number The amount of space available on the path in bytes.

-------------------------------------------------------------------------------
-- Creates a directory.
-- It fails if the location already exists as a file, it silently does nothing 
-- if the location or a parent already exists as a directory and it recursively 
-- creates directories if a parent is also missing.
-- @function [parent=#fs] makeDir
-- @param #path path The `path` of the directory that should be created.

-------------------------------------------------------------------------------
-- Moves a file or directory to a new location. The parent of the new location 
-- must be a directory, `toPath` must include the target filename and cannot be 
-- only a directory to move the file into, and `toPath` itself must not already 
-- exist.
-- @function [parent=#fs] move
-- @param #path fromPath The location of the file or directory.
-- @param #path toPath The `path` the file or directory should be moved to.

-------------------------------------------------------------------------------
-- Copy a file or directory from one location to another. The parent of the new 
-- location must be a directory, `toPath` must include the target filename and 
-- cannot be only a directory to move the file into, and `toPath` itself must not 
-- already exist.
-- @function [parent=#fs] copy
-- @param #path fromPath location of the file or directory.
-- @param #path toPath `path` the file or directory should be copied to.

-------------------------------------------------------------------------------
-- Deletes a file or directory. A nonexistent target is ignored, a directory 
-- will be deleted along with all its contents.
-- @function [parent=#fs] delete
-- @param #path path `path` of the directory that should be deleted.

-------------------------------------------------------------------------------
-- Combines two paths. The new path consists of all the components of `localPath`
-- inside all the components of `basePath`. Neither `path` needs to exist, this
-- function only manipulates `strings` and does not touch the filesystem.
-- @function [parent=#fs] combine
-- @param #string basePath base path.
-- @param #string localPath path that will be appended to the base path.
-- @return #string the combined path.

-------------------------------------------------------------------------------
-- This `function` opens a file, in the mode specified in the `string` `mode`. It
-- returns a new `file` handle, or, in case of errors, `nil` plus an error `string`.
-- The `mode` `string` can be any of the following:
-- 
--  * `"r"`: read mode (the default);
--  * `"w"`: write mode;
--  * `"a"`: append mode;
--   
-- The `mode` `string` can also have a `"b"` at the end, which will open the file in
-- binary mode. 
-- @function [parent=#fs] open
-- @param #path path `path` to the file.
-- @param #string mode used to specify the open mode.
-- @return #file a `file` handle.
-- @return #nil `nil` if the mode was read-only and the file did not exist.

-------------------------------------------------------------------------------
-- Closes the `file` handle, after which it can no longer be used.
-- @function [parent=#file] close

-------------------------------------------------------------------------------
-- Reads the next line from the `file`.
-- Note: only available in mode `"r"`
-- @function [parent=#file] readLine
-- @return #string the next line read from the `file`, with the end-of-line character stripped.
-- @return #nil `nil` if there are no more lines in the `file`.

-------------------------------------------------------------------------------
-- Reads the all the text in the `file`.
-- Note: only available in mode `"r"`
-- @function [parent=#file] readAll
-- @return #string the entire rest of the `file`, with the end-of-line character on the very last line (if present) stripped.
-- @return #nil `nil` if there are no more lines in the `file`.

-------------------------------------------------------------------------------
-- Reads the remaining text or a single byte from the `file`.
-- ###Notes:  
-- >
-- > 1. Only available in mode `"rb"`
-- @function [parent=#file] read
-- @return #number the byte read from the `file`.
-- @return #nil `nil` if there are no more bytes in the `file`.

-------------------------------------------------------------------------------
-- Writes a single byte or a `string` of characters exactly as they appear in the 
-- `string` data to the `file`.
-- ###Notes:  
-- >
-- > 1. Only available in mode `"w"`, `"a"`, `"wb"` or `"ab"`
-- @function [parent=#file] write
-- @param #string data `string` that is written to the `file` (if `mode` is `"w"` or `"a"`) or `number` : byte that is written to the file (if `mode` is `"wb"` or `"ab"`).

-------------------------------------------------------------------------------
-- Writes a `string` of characters to the `file`, then appends an end-of-line character.
-- ###Notes:  
-- >
-- > 1. Only available in mode `"w"` or `"a"`
-- @function [parent=#file] writeLine
-- @param #string data `string` that is written to the `file`.


return nil