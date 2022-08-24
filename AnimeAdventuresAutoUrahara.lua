repeat
    task.wait(3)
    until game:GetService("Players").LocalPlayer ~= nil

    if not game:GetService("Players").LocalPlayer.Character then
        game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
        task.wait()
    end
    repeat
        task.wait(3)
    until game.PlaceId == 8349889591

    task.wait()

    local uraharaUnits = {}
    local localPlayer = game:GetService("Players").LocalPlayer

    repeat task.wait(3)
      for _, instance in next, workspace._UNITS:GetChildren() do
        if instance.Name ~= "kisuke_evolved" then continue end
        if instance._stats.player.Value ~= localPlayer then continue end
        if table.find(uraharaUnits, instance) then continue end
        table.insert(uraharaUnits, instance)
      end
    until #uraharaUnits == 3

    local remote = game:GetService("ReplicatedStorage").endpoints.client_to_server.use_active_attack
if #uraharaUnits == 3  then
local notifSound = Instance.new("Sound",workspace)
notifSound.PlaybackSpeed = 1.5
notifSound.Volume = 20
notifSound.SoundId = "rbxassetid://5644086231"
notifSound.PlayOnRemove = true
notifSound:Destroy()
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Script loaded enjoy!",
Text = "Discord:Kirito#8888 and v3rmillion: HuzurAtesi",
Icon = "rbxassetid://9688035375"; 
Duration = 5 
})
     task.wait(1)
        while true do
            repeat task.wait() until uraharaUnits[1]._stats.unit_stunned.Value == 0
            remote:InvokeServer(uraharaUnits[1])
            wait(40)
            repeat task.wait() until uraharaUnits[2]._stats.unit_stunned.Value == 0
            remote:InvokeServer(uraharaUnits[2])
            wait(40)
            repeat task.wait() until uraharaUnits[3]._stats.unit_stunned.Value == 0
            remote:InvokeServer(uraharaUnits[3])
            wait(40)
end
end
