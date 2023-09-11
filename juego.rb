require_relative 'GameRun'
require 'colorize'
class Juego
    attr_accessor :array_random, :random_arreglo, :includes
    def runGame 
        @random_arreglo = ["red", "blue", "brown", "yellow"]
         @array_random =  random_arreglo.sample(4)
        sleep 0.5
        p "////"
        p "////"
        p "////"
        p "////////////////////////lista de colores///////////////////////////////"
        puts "Estos son los colores que hay".red
        p @random_arreglo
        puts "Estos son los colores que hay".red
        p "////////////////////////lista de colores///////////////////////////////"
        p "////"
        p "////"
        p "////"


        arrayContainer = ["1.","2.","3.","4.","5.", "6.", "7.", "8.", "9.", "10.", "11.", "12."]

                        puts arrayContainer

sleep 3

  
        sleep 0.5
       p "ingresa tus colores"
       sleep 0.5
         arregloPlayer = []
         nuevoArray = []

          contador_de_intentos = 12
          p "tienes #{contador_de_intentos} intentos"


          index = 0

     for i in 0..100 do
     

        p "ingresa tu patron"
        respuesta = gets.chomp
        result = respuesta.split

            contador = 0
            

   
                result.each_with_index do |element, index|
                    if result[index] == @array_random[index]
                        contador += 1
                        emogi = "🔴"
                        nuevoArray << emogi
                    else
                        emogi = "⚪"
                        nuevoArray << emogi
                    end
                end
        

           

            
            p "acertaste #{contador} en la posicion correcta"

         


            if contador_de_intentos == 0
                p "perdiste"
                sleep 1
                p "la combinacion ganadora era #{@array_random}"
                sleep 0.5
                break
            end
            p "////////////////"

            if result.length == 4
                    arrayContainer[index] << nuevoArray.to_s
                    index += 1
                    p "te quedan #{contador_de_intentos -=1} intentos"
            else
                p "te quedan #{contador_de_intentos} intentos"
                p "ingresa un patron de 4"
            end

            

          
  
            if result == @array_random
                p "ganaste"
                sleep 1
                p "gracias por jugar"
                sleep 0.5
                break
            end

    puts arrayContainer

        nuevoArray.clear
            result.clear
     end
    end
end