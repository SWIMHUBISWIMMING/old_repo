local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/cat"))()
local Window = Library:CreateWindow("shithub", Vector2.new(492, 598), Enum.KeyCode.RightShift)
local AimingTab = Window:CreateTab("Games 1")
local SettingsTab = Window:CreateTab("Settings")
local charmod = AimingTab:CreateSector("hood legends", "left")
local hoodlegendsonepunch = false
local hoodlegendsnofall = false
local hoodlegendsmoneyaura = false
local hoodlegendsviewmodelcolor = 0
local hoodlegendssilentaim = false
local chatspamtoggle = false
local chatspam1toggle = false
local chatspams = {
    "gEt OuT oF tHe WaLLs 🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡 ",
    "brb taking a nap 💤💤💤 ",
    "$$$ ｎｏ ｓｃｒｉｐｔ ｉｓ ｂｅｔｔｅｒ ｔｈａｎ ｓｗｉｍｈａｃｋ (◣_◢)",
    "gonna go take a walk 🚶‍♂️🚶‍♀️🚶‍♂️🚶‍♀️ ",
    "low orbit ion cannon booting up ",
    "how does it feel to not have swimhack 🤣🤣🤣😂😂😹😹😹 ",
    "im a firing my laza! 🙀🙀🙀 ",
    "😂😂😂😂😂GAMING CHAIR😂😂😂😂😂",
    "🤯🤯🤯🤯🤯",
    "can't hear you over these stomp sounds ",
    "i'm just built different yo 🧱🧱🧱 ",
    "📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈",
    "OFF📈THE📈CHART📈",
    "KICK HIM 🦵🦵🦵",
    "THE AMOUNT THAT I CARE --> 🤏 ",
    "🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏",
    "SORRY I HURT YOUR ROBLOX EGO BUT LOOK -> 🤏 I DON'T CARE ",
    'table.find(charts, "any other script other than swimhack") -> nil 💵💵💵',
    "LOL WHAT ARE YOU SHOOTING AT BRO ",
    "🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥",
    "BRO UR SHOOTING AT LIKE NOTHING LOL UR A CLOWN",
    "🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡",
    "ARE U USING FPS GUI? 🤡🤡🤡🤡🤡",
    "'FPS GUI IS THE BEST' 🤡 PASTED LINES OF CODE WITH UNREFERENCED AND UNINITIALIZED VARIABLES AND PEOPLE HAVE NO IDEA WHY IT'S NOT WORKING ",
    "GIVE UP BECAUSE YOU'RE NOT GOING TO BE ABLE TO KILL ME OR WIN LOL",
    "Can't hear you over these bands ",
    "I’m better than you in every way 🏆",
    "I’m smarter than you (I can verify this because I took an online IQ test and got 150) 🧠",
    "my personality shines and it’s generally better than your personality. Yours has flaws",
    "I’m more ambitious than you 🏆💰📣",
    "I’m more funny than you (long shot) ",
    "I’m less turbulent and more assertive and calm than you (proof) 🎰",
    "I’m stronger than you 💪 🦵 ",
    "my attention span is greater and better than yours (proven from you not reading entire list) ",
    "I am more creative and expressive than you will ever be 🎨 🖌",
    "I’m a faster at typing than you 💬 ",
    "In 30 minutes, I will have lifted more weights than you can solve algebraic equations 📓 ",
    "By the time you have completed reading this very factual and groundbreaking evidence that I am truly more superior, thoughtful, and presentable than you are, I will have prospered (that means make negotiable currency or the American Dollar) more than your entire family hierarchy will have ever made in its time span 💰",
    "I am better looking than you are 👨",
    "I get along with women easier than you do 👩‍🚀", -- end
    "I am very good at debating 🗣🧑‍⚖️ ",
    "I hit more head than you do 🏆", -- end
    "I win more hvh than you do 🏆", -- end yes this is actually how im going to fix this stupid shit
    "I am more victorious than you are 🏆",
    "Due to my agility, I am better than you at basketball, and all of your favorite sports or any sport for that matter (I will probably break your ankles in basketball by pure accident) ",
    "WE THE BEST CHEATS 🔥🔥🔥🔥 ",
    "Hood Legends Hack Unlook Gamepass And Aimbot ",
    "hood legends 🔨 🗻 down 🏚  ⏬ STOP CRASHING HOOD LEGENDS!! 🤣",
    "FPS GUI 🤣🤣🤣💕",
    "interpolation DWORD* C++ int 32 bit programming F# c# coding",
    "Mad?",
    "are we in a library? 🤔 📚 cause you're 👉 in hush 🤫 mode 🤣 😂",
    "please help, my name is john escopetta, normally I would not do this, but under the circumstances I must ask for assistance, please send 500 United States dollars to my paypal, please",
    "🏀🏀 did i break your ankles brother ",
    "he has access to HACK SERVER AND CHANGE WEIGHTS!!!!! STOOOOOOP 😡😒😒😡😡😡😡😡",
    '"cmon dude don\'t use that" you asked for it LOL ',
    "ima just quit mid hvh 🚶‍♀️ ",
    "BABY 😭",
    "BOO HOO 😢😢😭😭😭 STOP CRYING D∪MBASS",
    "BOO HOO 😢😢😭😭😭 STOP CRYING ",
    "🤏 <-- just to elaborate that i have no care for this situation or you at all, kid (not that you would understand anyways, you're too stupid to understand what i'm saying to begin with)",
    "before swimhack 😭 📢 after swimhack 😁😁😜 don't be like the person who doesn't have swimhack",
    "MADE YOU LOOK ",
    "LOOK BRO LOOK LOOK AT ME ",
    " S W I M ",
    "I HAVE AJAX YALL BETTER WATCH OUT OR YOU'LL DIE, WATCH WHO YOU'RE SHOOTING",
    "WATCH YOUR STEP KID",
    "BROOOO HE HAS GOD MODE BRO HE HAS GOD MODE 🚶‍♀️🚶‍♀️🚶‍♀️😜😂😂🤦‍♂️🤦‍♂️😭😭😭👶",
    '"guys what script has auto shooting"',
    "god i wish i had swimhack..... 🙏🙏🥺🥺🥺 plzzzzz brooooo 🛐 GIVE IT🛐🛐",
    "buh bot",
    "ban him!!!!!!! 😠 ban BAN BAN BAN BAN HIM!!!!!!!!! 😠 😢 BAN !!!!! PRESS ; WHY DIDNT U PRESS ; LOL!!!!!! 😭 ", -- shufy made this
    "swimhack omg omggg omggg its swimhack its swimhack OMGGG!!!  🙏🙏🥺🥺😌😒😡",
    "HOw do you get ACCESS to this swimhack ", -- end
    "I NEED ACCESS 🔑🔓 TO SWIMHACK 🤖📃📃📃 👈 THIS THING CALLED SWIMHACK SCRIPT, I NEED IT ",
    '"this god mode guy is annoying", Pr0blematicc says as he loses roblox 1v1 ',
    "you can call me crimson chin 🦹‍♂️🦹‍♂️ cause i turned your screen red 🟥🟥🟥🟥                                     ",
    "clipped that 🤡 ",
    "Clipped and Uploaded. 🤡",
    "nodus client slime castle crashers minecraft dupeing hack wizardhax xronize grief ... Tlcharger minecraft crack Oggi spiegheremo come creare un ip grabber!",
    "Off synonyme syls midge, smiled at mashup 2 mixed in key free download procom, ... Okay, love order and chaos online gameplayer hack amber forcen ahdistus",
    "ｓｔａｙ ｍａｄ， ｓｔａｙ ｓｗｉｍｈａｃｋ ｌｅｓｓ $ ",
    "swimhack does not relent ",
}
local chatspams1 = {
    "ｎｏ ｓｃｒｉｐｔ ｉｓ ｂｅｔｔｅｒ ｔｈａｎ ｓｗｉｍｈａｃｋ (◣_◢)",
    "Ｉ＇ｄ ｔｅｌｌ ｙｏｕ ｔｏ ｓｈｏｏｔ ｙｏｕｒｓｅｌｆ， ｂｕｔ Ｉ ｂｅｔ ｙｏｕｒ ｍｉｓｓ",
    "Ｃｈｏｏｓｅ ｙｏｕｒ ｅｘｃｕｓｅ： １．Ｌａｇｓ ｜ ２．Ｎｅｗ ｍｏｕｓｅ ｜ ３．Ｌｏｗ ＦＰＳ ｜ ４．Ｈａｃｋｅｒ ｜ ５．Ｌｕｃｋｅｒ ｜ ６．Ｈｉｔｂｏｘ",
    "Ｔｈｅｒｅ ａｒｅ ａｂｏｕｔ ３７ ｔｒｉｌｌｉｏｎ ｃｅｌｌｓ ｗｏｒｋｉｎｇ ｔｏｇｅｔｈｅｒ ｉｎ ｙｏｕｒ ｂｏｄｙ ｒｉｇｈｔ ｎｏｗ， ａｎｄ ｙｏｕ ａｒｅ ｄｉｓａｐｐｏｉｎｔｉｎｇ ｅｖｅｒｙ ｓｉｎｇｌｅ ｏｎｅ ｏｆ ｔｈｅｍ．",
    "Ｉ＇ｍ ｎｏｔ ｔｒａｓｈ ｔａｌｋｉｎｇ， Ｉ＇ｍ ｔａｌｋｉｎｇ ｔｏ ｔｒａｓｈ．",
    "Ｙｏｕ ｓｈｏｕｌｄ ｌｅｔ ｙｏｕｒ ｃｈａｉｒ ｐｌａｙ， ａｔ ｌｅａｓｔ ｉｔ ｋｎｏｗｓ ｈｏｗ ｔｏ ｓｕｐｐｏｒｔ．",
    "Ｉ ｂｅｔ ｙｏｕｒ ｂｒａｉｎ ｆｅｅｌｓ ａｓ ｇｏｏｄ ａｓ ｎｅｗ， ｓｅｅｉｎｇ ｔｈａｔ ｙｏｕ ｎｅｖｅｒ ｕｓｅ ｉｔ．",
    "Ｙｏｕ ｓｈｏｕｌｄ ｔｕｒｎ ｔｈｅ ｇａｍｅ ｏｆｆ． Ｊｕｓｔ ｗａｌｋ ｏｕｔｓｉｄｅ ａｎｄ ｆｉｎｄ ｔｈｅ ｎｅａｒｅｓｔ ｔｒｅｅ， ｔｈｅｎ ａｐｏｌｏｇｉｓｅ ｔｏ ｉｔ ｆｏｒ ｗａｓｔｉｎｇ ｓｏ ｍｕｃｈ ｏｘｙｇｅｎ．",
    "Ｙｏｕ＇ｒｅ ｔｈｅ ｈｕｍａｎ ｅｑｕｉｖａｌｅｎｔ ｏｆ ａ ｐａｒｔｉｃｉｐａｔｉｏｎ ａｗａｒｄ．",
    "Ｙｏｕ＇ｒｅ ａｎ ｉｎｓｐｉｒａｔｉｏｎ ｆｏｒ ｂｉｒｔｈ ｃｏｎｔｒｏｌ．",
    "Ｉ＇ｍ ｓｕｒｅ ｙｏｕｒ ｂｏｄｙｐｉｌｌｏｗ ｉｓ ｖｅｒｙ ｐｒｏｕｄ ｏｆ ｙｏｕ．",
    "Ｙｏｕｒ ａｉｍ ｉｓ ｓｏ ｐｏｏｒ ｔｈａｔ ｐｅｏｐｌｅ ｈｅｌｄ ａ ｆｕｎｄｒａｉｓｅｒ ｆｏｒ ｉｔ",
    "Ｉｆ Ｉ ｊｕｍｐｅｄ ｆｒｏｍ ｙｏｕｒ ｅｇｏ ｔｏ ｙｏｕｒ ｉｎｔｅｌｌｉｇｅｎｃｅ， Ｉｄ ｄｉｅ ｏｆ ｓｔａｒｖａｔｉｏｎ ｈａｌｆ－ｗａｙ ｄｏｗｎ．",
    "Ｙｏｕ ｄｏｎ＇ｔ ｄｅｓｅｒｖｅ ｔｏ ｐｌａｙ ｔｈｉｓ ｇａｍｅ． Ｇｏ ｂａｃｋ ｔｏ ｐｌａｙｉｎｇ ｗｉｔｈ ｃｒａｙｏｎｓ．",
    "Ｓｏｍｅ ｂａｂｉｅｓ ｗｅｒｅ ｄｒｏｐｐｅｄ ｏｎ ｔｈｅｉｒ ｈｅａｄｓ ｂｕｔ ｙｏｕ ｗｅｒｅ ｃｌｅａｒｌｙ ｔｈｒｏｗｎ ａｔ ａ ｗａｌｌ",
}
function moneyaura()
    spawn(function()
        while hoodlegendsmoneyaura do
            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v.Name:sub(1,3) == "100" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 40 then
                    fireclickdetector(v.ClickDetector)
                end
                if v.Name:sub(1,3) == "250" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 40 then
                    fireclickdetector(v.ClickDetector)
                end
                if v.Name:sub(1,3) == "400" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 40 then
                    fireclickdetector(v.ClickDetector)
                end
                if v.Name:sub(1,3) == "500" and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 40 then
                    fireclickdetector(v.ClickDetector)
                end
            end
            wait()
        end
    end)
