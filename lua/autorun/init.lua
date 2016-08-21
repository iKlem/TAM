--[[
Author            : iKlem
Last modification : 21/08/2016
]]

if SERVER then
	include("tam/sv_init.lua")
  include("tam/messages.example.lua")
  include("tam/messages.lua")
  AddCSLuaFile("tam/cl_init.lua")
else
	include("tam/cl_init.lua")
end
