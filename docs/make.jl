#= push!(LOAD_PATH,"../src/")
push!(LOAD_PATH,"../../src/") =#
include("../src/pruebaComtrade.jl")
push!(LOAD_PATH,"../src/")
using Documenter, pruebaComtrade

stmakedocs(sitename="Prueba Documenter")