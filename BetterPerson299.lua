--[[
    So you may be wondering what the whole point of this script is.
    You may already know that KAH has two gamepasses. We got Perm Admin which is by far the most purchased gamepass of KAH
    and then we got Person299's admin which is arguably considered a letdown for a huge majority of the playerbase.

    Most people have bought both gamepasses which just gives you a few extra commands but not everyone wants to buy both
    Some just want either one of the two, either Perm or Persons. 
    
    I bought just Person299's Admin on one of my accounts and it just doesn't feel that useful at all, 
    since a lot of the commands that could make it obsolete perm are just not present.

    This mod is there for just the few amount of people that bought just Person299's Admin, 
    but of course you can use it without the gamepass if you like some of the FE functions that the script comes with.

    This script/mod is completely open source and you can use anything in your own script if you like, 
    though credit would be appreciated ;)


    Type "cmds" (no prefix) after running this script/mod.
]]

local uniquemodstring = "betterperson299cmd" -- change this to whatever idc
local antilog = "00000000000000000000000000000000"
local lplayer = game.Players.LocalPlayer

-- CONFIGURE ANYTHING BELOW

shared.mod = true -- Turn this off and re-run the script to disable the mod
shared.p2p = false -- This will enable perm to persons. Re-run the script and turn this off to disable the mod

if p299running then
    return
end
getgenv().p299running = true -- Don't touch

-- Perm to Persons
local player = game.Players.LocalPlayer
player.Chatted:Connect(function(message)
    if shared.p2p == true then
        if msgg then return end
        msgg = true
        game.Players:Chat(string.gsub(message, " ", "/"));wait(.35) -- Spam cooldown.
        msgg = false
    end
end)

-- BetterPerson299
function createKohlsUi(textTable)
	local kohlsUI = Instance.new("ScreenGui")
	local TextButton = Instance.new("TextButton")
	local Frame = Instance.new("Frame")
	local closeUi = Instance.new("TextButton")
	local Frame_2 = Instance.new("Frame")
	local a = Instance.new("TextLabel")
	local UIGridLayout = Instance.new("UIGridLayout")
	local clearUi = Instance.new("TextButton")

	--Properties:

	kohlsUI.Name = "kohlsUI"
	kohlsUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	kohlsUI.ResetOnSpawn = false

	TextButton.Parent = kohlsUI
	TextButton.BackgroundTransparency = 1.000
	TextButton.Draggable = true
	TextButton.Position = UDim2.new(0.5, -548, 0.5, -94)
	TextButton.Size = UDim2.new(0, 385, 0, 20)
	TextButton.AutoButtonColor = false
	TextButton.Text = ""

	Frame.Parent = TextButton
	Frame.ClipsDescendants = true
	Frame.Size = UDim2.new(0, 400, 0, 400)
	Frame.ZIndex = 7
	Frame.Style = Enum.FrameStyle.RobloxRound

	closeUi.Name = "closeUi"
	closeUi.Parent = Frame
	closeUi.Position = UDim2.new(1, -15, 0, -5)
	closeUi.Size = UDim2.new(0, 20, 0, 20)
	closeUi.ZIndex = 10
	closeUi.Style = Enum.ButtonStyle.RobloxButtonDefault
	closeUi.Font = Enum.Font.ArialBold
	closeUi.Text = "X"
	closeUi.TextColor3 = Color3.fromRGB(255, 255, 255)
	closeUi.TextSize = 18.000

	Frame_2.Parent = Frame
	Frame_2.Position = UDim2.new(0, 0, 0, -9)
	Frame_2.ZIndex = 8

	a.Name = "a"
	a.Parent = Frame_2
	a.BackgroundTransparency = 1.000
	a.Position = UDim2.new(NAN, 0, NAN, 0)
	a.Size = UDim2.new(200, 18, 200, 18)
	a.ZIndex = 8
	a.Font = Enum.Font.Arial
	a.Text = ""
	a.TextColor3 = Color3.fromRGB(255, 255, 255)
	a.TextSize = 18.000
	a.TextStrokeTransparency = 0.800
	a.TextXAlignment = Enum.TextXAlignment.Left
	a.TextYAlignment = Enum.TextYAlignment.Top

	UIGridLayout.Parent = Frame_2
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(0, 100, 0, 18)

	clearUi.Name = "clearUi"
	clearUi.Parent = Frame
	clearUi.Position = UDim2.new(0.944999993, -15, 0, -5)
	clearUi.Size = UDim2.new(0, 20, 0, 20)
	clearUi.ZIndex = 10
	clearUi.Style = Enum.ButtonStyle.RobloxButtonDefault
	clearUi.Font = Enum.Font.ArialBold
	clearUi.Text = "C"
	clearUi.TextColor3 = Color3.fromRGB(255, 255, 255)
	clearUi.TextSize = 18.000

	-- Scripts:

	local function NNQOKB_fake_script() -- Frame_2.LocalScript 
		local script = Instance.new('LocalScript', Frame_2)

		function addLabel(txt)
			local newLb = script.Parent.a:Clone()
			newLb.Name = "TextLabel"
			newLb.Text = txt
			newLb.Parent = script.Parent
		end
		
		function addLabelWCheck(txt)
			local cnt = 0
			for i,v in pairs(script.Parent:GetChildren()) do
				if v.Name == "TextLabel" then
					cnt = cnt + 1
				end
			end
			if cnt >= 16 then
				clearLabels()
			end
			addLabel(txt)
		end
		
		function clearLabels()
			for i,v in pairs(script.Parent:GetChildren()) do
				if v.Name == "TextLabel" then
					v:Destroy()
				end
			end
		end
		
		script.Parent.Parent.closeUi.MouseButton1Click:Connect(function()
			script.Parent.Parent.Parent.Parent:Destroy()
		end)
		
		script.Parent.Parent.clearUi.MouseButton1Click:Connect(clearLabels)
		
		for _, text in ipairs(textTable) do
			addLabelWCheck(text)
		end
	end
	coroutine.wrap(NNQOKB_fake_script)()
