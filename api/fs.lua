-------------------------------------------------------------------------------
-- The FS API allows you to mess around with the filesystem.
--
-- Path Names
-- @module fs 

-------------------------------------------------------------------------------
-- Returns a list of all the files contained in a directory, in table format.
-- @function [parent=#io] list
-- @param #path path Path of the directory that should be listed.
-- @return #table the default input file handle.

-------------------------------------------------------------------------------
-- Equivalent to `file:flush` over the default output file.
-- @function [parent=#io] flush

-------------------------------------------------------------------------------
-- When called with a file name, it opens the named file (in text mode),
-- and sets its handle as the default input file. When called with a file
-- handle, it simply sets this file handle as the default input file. When
-- called without parameters, it returns the current default input file.
-- 
-- In case of errors this function raises the error, instead of returning an
-- error code.
-- @function [parent=#io] input
-- @param file a filename or a file handle which will used as default input. (optional)
-- @return #file the default input file handle.

-------------------------------------------------------------------------------
-- Opens the given file name in read mode and returns an iterator function
-- that, each time it is called, returns a new line from the file. Therefore,
-- the construction 
-- 
--     for line in io.lines(filename) do *body* end
-- will iterate over all lines of the file. When the iterator function detects
-- the end of file, it returns nil (to finish the loop) and automatically
-- closes the file.
-- 
-- The call `io.lines()` (with no file name) is equivalent to
-- `io.input():lines()`; that is, it iterates over the lines of the default
-- input file. In this case it does not close the file when the loop ends.
-- @function [parent=#io] lines
-- @param a filename or a file handle. (default value is `io.input()`)

-------------------------------------------------------------------------------
-- This function opens a file, in the mode specified in the string `mode`. It
-- returns a new file handle, or, in case of errors, nil plus an error message.
-- The `mode` string can be any of the following:
-- 
--  * _"r"_: read mode (the default);
--  * _"w"_: write mode;
--  * _"a"_: append mode;
--  * _"r+"_: update mode, all previous data is preserved;
--  * _"w+"_: update mode, all previous data is erased;
--  * _"a+"_: append update mode, previous data is preserved, writing is only
--   allowed at the end of file.
--   
-- The `mode` string can also have a '`b`' at the end, which is needed in
-- some systems to open the file in binary mode. This string is exactly what
-- is used in the standard C function `fopen`.
-- @function [parent=#io] open
-- @param #string filename path to the file. 
-- @param #string mode used to specify the open mode.
-- @return #file a file handle.

-------------------------------------------------------------------------------
-- Similar to `io.input`, but operates over the default output file.
-- @function [parent=#io] output
-- @param file a filename or a file handle which will used as default output. (optional)
-- @return #file the default ouput file handle.

-------------------------------------------------------------------------------
-- Starts program `prog` in a separated process and returns a file handle
-- that you can use to read data from this program (if `mode` is `"r"`,
-- the default) or to write data to this program (if `mode` is `"w"`).
-- 
-- This function is system dependent and is not available on all platforms.
-- @function [parent=#io] popen
-- @param #string prog the program to start.
-- @param #string mode used to specify the open mode.
-- @return #file a file handle used to read from or write to the program `prog`.

-------------------------------------------------------------------------------
-- Equivalent to `io.input():read`.
-- @function [parent=#io] read
-- @param format

-------------------------------------------------------------------------------
-- io.stderr: Standard error.
-- @field [parent=#io] #file stderr

-------------------------------------------------------------------------------
-- io.stdin: Standard in.
-- @field [parent=#io] #file stdin

-------------------------------------------------------------------------------
-- io.stdout: Standard out.
-- @field [parent=#io] #file stdout

-------------------------------------------------------------------------------
-- Returns a handle for a temporary file. This file is opened in update
-- mode and it is automatically removed when the program ends.
-- @function [parent=#io] tmpfile
-- @return #file a file handle for a temporary file.

-------------------------------------------------------------------------------
-- Checks whether `obj` is a valid file handle. Returns the string `"file"`
-- if `obj` is an open file handle, `"closed file"` if `obj` is a closed file
-- handle, or nil if `obj` is not a file handle.
-- @function [parent=#io] type
-- @param obj

-------------------------------------------------------------------------------
-- Equivalent to `io.output():write`.
-- @function [parent=#io] write
-- @param ...

-------------------------------------------------------------------------------
-- A file handle.
-- @type #file
 
-------------------------------------------------------------------------------
-- Closes `file`. Note that files are automatically closed when their
-- handles are garbage collected, but that takes an unpredictable amount of
-- time to happen.
-- @function [parent=#file] close
-- @param self

-------------------------------------------------------------------------------
-- Saves any written data to `file`.
-- @function [parent=#file] flush
-- @param self

-------------------------------------------------------------------------------
-- Returns an iterator function that, each time it is called, returns a
-- new line from the file. Therefore, the construction
-- 
--     for line in file:lines() do *body* end
-- will iterate over all lines of the file. (Unlike `io.lines`, this function
-- does not close the file when the loop ends.)
-- @function [parent=#file] lines
-- @param self

-------------------------------------------------------------------------------
-- Reads the file `file`, according to the given formats, which specify
-- what to read. For each format, the function returns a string (or a number)
-- with the characters read, or nil if it cannot read data with the specified
-- format. When called without formats, it uses a default format that reads
-- the entire next line (see below).
-- The available formats are
-- 
--   * _"*n"_: reads a number; this is the only format that returns a number
--   instead of a string.
--   * _"*a"_: reads the whole file, starting at the current position. On end of
--   file, it returns the empty string.
--   * _"*l"_: reads the next line (skipping the end of line), returning nil on
--   end of file. This is the default format.
--   * _number_: reads a string with up to this number of characters, returning
--   nil on end of file. If number is zero, it reads nothing and returns an
--   empty string, or nil on end of file.
-- @function [parent=#file] read
-- @param self
-- @param format _"*n"_, _"*a"_, _"*l"_ or a number.
-- @return A string (or a number) with the characters read, or nil if it cannot read data with the specified format.
 
-------------------------------------------------------------------------------
-- Sets and gets the file position. It is measured from the beginning of the
-- file, to the position given by `offset` plus a base specified by the string
-- `whence`, as follows:
-- 
--  * `"set"`: base is position 0 (beginning of the file);
--  * `"cur"`: base is current position;
--  * `"end"`: base is end of file;
--  
-- In case of success, function `seek` returns the final file position,
-- measured in bytes from the beginning of the file. If this function fails,
-- it returns nil, plus a string describing the error.
-- The default value for `whence` is `"cur"`, and for `offset` is 0. Therefore,
-- the call `file:seek()` returns the current file position, without changing
-- it; the call `file:seek("set")` sets the position to the beginning of the
-- file (and returns 0); and the call `file:seek("end")` sets the position
-- to the end of the file, and returns its size.
-- @function [parent=#file] seek
-- @param self
-- @param #string whence  `"set"`, `"cur"` or `"end"` (default value is `"cur"`)
-- @param #number offset offset of end position. (default value is 0)
-- @return #number the final file position in bytes, if it succeed.
-- @return #nil, #string an error message, if it failed.

-------------------------------------------------------------------------------
-- Sets the buffering mode for an output file. There are three available
-- modes:
--
--  * `"no"` : no buffering; the result of any output operation appears immediately.
--  * `"full"` : full buffering; output operation is performed only when the
--   buffer is full (or when you explicitly `flush` the file (see `io.flush`)).
--  * `"line"` : line buffering; output is buffered until a newline is output or
--   there is any input from some special files (such as a terminal device).
--   
-- For the last two cases, `size` specifies the size of the buffer, in
-- bytes. The default is an appropriate size.
-- @function [parent=#file] setvbuf
-- @param self
-- @param #string mode the buffering mode : `"no"`, `"full"` or `"line"`.
-- @param #number size the size of the buffer.(default value is an appropriate size)


-------------------------------------------------------------------------------
-- Writes the value of each of its arguments to the `file`. The arguments
-- must be strings or numbers. To write other values, use `tostring` or
-- `string.format` before `write`.
-- @function [parent=#file] write
-- @param self
-- @param ... must be strings or a numbers.

return nil