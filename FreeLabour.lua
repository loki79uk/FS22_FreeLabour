-- ============================================================= --
-- FREE LABOUR MOD
-- ============================================================= --

FreeLabour = {}

addModEventListener(FreeLabour)

function FreeLabour:getPricePerMs()
	--print("Free Labour!")
    return 0
end

function FreeLabour:loadMap(name)
	--print("Loaded Mod: 'FREE LABOUR'")
	
	AIJob.getPricePerMs = Utils.overwrittenFunction(AIJob.getPricePerMs, FreeLabour.getPricePerMs)
	AIJobConveyor.getPricePerMs = Utils.overwrittenFunction(AIJobConveyor.getPricePerMs, FreeLabour.getPricePerMs)
	
	self.initialised = false
end

function FreeLabour:deleteMap()
end

function FreeLabour:mouseEvent(posX, posY, isDown, isUp, button)
end

function FreeLabour:keyEvent(unicode, sym, modifier, isDown)
end

function FreeLabour:draw()
end

function FreeLabour:update(dt)
	if not self.initialised then
		print("***FreeLabour is loaded***")
		self.initialised = true
	end
end