end

function logn(message)
    game.StarterGui:SetCore("SendNotification",
        {
            Title = "BetterPerson299",
            Text = message,
            Duration = 5.5
        })
end

function fullplr(plr) -- Get someones entire playername
    for i, v in pairs(game.Players:GetPlayers()) do
        if string.sub(v.Name:lower(), 1, #plr) == plr then
            playr = v.Name
            end
        end
    end

local function GetPad(msg)
    while PadCheck == true do
        task.wait(0)
        if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
            if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
                local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
                local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
                task.wait(0.125)
                pad.CanCollide = false
                repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                task.wait(0.125)
                pad.CFrame = padCFrame
                pad.CanCollide = true
            else
                fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
            end
        end
    end
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.sub(msg:lower(), 0, 4) == "logs" then 
        if shared.mod == true then
            logn("Avoid using this command after closing the logs UI")
            loadstring(game:HttpGet(('https://pastebin.com/raw/stggPUBM'),true))()
            -- https://v3rmillion.net/showthread.php?tid=709709
        end
    elseif string.sub(msg:lower(), 0, 0) == "foryou" then 
        local player = string.sub(msg:lower(), 1)
        if shared.mod == true then
            -- Hey there. So if you're gonna edit this and add your own commands then copy this area pretty much.
        end
    elseif string.sub(msg:lower(), 0, 8) == "reset/me" then 
        if shared.mod == true then
            local spos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame -- Creds. Vecko
            task.wait(.05)
            game.Players:Chat("respawn/"..uniquemodstring.."/me")
            game.Players:Chat("invis/"..uniquemodstring.."/me")
            for i = 1, 2 do
                wait(.65)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
            end
            wait(1) -- High ping affects this command, making it nil too fast will simply not make it teleport :/
            local spos = nil
            game.Players:Chat("vis/"..uniquemodstring.."/me")
        end
    elseif string.sub(msg:lower(), 0, 9) == "reset/all" or string.sub(msg:lower(), 0, 10) == "reload/all" or string.sub(msg:lower(), 0, 11) == "refresh/all" then 
        -- This will obviously only teleport you back. But people do this cus it's faster to type than respawn
        if shared.mod == true then
            local spos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame -- Creds. Vecko
            task.wait(.05)
            game.Players:Chat("respawn/"..uniquemodstring.."/all")
            game.Players:Chat("invis/"..uniquemodstring.."/me")
            for i = 1, 2 do
                wait(.65)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spos
            end
            wait(1)
            local spos = nil
        end
    elseif string.sub(msg:lower(), 0, 12) == "reset/others" or string.sub(msg:lower(), 0, 13) == "reload/others" or string.sub(msg:lower(), 0, 14) == "refresh/others" then
        -- Faster to type than respawn
        if shared.mod == true then
            game.Players:Chat("respawn/"..uniquemodstring.."/others")
        end
    elseif string.sub(msg:lower(), 0, 8) == "skydive/" then 
        local player = string.sub(msg:lower(), 9)
        if shared.mod == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 2500,
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
            wait(.35)
            game.Players:Chat("tp/"..player.."/me")
        end
    elseif string.sub(msg:lower(), 0, 3) == "clr" then 
        if shared.mod == true then
            game.Players:Chat("clear")
        end
    elseif string.sub(msg:lower(), 0, 6) == "system" then 
        if shared.mod == true then
            logn("This stays, even after you close the script")
            local invisGUIS = {} --- From IY, ty LegHat for actually making it readable ffs
            Players = game:GetService("Players")

            function FindInTable(tbl, val)
                if tbl == nil then
                    return false
                end
                for _, v in pairs(tbl) do
                    if v == val then
                        return true
                    end
                end
                return false
            end

            for i, v in pairs(Players.LocalPlayer:FindFirstChildWhichIsA("PlayerGui"):GetDescendants()) do
                if (v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("ScrollingFrame")) and not v.Visible then
                    v.Visible = true
                    if not FindInTable(invisGUIS, v) then
                        table.insert(invisGUIS, v)
                    end
                end
            end
        end
    elseif string.sub(msg:lower(), 0, 6) == "house/" then 
        local player = string.sub(msg:lower(), 7)
        if shared.mod == true then
            game.Players:Chat("invis/"..uniquemodstring.."/me");task.wait(.35)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253));task.wait(.65)
            wait(.35)
            game.Players:Chat("tp/"..player.."/me")
        end
    elseif string.sub(msg, 0, 2) == "m " then 
        local mesg = string.sub(msg, 3)
        if shared.mod == true then
            wait(.35)
            game.Players:Chat("clear the regular M moment");wait()
            game.Players:Chat("fogcolor 0 0 0")
            game.Players:Chat("outdoorambient/0/0/0")
            game.Players:Chat("fogend/150")
            for i = 1, 3 do
                game.Players:Chat("h/\n\n\n\n\n\n\n\n\n\n\n\n\n \n\n\n\n\n\n\n\n\n\n\n\n\n Message from "..lplayer.Name.." \n\n\n\n\n\n\n\n\n\n\n"..mesg);wait(1.8)
            end
            wait(1.35)
            game.Players:Chat("fix")
        end
    elseif string.sub(msg, 0, 3) == "emr" then -- Emergency mode. Lag everyone without Perm/admin as long as you have persons
        if shared.mod == true then
            logn("Press C (keybind) and zoom out cus it will lag")
            if emr_ == true then return end
            emr_ = true
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/Tech-187/Lua-scripts/main/NoAdmin%20Lagger%20v2.3P'),true))()
            game.Players:Chat("!admin");wait(.35)
            game.Players:Chat("punish/others")
            game.Players:Chat("blind/others");wait(.65)
            for i = 1, 99 do
                game.Players:Chat("freeze/others/"..math.random(1,1000))
            end
            wait(1.5)
            for i = 1, 99 do
                game.Players:Chat("freeze/others/"..math.random(1,1000))
            end
            wait(1)
            for i = 1, 100 do
                game.Players:Chat("clone others "..math.random(1,1000))
            end
        end
    elseif string.sub(msg:lower(), 0, 6) == "!admin" then
        if shared.mod == true then
            PadCheck = true
            GetPad(msg)-- From SCV1
        end
    elseif string.sub(msg:lower(), 0, 9) == "!closemod" then
        if shared.mod == true then
            PadCheck = false
            shared.mod = false
            shared.p2p = false
        end
    elseif string.sub(msg:lower(), 0, 4) == "!666" then
        if shared.mod == true then
            game.Players:Chat("m Looks like the devil has taken over")
            game.Players:Chat("!admin");wait(.49)
            for i = 1, 99 do
                chatt("size all .3")
                chatt("size all .3")
                chatt("size all .3")
                chatt("freeze all")
                chatt("size all 10")
                chatt("size all 10")
                chatt("size all 10")
                chatt("clone all")
                wait()
            end
            game.Players:Chat("!closemod. Hey, where did the script go?")
        end
    elseif string.sub(msg:lower(), 0, 6) == "!findregen" then
        if shared.mod == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 1000003, -1000000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1101734, 33651680, -33531784));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -1000003, -1000000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -1000000, -3));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(3, -1000000, 1000000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -3, -1000000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, -3, 1000000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 3, 1000000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 1000003, 1000000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -1000003, 1000000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(454545, 150000, -678678));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(306712, 420552, 398158));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, 1000003, 1000000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, 1000003, -1000000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, -1000003, -1000000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(45400, -49860, 56673));wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(56470, -48312, 28578));wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(75304, -49638, 47300));wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(34120, -48830, 30233));wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(77822, -49751, 79116));wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(42682, -29202, 29886));wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(51052, -49558, 34068));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-200000, 50000, 3500000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(782629, 385179, 234698));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-251773, 1000003, 382563));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500000, 300000, 500000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-300000, 300000, 300000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(300000, 300000, 300000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(300000, 300000, -300000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-300000, 300000, -300000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500000, 300000, 500000));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-7, 12009, 95));game:GetService("RunService").RenderStepped:wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(734399, 560502, 2776));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-360263, 421796, 716100));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(999982, 3143, 999997));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(696973, 999997, -1000001));wait(.15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(100000, 10000, 100000));wait(1)
        game.Players:Chat("respawn/me")
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/Tech-187/Lua-scripts/main/FindVerticalRegen"), true))()
    end
    elseif string.sub(msg:lower(), 0, 4) == "!rej" or string.sub(msg:lower(), 0, 3) == "!rj" then
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer);wait()
    elseif string.sub(msg:lower(), 0, 4) == "!hop" or string.sub(msg:lower(), 0, 4) == "!ser" then
        if shared.mod == true then
            local x = {}
                for _, v in ipairs(game:GetService("HttpService"):JSONDecode(
                        game:HttpGetAsync("https://games.roblox.com/v1/games/"..game.PlaceId .."/servers/Public?sortOrder=Asc&limit=100")).data) do
                    if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                        x[#x + 1] = v.id
                        amount = v.playing
                    end
                end
                if #x > 0 then
                    task.wait(.25)
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
                else
                    game.Players:Chat("!hop")
                end
            end
    elseif string.sub(msg:lower(), 0, 4) == "cmds" then 
        if shared.mod == true then
            createKohlsUi(
                {
                    "Thank you for using BetterPerson299\nCreated by Tech",
                    "",
                    "logs",
                    "reset/me or all",
                    "skydive/plr",
                    "house/plr",
                    "m message (no /)",
                    "emr (use if people abuse)",
                    "cmds (mod commands)",
                    "system (silent commands)",
                    "!cmds (other commands)"
                }
            )
        end
    elseif string.sub(msg:lower(), 0, 5) == "!cmds" then 
        if shared.mod == true then
            createKohlsUi(
                {
                    "!rejoin",
                    "!hop",
                    "!admin",
                    "!findregen",
                    "!666",
                    "!closemod"
                }
            )
        end
    end
end)