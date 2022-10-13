# Hybrid Frequency Estimator
# basado en "An Open-Loop Fundamental and Harmonic Phasor Estimator for Single-Phase Voltage Signals" Motakatla Venkateswara Reddy y Ranjana Sodhi

# ahroa trabajo con vectores pero la idea es usar la estructura que definamos para manejar los datos de las señales
function HFE(datos, n; fn=50, fs=1000)
    # datso un array con las muestras
    # n en que indice del vector tengo que calcular la frecuencia
    # fn frecuencia nominal del sistema
    # fs frecuencia de muestreo


end

using BasicInterpolators: CubicInterpolator
function NZC(ciclo)
    # devulve vector con los cruces por cero, tiempo donde ocurre (usando interpolacion polinomial )
    
    # elimino componente de continua
    DC=(maximum(ciclo)+minimum(ciclo))/2
    ciclo = ciclo .- DC # elimino continua
    # busco untervalo de indices de cruce por cero
    
    for i=1:length(ciclo)-1
        if (sign(sign(ciclo[i])*sign(ciclo[i+1])) = -1 )
            #hay cambio de signo, por tanto cruce por cero
            i_ini= i<3 ? 1 : i-2
            i_fin= i+1
            #p_interp =  #que es esto????S
        end
    end

end