class InformationPlayer
    puts "Bienvenido a mastermind"
    sleep 0.8
    p "Las reglas del juego son:"
    sleep 0.8
    p "Debes elegir un patrón con los 4 colores disponibles."
    sleep 0.8
    p "Ejemplo del patron(debe llevar espacios entre cada letra): y r b g"
    sleep 0.8
    p"Deberás adivinar el patrón corrcto."
    sleep 0.8
    p "Si aciertas los 4 colores en orden, ganas."
    sleep 0.8
    p "Solo debes digitar las iniciales de los colores"
    sleep 0.8
    p "Tienes 12 intentos"
    sleep 0.8


    def initialize(name)
        @name = name
        p "Bienvenido #{@name}, ¿listo para jugar?"
        sleep 1
        p "Colores disponibles:"
        sleep 1
        p "yellow = y", "red = r", "brown = b", "green = g"
    end
end





 






