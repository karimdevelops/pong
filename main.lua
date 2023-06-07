push = require 'libs/push'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243


function love.load()

    love.graphics.setDefaultFilter('nearest', 'nearest')
        
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT,
        {fullscreen = false,
        resizeable = false,
        vsync = true
    })

    scoreFont = love.graphics.newFont('fonts/font.ttf', 35)

    love.graphics.setFont(scoreFont)

    love.window.setTitle('Pong')

end

player1_score = 0
player2_score = 0

function love.draw()

    push:apply('start')

    love.graphics.clear(40/255, 45/255, 52/255, 255/255)
    
    love.graphics.print(player1_score, 256, 20)
    love.graphics.print(player2_score, 156, 20)

    push:apply('end')

end

function love.keypressed(key)

    if key == 'escape' then 
        love.event.quit()
    end

end
