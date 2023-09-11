
require_relative 'Player'
require_relative 'mastermind'
require_relative 'computer'

p "Ingresa tú nombre para continuar:"
nombre = gets.chomp
p "¿Quieres ingresar como jugador o creador del patrón?"
p "Digita c para creador de código o j para jugador"
respuesta = gets.chomp

if respuesta == "j"
    p "Ingresaste como jugador"
    master = InformationPlayer.new(nombre)
    arr_vacio_tablero = ["1", "2", "3", "4", "5", "6", "7","8", "9", "10", "11", "12"]
    puts arr_vacio_tablero
    Player = Game_run.new
    Player.Player
elsif respuesta == "c"
    p "Ingresaste como creador"
    playerComputer = Computer.new
    playerComputer.PlayComputer
end


