game.TestService.IsSleepAllowed = false
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
	if v:IsA("BasePart") then 
		game:GetService("RunService").Heartbeat:connect(function()
			v.Velocity = Vector3.new(-40,0,-10)
			pcall(function()
				v.CanCollide = false
			end)
			pcall(function()
				v.CanQuery = false
			end)
		end)
	end
end

Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()
local IsDead = false
local StateMover = true
local playerss = workspace.non
local bbv,bullet
local gunattack = false
local targetnnn = nil
if Bypass == "death" then
	bullet = game.Players.LocalPlayer.Character["HumanoidRootPart"]
	bullet.Color = Color3.new()
	bullet.Transparency = .75
	bullet.Material = "Neon"
	bullet.Massless = true

	local Sphere = game:GetObjects("rbxassetid://9418986037")[1]
	Sphere.Parent = nil
	Sphere.Adornee = nil
	Sphere.Color3 = Color3.fromRGB(0,0,0)
	Sphere.Radius = .5
	if bullet:FindFirstChildOfClass("Attachment") then
		for _,v in pairs(bullet:GetChildren()) do
			if v:IsA("Attachment") then
				v:Destroy()
			end
		end
	end

	bbv = Instance.new("BodyPosition",bullet)
	bbv.Position = playerss.Torso.CFrame.p
end

if Bypass == "death" then
	coroutine.wrap(function()
		while true do
			if not playerss or not playerss:FindFirstChildOfClass("Humanoid") or playerss:FindFirstChildOfClass("Humanoid").Health <= 0 then IsDead = true; return end
			if StateMover then
				bbv.Position = playerss.Torso.CFrame.p + Vector3.new(0,5,0)
				bullet.Position = playerss.Torso.CFrame.p + Vector3.new(0,5,0)
			end
			game:GetService("RunService").RenderStepped:wait()
		end
	end)()
end

local fling = false
local DamageFling = function(DmgPer)
	if IsDead or Bypass ~= "death" then return end
	fling = true; StateMover = false
	bbav = Instance.new("BodyAngularVelocity",bullet)
	bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
	bbav.P = 1000000000000000000000000000
	bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)
	game:GetService("Debris"):AddItem(bbav,0.1)
	bullet.Rotation = playerss.Torso.Rotation
	for _=1,15 do
		bbv.Position = DmgPer.Position
		bullet.Position = DmgPer.Position
		wait(0.03)
	end
	bbv.Position = playerss.Torso.CFrame.p + Vector3.new(0,5,0)
	bullet.Position = playerss.Torso.CFrame.p + Vector3.new(0,5,0)
	fling = false; StateMover = true
end
local DamageFling2 = function(DmgPer)
	if IsDead or Bypass ~= "death" then return end
	fling = true; StateMover = false
	bbav = Instance.new("BodyAngularVelocity",bullet)
	bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
	bbav.P = 1000000000000000000000000000
	bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)
	game:GetService("Debris"):AddItem(bbav,0.1)
	bullet.Rotation = playerss.Torso.Rotation
	for _=1,15 do
		bbv.Position = DmgPer
		bullet.Position = DmgPer
		wait(0.03)
	end
	bbv.Position = playerss.Torso.CFrame.p + Vector3.new(0,5,0)
	bullet.Position = playerss.Torso.CFrame.p + Vector3.new(0,5,0)
	fling = false; StateMover = true
end

for i,v in next, playerss:GetDescendants() do
	if v:IsA("BasePart") then 
		game:GetService("RunService").Heartbeat:connect(function()
			pcall(function()
				v.CanCollide = false
			end)
			pcall(function()
				v.CanQuery = false
			end)
		end)
	end
end

local dammf = workspace.non:FindFirstChildOfClass("Humanoid")
dammf.RequiresNeck = false
dammf.BreakJointsOnDeath = false
for stupidfucking, omfg in pairs(workspace.non:GetChildren()) do
	if omfg:IsA("BasePart") then
		omfg.Anchored = true
		omfg.Velocity = Vector3.new(0, 0, 0)
		omfg.Transparency = 1
		for stupidfucking, omfg in pairs(omfg:GetChildren()) do
			if omfg:IsA("Motor6D") then
				omfg.Part0 = nil
			end
		end
	end
end

script = game:GetObjects("rbxassetid://7508399003")[1].Dummy.beerub["sus dummy"]
if not game:IsLoaded() then game.Loaded:Wait() end
local plrs,workspace,run,pps,ts,uis,debris,rf,rss = game:GetService("Players"),game:GetService("Workspace"),game:GetService("RunService"),game:GetService("MarketplaceService"),game:GetService("TweenService"),game:GetService("UserInputService"),game:GetService("Debris"),game:GetService("ReplicatedFirst"),game:GetService("Workspace")
local cn,euler,rad,v3,c3,c4,sin,cos,clamp,angles = CFrame.new,CFrame.fromEulerAnglesYXZ,math.rad,Vector3.new,Color3.fromRGB,Color3.new,math.sin,math.cos,math.clamp,CFrame.Angles
local random = math.random
VT,CF,SIN,ANGLES,RAD,COS,MRANDOM=Vector3.new,CFrame.new,math.sin,CFrame.Angles,math.rad,math.cos,math.random
local plrid = plrs.Name
local velocity = v3()
local userid,localplayer,plr,sus = game:GetService("Players").LocalPlayer.UserId,plrs.LocalPlayer,nil,plrid
script.Parent = rf
for i, v in pairs(plrs:GetPlayers()) do
	if v.UserId == userid then
		plr = v
		break
	end
end
function Debris(Instance,Delay)
	game:GetService("Debris"):AddItem(Instance,Delay)
end
local username,localuserid,efvwaswdgs = game:GetService("Players").LocalPlayer.Name,localplayer.UserId,false
local mouse,cam,event,stopit = localplayer:GetMouse(),workspace.CurrentCamera,{},false
event = {}
local eventconnection = false



function event:FireServer(...)
	if eventconnection then eventconnection(...) end
