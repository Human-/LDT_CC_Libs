-------------------------------------------------------------------------------
-- ##Keys API
-- The [keys API](http://www.minecraftwiki.net/wiki/Key_codes) contains 
-- constants for all the key codes that can be returned by the "key" event:
--
-- ###Example usage:
--     local sEvent, nKey = os.pullEvent()
--     if sEvent == "key" and nKey == keys.enter then
--        Do something
--     end
-- @module keys

--------------------------------------------------------------------------------
-- Numeric value used by LWJGL to identify various keys. Implemented as a @{#number}.
-- @type keycode

-------------------------------------------------------------------------------
-- Returns the constant name for the key code provided.
-- @function [parent=#keys] getName
-- @param #keycode keycode the key code to translate.
-- @return #string the name of the keycode

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode o

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode n

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode q

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode p

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode s

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode r

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode u

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode t

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode w

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode v

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode y

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f1

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode x

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode four

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode period

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPadEquals

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPad6

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode z

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode kana

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode end

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode up

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPad8

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode right

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode home

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPadSubtract

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f8

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPadEnter

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode rightShift

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode nine

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode c

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPad0

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f4

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode capsLock

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPad7

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode b

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode rightCtrl

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode leftAlt

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode tab

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode e

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode return

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode zero

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode comma

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode d

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPad1

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode g

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f12

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode stop

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode kanji

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode pageDown

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode insert

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode eight

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPad2

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode five

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPadAdd

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode underscore

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode semiColon

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode colon

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode j

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode m

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode slash

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPad4

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode l

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode scollLock

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f10

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f7

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode six

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode space

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode leftBracket

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode yen

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode enter

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode ax

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f3

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode equals

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPadDecimal

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode two

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode leftShift

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f15

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numLock

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode minus

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode pause

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode leftCtrl

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f6

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f11

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPadComma

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode cimcumflex

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode seven

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode noconvert

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f2

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode rightAlt

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode left

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode delete

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f14

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode grave

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode three

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f13

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode apostrophe

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode backslash

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode pageUp

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPad9

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPad3

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode a

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode backspace

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode at

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode convert

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPadDivide

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode one

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode numPad5

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode multiply

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode down

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode i

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode h

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode k

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f9

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode rightBracket

-------------------------------------------------------------------------------
-- Constant to key code mapping.
-- @field  [parent=#keys] #keycode f5

return nil