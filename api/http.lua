-------------------------------------------------------------------------------
-- ##HTTP API
-- The [http API](http://computercraft.info/wiki/HTTP_%28API%29) allows 
-- interfacing with websites and downloading from them. 
-- ###Notes:  
-- >
-- > 1. The HTTP API __must__ be enabled in ComputerCraft.cfg before
-- being used. To enable it open /config/ComputerCraft.cfg and 
-- change enableAPI_http=false to enableAPI_http=true.
-- @module http

-------------------------------------------------------------------------------
-- Sends a HTTP request to the website.
-- ###Notes:  
-- >
-- > 1. Returns event "http_success" on success.
-- > 2. Returns event "http_failure" on failure.
-- @usage http.request("http://pastebin.com/raw.php?i=Tk19jv43")
-- local requesting = true
-- while requesting do
--    local event, url, sourceText = os.pullEvent()
--    if event == "http_success" then
--       local respondedText = sourceText.readAll()
--       print(respondedText)
--       requesting = false
--    elseif event == "http_failure" then
--       print("Server didn't respond.")
--       requesting = false
--    end
-- end
-- @function [parent=#http] request
-- @param #string url the url to query.
-- @param ... postData any data required by the website.

-------------------------------------------------------------------------------
-- Sends a HTTP GET request to a website.
-- Returns a `table` similar to that returned by an @{fs#fs.open}() call, used to handle
-- the response of the server on success or `nil` on failure.
-- @usage local sExample = http.get("http://example.com/") --Get contents of page
-- write(sExample.readAll()) --Read and print contents of page
-- sExample.close() --Just in case
-- @function [parent=#http] get
-- @param #string url the url to query.
-- @return #table the page source of the requested resource.
-- @return #nil `nil` on failure.

-------------------------------------------------------------------------------
-- Sends a HTTP POST request to a website.
-- Return the response of the server or `nil` on failure.
-- @function [parent=#http] post
-- @param #string url the url to query.
-- @param #string postData any POST data required by the website.
-- @return #table the server response.
-- @return #nil `nil` on failure.

return nil