-------------------------------------------------------------------------------
-- ##Paintutils API
-- The [paintutils API](http://computercraft.info/wiki/Paintutils_%28API%29) 
-- allows for loading and drawing images.
-- ###Notes:
-- >
-- > 1. paintutils is __only__ available for Advanced Computers and Advanced Monitors.
-- @module paintutils

-------------------------------------------------------------------------------
-- Returns an `image` object.
-- @function [parent=#paintutils] loadImage
-- @param fs#path path file path to the image.
-- @return #image `image` object.

-------------------------------------------------------------------------------
-- Draws an `image` at (`x`, `y`) where `image` is an `image` object.
-- @function [parent=#paintutils] drawImage
-- @param #image image `image` to be drawn.
-- @param #number x `x` coord to draw `image` at.
-- @param #number y `y` coord to draw `image` at.
-- @return #boolean `true` on success, otherwise `false`.

-------------------------------------------------------------------------------
-- Draws a pixel at (`x`, `y`) in the [`color`](colors.html)/[`colour`](colours.html) specified.
-- @function [parent=#paintutils] drawPixel
-- @param #number x `x` coord to draw pixel at.
-- @param #number y `y` coord to draw pixel at.
-- @param colors#color color [`colors`](colors.html)/[`colours`](colours.html) of the pixel.
-- @return #boolean `true` on success, otherwise `false`.

-------------------------------------------------------------------------------
-- Draws a line from (`startX`, `startY`) to (`endX`, `endY`) in the [`color`](colors.html)/[`colour`](colours.html) specified.
-- @function [parent=#paintutils] drawLine
-- @param #number startX `x` coord to begin drawing the line.
-- @param #number startY `y` coord to begin drawing the line.
-- @param #number endX `x` coord to stop drawing the line.
-- @param #number endY `y` coord to stop drawing the line.
-- @param colors#color color [`colors`](colors.html)/[`colours`](colours.html) of the line.
-- @return #boolean `true` on success, otherwise `false`.

return nil