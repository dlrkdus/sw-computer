-----------------------------------------------------------------------------------------
--
-- intro.lua
--
-----------------------------------------------------------------------------------------
local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local buttonUI = {}

function scene:create( event )
	local sceneGroup = self.view

	local background = display.newImageRect( "image/시작화면/intro.jpg", display.contentWidth, display.contentHeight )
		background.x = display.contentWidth/2
		background.y = display.contentHeight/2

	function gotoMain( event )
		composer.gotoScene( "메인화면" )
	end

	function inputEvent( event )
		if event.target.name == "start" then
			local t = timer.performWithDelay(1000, gotoMain, 1)
		end
	end

	buttonUI[1] = widget.newButton(
		{ defaultFile = "image/시작화면/start_button.png", overFile = "image/시작화면/start_button.png",
		width = 980, height = 550, onPress = inputEvent }
	)
	buttonUI[1].x = 700
	buttonUI[1].y = 360
	buttonUI[1].name = "start"

	sceneGroup:insert(background)
	sceneGroup:insert(buttonUI[1])
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then
		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then
		-- Called when the scene is now on screen
		-- 
		-- INSERT code here to make the scene come alive
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then
		-- Called when the scene is on screen and is about to move off screen
		--
		-- INSERT code here to pause the scene
		-- e.g. stop timers, stop animation, unload sounds, etc.)
	elseif phase == "did" then
		-- Called when the scene is now off screen
		composer.removeScene("intro")
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
	
	-- Called prior to the removal of scene's "view" (sceneGroup)
	-- 
	-- INSERT code here to cleanup the scene
	-- e.g. remove display objects, remove touch listeners, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene