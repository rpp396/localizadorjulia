#= push!(LOAD_PATH,"../src/")
push!(LOAD_PATH,"../../src/") =#

push!(LOAD_PATH,"../../src/")
using Documenter, pruebaComtrade
include("../src/pruebaComtrade.jl")
makedocs(sitename="Prueba Documenter")

