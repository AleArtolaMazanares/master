class Computer

def game_Run
    sleep 1.8
    p "elija 4 colores por ejemplo esta lista: (red, blue, brown, yellow)"
    sleep 3
    array = []
    nuevoArray = []
    arrayContainer = ["1.","2.","3.","4.","5.", "6.", "7.", "8.", "9.", "10.", "11.", "12."]

index = 0

for i in 0..20 do

    p "quieres jugar?"
    p "si o no"
    respuesta = gets.chomp
    if respuesta == "si"
        index = 0
         nuevoArray.clear
         arrayContainer.clear
      
         arrayContainer = ["1.","2.","3.","4.","5.", "6.", "7.", "8.", "9.", "10.", "11.", "12."]
     
        p "1. primer color"
        color1 = gets.chomp
        sleep 0.5
        p "2. segundo colorr"
        color2 = gets.chomp
        sleep 0.5
        p "3. tercer color"
        color3 = gets.chomp
        sleep 0.5
        p "4. cuarto color"
        color4 = gets.chomp
    
         array << color1
         array << color2
         array << color3
         array_Respuesta_del_jugador = array << color4
      
        contador = 13
    for i in 0..20 do
      
        array_random = array_Respuesta_del_jugador.sample(4)

        array_Respuesta_del_jugador.each_with_index do |element, index|
            if array_Respuesta_del_jugador[index] == array_random[index]
                emogi = "🔴"
                nuevoArray << emogi
            else
                emogi = "⚪"
                nuevoArray << emogi
            end

        end
     
    
        contador -=1
    
        
        if contador == 0
            sleep 0.5
            p "perdio la computadora"
            p "combinacion ganadora es #{array_Respuesta_del_jugador}"
             array_Respuesta_del_jugador.clear
            sleep 0.5
            break
        end
    
        arrayContainer[index] << nuevoArray.to_s
        index += 1


    
        if array_Respuesta_del_jugador == array_random
            sleep 0.5
         p "gano la computadora"
         p "combinacion ganadora es #{array_Respuesta_del_jugador}"
         array_Respuesta_del_jugador.clear
         sleep 0.5
         break
        end
    
    
        p "////////////////////////////////lista/////////////////////////////////////////////"
    
        nuevoArray.clear
            puts arrayContainer
            sleep 1
         end
        
        elsif respuesta == "no"
            p "juego terminado"
            sleep 1
            p "gracias por jugar"
            sleep 1

            exit
        else
            p "escribe si o no"
                end 
   
            end
        end    
    end