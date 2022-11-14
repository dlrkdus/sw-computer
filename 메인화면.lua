-----------------------------------------------------------------------------------------
--
-- 메인화면.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local buttonUI = {}

function scene:create( event )
	local sceneGroup = self.view
	
	local background = display.newImageRect( "image/메인/main_bg.jpg", 1280, 720 )
	background.x = display.contentWidth/2
	background.y = display.contentHeight/2

	local som = display.newImageRect("image/som2.png", 635, 635)
	som.x = display.contentCenterX
	som.y = 310
	som.alpha = 1

--과잠_1만 이 크기
	  -- local clo = display.newImageRect("image/옷/과잠_1.png", 600, 355)
   --    clo.x, clo.y = display.contentWidth/2 - 37, 405
   --  clo:scale( -1, 1 )

--2-5과잠
   -- local clo = display.newImageRect("image/옷/과잠_5.png", 605, 355)
   --    clo.x, clo.y = display.contentWidth/2 - 41, 405
   --  clo:scale( -1, 1 )

--동물 1-3, 5
	-- local clo2 = display.newImageRect("image/옷/동물_5.png", 208, 178)
 --    clo2.x, clo2.y = display.contentWidth/2, 504
 --    clo2:scale( -1, 1 )    

--동물_4
	-- local clo2 = display.newImageRect("image/옷/동물_4.png", 208, 165)
 --    clo2.x, clo2.y = display.contentWidth/2, 514
 --    clo2:scale( -1, 1 )    

-- --원피스 다
--     local clo3 = display.newImageRect("image/옷/투피스_5.png", 435, 373)
--     clo3.x, clo3.y = display.contentWidth/2 -77, 390
--     clo3:scale( -1, 1 ) 

--local ribbon = display.newImageRect("image/아이템/리본_2.png", 160, 120)
  --  ribbon.x, ribbon.y = display.contentWidth/2 + 50, 270
   --ribbon.rotation = 10

    local gl = display.newImageRect("image/아이템/안경_3.png", 73, 35)
    gl.x, gl.y = display.contentWidth/2-1.2, 337.5
     gl:scale( -1, 1 ) 
     gl.rotation = 357

--모자_1
    -- local h = display.newImageRect("image/아이템/모자_1.png", 180, 90)
    -- h.x, h.y = display.contentWidth/2 - 70, 260
    --  h.rotation = 320

    -- --모자_2
    --  local h = display.newImageRect("image/아이템/모자_2.png", 170, 115)
    -- h.x, h.y = display.contentWidth/2 - 70, 270
    --  h.rotation = 290

--모자3_6

--     local h = display.newImageRect("image/아이템/모자_6.png", 140, 75)
--    h.x, h.y = display.contentWidth/2+30, 245
--     h:scale( -1, 1 ) 
--     h.rotation = 10
 
  --   local h3= display.newImageRect("image/아이템/왕관_2.png", 70, 55)
  --   h3.x, h3.y = display.contentWidth/2 + 30, 245
   --  h3.rotation = 20

     --  local h4= display.newImageRect("image/아이템/잎_1.png", 60, 60)
    --    h4.x, h4.y = display.contentWidth/2 + 85, 255

    local h5= display.newImageRect("image/아이템/헤드셋_1.png", 245, 140)
    h5.x, h5.y = display.contentWidth/2, 300

	local cloud = display.newImageRect("image/메인/cloud.png", 200, 200)
	cloud.x = 150
	cloud.y = 150

	local cloud2 = display.newImageRect("image/메인/cloud.png", 200, 200)
	cloud2.x = 500
	cloud2.y = 100

	local cloud3 = display.newImageRect("image/메인/cloud.png", 200, 200)
	cloud3.x = 340
	cloud3.y = 270

	local cloud4 = display.newImageRect("image/메인/cloud.png", 200, 200)
	cloud4.x = 780
	cloud4.y = 145

	local cloud5 = display.newImageRect("image/메인/cloud.png", 200, 200)
	cloud5.x = 980
	cloud5.y = 285

	function gotoPic( event )
		composer.gotoScene( "숨은그림찾기_솜솜")
	end

	function gotoBal( event )
		composer.gotoScene( "풍선터트리기_20초" ) 
	end

	--function gotoRepo( event )
		--composer.gotoScene( "풍선터트리기_20초" ) 
	--end

	function gotoStore( event )
		composer.gotoScene("상점")
	end

	function inputEvent( event )
        if event.target.name == "picture" then
            --transition.to(buttonUI[1], {time = 300, alpha = 0})
            local t = timer.performWithDelay(1000, gotoPic, 1)
        elseif event.target.name == "balloon" then
            --transition.to(buttonUI[2], {time = 500, alpha = 0})
            local t2 = timer.performWithDelay(1000, gotoBal, 1)
        elseif event.target.name == "report" then
            --transition.to(buttonUI[3], {time = 500, alpha = 0})
            local t3 = timer.performWithDelay(1000, gotoBal, 1)
        elseif event.target.name == "store" then
            --transition.to(buttonUI[4], {time = 500, alpha = 0})
            local t4 = timer.performWithDelay(1000, gotoStore, 1)
        end
    end

	
	local minigame = display.newImageRect("image/메인/minigame_logo.png", 120, 100)
	minigame.x = 1150
	minigame.y = 60


	buttonUI[1] = widget.newButton(
		{ defaultFile = "image/메인/picture.png", overFile = "image/메인/picture.png",
		width = 150 , height = 150, onPress = inputEvent })
	buttonUI[1].x = 1155
	buttonUI[1].y = 150
	buttonUI[1].name = "picture"

	buttonUI[2] = widget.newButton(
		{ defaultFile = "image/메인/balloon.png", overFile = "image/메인/balloon.png",
		width = 100 , height = 100, onPress = inputEvent })
	buttonUI[2].x = 1160
	buttonUI[2].y = 250
	buttonUI[2].name = "balloon"

	buttonUI[3] = widget.newButton(
		{ defaultFile = "image/메인/report.png", overFile = "image/메인/report.png",
		width = 100 , height = 100 , onPress = inputEvent})
	buttonUI[3].x = 1168
	buttonUI[3].y = 355
	buttonUI[3].name = "report"

	buttonUI[4] = widget.newButton(
		{	defaultFile = "image/메인/store.png", overFile = "image/메인/store.png",
			width = 300, height = 310, onPress = inputEvent})
	buttonUI[4].x = 180
	buttonUI[4].y = 450
	buttonUI[4].name = "store"

	sceneGroup:insert(background)
	sceneGroup:insert(som)
	sceneGroup:insert(cloud)
	sceneGroup:insert(cloud2)
	sceneGroup:insert(cloud3)
	sceneGroup:insert(cloud4)
	sceneGroup:insert(cloud5)
   	sceneGroup:insert(buttonUI[1])
   	sceneGroup:insert(buttonUI[2])
   	sceneGroup:insert(buttonUI[3])
   	sceneGroup:insert(buttonUI[4])
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
		composer.removeScene("메인화면")
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