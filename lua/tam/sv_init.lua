--[[
Author            : iKlem
Last modification : 21/08/2016
]]

-- NetworkStrings
util.AddNetworkString("SendMessage")
util.AddNetworkString("ReloadTAM")
util.AddNetworkString("OnClientConnecting")

TAM = TAM or {}

-- FUNCTIONS
function TAM.getUserLang(ply, userLang, cpt)
  if not ply:IsBot() then
    if(TAM.messages[userLang] != nil) then
      if(cpt > table.getn(TAM.messages[userLang])) then
        cpt = 1
      end
      messageObj = TAM.messages[userLang][cpt]
      text = messageObj[1]
      time = messageObj[2]
      rgb = {messageObj[3], messageObj[4], messageObj[5]}
      net.Start("SendMessage")
        net.WriteString(text)
        net.WriteInt(time, 32)
        net.WriteTable(rgb)
        net.WriteInt(cpt + 1, 32)
      net.Send(ply)
    end
  end
end

function TAM.reload()
  MsgN("TAM has been reload !")
  net.Start("ReloadTAM")
  net.Broadcast()
end

-- NET FUNCTIONS
net.Receive("OnClientConnecting", function()
  ply = net.ReadEntity()
  userLang = net.ReadString()
  cpt = net.ReadInt(32)
	TAM.getUserLang(ply, userLang, cpt)
end)

-- COMMANDS
concommand.Add("reloadTAM", TAM.reload, nil, "Launch this command to reload if TAM don't show messages.")