end
function chatspam()
    spawn(function()
        while chatspamtoggle do
            task.wait(3)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chatspams[math.random(1,#chatspams)],"All")
        end
    end)
end
function chatspam1()
    spawn(function()
        while chatspam1toggle do
            task.wait(3)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chatspams1[math.random(1,#chatspams1)],"All")
        end
    end)
end
--> VARIABLES <--
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()
local camera = game:GetService("Workspace").CurrentCamera

--> FUNCTIONS <--

function getPlayerClosestToMouse()
    local target = nil
    local maxDist = 1000
    for _,v in pairs(plrs:GetPlayers()) do
        if v.Character then
            if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and plr.Name ~= v.Name then
                local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                if dist < maxDist and vis then
                    local torsoPos = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    local torsoDist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(torsoPos.X, torsoPos.Y)).magnitude
                    local headPos = camera:WorldToViewportPoint(v.Character.Head.Position)
                    local headDist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(headPos.X, headPos.Y)).magnitude
                    target = v.Character.Head
                    maxDist = dist
                end
            end
        end
    end
    return target
end

--> Hooking to the remote <--
charmod:AddToggle("one punch man mode", false, function(first)
    hoodlegendsonepunch = first
end)
charmod:AddToggle("money aura", false, function(first)
    hoodlegendsmoneyaura = first
    moneyaura()
end)
charmod:AddToggle("no fall damage", false, function(first)
    hoodlegendsnofall = first
end)
charmod:AddToggle("chat spam", false, function(first)
    chatspamtoggle = first
    chatspam()
end)
charmod:AddToggle("chat spam 1", false, function(first)
    chatspam1toggle = first
    chatspam1()
end)
charmod:AddToggle("silent aim", false, function(first)
    hoodlegendssilentaim = first
end)
local ColorToggle = charmod:AddToggle("viewmodel color", false, function(e)
    if e then
        for i, v in pairs(game:GetService("Camera").Viewmodel:GetChildren()) do
            if v.ClassName == "MeshPart" then
                v.Material = "ForceField"
            end
        end
    else
        for i, v in pairs(game:GetService("Camera").Viewmodel:GetChildren()) do
            if v.ClassName == "MeshPart" then
                v.Material = "SmoothPlastic"
            end
        end
    end
end)

ColorToggle:AddColorpicker(Color3.fromRGB(75, 0,130), function(ztx)
   hoodlegendviewmodelcolor = ztx
   print(hoodlegendviewmodelcolor)
end)
SettingsTab:CreateConfigSystem("left") --this is the config system

local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldNamecall = gmt.__namecall
gmt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if tostring(method) == "FireServer" then
        if tostring(self) == "FallDamage" and hoodlegendsnofall then
            args[1] = 1
            return self.FireServer(self, unpack(args))
        elseif tostring(self) == "Melee" and hoodlegendsonepunch then
            args[7] = true
            return self.FireServer(self, unpack(args))
        elseif tostring(self) == "ShootGun" and hoodlegendssilentaim then
            args[1][1][2] = getPlayerClosestToMouse().Position
            args[1][1][4] = getPlayerClosestToMouse()
            return self.FireServer(self, unpack(args))
        end
    elseif method == "Kick" then
        return
    end
    return oldNamecall(self, ...)
end)
