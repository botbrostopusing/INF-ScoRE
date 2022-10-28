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
    text = "autofarm",
    callback = function()
        while task.wait(0) and Library.flags.autofarm do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-721.575, 1299.33, 3867.96)
wait(0)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-261.685, 232.105, 3015.32)
wait(0)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9999, 9999, 9999.9000)
        end
    end
})
Library:Init()
