rconsoleprint("...")
rconsolename("swimhack")
rconsoleclear()
local function logo()
rconsoleprint("@@RED@@")
rconsoleprint[[
                  //
                 /////
                 //////
                  ///////
                    //////
            ///      ///////
           /////       //////
]]
rconsoleprint("@@LIGHT_MAGENTA@@")
rconsoleprint[[
          ////////      ///////
        ///////////      //////
       ////// ///////     //////
     ///////    //////      //////
    //////       ///////]]
rconsoleprint("@@MAGENTA@@")
rconsoleprint[[     //////
  ///////          //////     ///////
 ///////////       ///////////////////
/////////////       /////////////////// ]]
rconsoleprint("@@WHITE@@")
rconsoleprint("swimhack\n")
rconsoleprint("\n")
end
logo()
rconsoleprint[[
    1. load swimhack / swimhub
    2. contact dev
    3. load from local storage (swimhack/swimhub.lua)
    4. exit
    ]]
while wait() do
    local theinput = rconsoleinput()
    if theinput == "1" then
        rconsoleclear()
        logo()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SwimPaste/swimhack/main/swimhub_fancyloader.lua"))()
        wait(3)
        rconsoleclear()
        logo()
        rconsoleprint[[
    1. load swimhack / swimhub
    2. contact dev
    3. load from local storage (swimhack/swimhub.lua)
    4. exit
    ]]
    elseif theinput == "2" then
        rconsoleclear()
        logo()
        rconsoleprint("    swimdroid#0188")
        wait(5)
        rconsoleclear()
        logo()
        rconsoleprint[[
    1. load swimhack / swimhub
    2. contact dev
    3. load from local storage (swimhack/swimhub.lua)
    4. exit
    ]]
    elseif theinput == "3" then
        local swimhub = readfile("swimhack/swimhub.lua")
        loadstring(swimhub)()
        wait(5)
        rconsoleclear()
        logo()
        rconsoleprint[[
    1. load swimhack / swimhub
    2. contact dev
    3. load from local storage (swimhack/swimhub.lua)
    4. exit
    ]]
    elseif theinput == "4" then
        rconsoleclear()
        break
    end
end
