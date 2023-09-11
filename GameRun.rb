class Jugador_Run
    def run_game(name)
        @name = name
        sleep 1
        p "hola #{@name} este juego se trata de adivinar el patron"
        sleep 0.5
    end

end

p "Bienvenido a mi juego, ingresa tu nombre"
sleep 1
jugador = gets.chomp

run = Jugador_Run.new
sleep 1
run.run_game(jugador)