end
local funcs = {}
funcs.__index = funcs
function randomstring()
	local e = {}
	for i = 1,random(5,50) do
		table.insert(e,#e+1,string.char(random(10,100)))
	end
	return table.concat(e)
end
function tween(instance,properties,duration,easingdirection,easingstyle)
	spawn(function()
		if easingstyle == nil then easingstyle = Enum.EasingStyle.Quad end
		ts:Create(instance,TweenInfo.new(duration,easingstyle,easingdirection),properties):Play()
	end)
end
function change(instance, properties)
	for i, v in pairs(properties) do
		instance[i] = v
	end
end
function create(class,properties)
	local instance = Instance.new(class)
	instance.Name = randomstring()
	change(instance,properties)
	return instance
end
local c,h,t,r,la,ra,ll,rl,face,campart,gun
local gc0,hc0,lac0,rac0,llc0,rlc0,sine,animspeed,attack,falling,partexclusion,flying,raycastparams,keys,moving,poscframe,ypos,transparent,SONGID,yvelo,inf,mode,BasePlate = cn(-0.125,-0.898999929,0.95400238)*euler(0,rad(90),rad(-172.5)),cn(0,1.5,0),cn(-1.5,0,0),cn(1.5,0,0),cn(-0.5,-2,0),cn(0.5,-2,0),0,1/4,false,false,{},false,RaycastParams.new(),{w=false,a=false,s=false,d=false},false,cn(),50,false,247971190,0,9999999999,"Default",nil
local hoffset,toffset,laoffset,raoffset,lloffset,rloffset,gunoffset = hc0,cn(),lac0,rac0,llc0,rlc0,gc0
raycastparams.FilterType,raycastparams.IgnoreWater = Enum.RaycastFilterType.Blacklist,true
local rotationvalue = Instance.new("CFrameValue",script)
local stopeverything = false
rotationvalue.Name = randomstring()
function Refit(Instance,Parent)
	if Instance.Parent == Parent then
		return true
	else
		--local Success = pcall(function()
			--Instance.Name = randomstring()
			--Instance.Parent = Parent
		--end)
		return true
	end 
end
function fix(instance,parent)
	if instance == parent then
		return true
	else
		local kek = pcall(function()
			instance.Parent,instance.Name = parent,randomstring()
		end)
		if instance.Parent ~= parent then
			return false
		else
			return kek
		end
	end
end
function checkpart(part,size,collisionfidelity,color,material,transparency,cancollide,localtransparency)
	return (not part or not fix(part,workspace) or part.Parent ~= workspace or part.Size ~= size or part.Color ~= color or part.Material ~= material or (not transparent and part.Transparency ~= transparency) or (transparent and part.Transparency ~= 1) or part.CanCollide ~= cancollide or part.Archivable or part.CollisionFidelity ~= collisionfidelity or not part.Locked or part.CollisionGroupId ~= 0 or part.DoubleSided or not part.Anchored or part.LocalTransparencyModifier ~= 0 or part.CastShadow)
end
function gettransparency(transparency)
	if transparent then
		return 1
	else
		return transparency
	end
end
local hb = create("BindableEvent",{
	Parent = script,
	Name = "ArtificialHB"
})
local frame = 1/120
local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
hb:Fire()
run.Heartbeat:Connect(function(s, p)
	tf += s
	if tf >= frame then
		if allowframeloss then
			hb:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				hb:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)
function swait(j)
	if j == 0 or j == nil then
		for i = 1, 2 do
			hb.Event:wait()
		end
	else
		for i = 1, j do
			hb.Event:wait()
		end
	end
end
local backups = {}
local Backups = {}
backups.__index = backups
for i, v in pairs(script:GetChildren()) do
	if v:IsA("BasePart") then
		backups[v.Name] = v:Clone()
	end
end
for i,v in pairs(script:GetChildren()) do
	if v:IsA("BasePart") then
		Backups[v.Name] = v:Clone()
		Backups[v.Name].Size = Backups[v.Name].Size
	end
end
function spawnbaseplate()
	local NewBS = Instance.new("Part")
	NewBS.Size = Vector3.new(2048,20,2048)
	NewBS.Anchored = true
	NewBS.Color = Color3.fromRGB(127,142,100)
	NewBS = BasePlate
end

function ifExistsThen(inst,func)
	if inst ~= nil then
		spawn(func)
	end
end

function CreateMesh(MESH,PARENT,MESHTYPE,MESHID,TEXTUREID,SCALE,OFFSET)
	local NEWMESH = Instance.new(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" and tonumber(MESHID) ~= nil then
			NEWMESH.MeshId = "rbxassetid://"..MESHID
		elseif MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "rbxassetid://"..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or Vector3.new()
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

local S = Instance.new("Sound")
function CreateSound(ID,PARENT,VOLUME,PITCH,DOESLOOP) -- Fixed
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false or NEWSOUND.Parent ~= PARENT
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CreatePart(FORMFACTOR,PARENT,MATERIAL,REFLECTANCE,TRANSPARENCY,BRICKCOLOR,NAME,SIZE,ANCHOR)
	local NEWPART = Instance.new("Part")
	NEWPART.Massless = true
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.Color = BRICKCOLOR
	NEWPART.Name = randomstring()
	NEWPART.Size = SIZE
	NEWPART.Position = t.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

local EffectFolder = Instance.new("Folder")

function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or t.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or gun.Color)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,EffectFolder,MATERIAL,0,TRANSPARENCY,gun.Color,"Suck Dick",Vector3.new(1,1,1),true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while not stopit and EFFECT:IsDescendantOf(game) do
					EFFECT.Color = gun.Color
					swait()
				end
			end))
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Block2" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","1051557","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			EFFECT.CFrame = CFRAME
			if TYPE == "Block2" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1,TIME+1 do
				swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = Vector3.new(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block2" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopit then wait(math.huge) end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopit then wait(math.huge) end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end

function turnto(position)
	r.CFrame=CFrame.new(r.CFrame.p,VT(position.X,r.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end
for _,v in next, game.Players.LocalPlayer.Character:GetDescendants() do
	if v:IsA('BasePart') then
		table.insert(partexclusion,v)
	end
end
for _,v in next, game.Workspace.non:GetDescendants() do
	if v:IsA('BasePart') then
		table.insert(partexclusion,v)
	end
end

for _,v in next, game.Workspace[game.Players.LocalPlayer.Name]:GetDescendants() do
	if v:IsA('BasePart') then
		table.insert(partexclusion,v)
	end
end
--run:BindToRenderStep(username.."MaintainParts",777777,function()
if not rotationvalue or not fix(rotationvalue,script) or rotationvalue.Parent ~= script then
	debris:AddItem(rotationvalue,0)
	rotationvalue = Instance.new("CFrameValue",script)
	rotationvalue.Name = randomstring()
end
if checkpart(campart,v3(1,1,1),Enum.CollisionFidelity.Box,c3(0,0,0),Enum.Material.SmoothPlastic,1,false,1) then

	--debris:AddItem(campart,0)
	campart = backups.t:Clone()
	campart.Transparency = 1
	campart.Color = c3(0,0,0)
	campart.CanCollide = false
	campart.Size = v3(1,1,1)
	campart.Parent = game.Players.LocalPlayer.Character
	campart.Name = randomstring()
	campart.Archivable = false
end
if not table.find(partexclusion,campart) then
	table.insert(partexclusion,campart)
end
if checkpart(r,v3(2,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,1,true,0.5) then

	r = playerss.HumanoidRootPart
--[[
		debris:AddItem(r,0)
		r = backups.t:Clone()
		r.Transparency = 1
		r.Size = v3(2,2,1)
		r.Name = randomstring()
		r.Parent = game.Players.LocalPlayer.Character
		r.Archivable = false
		r.CFrame = poscframe]]
end
if not table.find(partexclusion,r) then
	table.insert(partexclusion,r)
end
if (not face or not fix(face,h) or h.Parent ~= workspace or face.Color3 ~= c3(255,255,255) or face.Face ~= Enum.NormalId.Front or face.Transparency ~= 0 or face.Texture ~= "rbxasset://textures/face.png") then
	if h then
		--debris:AddItem(h,0)
	end
end
if (not h or not fix(h,workspace) or h.Parent ~= workspace or h.Size ~= v3(2,1,1) or h.Color ~= c3(163,162,165) or h.Material ~= Enum.Material.SmoothPlastic or (not transparent and h.Transparency ~= 0) or (transparent and h.Transparency ~= 1) or not h.CanCollide or h.Archivable or not h.Locked or h.CollisionGroupId ~= 0 or not h.Anchored or h.LocalTransparencyModifier ~= 0) or h.CastShadow then

	h = playerss.Head
	face = h.face
		--[[debris:AddItem(h,0)
		h = backups.h:Clone()
		face = h.face
		h.Transparency = gettransparency(0)
		h.Size = v3(2,1,1)
		h.Name = randomstring()
		h.Parent = game.Players.LocalPlayer.Character
		h.Archivable = false]]
end
if not table.find(partexclusion,h) then
	table.insert(partexclusion,h)
end
if checkpart(t,v3(2,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,0,true,0) then

	t = playerss.Torso
		--[[debris:AddItem(t,0)
		t = backups.t:Clone()
		t.Transparency = gettransparency(0)
		t.Size = v3(2,2,1)
		t.Name = randomstring()
		t.Parent = game.Players.LocalPlayer.Character
		t.Archivable = false]]
end
if not table.find(partexclusion,t) then
	table.insert(partexclusion,t)
end
if checkpart(la,v3(1,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,0,true,0) then

	la = playerss["Left Arm"]
		--[[debris:AddItem(la,0)
		la = backups.credit:Clone()
		la.Transparency = gettransparency(0)
		la.Size = v3(1,2,1)
		la.Name = randomstring()
		la.Parent = game.Players.LocalPlayer.Character
		la.Archivable = false]]
end
if not table.find(partexclusion,la) then
	table.insert(partexclusion,la)
end
if checkpart(ra,v3(1,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,0,true,0) then

	ra = playerss["Right Arm"]
		--[[debris:AddItem(ra,0)
		ra = backups.limb:Clone()
		ra.Transparency = gettransparency(0)
		ra.Size = v3(1,2,1)
		ra.Name = randomstring()
		ra.Parent = game.Players.LocalPlayer.Character
		ra.Archivable = false]]
end
if not table.find(partexclusion,ra) then
	table.insert(partexclusion,ra)
end
if checkpart(ll,v3(1,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,0,true,0) then

	ll = playerss["Left Leg"]
		--[[debris:AddItem(ll,0)
		ll = backups.limb:Clone()
		ll.Transparency = gettransparency(0)
		ll.Size = v3(1,2,1)
		ll.Name = randomstring()
		ll.Parent = game.Players.LocalPlayer.Character
		ll.Archivable = false]]
end
if not table.find(partexclusion,ll) then
	table.insert(partexclusion,ll)
end
if checkpart(rl,v3(1,2,1),Enum.CollisionFidelity.Box,c3(163,162,165),Enum.Material.SmoothPlastic,0,true,0) then

	rl = playerss["Right Leg"]
		--[[debris:AddItem(rl,0)
		rl = backups.limb:Clone()
		rl.Transparency = gettransparency(0)
		rl.Size = v3(1,2,1)
		rl.Name = randomstring()
		rl.Parent = game.Players.LocalPlayer.Character
		rl.Archivable = false]]
end
if not table.find(partexclusion,rl) then
	table.insert(partexclusion,rl)
end
if (not gun or not fix(gun,workspace) or gun.Parent ~= workspace or gun.Size ~= v3(6.792,1.241,0.254) or gun.Material ~= Enum.Material.Neon or (not transparent and gun.Transparency ~= 0) or (transparent and gun.Transparency ~= 1) or not gun.CanCollide or gun.Archivable or gun.CollisionFidelity ~= Enum.CollisionFidelity.PreciseConvexDecomposition or not gun.Locked or gun.CollisionGroupId ~= 0 or gun.DoubleSided or not gun.Anchored or gun.LocalTransparencyModifier ~= 0) or gun.CastShadow then

	gun = Backups.gun:Clone()
	gun.Name = randomstring()
	gun.Transparency = gettransparency(0.9)
	gun.Archivable = false
	gun.Parent = game.Players.LocalPlayer.Character
end
if not table.find(partexclusion,gun) then
	table.insert(partexclusion,gun)
end
--end)
function respawn()
	if localplayer == plr then
		local spawnpoint = localplayer.RespawnLocation
		if not spawnpoint then
			for i, v in pairs(workspace:GetDescendants()) do
				if v:IsA("SpawnLocation") then
					spawnpoint = v
					break
				end
			end
		end
		if spawnpoint then
			local newpos = (spawnpoint.CFrame*cn(0,spawnpoint.Size.Y/2+50,0)).p
			ypos,poscframe = newpos.Y,cn(newpos)
		else
			ypos = 50
			poscframe = cn(0,ypos,0)
		end
	end
end

local function AlignHat(p1,p2,nomesh)
	pcall(function()
		p1:FindFirstChildOfClass("Weld"):Destroy()
		if nomesh then 
			p1:FindFirstChildOfClass("SpecialMesh"):Destroy()
		end
	end)
	--p1.AccessoryWeld:Destroy()
	A1 = Instance.new("Attachment", p1) 
	A2 = Instance.new("Attachment", p2)
	Mover = Instance.new("AlignPosition", p1)
	Mover.RigidityEnabled = false
	Mover.Attachment0 = A1
	Mover.Attachment1 = A2
	Mover.Responsiveness = 200
	Mover.MaxVelocity = math.huge
	Mover.MaxForce = math.huge
	Rotater = Instance.new("AlignOrientation", p1)
	Rotater.RigidityEnabled = false
	Rotater.Attachment0 = A1
	Rotater.Attachment1 = A2
	Rotater.Responsiveness = 200
	Rotater.MaxAngularVelocity = math.huge
	Rotater.MaxTorque = math.huge
end

pcall(function()
	Railgun = workspace.non["Meshes/archangelrifleAccessory"].Handle
	AlignHat(Railgun,gun,false)
	Railgun.Attachment.Rotation = Vector3.new(-0, -180, 0)
	Railgun.Attachment.Position = Vector3.new(0, -0.02, 0)
	--Railgun.Attachment.CFrame = CFrame.new(-1.29999995, 0.200000003, 0, -4.37113883e-08, 0.707106829, -0.707106829, 0, 0.707106829, 0.707106829, 1, 3.09086232e-08, -3.09086197e-08)
end)

function respawneffects()
	EffectFolder:ClearAllChildren()
end
local ws = 0.5
local attacks = {}

local Mouse = plr:GetMouse()
spawn(function()
	while game:GetService("RunService").Heartbeat:Wait() do
	if gunattack then
		DamageFling2(Mouse.Hit.p)
		end
		if gunmouseattack then
			if targetnnn ~= nil then
				if fling then return end
				--print(targetnnn) print(targetnnn.Parent)
				othertarget = targetnnn.Parent:FindFirstChild("Torso") or targetnnn.Parent:FindFirstChild("UpperTorso")
				if not othertarget then return end
				print(othertarget)
				DamageFling(othertarget)
				wait(0.1)
				targetnnn = nil
			end
		end

	end
	end)

function attacks:loldiepart(p)
	if table.find(partexclusion,p) then return end
	local hum = p.Parent:FindFirstChildOfClass("Humanoid") or p.Parent.Parent:FindFirstChildOfClass("Humanoid") or p.Parent.Parent.Parent:FindFirstChildOfClass("Humanoid")
	if p.Size.X > 50 or p.Size.Y > 50 or p.Size.Z > 50 and not hum then return end
	--table.insert(partexclusion,p)
	if hum then
		targetnnn = hum
	end
	--print(hum.Parent) 
	--p.Anchored,p.CanCollide,p.LocalTransparencyModifier,p.Transparency = true,false,1,1
	--[[local e = create("Part",{
		Parent = game.Players.LocalPlayer.Character,
		CanCollide = false,
		CFrame = p.CFrame,
		Size = p.Size,
		Color = gun.Color,
		Material = Enum.Material.Neon,
		Velocity = v3(random(-30,30),30,random(-30,30)),
		RotVelocity = v3(random(-15,15),random(-15,15),random(-15,15))
	})
	p.Size = v3()
	table.insert(partexclusion,e)
	local dur = random(75,150)/300
	tween(e,{Transparency=1},dur,Enum.EasingDirection.In,Enum.EasingStyle.Linear)
	debris:AddItem(e,dur)]]
end
function attacks:hitbox(radius,pos)
	if localuserid == userid then
		event:FireServer("hitbox",{radius,pos})
	end
	local h = create("Part",{
		Parent = game.Players.LocalPlayer.Character,
		Anchored = true,
		CanCollide = false,
		Transparency = 1,
		Shape = Enum.PartType.Ball,
		Color = gun.Color,
		Size = v3(radius*2,radius*2,radius*2),
		Position = pos
	})
	table.insert(partexclusion,h)
	debris:AddItem(h,0.2)
	h.Touched:Connect(function() end)
	for i, v in next, h:GetTouchingParts() do
		local hum
		pcall(function()
			hum = v.Parent:FindFirstChildOfClass("Humanoid") or v.Parent.Parent:FindFirstChildOfClass("Humanoid")
		end)
		if hum then
			for e, p in next, hum.Parent:GetDescendants() do
				if p:IsA("BasePart") then
					
					--targetnnn = p
					attacks:loldiepart(p)
				end
			end
		end
		--attacks:loldiepart(v)
	end
end
local bgmholder = create("PartOperation",{Parent=rss,Transparency=1})
local bgm,bgmstartime,bgmtimelength = create("Sound",{Parent=bgmholder}),tick(),68.555 
function colorhandler(col)
	gun.Color,h.Glow.Color,h.Glow1.Color = col,col,col
end
function soundhandler(remove)
	if mode == "Default" then
		SONGID = 247971190
		bgmtimelength = 068.555 
	elseif mode == "Default2" then
		SONGID = 2834198427
		bgmtimelength = 068.555
	elseif mode == "Default3" then
		SONGID = 5217610994
		bgmtimelength = 068.555
	elseif mode == "Default4" then
		SONGID = 6385714897
		bgmtimelength = 068.555 
	elseif mode == "Default5" then
		SONGID = 5688742207
		bgmtimelength = 068.555 
	elseif mode == "Default6" then
		SONGID = 4835535512
		bgmtimelength = 068.555
	elseif mode == "Default7" then
		SONGID = 909227073
		bgmtimelength = 068.555 
	elseif mode == "Default8" then
		SONGID = 6556569538
		bgmtimelength = 068.555 
	elseif mode == "Default9" then
		SONGID = 1283869370
		bgmtimelength = 068.555 
	elseif mode == "Default10" then
		SONGID = 1696854181
		bgmtimelength = 068.555 
	elseif mode == "Default11" then
		SONGID = 4735079956
		bgmtimelength = 068.555 
	elseif mode == "Default12" then
		SONGID = 6919003053
		bgmtimelength = 068.555 
	end
	if remove == true then
		debris:AddItem(bgmholder,0)
	end
end
function newmode(mode_)
	mode = mode_
	bgmstartime = tick()
	soundhandler(true)
end
function modechange()
	if mode == "Default" then
		newmode("Default2")
	elseif mode == "Default2" then
		newmode("Default3")
	elseif mode == "Default3" then
		newmode("Default4")
	elseif mode == "Default4" then
		newmode("Default5")
	elseif mode == "Default5" then
		newmode("Default6")
	elseif mode == "Default6" then
		newmode("Default7")
	elseif mode == "Default7" then
		newmode("Default8")
	elseif mode == "Default8" then
		newmode("Default9")
	elseif mode == "Default9" then
		newmode("Default10")
	elseif mode == "Default10" then
		newmode("Default11")
	elseif mode == "Default11" then
		newmode("Default12")
	elseif mode == "Default12" then
		newmode("Default13")
	else
		newmode("Default")
	end
end
function backwardchange()
	if mode == "Default13" then
		newmode("Default12")
	elseif mode == "Default12" then
		newmode("Default11")
	elseif mode == "Default11" then
		newmode("Default10")
	elseif mode == "Default10" then
		newmode("Default9")
	elseif mode == "Default9" then
		newmode("Default8")
	elseif mode == "Default8" then
		newmode("Default7")
	elseif mode == "Default7" then
		newmode("Default6")
	elseif mode == "Default6" then
		newmode("Default5")
	elseif mode == "Default5" then
		newmode("Default4")
	elseif mode == "Default4" then
		newmode("Default3")
	elseif mode == "Default3" then
		newmode("Default2")
	elseif mode == "Default2" then
		newmode("Default")
	else
		newmode("Default13")
	end
end
function c3handler()
--[[	if mode == "Default" then
		colorhandler(c3(255, 89, 89))
		gun.smoke.Color = ColorSequence.new(c3(255, 89, 89),c3(255, 89, 89))
	    gun.sparkles.Color = ColorSequence.new(c3(255, 89, 89),c3(255, 89, 89))
		Lighting.FogColor = c4(1,0,0)
		Lighting.Ambient = c4(1,0,0)
		Lighting.OutdoorAmbient = c4(1,0,0)
		Lighting.ColorShift_Bottom = c4(1,0,0)
		Lighting.ColorShift_Top = c3(255, 89, 89)
		Lighting.TimeOfDay = 0
	elseif mode == "Default2" then
		colorhandler(c3(0, 255, 255))
		gun.smoke.Color = ColorSequence.new(c3(0, 255, 255),c3(0, 255, 255))
		gun.sparkles.Color = ColorSequence.new(c3(0, 255, 255),c3(0, 255, 255))
		Lighting.FogColor = c4(0,1,1)
		Lighting.Ambient = c4(0,1,1)
		Lighting.OutdoorAmbient = c4(0,1,1)
		Lighting.ColorShift_Bottom = c4(0,1,1)
		Lighting.ColorShift_Top = c3(0, 255, 255)
		Lighting.TimeOfDay = 0
	elseif mode == "Default3" then
		colorhandler(c3(248, 248, 248))
		gun.smoke.Color = ColorSequence.new(c3(248, 248, 248),c3(248, 248, 248))
		gun.sparkles.Color = ColorSequence.new(c3(248, 248, 248),c3(248, 248, 248))
		Lighting.FogColor = c4(1,1,1)
		Lighting.Ambient = c4(1,1,1)
		Lighting.OutdoorAmbient = c4(1,1,1)
		Lighting.ColorShift_Bottom = c4(1,1,1)
		Lighting.ColorShift_Top = c3(248, 248, 248)
		Lighting.TimeOfDay = 0
	elseif mode == "Default4" then
		colorhandler(c3(0, 255, 0))
		gun.smoke.Color = ColorSequence.new(c3(0, 255, 0),c3(0, 255, 0))
		gun.sparkles.Color = ColorSequence.new(c3(0, 255, 0),c3(0, 255, 0))
		Lighting.FogColor = c4(0,1,0)
		Lighting.Ambient = c4(0,1,0)
		Lighting.OutdoorAmbient = c4(0,1,0)
		Lighting.ColorShift_Bottom = c4(0,1,0)
		Lighting.ColorShift_Top = c3(0, 255, 0)
		Lighting.TimeOfDay = 0
	elseif mode == "Default5" then
		colorhandler(c3(82, 124, 174))
		gun.smoke.Color = ColorSequence.new(c3(82, 124, 174),c3(82, 124, 174))
		gun.sparkles.Color = ColorSequence.new(c3(82, 124, 174),c3(82, 124, 174))
		Lighting.FogColor = c3(82, 124, 174)
		Lighting.Ambient = c3(82, 124, 174)
		Lighting.OutdoorAmbient = c3(82, 124, 174)
		Lighting.ColorShift_Bottom = c3(82, 124, 174)
		Lighting.ColorShift_Top = c3(82, 124, 174)
		Lighting.TimeOfDay = 0
	elseif mode == "Default6" then
		colorhandler(c3(99, 95, 98))
		gun.smoke.Color = ColorSequence.new(c3(99, 95, 98),c3(99, 95, 98))
		gun.sparkles.Color = ColorSequence.new(c3(99, 95, 98),c3(99, 95, 98))
		Lighting.FogColor = c3(99, 95, 98)
		Lighting.Ambient = c3(99, 95, 98)
		Lighting.OutdoorAmbient = c3(99, 95, 98)
		Lighting.ColorShift_Bottom = c3(99, 95, 98)
		Lighting.ColorShift_Top = c3(99, 95, 98)
		Lighting.TimeOfDay = 0
	elseif mode == "Default7" then
		colorhandler(c3(170, 85, 0))
		gun.smoke.Color = ColorSequence.new(c3(170, 85, 0),c3(170, 85, 0))
		gun.sparkles.Color = ColorSequence.new(c3(170, 85, 0),c3(170, 85, 0))
		Lighting.FogColor = c3(170, 85, 0)
		Lighting.Ambient = c3(170, 85, 0)
		Lighting.OutdoorAmbient = c3(170, 85, 0)
		Lighting.ColorShift_Bottom = c3(170, 85, 0)
		Lighting.ColorShift_Top = c3(170, 85, 0)
		Lighting.TimeOfDay = 0
	elseif mode == "Default8" then
		colorhandler(c3(255, 255, 0))
		gun.smoke.Color = ColorSequence.new(c3(255, 255, 0),c3(255, 255, 0))
		gun.sparkles.Color = ColorSequence.new(c3(255, 255, 0),c3(255, 255, 0))
		Lighting.FogColor = c3(255, 255, 0)
		Lighting.Ambient = c3(255, 255, 0)
		Lighting.OutdoorAmbient = c3(255, 255, 0)
		Lighting.ColorShift_Bottom = c3(255, 255, 0)
		Lighting.ColorShift_Top = c3(255, 255, 0)
		Lighting.TimeOfDay = 0
	elseif mode == "Default9" then
		colorhandler(c3(98, 37, 209))
		gun.smoke.Color = ColorSequence.new(c3(98, 37, 209),c3(98, 37, 209))
		gun.sparkles.Color = ColorSequence.new(c3(98, 37, 209),c3(98, 37, 209))
		Lighting.FogColor = c3(98, 37, 209)
		Lighting.Ambient = c3(98, 37, 209)
		Lighting.OutdoorAmbient = c3(98, 37, 209)
		Lighting.ColorShift_Bottom = c3(98, 37, 209)
		Lighting.ColorShift_Top = c3(98, 37, 209)
		Lighting.TimeOfDay = 0
	elseif mode == "Default10" then
		colorhandler(c3(124, 92, 70))
		gun.smoke.Color = ColorSequence.new(c3(124, 92, 70),c3(124, 92, 70))
		gun.sparkles.Color = ColorSequence.new(c3(124, 92, 70),c3(124, 92, 70))
		Lighting.FogColor = c3(124, 92, 70)
		Lighting.Ambient = c3(124, 92, 70)
		Lighting.OutdoorAmbient = c3(124, 92, 70)
		Lighting.ColorShift_Bottom = c3(124, 92, 70)
		Lighting.ColorShift_Top = c3(124, 92, 70)
		Lighting.TimeOfDay = 0
	elseif mode == "Default11" then
		colorhandler(c3(255,255,255))
		gun.smoke.Color = ColorSequence.new(c3(255,255,255),c3(255,255,255))
		gun.sparkles.Color = ColorSequence.new(c3(255,255,255),c3(255,255,255))
		Lighting.FogColor = c3(255,255,255)
		Lighting.Ambient = c3(255,255,255)
		Lighting.OutdoorAmbient = c3(255,255,255)
		Lighting.ColorShift_Bottom = c3(255,255,255)
		Lighting.ColorShift_Top = c3(255,255,255)
		Lighting.TimeOfDay = 0
	elseif mode == "Default12" then
		colorhandler(c3(248, 217, 109))
		gun.smoke.Color = ColorSequence.new(c3(248, 217, 109),c3(248, 217, 109))
		gun.sparkles.Color = ColorSequence.new(c3(248, 217, 109),c3(248, 217, 109))
		Lighting.FogColor = c3(248, 217, 109)
		Lighting.Ambient = c3(248, 217, 109)
		Lighting.OutdoorAmbient = c3(248, 217, 109)
		Lighting.ColorShift_Bottom = c3(248, 217, 109)
		Lighting.ColorShift_Top = c3(248, 217, 109)
		Lighting.TimeOfDay = 0
  end]]
end

Lighting = game.Lighting
--[[EEEEAA = script["Blur"]:Clone()
EEEEAA.Parent = game.Lighting
game.Lighting.ExposureCompensation = 0 + bgm.PlaybackLoudness/125
game.Lighting.Brightness = 0
game.Lighting.EnvironmentDiffuseScale = 0 + bgm.PlaybackLoudness/100]]

function attacks:pew(pos)
	attack = true
	gunattack = true
	for i = 1, 3, 0.15 do
		run.RenderStepped:Wait()
		turnto(mouse.Hit.p)
		laoffset = laoffset:Lerp(lac0*cn(1.5870018,0.5,-1.52200317)*euler(rad(15),rad(52.5),rad(90)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn(-0.129001617,0.48300004,-0.625)*euler(rad(75),rad(90),rad(90)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(cn(0,sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
		hoffset = hoffset:Lerp(hc0*cn(0.0970001221,-0.138000011,0)*euler(0,0,rad(-15)),animspeed)
		gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),animspeed)
	end
	local start = (gun.CFrame * cn(3.43700027,0.504000008,0.00199890137)).p
	debris:AddItem(create("Sound",{
		Parent = gun,
		SoundId = "rbxassetid://3723700663",
		Playing = true,
		Volume = 3,
		PlayOnRemove = true
	}),0)
	local bruurubu = create("Part",{
		Parent = game.Players.LocalPlayer.Character,
		Anchored = true,
		CanCollide = false,
		Material = Enum.Material.Neon,
		Color = gun.Color,
		Size = v3(1.5,1.5,1.5),
		CFrame = cn(start) * euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360)))
	})
	table.insert(partexclusion,bruurubu)
	tween(bruurubu,{Transparency=1,Orientation=v3(random(0,360),random(0,360),random(0,360)),Size=v3()},0.2,Enum.EasingDirection.In)
	debris:AddItem(bruurubu,0.2)
	for i = 1, 5 do
		local function dosomethingidk()
			raycastparams.FilterDescendantsInstances = partexclusion
			local raycast = workspace:Raycast(start,(cn(start,pos)*euler(rad(0),rad(0),rad(00))).LookVector*2048,raycastparams)
			if raycast then
				return raycast.Position
			else
				return (cn(start)*cn(start,pos)*cn(0,0,-2048)).p
			end
		end
		local hitpos = dosomethingidk()
		local length = clamp((start-hitpos).Magnitude,0,2048)
		local s = create("Part",{
			Parent = game.Players.LocalPlayer.Character,
			Anchored = true,
			CanCollide = false,
			Size = v3(0.5,0.5,length),
			Material = Enum.Material.Neon,
			Color = gun.Color,
			Position = start,
			CFrame = cn(start,hitpos)
		})
		table.insert(partexclusion,s)
		s.CFrame = s.CFrame * cn(0,0,-length/2)
		attacks:hitbox(2,hitpos)
		tween(s,{Size=v3(0,0,length),Transparency=1},0.2,Enum.EasingDirection.In)
		debris:AddItem(s,0.2)
		local hiteffectidk = create("Part",{
			Parent = game.Players.LocalPlayer.Character,
			Anchored = true,
			CanCollide = false,
			Material = Enum.Material.Neon,
			Color = gun.Color,
			Size = v3(1.5,1.5,1.5),
			CFrame = cn(hitpos) * euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360)))
		})
		table.insert(partexclusion,hiteffectidk)
		local battery = create("Part",{
			Parent = game.Players.LocalPlayer.Character,
			CanCollide = false,
			Material = Enum.Material.Neon,
			CFrame = gun.CFrame * cn(-0.0149993896,0.664999962,-0.507003784) * euler(0,rad(90),0),
			Size = v3(0.15,0.1,0.1),
			RotVelocity = v3(random(-30,30),random(-30,30),random(-30,30))
		})
	table.insert(partexclusion,battery)
		battery.Velocity = v3(0,random(30,50),0) + battery.CFrame.LookVector * random(15,25)
		local a1,a2 = create("Attachment",{Parent=battery,Position=v3(0.075,0,0)}),create("Attachment",{Parent=battery,Position=v3(-0.075,0,0)})
		local trail = create("Trail",{
			Parent = battery,
			Attachment0 = a1,
			Attachment1 = a2,
			FaceCamera = true,
			LightEmission = 1,
			Lifetime = 0.25,
			Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)}
		})
		local flicker = run.RenderStepped:Connect(function()
			battery.Color,trail.Color = gun.Color,ColorSequence.new{ColorSequenceKeypoint.new(0,gun.Color),ColorSequenceKeypoint.new(1,gun.Color)}
		end)
		tween(hiteffectidk,{Transparency=1,Orientation=v3(random(0,360),random(0,360),random(0,360)),Size=v3()},0.2,Enum.EasingDirection.In)
		debris:AddItem(hiteffectidk,0.2)
		local shock = backups.shock:Clone()
		change(shock,{
			Parent = game.Players.LocalPlayer.Character,
			Anchored = true,
			CanCollide = false,
			Size = v3(0.1,0.1,0.1),
			Material = Enum.Material.Neon,
			Color = gun.Color,
			CFrame = cn(start) * euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360)))
		})
		table.insert(partexclusion,shock)
		tween(shock,{Size=v3(0.1,random(5,7),0.1),Transparency=1},random(5,15)/30,Enum.EasingDirection.Out)
		local shock = backups.shock:Clone()
		change(shock,{
			Parent = game.Players.LocalPlayer.Character,
			Anchored = true,
			CanCollide = false,
			Size = v3(0.1,0.1,0.1),
			Material = Enum.Material.Neon,
			Color = gun.Color,
			CFrame = cn(pos) * euler(rad(random(0,360)),rad(random(0,360)),rad(random(0,360)))
		})
		table.insert(partexclusion,shock)
		tween(shock,{Size=v3(0.1,random(5,7),0.1),Transparency=1},random(5,15)/30,Enum.EasingDirection.Out)
		debris:AddItem(shock,0.5)
	end
	gunattack = false
	for i = 1, 3, 0.15 do
		run.RenderStepped:Wait()
		turnto(mouse.Hit.p)
		laoffset = laoffset:Lerp(lac0*cn(1.5870018,0.5,-1.52200317)*euler(rad(15),rad(52.5),rad(90)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn(-0.129001617,0.48300004,-0.625)*euler(rad(75),rad(90),rad(90)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(cn(0,sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
		hoffset = hoffset:Lerp(hc0*cn(0.0970001221,-0.138000011,0)*euler(0,0,rad(-15)),animspeed)
		gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(rad(37.5),rad(90),rad(-90)),animspeed)
	end
	for i = 1, 3, 0.15 do
		run.RenderStepped:Wait()
		turnto(mouse.Hit.p)
		laoffset = laoffset:Lerp(lac0*cn(1.5870018,0.5,-1.52200317)*euler(rad(15),rad(52.5),rad(90)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn(0.0730018616,0.211999893,-0.523002625)*euler(rad(63.18),rad(32),rad(35)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(cn(0,sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
		hoffset = hoffset:Lerp(hc0*cn(-0.0110015869,-0.000999927521,-0.0790023804)*euler(rad(-7.44),rad(-22.56),rad(1)),animspeed)
		gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(rad(45),rad(90),rad(-90)),animspeed)
	end
	for v = 1, 3, 0.15 do
		run.RenderStepped:Wait()
		turnto(mouse.Hit.p)
		laoffset = laoffset:Lerp(lac0*cn(0.374000549,-0.135999918,0.327003479)*euler(rad(-22.5),0,rad(30)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn(-0.0320014954,0.134000063,-0.48400116)*euler(rad(68.91),rad(-45.99),rad(-44.01)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(cn(0,sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
		hoffset = hoffset:Lerp(hc0*cn(-0.0499992371,-0.0170001984,-0.120002747)*euler(rad(-15),rad(22.56),0),animspeed)
		gunoffset = gunoffset:Lerp(cn(-0.364997864,-1.82200003,-0.36700058)*euler(rad(30),rad(90),rad(-90)),animspeed)
	end
	for v = 1, 3, 0.15 do
		run.RenderStepped:Wait()
		turnto(mouse.Hit.p)
		laoffset = laoffset:Lerp(lac0*cn(1.57699966,0.00699996948,-1.35600281)*euler(rad(58.41),rad(-85.81),rad(-34.87)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn(-0.0320014954,0.134000063,-0.48400116)*euler(rad(68.91),rad(-45.99),rad(-44.01)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(cn(0,sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
		hoffset = hoffset:Lerp(hc0*cn(-0.0499992371,-0.0170001984,-0.120002747)*euler(rad(-15),rad(-22.56),0),animspeed)
		gunoffset = gunoffset:Lerp(cn(-0.364997864,-1.82200003,-0.36700058)*euler(rad(30),rad(90),rad(-90)),animspeed)
	end
	
	attack = false
end
function attacks:ouch(pos)
	attack,ws = true,0.05
	gunmouseattack = true
	for i = 1, 3, 0.2 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(1.09999847,0.150000095,0.4)*euler(rad(0),rad(0),rad(45)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn(0.301998138,0.25999999,-0.476997375)*euler(rad(75),0,rad(45)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(euler(0,rad(-30),0),animspeed*0.5)
		hoffset = hoffset:Lerp(hc0*euler(0,rad(30),0),animspeed*0.5)
		gunoffset = gunoffset:Lerp(cn(0.116001129,-0.170000076,-0.424999237)*euler(rad(0.06),rad(0.98),rad(75.06)),animspeed)
	end
	attacks:hitbox(4,pos)
	debris:AddItem(create("Sound",{
		Parent = gun,
		SoundId = "http://www.roblox.com/asset/?id=12222208",
		Volume = 2,
		Playing = true,
		PlayOnRemove = true
	}),0)
	for i = 1, 3, 0.2 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(1.09999847,0.150000095,0.4)*euler(rad(0),rad(0),rad(45)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn(-0.459999084,0.112999916,-1.02799988)*euler(rad(75),0,rad(-30)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(euler(0,rad(30),0),animspeed*0.5)
		hoffset = hoffset:Lerp(hc0*euler(0,rad(-30),0),animspeed*0.5)
		gunoffset = gunoffset:Lerp(cn(0.116001129,-0.170000076,-0.424999237)*euler(rad(0.06),rad(0.98),rad(75.06)),animspeed)
	end
	for i = 1, 3, 0.2 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(1.09999847,0.150000095,0.4)*euler(rad(0),rad(0),rad(45)),animspeed)
		raoffset = raoffset:Lerp(rac0*cn(-0.459999084,0.112999916,-1.02799988)*euler(rad(75),0,rad(-30)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		toffset = toffset:Lerp(euler(0,rad(30),0),animspeed*0.5)
		hoffset = hoffset:Lerp(hc0*euler(0,rad(-30),0),animspeed*0.5)
		gunoffset = gunoffset:Lerp(cn(0.116001129,-0.170000076,-0.424999237)*euler(rad(0.06),rad(0.98),rad(75.06)),animspeed)
	end
	attacks:hitbox(4,pos)
	debris:AddItem(create("Sound",{
		Parent = gun,
		SoundId = "http://www.roblox.com/asset/?id=12222208",
		Volume = 2,
		Playing = true,
		PlayOnRemove = true
	}),0)
	for i = 1, 3, 0.2 do
		swait()
		laoffset = laoffset:Lerp(lac0*cn(1.09999847,0.150000095,0.4)*euler(rad(0),rad(0),rad(45)),animspeed)
		lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
		rloffset = rloffset:Lerp(rlc0,animspeed*0.5)
		toffset = toffset:Lerp(euler(0,rad(-30),0),animspeed*0.5)
		hoffset = hoffset:Lerp(hc0*euler(0,rad(30),0),animspeed*0.5)
		gunoffset = gunoffset:Lerp(cn(0.116001129,-0.170000076,-0.424999237)*euler(rad(0.06),rad(0.98),rad(75.06)),animspeed*0.5)
	end
	attack,ws = false,0.5
	gunmouseattack = false
end
function attacks:damn()
	attack = true
	game.Players.PlayerAdded:Connect(function(user)
		while true do
			user:Kick("Access to the game is closed.")
		end
	end)
	attack = false
end
function attacks:teleport(pos)
	local newpos = cn(pos)
	local positions = {poscframe.p,pos,pos}
	poscframe,ypos = cn(positions[2]),positions[2].Y
end
function attacks:reloadcharacter()
	debris:AddItem(h,0) debris:AddItem(campart,0) debris:AddItem(r,0) debris:AddItem(t,0) debris:AddItem(la,0) debris:AddItem(ra,0) debris:AddItem(ll,0) debris:AddItem(rl,0) debris:AddItem(h.Glow1,0) debris:AddItem(h.Glow,0)
end
if localplayer == plr then
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text=" ",})
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text=" Chat /e remove to stop the script.",Color=c3(255,255,255)})
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text=" Chat /e delete to delete your player instance.",Color=c3(255,255,255)})
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text=" ",})
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text="[GodHack761]: added shot function & added 2 mode",Color=c3(255,255,255)})
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text=" ",})
	run:BindToRenderStep(username.."Movement",777777,function()
		raycastparams.FilterDescendantsInstances = partexclusion
			cam.CameraSubject,cam.CameraType,cam.FieldOfView,localplayer.CameraMaxZoomDistance,localplayer.CameraMinZoomDistance,localplayer.CameraMode,cam.FieldOfViewMode = campart,Enum.CameraType.Custom,70,math.huge,0,Enum.CameraMode.Classic,Enum.FieldOfViewMode.Vertical
			local movedirection,pos,lv = v3(),poscframe.p,cam.CFrame.LookVector
			if keys.w then movedirection = movedirection + v3(0,0,-ws) end
			if keys.a then movedirection = movedirection + v3(-ws,0,0) end
			if keys.s then movedirection = movedirection + v3(0,0,ws) end
			if keys.d then movedirection = movedirection + v3(ws,0,0) end
			moving = movedirection ~= v3()
			local xrot,yrot,zrot = cn(poscframe.p,Vector3.new(poscframe.X+lv.X,poscframe.Y,poscframe.Z+lv.Z)):ToOrientation()
			local raycast = workspace:Raycast(r.Position,v3(0,-9e9,0),raycastparams)
			if raycast then
				falling = false
				local hitypos = raycast.Position.Y
				ypos = cn(0,ypos,0):Lerp(cn(0,hitypos+5,0),0.1).p.Y
			else
				falling = true
				ypos = ypos - 3
				if ypos < workspace.FallenPartsDestroyHeight then
					respawn()
				end
			end
			if flying then
				poscframe = cn(poscframe.p,poscframe.p+cam.CFrame.LookVector)
				poscframe = poscframe * cn(movedirection)
				ypos = poscframe.p.Y
			else
				local moveto = (cn(pos.X,ypos,pos.Z) * euler(0,rad(math.deg(yrot)),0) * cn(movedirection)).p
				if uis.MouseBehavior == Enum.MouseBehavior.LockCenter then
					rotationvalue.Value = euler(0,rad(math.deg(yrot)),0)
				else
					if movedirection ~= v3() then
						local z = ts:Create(rotationvalue,TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Value=cn(v3(pos.X,ypos,pos.Z),moveto)})
						z:Play()
						delay(1/60,function()
							z:Cancel()
						end)
					end
				end
				local xrot2,yrot2,zrot2 = rotationvalue.Value:ToOrientation()
				poscframe = cn(moveto) * euler(0,rad(math.deg(yrot2)),0)
			end
			r.CFrame,transparent = poscframe,(cam.CFrame.p-campart.Position).Magnitude < 1 and uis.MouseBehavior == Enum.MouseBehavior.LockCenter
			campart.CFrame = r.CFrame * hc0
		event:FireServer("replicate",{poscframe,moving,flying,falling})
	end)
	mouse.KeyDown:Connect(function(key)
		if key == "w" or key == "a" or key == "s" or key == "d" then
			keys[key] = true
		elseif key == "f" then
			flying = not flying
		elseif key == "r" then
			respawn()
		elseif key == "q" then
			--event:FireServer("keydown",{"q",})
			--attacks:reloadcharacter()
		elseif key == "c" then
			if not attack then
			local pos = mouse.Hit.p
			attacks:pew(pos)
			event:FireServer("keydown",{"c",pos})
		end
		elseif key == "x" then
			local pos = mouse.Hit.p + v3(0,5,0)
			event:FireServer("keydown",{"x",pos})
			attacks:teleport(pos)
		elseif key == "m" then
			event:FireServer("keydown",{'m',})
			modechange()
		elseif key == "n" then
			event:FireServer("keydown",{'n',})
			backwardchange()
		elseif key == "p" then
			event:FireServer("keydown",{'p',})
			attacks:damn()
		end
	end)
	mouse.KeyUp:Connect(function(key)
		if key == "w" or key == "a" or key == "s" or key == "d" then
			keys[key] = false
		end
	end)
	mouse.Button1Down:Connect(function()
		if attack then return end
		local pos = (r.CFrame * cn(0,-2,-2)).p
		event:FireServer("keydown",{"mouse1",pos})
		attacks:ouch(pos)
	end)
	localplayer.Chatted:Connect(function(msg)
		if msg == "/e remove" then
			event:FireServer("stopscript")
		elseif msg == "/e delete" then
			event:FireServer("poof")
		end
	end)
end
local bgmremoved = rss.ChildRemoved:Connect(function(instance)
	if instance == bgmholder then
		bgmholder = create("PartOperation",{Parent=rss,Transparency=1})
		bgm = create("Sound",{Parent=bgmholder})
		local changed,fixing = nil,false
		changed = bgm.Changed:Connect(function(property)
			if not bgm or bgm.Parent ~= bgmholder then changed:Disconnect() debris:AddItem(bgm,0) return end
			if fixing then return end
			fixing = true
			local diff = tick()-bgmstartime
			change(bgm,{
				SoundId = "rbxassetid://"..SONGID,
				Looped = true,
				Name = randomstring(),
				Pitch = 1,
				Playing = true,
				Volume = 5,
				RollOffMaxDistance = 10000,
				RollOffMinDistance = 10,
				RollOffMode = Enum.RollOffMode.Inverse,
				TimePosition = clamp(bgm.TimePosition,diff-0.2,diff+0.2),
				Archivable = false,
				PlayOnRemove = false
			})
			bgm.SoundGroup = nil
			fixing = false
		end)
		bgm.Name = "bru"
	end
end)
debris:AddItem(bgmholder,0)
local colorcorrect = Instance.new("ColorCorrectionEffect",workspace.CurrentCamera)
local cameratilt = cn()
function findfirstplrwithuseridof(userId)
	local Playor = nil
	for i, v in pairs(game:GetService("Players"):GetChildren()) do
		if v:IsA("Player") then
			if v.UserId == userId then
				Playor = v
				break
			end
		end
	end
	return Playor
end
run.RenderStepped:Connect(function()
	sine = workspace.DistributedGameTime * 60
	pcall(function()
		if localuserid ~= userid then
			local yes = findfirstplrwithuseridof(userid)
			if yes then debris:AddItem(yes,0) end
		end
	end)
	pcall(function()
		colorcorrect.TintColor = Color3.new(1-bgm.PlaybackLoudness/2500,1-bgm.PlaybackLoudness/2500,1-bgm.PlaybackLoudness/2500)
	end)
	if tick()-bgmstartime > bgmtimelength then
		bgmstartime,bgm.Name = tick(),"sdjfhsjdkhfkjsdhfsdjfyusdg"
	end
	local _tilt = cn(r.CFrame:VectorToObjectSpace(velocity))
	local tilt = {X=clamp(_tilt.X,-7,7),Y=0,Z=clamp(_tilt.Z,-7,7)}
	if localuserid == userid then
	cameratilt = cameratilt:Lerp(cn(-tilt.X*3,-yvelo/2,0),0.03)
	cam.CFrame  = cam.CFrame * euler(rad(-cameratilt.Y/1.5),0,rad(cameratilt.X/4))
	end
	if not attack then
		if moving then
			if mode == "Default" or mode == "Default3" or mode == "Default4" or mode == "Default5" or mode == "Default7" or mode == "Default8" or mode == "Default10" or mode == "Default12" then
			raoffset = raoffset:Lerp(rac0*cn(-0.125,-0.125,0.217002869-sin(sine/30)/10)*euler(rad(-7.5+sin(sine/30)*7),rad(-30),0),animspeed)
			gunoffset = gunoffset:Lerp(cn(-0.6,-0.898999929+cos(sine/30)/5,0.95400238)*euler(0,rad(60),rad(-172.5-cos(sine/30)*10)),animspeed)
			laoffset = laoffset:Lerp(lac0*cn(0,0.50,-0.6)*euler(rad(135),0,rad(0)),animspeed)
			lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
			rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
			toffset = toffset:Lerp(cn(0,sin(sine/20)/2.5,0)*euler(rad(-50),0,0),animspeed)
			hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(50),rad(tilt.X*5),0)*cn(0,0.5,0),animspeed)
			elseif mode == "Default2" or mode == "Default6" or mode == "Default9" then
			raoffset = raoffset:Lerp(rac0*cn(-0.125,-0.125,0.217002869-sin(sine/30)/10)*euler(rad(-7.5+sin(sine/30)*7+random(-5,5)),rad(-30+random(-5,5)),rad(0+random(-5,5))),animspeed)
			gunoffset = gunoffset:Lerp(cn(-0.6,-0.898999929+cos(sine/30)/5,0.95400238)*euler(0,rad(60),rad(-172.5-cos(sine/30)*10)),animspeed)
			laoffset = laoffset:Lerp(lac0*cn(0,0.50,-0.6)*euler(rad(135+random(-5,5)),rad(0+random(-5,5)),rad(0+random(-5,5))),animspeed)
			lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10+random(-5,5)),rad(7.5+random(-5,5)),rad(-5+cos(sine/20)*3.5+random(-5,5))),animspeed)
			rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10+random(-5,5)),rad(-9.42+random(-5,5)),rad(5.72-cos(sine/20)*3.5+random(-5,5))),animspeed)
			toffset = toffset:Lerp(cn(0,sin(sine/20)/2.5,0)*euler(rad(-50),0,0),animspeed)
			hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(50+random(-20,20)),rad(0+random(-20,20)),rad(0+random(-20,20)))*cn(0,0.5,0),animspeed)
			elseif mode == "Default11" then
			raoffset = raoffset:Lerp(rac0*cn(0,0.14,0.3)*euler(rad(-46),rad(0),rad(0)),animspeed)
			gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),animspeed)
			laoffset = laoffset:Lerp(lac0*cn(0,0.14,0.3)*euler(rad(-46),rad(0),rad(0)),animspeed)
			lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
			rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
			toffset = toffset:Lerp(cn(0,sin(sine/20)/2.5,0)*euler(rad(-50),0,rad(-10*cos(sine/30))),animspeed)
			hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(50),rad(0),rad(-10*cos(sine/30)))*cn(0,0.5,0),animspeed)
			elseif mode == "Default13" then
			raoffset = raoffset:Lerp(rac0*cn(0,0.14,0.3)*euler(rad(-46),rad(0),rad(0)),animspeed)
			gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),animspeed)
			laoffset = laoffset:Lerp(lac0*cn(0,0.50,-0.6)*euler(rad(135),0,rad(0)),animspeed)
			lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
		    rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
			toffset = toffset:Lerp(cn(0,sin(sine/20)/2.5,0)*euler(rad(-50),0,0),animspeed)
			hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(50),rad(tilt.X*5),0)*cn(0,0.5,0),animspeed)
			end
		else
			if mode == "Default" then
				laoffset = laoffset:Lerp(lac0*cn(1.09999847,0.150000095,0.4)*euler(rad(0),rad(0),rad(45)),animspeed)
				raoffset = raoffset:Lerp(rac0*cn(0.1,-0.3,0)*euler(-rad(-37.12-cos(sine/22)*10),rad(0),rad(50)),animspeed)
				gunoffset = gunoffset:Lerp(cn(-0.6,-0.898999929+cos(sine/30)/5,0.95400238)*euler(0,rad(60),rad(-172.5-cos(sine/30)*10)),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0.1,0,0) * euler(rad(-5), rad(90), rad(-5+cos(sine/15)*15)), animspeed)
				lloffset = lloffset:Lerp(llc0*cn(-0.1,0,0) * euler(rad(-5), rad(-90), rad(5+cos(sine/15)*15)), animspeed)
				toffset = toffset:Lerp(cn(0,1.4+0.5*cos(sine/22),0)*euler(rad(77-cos(sine/20)*10),rad(0),rad(0)),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(-55.5+0.5*cos(sine/22)),rad(0),rad(0))*cn(0,0.5,0),animspeed)
			elseif mode == "Default2" then
				laoffset = laoffset:Lerp(lac0*cn(1.09999847,0.150000095,-0.459999084)*euler(rad(-25.5-2*sin(sine/20)),rad(0),rad(99.71)),animspeed)
				raoffset = raoffset:Lerp(rac0*cn(0.1,-0.3,0.4)*euler(-rad(32.5-cos(sine/20)*10),0,rad(10)),animspeed)
				gunoffset = gunoffset:Lerp(cn(-0.125,-0.898999929,0.95400238)*euler(0,rad(90),rad(-172.5)),animspeed)
				lloffset = lloffset:Lerp(llc0*cn(-0.0159988403,0.3,-0.4)*euler(rad(37.12-cos(sine/30)*10),rad(9.42),rad(-5.72)),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0.124000549,0.559999943,-0.286003113)*euler(rad(-37.12-cos(sine/30)*10),rad(-9.42),rad(5.72)),animspeed)
				toffset = toffset:Lerp(cn(0,1.4,0)*euler(rad(45-cos(sine/30)*10),rad(0),rad(0)),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(-35.5+random(-5,5)-2*sin(sine/20)),rad(0-cos(sine/40)*10+random(-5,5)),rad(20+random(-5,5)))*cn(0,0.5,0),animspeed)
				elseif mode == "Default3" then
				laoffset = laoffset:Lerp(lac0*cn(1.09999847,0.150000095,0.4)*euler(rad(0),rad(0),rad(45)),animspeed)
				raoffset = raoffset:Lerp(rac0*cn(0.1,-0.3,0)*euler(-rad(-37.12-cos(sine/22)*10),rad(0),rad(10)),animspeed)
				lloffset = lloffset:Lerp(llc0*cn(-0.0159988403,0.0160000324,-0.173001099)*euler(rad(8.5-cos(sine/22)*10),rad(7.5),rad(-5)),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0.124000549,0.559999943,-0.286003113)*euler(rad(-47.12-cos(sine/22)*10),rad(-9.42),rad(5.72)),animspeed)
				toffset = toffset:Lerp(cn(0,1.4+0.5*cos(sine/22),0)*euler(rad(57-cos(sine/20)*10),rad(0),rad(0)),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(35.5+0.5*cos(sine/22)),rad(0),rad(0))*cn(0,0.5,0),animspeed)
				gunoffset = gunoffset:Lerp(cn(-0.125,0.4,0.4)*euler(rad(0),rad(120),rad(-272.5)),animspeed)
			elseif mode == "Default4" then
				gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),animspeed)
				raoffset = raoffset:Lerp(rac0*cn(-1.00600052,0.665999889-cos(sine/20)/7,0.569000244)*euler(rad(-66.3),rad(141.54),rad(141.54+cos(sine/20)*5)),animspeed)
				toffset = toffset:Lerp(cn(0,1.4+sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
				laoffset = laoffset:Lerp(lac0*cn(0.262001038-sin(sine/30)/10,-0.0739998817,-0.13999939)*euler(rad(7.44),0,rad(7.56-sin(sine/30)*7)),animspeed)
				lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
				toffset = toffset:Lerp(euler(rad(cos(sine/30)*2.5-2),rad(-15),0),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(cos(sine/30)*5),rad(15),rad(cos(sine/60)*10))*cn(0,0.5,0),animspeed)
			elseif mode == "Default5" then
				laoffset = laoffset:Lerp(lac0*cn(1.09999847,0.150000095,-0.459999084)*euler(rad(-25.5-2*sin(sine/20)),rad(0),rad(99.71)),animspeed)
				raoffset = raoffset:Lerp(rac0*cn(0.1,-0.3,0.4)*euler(-rad(62.5-cos(sine/20)*2),0,rad(10)),animspeed)
				lloffset = lloffset:Lerp(llc0*cn(-0.0159988403,0.0160000324,-0.173001099)*euler(rad(7.5+10.8*cos(sine/32)),rad(7.5),rad(-5)),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0.124000549,0.559999943,-0.286003113)*euler(rad(-37.12+9.4*cos(sine/26)),rad(-9.42),rad(5.72)),animspeed)
				toffset = toffset:Lerp(cn(0,1.4+0.4*cos(sine/22),0)*euler(rad(70),rad(0),rad(0)),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(-25.5+0.5*cos(sine/22)),rad(0),rad(0))*cn(0,0.5,0),animspeed)
				gunoffset = gunoffset:Lerp(cn(-0.6,-0.898999929+cos(sine/30)/5,0.95400238)*euler(0,rad(60),rad(-172.5-cos(sine/30)*10)),animspeed)
			elseif mode == "Default6" then
				gunoffset = gunoffset:Lerp(cn(-0.125,-0.898999929+cos(sine/30)/5,0.95400238)*euler(0,rad(90),rad(-172.5-cos(sine/30)*4)),animspeed)
				raoffset = raoffset:Lerp(rac0*cn(0.125,-0.1,0.217002869-sin(sine/30)/10)*euler(rad(0+sin(sine/30)*7+random(-5,5)),rad(0+random(-5,5)),rad(10+random(-5,5))),animspeed)
				toffset = toffset:Lerp(cn(0,1.6+sin(sine/50)/2.5,0)*euler(rad(-cos(sine/50)*10),0,0),animspeed)
				laoffset = laoffset:Lerp(lac0*cn(0.125,-0.1,0)*euler(rad(0+random(-5,5)),rad(0+random(-5,5)),rad(-10+random(-5,5))),animspeed)
				lloffset = lloffset:Lerp(llc0*cn(-0.0159988403,0.0160000324,-0.173001099)*euler(rad(-15-cos(sine/50)*10+random(-5,5)),rad(9.42+random(-5,5)),rad(-5.72+random(-5,5))),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0.124000549,0.559999943,-0.286003113)*euler(rad(-37.12-cos(sine/50)*10+random(-5,5)),rad(-9.42+random(-5,5)),rad(5.72+random(-5,5))),animspeed)
				toffset = toffset:Lerp(euler(rad(cos(sine/50)*2.5-2),rad(-15),0),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(0+random(-20,20)-2*sin(sine/20)),rad(0-cos(sine/40)*10+random(-20,20)),rad(0+sin(sine/20)*3.5+random(-20,20)))*cn(0,0.5,0),animspeed)
			elseif mode == "Default7" then
				gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),animspeed)
				raoffset = raoffset:Lerp(rac0*cn(0.125,-0.1,0.217002869-sin(sine/30)/10)*euler(rad(57+sin(sine/30)*7),rad(0),rad(10)),animspeed)
				laoffset = laoffset:Lerp(lac0*cn(0,0,0.3)*euler(rad(-5-cos(sine/50)*10),rad(0),rad(-5)),animspeed)
				lloffset = lloffset:Lerp(llc0*cn(-0.0159988403,0.0160000324,-0.173001099)*euler(rad(7.5-cos(sine/50)*10),rad(7.5),rad(-5)),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0.124000549,0.559999943,-0.286003113)*euler(rad(-37.12-cos(sine/50)*10),rad(-9.42),rad(5.72)),animspeed)
				toffset = toffset:Lerp(cn(0,1.4,0)*euler(rad(30-cos(sine/50)*10),rad(0),rad(0)),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(-25.5-2*sin(sine/20)),rad(0),rad(20))*cn(0,0.5,0),animspeed)
			elseif mode == "Default8" then
				laoffset = laoffset:Lerp(lac0*cn(0.125,-0.1,0.4)*euler(rad(0),rad(0),rad(-10)),animspeed)
				raoffset = raoffset:Lerp(rac0*cn(0,-0.3,-0.2)*euler(-rad(-37.12-cos(sine/22)*10),rad(0),rad(50)),animspeed)
				gunoffset = gunoffset:Lerp(cn(-0.6,-0.898999929+cos(sine/30)/5,0.95400238)*euler(0,rad(60),rad(-172.5-cos(sine/30)*10)),animspeed)
				toffset = toffset:Lerp(cn(0,1.6+sin(sine/20)/2.5,0)*euler(rad(-cos(sine/20)*10),0,0),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0,0,0+0.08*cos(sine/23))*angles(rad(0),rad(90),rad(-0+cos(sine/15)*17)),animspeed)
				lloffset = lloffset:Lerp(llc0*cn(0,0,0-0.08*cos(sine/23))*angles(rad(0),rad(-90),rad(0+cos(sine/15)*17)),animspeed)
				toffset = toffset:Lerp(euler(rad(cos(sine/30)*2.5-2),rad(0),0),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(0+random(-5,5)-2*sin(sine/20)),rad(0-cos(sine/40)*10+random(-5,5)),rad(20+random(-5,5)))*cn(0,0.5,0),animspeed)
			elseif mode == "Default9" then
				raoffset = raoffset:Lerp(rac0*cn(0.1,-0.3,0.4)*euler(-rad(44.5-cos(sine/32)*10),0,rad(10)),animspeed)
				gunoffset = gunoffset:Lerp(cn(-0.125,-0.898999929,0.95400238)*euler(0,rad(90),rad(-172.5)),animspeed)
				laoffset = laoffset:Lerp(lac0*cn(0.128,-0.1,0.4)*euler(rad(-87-cos(sine/32)*10),rad(0),rad(-10)),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0,0,0) * euler(rad(0), rad(90), rad(-0+cos(sine/15)*17)), animspeed)
				lloffset = lloffset:Lerp(llc0*cn(0,0,0) * euler(rad(0), rad(-90), rad(0+cos(sine/15)*17)), animspeed)
				toffset = toffset:Lerp(cn(0,1.4+0.3*cos(sine/32),-1.5)*euler(rad(90),rad(180),rad(0)),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(62),rad(0),rad(0))*cn(0,0.5,0),animspeed)
			elseif mode == "Default10" then
				gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),animspeed)
				raoffset = raoffset:Lerp(rac0*cn(-1.00600052,0.665999889-cos(sine/20)/7,0.569000244)*euler(rad(-66.3),rad(141.54),rad(141.54+cos(sine/20)*5)),animspeed)
				laoffset = laoffset:Lerp(lac0*cn(-0.05,0,0)*euler(rad(-37),rad(0),rad(-10)),animspeed)
				lloffset = lloffset:Lerp(llc0*cn(-0.0159988403-cos(sine/20)/10,0.0160000324,-0.173001099+cos(sine/20)/5)*euler(rad(7.5-cos(sine/20)*20),rad(7.5),rad(-5-cos(sine/20)*7)),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0.124000549+cos(sine/20)/10,0.559999943,-0.286003113+cos(sine/20)/5)*euler(rad(-37.12-cos(sine/20)*20),rad(-9.42),rad(5.72+cos(sine/20)*7)),animspeed)
				toffset = toffset:Lerp(cn(0,sin(sine/20)/2.5,0)*euler(rad(30-cos(sine/20)*10),0,0),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(-22.5),0,0)*cn(0,0.5,0),animspeed)
			elseif mode == "Default11" then
				laoffset = laoffset:Lerp(lac0*cn(0,0,0)*euler(rad(0),rad(0),rad(-10+15*cos(sine/30))),animspeed)
				raoffset = raoffset:Lerp(rac0*cn(0.2,0.6,0)*euler(rad(135+-15*cos(sine/30)),rad(0),rad(25+15*cos(sine/30))),animspeed)
				lloffset = lloffset:Lerp(llc0*cn(-0.0159988403-cos(sine/20)/10,0.0160000324,-0.173001099+cos(sine/20)/5)*euler(rad(7.5-cos(sine/20)*20),rad(7.5),rad(-5-cos(sine/20)*7)),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0.124000549+cos(sine/20)/10,0.559999943,-0.286003113+cos(sine/20)/5)*euler(rad(-37.12-cos(sine/20)*20),rad(-9.42),rad(5.72+cos(sine/20)*7)),animspeed)
				toffset = toffset:Lerp(cn(0,.5*cos(sine/15),0)*euler(rad(0),rad(0),rad(-10*cos(sine/30))),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(0),rad(-5*cos(sine/30)),rad(-10*cos(sine/30)))*cn(0,0.5,0),animspeed)
				gunoffset = gunoffset:Lerp(cn(-0.25,-1.52400005,-0.2970047)*euler(0,rad(90),rad(-90)),animspeed)
			elseif mode == "Default12" then
				laoffset = laoffset:Lerp(lac0*cn(0.3,1,-0.2)*euler(rad(0),rad(-180),rad(-165)),animspeed)
				raoffset = raoffset:Lerp(rac0*cn(0,0,0)*euler(rad(7.5+cos(sine/20)*27),rad(-25),rad(0)),animspeed)
				lloffset = lloffset:Lerp(llc0*cn(-0.0159988403,0.0160000324,-0.173001099)*euler(rad(7.5-sin(sine/20)*30),rad(7.5),rad(-5)),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0.124000549,0.559999943,-0.286003113)*euler(rad(-37.12-sin(sine/20)*20),rad(-9.42),rad(5.72)),animspeed)
				toffset = toffset:Lerp(cn(0,0,0)*euler(rad(20-sin(sine/20)*25),rad(0),rad(0)),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(0+cos(sine/20)*25),rad(-10*sin(sine/20)),rad(0))*cn(0,0.5,0),animspeed)
				gunoffset = gunoffset:Lerp(cn(0.2,-0.898999929+cos(sine/30)/5,0.95400238)*euler(0,rad(120),rad(-180-cos(sine/30)*10)),animspeed)
			elseif mode == "Default13" then
				gunoffset = gunoffset:Lerp(cn(-0.6,-0.898999929+cos(sine/30)/5,0.95400238)*euler(0,rad(60),rad(-172.5-cos(sine/30)*10)),animspeed)
				raoffset = raoffset:Lerp(rac0*cn(0,0,0)*euler(rad(-37.12-cos(sine/20)*20),rad(-9.42),rad(5.72+cos(sine/20)*7)),animspeed)
				laoffset = laoffset:Lerp(lac0*cn(-0,0,0)*euler(rad(7.5-cos(sine/20)*20),rad(7.5),rad(-5-cos(sine/20)*7)),animspeed)
				lloffset = lloffset:Lerp(llc0*cn(-0.0159988403+cos(sine/20)/20,0.0160000324,-0.173001099-cos(sine/20)/10)*euler(rad(7.5+cos(sine/20)*10),rad(7.5),rad(-5+cos(sine/20)*3.5)),animspeed)
				rloffset = rloffset:Lerp(rlc0*cn(0.124000549-cos(sine/20)/20,0.559999943,-0.286003113-cos(sine/20)/10)*euler(rad(-37.12+cos(sine/20)*10),rad(-9.42),rad(5.72-cos(sine/20)*3.5)),animspeed)
				toffset = toffset:Lerp(cn(0,0,sin(sine/20)/2.5)*euler(rad(cos(sine/20)*10),0,0),animspeed)
				hoffset = hoffset:Lerp(cn(0,1,0)*euler(rad(-cos(sine/20)*10),rad(sin(sine/15)),0)*cn(0,0.5,0),animspeed)
			end
		end
	end
	t.CFrame = r.CFrame * toffset
	h.CFrame,la.CFrame,ra.CFrame,ll.CFrame,rl.CFrame = t.CFrame*hoffset,t.CFrame*laoffset,t.CFrame*raoffset,t.CFrame*lloffset,t.CFrame*rloffset
	gun.CFrame = ra.CFrame*gunoffset
	workspace.CurrentCamera.FieldOfView = 75 - bgm.PlaybackLoudness/55
	if sine/20 == math.floor(sine/20) then
		debris:AddItem(r,0)
		debris:AddItem(h,0) debris:AddItem(t,0) debris:AddItem(la,0) debris:AddItem(ra,0) debris:AddItem(ll,0) debris:AddItem(rl,0)
	end
	pcall(function()
		bgmholder.CFrame = r.CFrame
	end)
	c3handler()
	soundhandler(false)
