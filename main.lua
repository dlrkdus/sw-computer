-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local widget = require( "widget" )
local buttonUI = {}

function inputEvent( event )
    if event.target.name == "picture" then
        transition.to(buttonUI[1], {time = 5, alpha = 0})
        --local t = timer.performWithDelay(1000, goProlog, 1)
    elseif event.target.name == "balloon" then
        transition.to(buttonUI[2], {time = 5, alpha = 0})
        --local t2 = timer.performWithDelay(1000, goInfo, 1)
    elseif event.target.name == "report" then
        transition.to(buttonUI[3], {time = 5, alpha = 0})
        --local t2 = timer.performWithDelay(1000, goInfo, 1)
    elseif event.target.name == "store" then
        transition.to(buttonUI[4], {time = 5, alpha = 0})
        --local t2 = timer.performWithDelay(1000, goInfo, 1)
    end
end

local background = display.newImageRect( "image/main_bg.jpg", 1280, 720 )
background.x = display.contentWidth/2
background.y = display.contentHeight/2

local som = display.newImageRect("image/main_som2.png", 900, 835)
som.x = display.contentCenterX
som.y = 300

local cloud = display.newImageRect("image/cloud.png", 200, 200)
cloud.x = 150
cloud.y = 150

local cloud2 = display.newImageRect("image/cloud.png", 200, 200)
cloud2.x = 500
cloud2.y = 100

local cloud3 = display.newImageRect("image/cloud.png", 200, 200)
cloud3.x = 340
cloud3.y = 270

local cloud4 = display.newImageRect("image/cloud.png", 200, 200)
cloud4.x = 780
cloud4.y = 145

local cloud6 = display.newImageRect("image/cloud.png", 200, 200)
cloud6.x = 980
cloud6.y = 285

local minigame = display.newImageRect("image/minigame_logo.png", 120, 100)
minigame.x = 1150
minigame.y = 60

buttonUI[1] = widget.newButton(
	{ defaultFile = "image/picture.png", overFile = "image/picture.png", 
	width = 150, height = 150, onPress = inputEvent })
buttonUI[1].x = 1155
buttonUI[1].y = 150
buttonUI[1].name = "picture"

buttonUI[2] = widget.newButton(
	{ defaultFile = "image/balloon.png", overFile = "image/balloon.png",
	width = 100 , height = 100, onPress = inputEvent})
buttonUI[2].x = 1160
buttonUI[2].y = 250
buttonUI[2].name = "balloon"

buttonUI[3] = widget.newButton(
	{ defaultFile = "image/report.png", overFile = "image/report.png",
	width = 100 , height = 100, onPress = inputEvent })
buttonUI[3].x = 1168
buttonUI[3].y = 355
buttonUI[3].name = "report"

buttonUI[4] = widget.newButton(
	{	defaultFile = "image/store.png", overFile = "image/store.png",
		width = 300, height = 310, onPress = inputEvent })
buttonUI[4].x = 180
buttonUI[4].y = 450
buttonUI[4].name = "store"
 