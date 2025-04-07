function ft_pause()
  function love.draw()
    love.graphics.print('pause : ', 400, 300)
    print(screen)
    screen = 'pause'
  end

end
