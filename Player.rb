class Game_run
    def Player
        @colors = ["y", "r", "b", "g"]
        p @color_random = @colors.sample(4)
         lista = []
          list_emojis= []
           index = 0
           contador_de_intentos = 12
            arr_vacio_tablero = ["", "", "", "", "", "", "","", "", "", "", ""]
            for i in 0..11 do
                p "Ejemplo del patron(debe llevar espacios entre cada letra): y r b g"
                sleep 1
                p "Ingresa un patron para jugar:"
                patron = gets.chomp
   
                patronPlayer = patron.split
   
   
                  patronPlayer.each_with_index do |element, index|
                      if patronPlayer[index] ==  @color_random[index]
                          emoji = "🔴"
                          list_emojis << emoji
                      else
                          emoji = "⚪"
                          list_emojis << emoji
                      end
                  end
                  
                  
                 
             
              if patronPlayer == @color_random
                  p "¡Has ganado!"
                  p "La combinación ganadora era: #{@colors}"
                  break
                 end
                 if contador_de_intentos == 0
                 puts "Perdiste por feo"
                 break
               end
   
                 p "Te quedan #{contador_de_intentos -=1} intentos"
   
                  arr_vacio_tablero[index] << list_emojis.to_s
                  puts arr_vacio_tablero
                  index += 1
                  list_emojis.clear
                  patronPlayer.clear
              end
    end

end