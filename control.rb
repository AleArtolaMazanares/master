require_relative 'GameRun'
require_relative 'juego'
require_relative 'GameComputer'

sleep 1
p "te gustaria jugar como jugador o creador"
p "c para creador y j como jugador"

sleep 0.6

respuesta = gets.chomp
sleep 0.5

if respuesta == "c"
    sleep 0.5
    p "ingresaste como creador"
   
    computer = Computer.new
    sleep 0.5
    computer.game_Run
elsif respuesta == "j"
    sleep 1
    p "ingresaste como jugador"
    sleep 1
    juego = Juego.new
    juego.runGame   
end



