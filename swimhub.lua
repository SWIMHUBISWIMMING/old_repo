---@diagnostic disable: lowercase-global, deprecated
local curver, version = "v0.0.7", loadstring(game:HttpGet("https://raw.githubusercontent.com/SwimPaste/swimhack/main/version"))()
if curver ~= version then
	output("please reopen game and update swimhack")
	return
end
local isusingfancyloader = false
local output = rconsoleprint or print
local repo = 'https://raw.githubusercontent.com/SwimPaste/swimhack/main/'
local Library = loadstring(game:HttpGet(repo .. 'newlib/swimhub'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'newlib/theme'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'newlib/save'))()
if isusingfancyloader then
    output(" [ 1/5 ] loaded library\n")
end
local Window = Library:CreateWindow({
    Title = 'swimhub',
    Center = true,
    AutoShow = true,
    TabPadding = 8
})
local Tabs = {
    Main = Window:AddTab('Games 1'),
    Misc = Window:AddTab('Misc'),
    Settings = Window:AddTab('Settings'),
}
local HoodLegends = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(10433018628).Name)
local Riot = Tabs.Main:AddRightGroupbox(game:GetService("MarketplaceService"):GetProductInfo(6664138223).Name)
local MeleeAndBloodz = Tabs.Main:AddLeftGroupbox(game:GetService("MarketplaceService"):GetProductInfo(6982272547).Name)
local Ohio = Tabs.Main:AddRightGroupbox(game:GetService("MarketplaceService"):GetProductInfo(7239319209).Name)
local TowerOfHell = Tabs.Main:AddRightGroupbox(game:GetService("MarketplaceService"):GetProductInfo(1962086868).Name)
local Misc = Tabs.Misc:AddLeftGroupbox('Misc')
local movetab = Tabs.Misc:AddRightGroupbox('movement')
local debugtab = Tabs.Misc:AddLeftGroupbox('debug')
local stuffz = Tabs.Settings:AddLeftGroupbox('stuffz')


local othergames = {
    meeleandblood = {
        killaura = false,
        killaura1 = false,
        killauradist = 0,
        antiragdoll = false,
        pingspoof = false,
        godmode = false,
    },
    toh = {}
}
local ohio = {
    onepunch = false,
    moneyaura = false,
    moneyauraexp = false,
    antimod = false,
    antimodoldpos = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position,
    atmesp = false,
    cashregisteresp = false,
}
local riot = {
    killaura = false,
    killdist = 0,
    cframemod = false,
    cframeup = 0,
    cframerl = 0,
}
local hoodlegends = {
    onepunch = false,
    nofall = false,
    moneyaura = false,
    moneyauradist = 0,
    silentaim = false,
    silentaimpercent = 100,
    killaura = false
}
local varsglobal = {
    keybindxy = 0,
    keybindx = 0,
    showkeybind = false,
    chatspamtoggle = false,
    chatspam1toggle = false,
    injectedchatspamtoggle = false,
    speenx = 0,
    speeny = 0,
    speenz = 0,
    tpwalkspeed = 0,
    chatspamone = {
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
        "BOO HOO 😢😢😭😭😭 STOP CRYING 🐍🔥",
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
        "swim hub",
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
    },
    chatspamtwo = {
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
    },
    injectedchatspam = {
        "EZZZ KID UR BAD HAHAHAHAHAH",
        " 'CLIPPED UR GETTING BANNED' 🤡🤡",
        "stop missing your shots like virginia in girlz place 💯",
        "EXECUTED ON TOP WITH THE BEST SCRIPTS⚡😈🔥",
        "table.find(clans, \"any clan better than executed\") -> nil",
        "THE BEST VAULT EXECUTED😈🔥⚡⚡",
        "GET 💯 EXECUTED ⚡ ON 😈",
        "🤮STOP BEING SUCH A NOOB🤮 🤩GET EXECUTED ON🤩",
        "Executed is better than any other clan⚡🏆",
        "Executed is best vault with own coder🏆",
        "WE THE BEST SCRIPT⚡🏆 (sponsored by executed)",
        "Clipped and Uploaded. 🤡",
        "before executed 📢 after executed don't be like the person who doesn't joined executed",
        "BOO HOO 😢😢😭😭😭 STOP CRYING ⚡🔥",
        "ban him!!!!!!! 😠 ban BAN BAN BAN BAN HIM!!!!!!!!! 😠 😢 BAN !!!!! WHY DIDNT BAN HIM!!!!!! 😭",
        "😂😂😂😂😂GAMING CHAIR😂😂😂😂😂",
        "can't hear you over these hitsounds 😈⚡",
        "SORRY I HURT YOUR ROBLOX EGO BUT LOOK -> 🤏 I DON'T CARE ",
        "BAN HIM 🔨🔨🔨",
        '"guys what script has best lock"',
        "⚡ GET EXECUTED ON KID LOL ⚡",
        "⚡🔥😈",
        "🏀🏀 did i break your ankles brother ",
        "FPS GUI 🤣🤣🤣💕",
        "OFF📈THE📈CHART📈",
        "tUrN oFf yOuR lOcK🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡",
        "executed on top ⚡😈",
        "🗣📢 consider joining our clan ⚡",
        "🦊i love furry ( swimhack owner )",
        "♿🔥 BEST BRAIN DAMAGE SCRIPTER ( swimmy ) ♿🔥"
    }
}
if isusingfancyloader then
    output(" [ 2/5 ] loaded locals\n")
