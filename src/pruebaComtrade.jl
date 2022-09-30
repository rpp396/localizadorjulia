module pruebaComtrade

using COMTRADE
using DataFrames

z1 = read_comtrade("./Oscilos/02.09.22 22.09.55.000.000")
VSCodeServer.vscodedisplay(z1.cfg.A) #Para ver los DataFrames
VSCodeServer.vscodedisplay(z1.cfg.D) #Para ver los DataFrames
VSCodeServer.vscodedisplay(z1.dat) #Para ver los DataFramesst
end