-- (VOID) : Gui to Lua
-- Version: 1.4

-- Instances:

local swimloader = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local topframe = Instance.new("Frame")
local ignored1 = Instance.new("TextButton")
local ignored = Instance.new("UIGradient")
local ignored1_2 = Instance.new("TextLabel")
local ignored2 = Instance.new("TextLabel")
local ignored2_2 = Instance.new("TextButton")
local ignored1_3 = Instance.new("TextButton")
local ignored1_4 = Instance.new("TextButton")
local ignored1_5 = Instance.new("TextButton")
local ignored1_6 = Instance.new("TextButton")

--Properties:

swimloader.Name = "swimloader"
swimloader.Parent = (game:GetService("CoreGui") or gethui())
swimloader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = swimloader
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
main.BorderColor3 = Color3.fromRGB(29, 95, 175)
main.Position = UDim2.new(0.5, 0, 0.5, 0)
main.Size = UDim2.new(0.264350444, 0, 0.243902445, 0)

topframe.Name = "topframe"
topframe.Parent = main
topframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
topframe.BorderColor3 = Color3.fromRGB(0, 76, 255)
topframe.BorderSizePixel = 0
topframe.Size = UDim2.new(1, 0, 0.125, 0)

ignored1.Name = "ignored1"
ignored1.Parent = topframe
ignored1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ignored1.BackgroundTransparency = 1.000
ignored1.BorderSizePixel = 0
ignored1.Position = UDim2.new(0.942857146, 0, 0, 0)
ignored1.Size = UDim2.new(0.0571428612, 0, 1, 0)
ignored1.Font = Enum.Font.SourceSans
ignored1.Text = "X"
ignored1.TextColor3 = Color3.fromRGB(255, 255, 255)
ignored1.TextSize = 14.000

ignored.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.32, Color3.fromRGB(4, 4, 4)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 25, 25))}
ignored.Rotation = 90
ignored.Name = "ignored"
ignored.Parent = topframe

ignored1_2.Name = "ignored1"
ignored1_2.Parent = main
ignored1_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ignored1_2.BackgroundTransparency = 1.000
ignored1_2.BorderSizePixel = 0
ignored1_2.Position = UDim2.new(0.0228571426, 0, 0, 0)
ignored1_2.Size = UDim2.new(0.21714285, 0, 0.100000001, 0)
ignored1_2.Font = Enum.Font.Code
ignored1_2.LineHeight = 0.800
ignored1_2.Text = "swimhack"
ignored1_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ignored1_2.TextSize = 16.000
ignored1_2.TextWrapped = true
ignored1_2.TextXAlignment = Enum.TextXAlignment.Left

ignored2.Name = "ignored2"
ignored2.Parent = main
ignored2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ignored2.BackgroundTransparency = 1.000
ignored2.BorderColor3 = Color3.fromRGB(29, 95, 175)
ignored2.Position = UDim2.new(0, 0, 1.13683343, 0)
ignored2.Size = UDim2.new(1, 0, 1, 0)
ignored2.Font = Enum.Font.SourceSans
ignored2.Text = "loading..."
ignored2.TextColor3 = Color3.fromRGB(255, 255, 255)
ignored2.TextScaled = true
ignored2.TextSize = 14.000
ignored2.TextTransparency = 1.000
ignored2.TextWrapped = true
ignored2.TextXAlignment = Enum.TextXAlignment.Left
ignored2.TextYAlignment = Enum.TextYAlignment.Top

ignored2_2.Name = "ignored2"
ignored2_2.Parent = ignored2
ignored2_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ignored2_2.BackgroundTransparency = 1.000
ignored2_2.BorderSizePixel = 0
ignored2_2.Position = UDim2.new(0.955581009, 0, -0.0032992363, 0)
ignored2_2.Size = UDim2.new(0.0444189534, 0, 0.132049277, 0)
ignored2_2.Font = Enum.Font.SourceSans
ignored2_2.Text = "X"
ignored2_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ignored2_2.TextSize = 14.000
ignored2_2.TextTransparency = 1.000

ignored1_3.Name = "ignored1"
ignored1_3.Parent = main
ignored1_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ignored1_3.BorderColor3 = Color3.fromRGB(29, 95, 175)
ignored1_3.Position = UDim2.new(0.0266958904, 0, 0.204999998, 0)
ignored1_3.Size = UDim2.new(0.945714355, 0, 0.145999998, 0)
ignored1_3.Font = Enum.Font.Code
ignored1_3.Text = "view changelog"
ignored1_3.TextColor3 = Color3.fromRGB(255, 255, 255)
ignored1_3.TextSize = 14.000

ignored1_4.Name = "ignored1"
ignored1_4.Parent = main
ignored1_4.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ignored1_4.BorderColor3 = Color3.fromRGB(29, 95, 175)
ignored1_4.Position = UDim2.new(0.0266958904, 0, 0.387222201, 0)
ignored1_4.Size = UDim2.new(0.945714355, 0, 0.145999998, 0)
ignored1_4.Font = Enum.Font.Code
ignored1_4.Text = "see my github page"
ignored1_4.TextColor3 = Color3.fromRGB(255, 255, 255)
ignored1_4.TextSize = 14.000