end
local GUI_keybind = Instance.new("ScreenGui")
local GUI_Frame = Instance.new("Frame")
local GUI_TextLabel = Instance.new("TextLabel")
local GUI_Frame_2 = Instance.new("Frame")
local GUI_UIGradient = Instance.new("UIGradient")
local GUI_FrameHL = Instance.new("Frame")
local GUI_HLsilent = Instance.new("TextLabel")
local GUI_FrameMNBLOOD = Instance.new("Frame")
local GUI_MNBpunch = Instance.new("TextLabel")
local GUI_MNBweapon = Instance.new("TextLabel")
GUI_keybind.Name = "GUI_keybind"
GUI_keybind.Parent = (game:GetService("CoreGui") or gethui())
GUI_keybind.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
GUI_Frame.Name = "GUI_Frame"
GUI_Frame.Parent = GUI_keybind
GUI_Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GUI_Frame.BackgroundTransparency = 0.300
GUI_Frame.BorderSizePixel = 0
GUI_Frame.Position = UDim2.new(0.410112351, 0, 0.163414627, 0)
GUI_Frame.Size = UDim2.new(0, 140, 0, 20)
GUI_TextLabel.Name = "GUI_TextLabel"
GUI_TextLabel.Parent = GUI_Frame
GUI_TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GUI_TextLabel.BackgroundTransparency = 1.000
GUI_TextLabel.BorderSizePixel = 0
GUI_TextLabel.Size = UDim2.new(1, 0, 1, 0)
GUI_TextLabel.Font = Enum.Font.Code
GUI_TextLabel.Text = "keybinds"
GUI_TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
GUI_TextLabel.TextSize = 14.000
GUI_Frame_2.Name = "GUI_Frame"
GUI_Frame_2.Parent = GUI_Frame
GUI_Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GUI_Frame_2.BorderSizePixel = 0
GUI_Frame_2.Position = UDim2.new(0, 0, 0, -2)
GUI_Frame_2.Size = UDim2.new(0, 140, 0, 2)
GUI_UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 132, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 0, 179)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 0))}
GUI_UIGradient.Name = "GUI_UIGradient"
GUI_UIGradient.Parent = GUI_Frame_2
GUI_FrameHL.Name = "GUI_FrameHL"
GUI_FrameHL.Parent = GUI_Frame
GUI_FrameHL.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GUI_FrameHL.BackgroundTransparency = 1.000
GUI_FrameHL.BorderSizePixel = 0
GUI_FrameHL.Position = UDim2.new(0, 0, 1, 0)
GUI_FrameHL.Size = UDim2.new(0, 140, 0, 20)
GUI_HLsilent.Name = "GUI_HLsilent"
GUI_HLsilent.Parent = GUI_FrameHL
GUI_HLsilent.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GUI_HLsilent.BackgroundTransparency = 0.300
GUI_HLsilent.BorderSizePixel = 0
GUI_HLsilent.Size = UDim2.new(1, 0, 1, 0)
GUI_HLsilent.Font = Enum.Font.Code
GUI_HLsilent.Text = "silent aim: [ON]"
GUI_HLsilent.TextColor3 = Color3.fromRGB(255, 255, 255)
GUI_HLsilent.TextSize = 14.000
GUI_FrameMNBLOOD.Name = "GUI_FrameMNBLOOD"
GUI_FrameMNBLOOD.Parent = GUI_Frame
GUI_FrameMNBLOOD.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GUI_FrameMNBLOOD.BackgroundTransparency = 1.000
GUI_FrameMNBLOOD.BorderSizePixel = 0
GUI_FrameMNBLOOD.Position = UDim2.new(-0, 0, 1, 0)
GUI_FrameMNBLOOD.Size = UDim2.new(0, 140, 0, 20)
GUI_MNBpunch.Name = "GUI_MNBpunch"
GUI_MNBpunch.Parent = GUI_FrameMNBLOOD
GUI_MNBpunch.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GUI_MNBpunch.BackgroundTransparency = 0.300
GUI_MNBpunch.BorderSizePixel = 0
GUI_MNBpunch.Size = UDim2.new(1, 0, 1, 0)
GUI_MNBpunch.Font = Enum.Font.Code
GUI_MNBpunch.Text = "punchaura: [ON]"
GUI_MNBpunch.TextColor3 = Color3.fromRGB(255, 255, 255)
GUI_MNBpunch.TextSize = 14.000
GUI_MNBweapon.Name = "GUI_MNBweapon"
GUI_MNBweapon.Parent = GUI_FrameMNBLOOD
GUI_MNBweapon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GUI_MNBweapon.BackgroundTransparency = 0.300
GUI_MNBweapon.BorderSizePixel = 0
GUI_MNBweapon.Position = UDim2.new(0, 0, 1, 0)
GUI_MNBweapon.Size = UDim2.new(1, 0, 1, 0)
GUI_MNBweapon.Font = Enum.Font.Code
GUI_MNBweapon.Text = "weaponaura: []"
GUI_MNBweapon.TextColor3 = Color3.fromRGB(255, 255, 255)
GUI_MNBweapon.TextSize = 14.000
local function OTYNNNS_fake_script() -- GUI_Frame.Dragify 
	local script = Instance.new('LocalScript', GUI_Frame)
	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 1
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(OTYNNNS_fake_script)()
local function MHWMXGW_fake_script() -- GUI_Frame.LocalScript 
	local script = Instance.new('LocalScript', GUI_Frame)
	if game.PlaceId == 10433018628 then
		script.Parent.GUI_FrameHL.Visible = true
		script.Parent.GUI_FrameMNBLOOD.Visible = false
	elseif game.PlaceId == 6982272547 then
		script.Parent.GUI_FrameHL.Visible = false
		script.Parent.GUI_FrameMNBLOOD.Visible = true
	end
