--// UI Library \\--
local File = writefile and readfile or false
local Library = false
Success, Library = pcall(function()
    return readfile("uwuware UI.lua")
end)
if Success == false then
    Library = game:HttpGet('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware')
    if File then
        writefile("uwuware UI.lua", Library)
    end
end
Library = loadstring(Library)()
local Window = Library:CreateWindow("autofarm by puro#4730")
Window:AddToggle({
    text = "wins",
    callback = function()
        while task.wait(0.1) and Library.flags.wins do
            game:GetService("ReplicatedStorage").RemoteEvents.RewardWins:FireServer()
        end
    end
})

Window:AddToggle({
    text = "speed",
    callback = function()
        while task.wait(0.1) and Library.flags.speed do
local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").RemoteEvents.GiveTopSpeed:FireServer(unpack(args))                      
        end
    end
})

Library:Init()
