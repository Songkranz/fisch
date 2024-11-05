local args = {
    [1] = 100,
    [2] = true
}

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function fireEvent()
    ReplicatedStorage:WaitForChild("events"):WaitForChild("reelfinished"):FireServer(unpack(args))
end

task.spawn(function()
    while task.wait() do
        fireEvent()
    end
end)