end
coroutine.wrap(MHWMXGW_fake_script)()
function updatekeys()
	if varsglobal.showkeybind then
	    GUI_keybind.Enabled = true
		if hoodlegends.silentaim then
			GUI_HLsilent.Text = "silent aim: [ON]"
		else
			GUI_HLsilent.Text = "silent aim: [OFF]"
		end
        if othergames.meeleandblood.killaura then
            GUI_MNBpunch.Text = "punchaura: [ON]"
        else
            GUI_MNBpunch.Text = "punchaura: [OFF]"
        end
        if othergames.meeleandblood.killaura1 then
            GUI_MNBweapon.Text = "weaponaura: [ON]"
        else
            GUI_MNBweapon.Text = "weaponaura: [OFF]"
        end
	else
	    GUI_keybind.Enabled = false
	end
end
if isusingfancyloader then
    output(" [ 3/5 ] loaded keylist\n")
end
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()
local camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")

ohio.atmespfun = function(drop)
    local dropesp = Drawing.new("Text")
    dropesp.Visible = false
    dropesp.Center = true
    dropesp.Outline = true
    dropesp.Font = 2
    dropesp.Color = Color3.fromRGB(255,255,255)
    dropesp.Size = 13
    local renderstepped
    renderstepped = RunService.RenderStepped:Connect(function()
        if ohio.atmesp and drop and game:GetService("Workspace").Game.Props.ATM:FindFirstChild(drop.Name) and drop:FindFirstChild("Main") then
            local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop.Main.Position)
            if drop_onscreen then
                dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                dropesp.Text = drop.Name
                dropesp.Visible = true
            else 
                dropesp.Visible = false
            end
        else
            dropesp.Visible = false
            dropesp:Remove()
            renderstepped:Disconnect()
        end
    end)
end
ohio.cashregespfun = function(drop)
    local dropesp = Drawing.new("Text")
    dropesp.Visible = false
    dropesp.Center = true
    dropesp.Outline = true
    dropesp.Font = 2
    dropesp.Color = Color3.fromRGB(255,255,255)
    dropesp.Size = 13
    local renderstepped
    renderstepped = RunService.RenderStepped:Connect(function()
        if ohio.cashregisteresp and drop and game:GetService("Workspace").Game.Props.CashRegister:FindFirstChild(drop.Name) and drop:FindFirstChild("Main") then
            local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop.Main.Position)
            if drop_onscreen then
                dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                dropesp.Text = drop.Name
                dropesp.Visible = true
            else 
                dropesp.Visible = false
            end
        else
            dropesp.Visible = false
            dropesp:Remove()
            renderstepped:Disconnect()
        end
    end)
end
function ohio.moneyaurafun()
    spawn(function()
        while ohio.moneyaura do
            for _, v in pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren()) do
                for  _, v1 in pairs(v:GetChildren()) do
                    if v1:IsA("ClickDetector") then
                        fireclickdetector(v1, 0)
                    end
                end
            end
            wait()
        end
    end)
end
function othergames.meeleandblood.killaurafun()
    spawn(function()
        while othergames.meeleandblood.killaura do
            task.wait()
            for _, player in pairs(plrs:GetPlayers()) do
                if player.Name ~= plrs.LocalPlayer.Name then
                    if player:FindFirstChild("Character") and player.Character:FindFirstChildWhichIsA("Humanoid") then
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("WeaponServer") then
                            if player.Character.IsParry == true then return end
                            pcall(function()
                                local distance = player:DistanceFromCharacter(plrs.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position)
                                if player.Character.Humanoid.Health >= 1 and distance < othergames.meeleandblood.killauradist then
                                    game:GetService("Players").LocalPlayer.Character:WaitForChild("CharacterServer").punchHit:FireServer(player.Character.Humanoid, player.Character.HumanoidRootPart.Position)
                                end
                            end)
                        end
                    end
                end
            end
        end
    end)
