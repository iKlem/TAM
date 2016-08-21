--[[
Author            : iKlem
Last modification : 21/08/2016
]]

function printMessage()
  text = net.ReadString()
  time = net.ReadInt(32)
  rgb = net.ReadTable()
  cpt = net.ReadInt(32)

  chat.AddText(Color(rgb[1], rgb[2], rgb[3]), text)
  createTimer(time)
  timer.Start("printMessage")
end

function sendLang(cpt)
  if cpt == 1 then time = 5 else time = 0 end
  timer.Simple(time, function()
    net.Start("OnClientConnecting")
      net.WriteEntity(LocalPlayer())
      net.WriteString(system.GetCountry())
      net.WriteInt(cpt, 32)
    net.SendToServer()
  end)
end

function createTimer(time)
  timer.Create("printMessage", time, 1, function()
    sendLang(cpt)
  end)
end

net.Receive("SendMessage", printMessage)
net.Receive("ReloadTAM", function()
  chat.AddText(Color(255, 128, 128), "TAM has been reload by an admin. The messages will appears in few minutes from the start.")
  timer.Stop("printMessage")
  sendLang(1)
end)
hook.Add("InitPostEntity", "sendSelectedLanguage", function()
  sendLang(1)
end)
