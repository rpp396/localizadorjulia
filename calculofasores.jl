#= 
Elegir Oscilo u Oscilos
Tomar los dataframe que exporta el modulo COMTRADE
Ver cuantos canales analógicos hay
Tomar su nombre, largo, etc
Calcular los fasores
=#

#Librerías inicio
using COMTRADE
#Librerias fin

#Genero la variable comtrade1 que contiene todos los datos exportados por el módulo COMTRADE
comtrade1 = read_comtrade("./Oscilos/02.09.22 22.09.55.000.000")#Para probar voy a usar este comtrade con su ruta relativa
VSCodeServer.vscodedisplay(comtrade1.cfg.A) 
#= VSCodeServer.vscodedisplay(comtrade1.cfg.A) #Para ver los DataFrames
VSCodeServer.vscodedisplay(comtrade1.cfg.D) #Para ver los DataFrames
VSCodeServer.vscodedisplay(z1.dat) #Para ver los DataFrames =#


function resumirDatosComtrade(c::COMTRADE.ComtradeData)
    println("Nombre de estación: $(c.cfg.station_name)")
    println("Cantidad de canales analógicos: $(c.cfg.nA)")
    println("Fecha y hora del trigger: $(c.cfg.triggertime)")
    println("Cantidad de puntos del comtrade: $(c.cfg.npts)")
    println("Punto inicial de sampleo: $(c.cfg.samp[1]) - Punto final de sampleo: $(c.cfg.endsamp[1])")
    println("\nIndice y nombre de los canales: \n")
    c.cfg.A[:,[2]]

end

resumirDatosComtrade(comtrade1)