end
function othergames.meeleandblood.killaurafun1()
    spawn(function()
        while othergames.meeleandblood.killaura1 do
            task.wait()
            for _, player in pairs(plrs:GetPlayers()) do
                if player.Name ~= plrs.LocalPlayer.Name then
                    if player:FindFirstChild("Character") and player.Character:FindFirstChildWhichIsA("Humanoid") then
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("WeaponServer") then
                            if player.Character.IsParry == true then return end
                            pcall(function()
                                local distance = player:DistanceFromCharacter(plrs.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position)
                                if player.Character.Humanoid.Health >= 1 and distance < othergames.meeleandblood.killauradist then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").WeaponServer.hit:FireServer(player.Character.Head, player.Character.Head.Position)
                                end
                            end)
                        end
                    end
                end
            end
        end
    end)
end
function riotkill()
    spawn(function()
        while riot.killaura do
            task.wait()
            for _, player in pairs(plrs:GetPlayers()) do
                if player.Name ~= plrs.LocalPlayer.Name then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                        pcall(function()
                            local distance = player:DistanceFromCharacter(plrs.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position)
                            if player.Character.Humanoid.Health > 0 and distance < riot.killdist then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").WeaponRemote:FireServer("Z",3,"the/???")
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").WeaponRemote:FireServer("T",player.Character.Head,"lol  ")
                            end
                        end)
                    end
                end
            end
        end
    end)
end
function hoodlegendskill()
    spawn(function()
        while hoodlegends.killaura do
            task.wait()
            local nearestPlayer, nearestDistance
            for _, player in pairs(plrs:GetPlayers()) do
                if player.Name ~= plrs.LocalPlayer.Name then
                    local character = player.Character
                    local distance = player:DistanceFromCharacter(plrs.LocalPlayer.Character.HumanoidRootPart.Position)
                    if not character or distance > 40 or(nearestDistance and distance >= nearestDistance) then return end
                    nearestDistance = distance
                    nearestPlayer = player
                end
            end
            if nearestPlayer ~= nil then
                game:GetService("ReplicatedStorage").Packages.Knit.Services.WeaponService.RE.Melee:FireServer("Fists","T")
                task.wait(0.05)
                game:GetService("ReplicatedStorage").Packages.Knit.Services.WeaponService.RE.Melee:FireServer("Fists",false,1,nearestPlayer.Character.Humanoid,nearestPlayer.Character.HumanoidRootPart,nearestPlayer.Character.HumanoidRootPart,true)
            end
         end
    end)
end
function hoodlegendsmoneyaura()
    spawn(function()
        while hoodlegends.moneyaura do
            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v:FindFirstChildWhichIsA("ClickDetector") and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 40 * hoodlegends.moneyauradist then
                    fireclickdetector(v.ClickDetector, 0)
                end
            end
            wait()
        end
    end)
end
function othergames.toh.bypassac()
    local mt = getrawmetatable(game)
    local old = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(self, ...)
    	local args = {...}
    	local method = getnamecallmethod()
    	if method == "Kick" then
		    return
    	end
    	return old(self, ...)
    end)
    pcall(function()
        game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript2:Remove()
        game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript:Remove()
    end)
end
function othergames.toh.tptoend()
    plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").tower.finishes.Finish.CFrame
end
function speeenR6()
    local lp = game:GetService("Players").LocalPlayer
    local c = lp.Character
    local hrp0 = c:FindFirstChild("HumanoidRootPart")
    local hrp1 = hrp0:Clone()
    c.Parent = nil
    hrp0.Parent = hrp1
    hrp0.RootJoint.Part0 = nil
    hrp1.Parent = c
    c.Parent = workspace
    local h = RunService.Heartbeat
    hrp0.Transparency = 0.5
    local lvec1,lvec2,lvec3 = 0, 0, 0
    while h:Wait() and c and c.Parent do
        lvec3 = lvec3 + varsglobal.speenz
        lvec2 = lvec2 + varsglobal.speeny
        lvec1 = lvec1 + varsglobal.speenx
        hrp0.CFrame = hrp1.CFrame
        hrp0.Orientation = hrp0.Orientation + Vector3.new(lvec1, lvec2, lvec3)
        hrp0.Position = hrp0.Position - Vector3.new(0, 0, 0)
        hrp0.Velocity = hrp1.Velocity
    end
end
function speeenR15()
    local lp = game:GetService("Players").LocalPlayer
    local c = lp.Character
    local hrp0 = c:FindFirstChild("HumanoidRootPart")
    local hrp1 = hrp0:Clone()
    local lvec1,lvec2,lvec3 = 0,0,0
    c.Parent = nil
    hrp0.Parent = hrp1
    hrp1.Parent = c
    c.Parent = workspace
    local h = RunService.Heartbeat
    hrp0.Transparency = 0.5
    while h:Wait() and c and c.Parent do
        lvec3 = lvec3 + varsglobal.speenz
        lvec2 = lvec2 + varsglobal.speeny
        lvec1 = lvec1 + varsglobal.speenx
        hrp0.CFrame = hrp1.CFrame
        hrp0.Orientation = hrp0.Orientation + Vector3.new(lvec1, lvec2, lvec3)
        hrp0.Position = hrp0.Position - Vector3.new(0, 0, 0)
        hrp0.Velocity = hrp1.Velocity
    end
