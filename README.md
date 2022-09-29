# LocalizadorJulia
## Objetivo del proyecto
Calcular a que distancia ocurre una falta en una línea o cable de un sistema eléctrico de potencia, tomando como insumo un archivo [COMTRADE](https://en.wikipedia.org/wiki/Comtrade) y usando [Julia](https://julialang.org/) para implementar los siguientes algoritmos:
* Detección de fase en falta, para identifcar que fase o fases fallaron).
* Cálculo del tiempo de falta, es decir en que momento del registro fue la falta.
* Cálculo de distancia a la falta, en Ohms y en metros si se cuenta con el dato de impedancia por kilómetro de la línea o cable.

## 
## Algoritmos a implementar
Para poder realizar la detección de la distancia a la falta, primero es necesario saber el tipo de falta, es decir cuales  de las fases fallaron, por ejemplo:
* Fases A y  B (cortocircuito bifásico).
* Fase C y G (cortociruito monofásico a tierra).
* Fases A, B y G (cortocircuito bifásico a tierra).
* Fases A, B y C (cortocircuito trifásico).


