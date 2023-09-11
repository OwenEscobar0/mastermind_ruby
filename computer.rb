class Computer
 def PlayComputer
    p "Ingresa el patron para que quieres que la computadora adivine"
    sleep 1
    p "Colores disponibles:"
    sleep 1
    p "yellow = y", "red = r", "brown = b", "green = g"
    sleep 1
    p "Ingresa el patron aquí:"
     patron = gets.chomp
     patronComputer = patron.split
     list_emojis= []

    contador = 13
     for i in 0..20 do
        patronComputerRandom = patronComputer.sample(4)


        # lo que hace este each_with_index es que saca cada uno de las posiciones
        patronComputer.each_with_index do |element, index|
            #element = al contenido del array, index = a la posicion del array
            
            if patronComputer[index] == patronComputerRandom[index]
                # lo que se hace es la comparacion de los dos arrays y si es pone rojo y si no blaco 
                emoji = "🔴"
                list_emojis << emoji
            else 
                emoji = "⚪"
                list_emojis << emoji
            end
        end
        if patronComputer == patronComputerRandom
            p "Ha ganado la computadora!"
            break
        end
        contador -= 1

        if contador == 0
            p "Has superado a la computadora"
            break
        end
        p list_emojis
        list_emojis.clear
        sleep 1
     end

    



 end
end