end
function chatspam()
    spawn(function()
        while varsglobal.chatspamtoggle do
            task.wait(3)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(varsglobal.chatspamone[math.random(1,#varsglobal.chatspamone)],"All")
        end
    end)
end
function chatspam1()
    spawn(function()
        while varsglobal.chatspam1toggle do
            task.wait(3)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(varsglobal.chatspamtwo[math.random(1,#varsglobal.chatspamtwo)],"All")
        end
    end)
end
function injectedchatspam()
    spawn(function()
        while varsglobal.injectedchatspamtoggle do
            task.wait(3)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(varsglobal.injectedchatspam[math.random(1,#varsglobal.injectedchatspam)],"All")
        end
    end)
end
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
                    if math.random(hoodlegends.silentaimpercent, 100) == 100 then
                        target = v.Character.Head
                    else
                        target = v.Character.HumanoidRootPart
                    end
                    maxDist = dist
                end
            end
        end
    end
    return target
end


if isusingfancyloader then
    output(" [ 4/5 ] loaded functions\n")
end

-- Game Stuff Starts Here

HoodLegends:AddToggle('OnePunchMan', {
    Text = 'super punch',
    Default = false,  
     

    Callback = function(first)
        hoodlegends.onepunch = first
    end
})

HoodLegends:AddToggle('MoneyAura', {
    Text = 'money aura',
    Default = false,  
     

    Callback = function(first)
        hoodlegends.moneyaura = first
        hoodlegendsmoneyaura()
    end
})

HoodLegends:AddSlider('MoneyAuraDistance', {
    Text = 'money aura distance',

    Default = 1,
    Min = 1,
    Max = 100,
    Rounding = 0,

    Compact = false,  
})

Options.MoneyAuraDistance:OnChanged(function(State)
    hoodlegends.moneyauradist = State
end)

HoodLegends:AddToggle('NoFallDamage', {
    Text = 'nofall',
    Default = false,  
     

    Callback = function(first)
        hoodlegends.nofall = first
    end
})

HoodLegends:AddToggle('SilentAim', {
    Text = 'silent aim',
    Default = false,  
     

    Callback = function(first)
        hoodlegends.silentaim = first
        updatekeys()
    end
})

HoodLegends:AddSlider('SilentAimHeadChance', {
    Text = 'silent aim headchance',

    Default = 100,
    Min = 0,
    Max = 100,
    Rounding = 0,

    Compact = false,  
})

Options.SilentAimHeadChance:OnChanged(function(State)
    riot.silentaimpercent = State
end)

HoodLegends:AddToggle('HLKillAura', {
    Text = 'killaura',
    Default = false,  
     

    Callback = function(first)
        hoodlegends.killaura = first
        hoodlegendskill()
    end
})

HoodLegends:AddLabel('silent aim keybind'):AddKeyPicker('KeyPicker', {

    Default = 'None',
    SyncToggleState = false,

    Mode = 'Toggle',

    Text = 'keybind',
    NoUI = false,

    Callback = function(Value)
        hoodlegends.silentaim = Value
        updatekeys()
    end,
})

Riot:AddToggle('Kill Aura', {
    Text = 'killaura',
    Default = false,  


    Callback = function(first)
        riot.killaura = first
        riotkill()
    end
})

Riot:AddSlider('RiotKillAuraDistance', {
    Text = 'killaura distance',

    Default = 10,
    Min = 0,
    Max = 40,
    Rounding = 0,

    Compact = false,  
})

Options.RiotKillAuraDistance:OnChanged(function(State)
    riot.killdist = State
end)

Riot:AddToggle('CFrame Modify', {
    Text = 'neck breaker (replicated)',
    Default = false,  
     

    Callback = function(first)
        riot.cframemod = first
    end
})

Riot:AddSlider('CFrameUp', {
    Text = 'cframe x',

    Default = 0,
    Min = -10,
    Max = 10,
    Rounding = 1,

    Compact = false,  
})

Options.CFrameUp:OnChanged(function(State)
    riot.cframeup = State
end)

Riot:AddSlider('CFrameRL', {
    Text = 'cframe z',

    Default = 0,
    Min = -10,
    Max = 10,
    Rounding = 1,

    Compact = false,  
})

Options.CFrameRL:OnChanged(function(State)
    riot.CFrameRL = State
end)

Riot:AddLabel('killaura bind'):AddKeyPicker('KeyPicker', {

    Default = 'None',
    SyncToggleState = false,

    Mode = 'Toggle',

    Text = 'keybind',
    NoUI = false,

    Callback = function(Value)
        riot.killaura = Value
        riotkill()
    end,
})

MeleeAndBloodz:AddToggle('AntiRagdoll', {
    Text = 'anti ragdoll',
    Default = false,  
     

    Callback = function(first)
        othergames.meeleandblood.antiragdoll = first
    end
})

MeleeAndBloodz:AddToggle('PingSpoof', {
    Text = 'pingspoof',
    Default = false,  
     

    Callback = function(first)
        othergames.meeleandblood.pingspoof = first
    end
})

MeleeAndBloodz:AddToggle('GodMode', {
    Text = 'godmode',
    Default = false,  
     

    Callback = function(first)
        othergames.meeleandblood.godmode = first
    end
})

MeleeAndBloodz:AddToggle('PunchAura', {
    Text = 'punchaura',
    Default = false,  
     

    Callback = function(first)
        othergames.meeleandblood.killaura = first
        othergames.meeleandblood.killaurafun()
        updatekeys()
    end
})

MeleeAndBloodz:AddToggle('WeaponAura', {
    Text = 'weapon aura',
    Default = false,  
     

    Callback = function(first)
        othergames.meeleandblood.killaura1 = first
        othergames.meeleandblood.killaurafun1()
        updatekeys()
    end
})

MeleeAndBloodz:AddSlider('KillAuraDist2', {
    Text = 'killaura distance',

    Default = 10,
    Min = 0,
    Max = 40,
    Rounding = 0,

    Compact = false,  
})

Options.KillAuraDist2:OnChanged(function(State)
    othergames.meeleandblood.killauradist = State
end)

MeleeAndBloodz:AddLabel('Punch Aura Keybind'):AddKeyPicker('KeyPicker', {

    Default = 'None',
    SyncToggleState = false,

    Mode = 'Toggle',

    Text = 'keybind',
    NoUI = false,

    Callback = function(Value)
        othergames.meeleandblood.killaura = Value
        othergames.meeleandblood.killaurafun()
        updatekeys()
    end
})

MeleeAndBloodz:AddLabel('Weapon Aura Keybind'):AddKeyPicker('KeyPicker', {

    Default = 'None',
    SyncToggleState = false,

    Mode = 'Toggle',

    Text = 'keybind',
    NoUI = false,

    Callback = function(Value)
        othergames.meeleandblood.killaura1 = Value
        othergames.meeleandblood.killaurafun1()
        updatekeys()
    end
})

Ohio:AddToggle('Super Punch', {
    Text = 'super punch (doesnt work?)',
    Default = false,  
     

    Callback = function(first)
        ohio.onepunch = first
    end
})

Ohio:AddToggle('Money Aura', {
    Text = 'money aura',
    Default = false,  
     

    Callback = function(first)
        ohio.moneyaura = first
        ohio.moneyaurafun()
    end
})

Ohio:AddToggle('Cash Register Esp', {
    Text = 'CashRegister esp',
    Default = false,  
     

    Callback = function(first)
        ohio.cashregisteresp = first
        wait(0.1)
        for _,drop in next, game:GetService("Workspace").Game.Props.CashRegister:GetChildren() do 
            if drop:FindFirstChild("Main") then
                ohio.cashregespfun(drop)
            end
        end
        game:GetService("Workspace").Game.Props.CashRegister.ChildAdded:Connect(function(drop)
            wait(0.1)
            if drop:FindFirstChild("Main") then
                ohio.cashregespfun(drop)
            end
        end)
    end
})

Ohio:AddToggle('ATM Esp', {
    Text = 'ATM esp',
    Default = false,  
     

    Callback = function(first)
        ohio.atmesp = first
        wait(0.1)
        for _,drop in next, game:GetService("Workspace").Game.Props.ATM:GetChildren() do 
            if drop:FindFirstChild("Main") then
                ohio.atmespfun(drop)
            end
        end
        game:GetService("Workspace").Game.Props.ATM.ChildAdded:Connect(function(drop)
            wait(0.1)
            if drop:FindFirstChild("Main") then
                ohio.atmespfun(drop)
            end
        end)
    end
})

Ohio:AddToggle('AntiMod', {
    Text = 'antimod (DONT TURN OFF!)',
    Default = false,  
     

    Callback = function(first)
        ohio.antimod = first
    end
})

TowerOfHell:AddButton('anticheat bypass', function()
    othergames.toh.bypassac()
    Library:Notify("Anticheat Bypassed!", 15)
    TowerOfHell:AddButton('TP to end', function()
        othergames.toh.tptoend()
    end)
    TowerOfHell:AddButton('godmode', function()
        function f()
            game.Players.LocalPlayer.Character.KillScript:Destroy()
        end
        hookfunction(f, function()
            game.Players.LocalPlayer.Character.KillScript:Destroy()
        end)
        f()
    end)
    TowerOfHell:AddButton('ultra jump', function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 500
    end)
end)
-- Misc Part

Misc:AddToggle('Chat Spam', {
    Text = 'chatspam',
    Default = false,  
     

    Callback = function(first)
        varsglobal.chatspamtoggle = first
        chatspam()
    end
})

Misc:AddToggle('Chat Spam 1', {
    Text = 'chatspam 1',
    Default = false,  
     

    Callback = function(first)
        varsglobal.chatspam1toggle = first
        chatspam1()
    end
})

Misc:AddToggle('InjectedChatSpam', {
    Text = 'executed chatspam',
    Default = false,  
     

    Callback = function(first)
        varsglobal.injectedchatspamtoggle = first
        injectedchatspam()
    end
})

Misc:AddToggle('ShowKeybinds', {
    Text = 'show keybinds',
    Default = false,  
     

    Callback = function(first)
        varsglobal.showkeybind = first
        updatekeys()
    end
})

Misc:AddButton('Rejoin', function()
    if #plrs:GetPlayers() <= 1 then
        plrs.LocalPlayer:Kick("\nrejoining⚡")
        wait()
        game:GetService("TeleportService"):Teleport(game.PlaceId, plrs.LocalPlayer)
    else
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plrs.LocalPlayer)
	end
end)

debugtab:AddButton('dark dex', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
end)

debugtab:AddButton('simplespy', function()
    loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end)

debugtab:AddButton('wait hook', function()
    a = hookfunction(wait, function(b)
        return a(0)
    end)
end)

debugtab:AddButton('doxx yourself', function()
    local willwebhook = false -- send webhook or nah
    local printraw = false -- print raw response without formatting
    local webhook = "" -- optional if not willwebhook
    local httpservice = game:GetService("HttpService")
    -- two below used for willwebhook
    httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
    UserId, PlayerName, PlayerDisplay = game:GetService("Players").LocalPlayer.UserId, game:GetService("Players").LocalPlayer.Name, game:GetService("Players").LocalPlayer.DisplayName

    function getjson()
        local response = game:HttpGet("http://ip-api.com/json")
        if printraw then return response end
        return httpservice:JSONDecode(response)
    end
    function payload()
        if willwebhook then
            -- send request to webhook, too lazy to code
        else
            if printraw then
                Library:Notify(getjson())
            else
                for i,v in pairs(getjson()) do
                    Library:Notify(i..": "..v)
                end
            end
        end
    end
    payload()
end)

local hb = RunService.Heartbeat
movetab:AddToggle('ToggleSpeed', {
    Text = 'speed toggle',
    Default = false,  
     

    Callback = function(first)
        tpwalking = first
        local chr = game:GetService("Players").LocalPlayer.Character
        local hum = chr and chr:WaitForChild("Humanoid")
        while tpwalking and chr and hum and hum.Parent do
            local delta = hb:Wait()
            if hum.MoveDirection.Magnitude > 0 then
                if varsglobal.tpwalkspeed then
                    chr:TranslateBy(hum.MoveDirection * tonumber(varsglobal.tpwalkspeed) * delta * 10)
                else
                    chr:TranslateBy(hum.MoveDirection * delta * 10)
                end
            end
        end
    end
})

movetab:AddSlider('CFrameSpeed', {
    Text = 'CFrame Speed',

    Default = 0,
    Min = 0,
    Max = 10,
    Rounding = 10,

    Compact = false,  
})

Options.CFrameSpeed:OnChanged(function(State)
    varsglobal.tpwalkspeed = State
end)

movetab:AddSlider('jumper', {
    Text = 'jump mod',

    Default = game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower,
    Min = 0,
    Max = 500,
    Rounding = 1,

    Compact = false,  
})

Options.jumper:OnChanged(function(State)
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = State
end)

movetab:AddButton('spin R6', function()
    speeenR6()
end)

movetab:AddButton('spin R15', function()
    speeenR15()
end)

movetab:AddSlider('SpeenX', {
    Text = 'spin x',

    Default = 0,
    Min = -25,
    Max = 25,
    Rounding = 1,

    Compact = false,  
})

Options.SpeenX:OnChanged(function(State)
    varsglobal.speenx = State
end)

movetab:AddSlider('SpeenY', {
    Text = 'spin y',

    Default = 0,
    Min = -25,
    Max = 25,
    Rounding = 1,

    Compact = false,  
})

Options.SpeenY:OnChanged(function(State)
    varsglobal.speeny = State
end)

movetab:AddSlider('SpeenZ', {
    Text = 'spin z',

    Default = 0,
    Min = -25,
    Max = 25,
    Rounding = 1,

    Compact = false,  
})

Options.SpeenZ:OnChanged(function(State)
    varsglobal.speenz = State
end)

-- Settings Part
local GameName = game.MarketplaceService:GetProductInfo(game.PlaceId).Name

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
ThemeManager:SetFolder('swimhub')
SaveManager:SetFolder('swimhub/' .. GameName)
SaveManager:BuildConfigSection(Tabs.Settings)
ThemeManager:ApplyToGroupbox(stuffz)

if isusingfancyloader then
    output(" [ 5/6 ] loaded settings\n")
end

-- May Not Work For Certain Games With An Admin System (Ex: Adonis)

local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldNamecall = gmt.__namecall
gmt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if not checkcaller() then
        if tostring(method) == "FireServer" then
            if tostring(self) == "FallDamage" and hoodlegends.nofall then
                args[1] = 1
                return self.FireServer(self, unpack(args))
            elseif tostring(self) == "Melee" and hoodlegends.onepunch then
                args[7] = true
                return self.FireServer(self, unpack(args))
            elseif tostring(self) == "ShootGun" and hoodlegends.silentaim then
                args[1][1][2] = getPlayerClosestToMouse().Position
                args[1][1][4] = getPlayerClosestToMouse()
                return self.FireServer(self, unpack(args))
            elseif tostring(self) == "Look" and riot.cframemod then
                args[2] = CFrame.new(0, 1, 0) * CFrame.Angles(riot.cframeup, -0.14767108857631683, riot.cframerl)
                return self.FireServer(self, unpack(args))
            elseif tostring(self) == "ragdoll" and othergames.meeleandblood.antiragdoll then
                return
            elseif tostring(self) == "GetPing" and othergames.meeleandblood.pingspoof then
                spawn(function()
                    task.wait(0.1)
                    return self.FireServer(self, unpack(args))
                end)
            elseif tostring(self) == "getweapon" and othergames.meeleandblood.godmode then
                return
            elseif tostring(self) == "InflictTarget" then
                args[2]["AttackDelay"] = 0.45
            end
            if game.PlaceId == 7239319209 then
                if args[1] == "player" and ohio.onepunch then
                    args[2][1] = "meleemegapunch"
                    return self.FireServer(self, unpack(args))
                elseif args[1] == "meleepunch" and ohio.onepunch then
                    args[1] = "meleemegapunch"
                    return self.FireServer(self, unpack(args))
                elseif tostring(self) == "RemoteEvent" and ohio.antimod then
                    args[2] = ohio.antimodoldpos
                    return self.FireServer(self, unpack(args))
                end
            end

        end
    end
    return oldNamecall(self, ...)
end)
if isusingfancyloader then
    output(" [ 6/6 ] loaded metatablehook\n")
end
updatekeys()
first = true
--[[if game:GetService("Players").LocalPlayer.Name == "BooIeanVaIue" and game.PlaceId == 155010111 then
    local aw = MiscTab:CreateSector("animatronic world", "left")
    local dotheeye = false
    local eyespeed = 5
    function eyethingy()
        spawn(function()
            while dotheeye do
                task.wait(eyespeed)
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pixel Eyes"):GetChildren()) do
                    local color = Color3.fromHSV(math.random() + math.random(0, 1),1,1)
                    game:GetService("ReplicatedStorage").Editor.Remotes.Painter:FireServer("Color", color, v)
                end
            end
        end)
    end
    aw:AddButton("sunglasses", function()
        game:GetService("ReplicatedStorage"):WaitForChild("Editor"):WaitForChild("Remotes"):WaitForChild("Accessories"):FireServer("Sunglasses", "Head")        
    end)
    aw:AddButton("normal eye", function()
        for _, v in pairs(game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pixel Eyes"):GetChildren()) do
            local color = Color3.fromHSV(0,0,0)
            game:GetService("ReplicatedStorage").Editor.Remotes.Painter:FireServer("Color", color, v)
        end
        local args = {
            [1] = "Color",
            [2] = Color3.fromRGB(248.00001561641693, 248.00001561641693, 248.00001561641693),
            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pixel Eyes").BulbL_36
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Editor"):WaitForChild("Remotes"):WaitForChild("Painter"):FireServer(unpack(args))
        local args = {
            [1] = "Color",
            [2] = Color3.fromRGB(248.00001561641693, 248.00001561641693, 248.00001561641693),
            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pixel Eyes").BulbL_37
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Editor"):WaitForChild("Remotes"):WaitForChild("Painter"):FireServer(unpack(args))
        local args = {
            [1] = "Color",
            [2] = Color3.fromRGB(248.00001561641693, 248.00001561641693, 248.00001561641693),
            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pixel Eyes").BulbL_28
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Editor"):WaitForChild("Remotes"):WaitForChild("Painter"):FireServer(unpack(args))
        local args = {
            [1] = "Color",
            [2] = Color3.fromRGB(248.00001561641693, 248.00001561641693, 248.00001561641693),
            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pixel Eyes").BulbR_28
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Editor"):WaitForChild("Remotes"):WaitForChild("Painter"):FireServer(unpack(args))
        local args = {
            [1] = "Color",
            [2] = Color3.fromRGB(248.00001561641693, 248.00001561641693, 248.00001561641693),
            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pixel Eyes").BulbR_36
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Editor"):WaitForChild("Remotes"):WaitForChild("Painter"):FireServer(unpack(args))
        local args = {
            [1] = "Color",
            [2] = Color3.fromRGB(248.00001561641693, 248.00001561641693, 248.00001561641693),
            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pixel Eyes").BulbR_37
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Editor"):WaitForChild("Remotes"):WaitForChild("Painter"):FireServer(unpack(args))
        local args = {
            [1] = "Color",
            [2] = Color3.fromRGB(248.00001561641693, 248.00001561641693, 248.00001561641693),
            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pixel Eyes").BulbR_29
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Editor"):WaitForChild("Remotes"):WaitForChild("Painter"):FireServer(unpack(args))
        local args = {
            [1] = "Color",
            [2] = Color3.fromRGB(248.00001561641693, 248.00001561641693, 248.00001561641693),
            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pixel Eyes").BulbL_29
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Editor"):WaitForChild("Remotes"):WaitForChild("Painter"):FireServer(unpack(args))
        args = nil 
    end)
    aw:AddToggle("glitch eyes", false, function(first)
        dotheeye = first
        eyethingy()
    end)
    aw:AddSlider("eye speed", 0.3, 5, 10, 10, function(State)
        eyespeed = State
    end)
else
    return
end]]