ignored1_5.Name = "ignored1"
ignored1_5.Parent = main
ignored1_5.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ignored1_5.BorderColor3 = Color3.fromRGB(29, 95, 175)
ignored1_5.Position = UDim2.new(0.0266958904, 0, 0.569444418, 0)
ignored1_5.Size = UDim2.new(0.945714355, 0, 0.145999998, 0)
ignored1_5.Font = Enum.Font.Code
ignored1_5.Text = "load swimhub"
ignored1_5.TextColor3 = Color3.fromRGB(255, 255, 255)
ignored1_5.TextSize = 14.000

ignored1_6.Name = "ignored1"
ignored1_6.Parent = main
ignored1_6.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ignored1_6.BorderColor3 = Color3.fromRGB(29, 95, 175)
ignored1_6.Position = UDim2.new(0.0266958904, 0, 0.751666665, 0)
ignored1_6.Size = UDim2.new(0.945714355, 0, 0.145999998, 0)
ignored1_6.Font = Enum.Font.Code
ignored1_6.Text = "load swimhack (esp, aimbot)"
ignored1_6.TextColor3 = Color3.fromRGB(255, 255, 255)
ignored1_6.TextSize = 14.000

-- Scripts:

local function RLSM_fake_script() -- ignored1.ignored 
	local script = Instance.new('LocalScript', ignored1)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(RLSM_fake_script)()
local function FKXTI_fake_script() -- main.ignored 
	local script = Instance.new('LocalScript', main)

	script.Parent:GetPropertyChangedSignal("BackgroundTransparency"):Connect(function()
		for _, v in pairs(script.Parent:GetDescendants()) do
			if v.Name ~= "ignored" and v.Name ~= "ignored1" and v.Name ~= "ignored2" then
				v.BackgroundTransparency = script.Parent.BackgroundTransparency
			elseif v.Name == "ignored1" then
				v.TextTransparency = script.Parent.BackgroundTransparency
			end
		end
	end)
	script.Parent.BackgroundTransparency = 1
	local tInfo = TweenInfo.new(0.7,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
	local tween = game:GetService("TweenService"):Create(script.Parent,tInfo,{BackgroundTransparency=0})
	tween:Play()
end
coroutine.wrap(FKXTI_fake_script)()
local function DNMCJO_fake_script() -- ignored2_2.ignored 
	local script = Instance.new('LocalScript', ignored2_2)

	script.Parent.MouseButton1Down:Connect(function()
		spawn(function()
			local tInfo = TweenInfo.new(0.7,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
			local tween = game:GetService("TweenService"):Create(script.Parent.Parent,tInfo,{BackgroundTransparency=1, TextTransparency=1})
			tween:Play()
		end)
		local tInfo = TweenInfo.new(0.7,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
		local tween = game:GetService("TweenService"):Create(script.Parent,tInfo,{BackgroundTransparency=1, TextTransparency=1})
		tween:Play()
	end)
end
coroutine.wrap(DNMCJO_fake_script)()
local function IMSW_fake_script() -- ignored2.LocalScript 
	local script = Instance.new('LocalScript', ignored2)

	script.Parent.Text = game:HttpGet("https://raw.githubusercontent.com/SwimPaste/swimhack/main/updatelog")
end
coroutine.wrap(IMSW_fake_script)()
local function TXYTE_fake_script() -- ignored1_3.ignored 
	local script = Instance.new('LocalScript', ignored1_3)

	script.Parent.MouseButton1Down:Connect(function()
		spawn(function()
			local tInfo = TweenInfo.new(0.7,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
			local tween = game:GetService("TweenService"):Create(script.Parent.Parent.ignored2,tInfo,{BackgroundTransparency=0, TextTransparency=0})
			tween:Play()
		end)
		local tInfo = TweenInfo.new(0.7,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
		local tween = game:GetService("TweenService"):Create(script.Parent.Parent.ignored2.ignored2,tInfo,{TextTransparency=0})
		tween:Play()
	end)
end
coroutine.wrap(TXYTE_fake_script)()
local function WPEZ_fake_script() -- ignored1_4.ignored 
	local script = Instance.new('LocalScript', ignored1_4)

	script.Parent.MouseButton1Down:Connect(function()
		setclipboard("https://github.com/SwimPaste/")
		script.Parent.Text = "Copied!"
		wait(1)
		script.Parent.Text = "see my github page"
	end)
end
coroutine.wrap(WPEZ_fake_script)()
local function FKKJREA_fake_script() -- ignored1_5.ignored 
	local script = Instance.new('LocalScript', ignored1_5)

	script.Parent.MouseButton1Down:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SwimPaste/swimhack/main/swimhub.lua"))()
	end)
end
coroutine.wrap(FKKJREA_fake_script)()
local function WGYYAB_fake_script() -- ignored1_6.ignored 
	local script = Instance.new('LocalScript', ignored1_6)

	script.Parent.MouseButton1Down:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SwimPaste/swimhack/main/swimhack_universal"))()
	end)
end
coroutine.wrap(WGYYAB_fake_script)()
local function CJJQ_fake_script() -- main.Dragify 
	local script = Instance.new('LocalScript', main)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
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
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(CJJQ_fake_script)()
