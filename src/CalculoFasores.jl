#= 
Para probar voy a generar una tabla con una sinusoide de amplitud 1 y 1000 muestras como un data frame para simular la entrada
del modulo COMTRADE
=#
using DataFrames
using Plots
function generarSeno(duracion=1000,frecuencia=50,velocidadMuestreo=1000,valorPico=1)
    v=[]
    for i in 1:(duracion/velocidadMuestreo)
    push!(v,valorPico*sin(frecuencia*2*pi*i/(velocidadMuestreo)))
    end
    v
end
vpp = generarSeno(5000)


