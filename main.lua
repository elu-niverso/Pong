--CS50 intro gamedev lecture 1 Pong

push = require 'push'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 423
VIRTUAL_HEIGHT = 243

function love.load()
  push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT ,WINDOW_WIDTH, WINDOW_HEIGHT, {
    fullscreen = false,
    resizable = false,
    vsync = true
  })
end

function love.draw()
  push:apply('start')
  love.graphics.printf(
    'Hello Pong!',
    0,
    WINDOW_HEIGHT / 2 - 6,
    WINDOW_WIDTH,
    'center')
  push:apply('end')
end