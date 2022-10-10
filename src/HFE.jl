# Hybrid Frequency Estimator
# basado en "An Open-Loop Fundamental and Harmonic Phasor Estimator for Single-Phase Voltage Signals" Motakatla Venkateswara Reddy y Ranjana Sodhi

# ahroa trabajo con vectores pero la idea es usar la estructura que definamos para manejar los datos de las señales
function HFE(datos, n; fn=50, fs=1000)
    # datos un array con las muestras
    # n en que indice del vector tengo que calcular la frecuencia
    # fn frecuencia nominal del sistema
    # fs frecuencia de muestreo

    ciclo=datos[n:ceil(fs/fn)]
    cruces=NZC(ciclo)
    if length(cruces)>2
        f_est=fs/((cruces[2]-cruces[1])*2)
    else
        f_est=fn
    end
    
end

using BasicInterpolators: CubicInterpolator
function NZC(ciclo)
    # devulve vector con los cruces por cero, tiempo donde ocurre (usando interpolacion polinomial )
    
    # elimino componente de continua
    DC=(maximum(ciclo)+minimum(ciclo))/2
    ciclo = ciclo .- DC # elimino continua
    # busco untervalo de indices de cruce por cero
    ZC=[]
    for i=1:length(ciclo)-1
        if sign(sign(ciclo[i])*sign(ciclo[i+1]))==-1 
            #hay cambio de signo, por tanto cruce por cero
            i_a= i<3 ? 1 : i-2
            i_b= i+1
            p_interp = CubicInterpolator([i_a:i_b...],ciclo[i_a:i_b])
            ϵ=abs(DC)*1E-5+1E-6
            #println("tolerancia ",ϵ)
            pto_a=p_interp(i_a)
            pto_b=p_interp(i_b)
            while abs(abs(pto_b)-abs(pto_a))>ϵ
                #mientras que tengo error grande, itero
                i_interm=(i_a+i_b)/2
                pto_interm=p_interp(i_interm)
                if sign(pto_a)==sign(pto_interm)
                    i_a=i_interm
                    pto_a=pto_interm
                else
                    i_b=i_interm
                    pto_b=pto_interm
                end
                # println("i_a ",i_a,"  i_b ",i_b, " error ", abs(abs(pto_b)-abs(pto_a)))
            end
            push!(ZC,(i_a+i_b)/2)
                
            end

    end
    return ZC
end