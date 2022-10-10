#= 
Para probar voy a generar una tabla con una sinusoide de amplitud 1 y 1000 muestras como un data frame para simular la entrada
del modulo COMTRADE
=#
using DataFrames
using Plots
function generarSeno(;duracion=1000,f=50,fs=1000,valorPico=1)
    # duración en segundos
    # f y fs en Hz.  
    # f frecuencia de la señal periódica
    # fs frecuencia de muestreo
    # valorPico es la máxima amplitud
    #

    v=[]
    for i in 1:(duracion*fs)
    push!(v,valorPico*sin(f*2*pi*i/(fs)))
    end
     
end
vpp = generarSeno(5000)


# Señal de test con armonicos
ST1=generarSeno(duracion=1,f=50,fs=1500,valorPico=32700)+0.15*generarSeno(duracion=1,f=100,fs=1500,valorPico=32700)+0.1*generarSeno(duracion=1,f=150,fs=1500,valorPico=32700)