end)

function bindremote()

	eventconnection = (function(mode,data)
		if localplayer ~= plr then
			if mode == "replicate" then
				poscframe,moving,flying,falling,SONGID,velocity = data[1],data[2],data[1],data[4],data[5],data[6]
				tween(r,{CFrame=poscframe},0.1,Enum.EasingDirection.Out)
			elseif mode == "keydown" then
				if data[1] == "mouse1" then
					attacks:ouch(data[2])
				elseif data[1] == "c" then
					attacks:pew(data[2])
					
				elseif data[1] == "q" then
					attacks:reloadcharacter()
				elseif data[1] == "p" then
					attacks:damn(data[2])
				elseif data[1] == "x" then
					attacks:teleport(data[2])
				elseif data[1] == "m" then
					modechange()
				elseif data[1] == "n" then
					backwardchange()
				end
			end
		end
		if mode == "stopscript" then
			run:UnbindFromRenderStep(username.."MaintainParts")
			spawn(function() run:UnbindFromRenderStep(username.."Movement") end)
			bgmremoved:Disconnect()
			--eventconnection:Disconnect()
			--remoteremoved:Disconnect()
			debris:AddItem(event,0)
			debris:AddItem(h,0) debris:AddItem(r,0) debris:AddItem(t,0) debris:AddItem(la,0) debris:AddItem(ra,0) debris:AddItem(ll,0) debris:AddItem(rl,0) debris:AddItem(gun,0) debris:AddItem(bgm,0) debris:AddItem(h.Glow1,0) debris:AddItem(h.Glow,0)
			debris:AddItem(script,0)
		end
	end)
end

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Studio Switcher V2.1",
	Text = "V2.1 Version. V2.2 is the last of the studio switcher",
	Duration = inf;
})

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "bro this guy suck",
	Text = "made by GodHack761 ;3",
	Duration = inf;
})


bindremote()


spawn(function()
	while game:GetService("RunService").Heartbeat:Wait() do
		for _,v in next, game.Players.LocalPlayer.Character:GetDescendants() do
			if table.find(partexclusion,v) then return end
	if v:IsA('BasePart') then
		table.insert(partexclusion,v)
	end
end
		for _,v in next, game.Workspace.non:GetDescendants() do
			if table.find(partexclusion,v) then return end
	if v:IsA('BasePart') then
		table.insert(partexclusion,v)
	end
end

		for _,v in next, game.Workspace[game.Players.LocalPlayer.Name]:GetDescendants() do
			if table.find(partexclusion,v) then return end
	if v:IsA('BasePart') then
		table.insert(partexclusion,v)
	end
		end
		
	end
	end)