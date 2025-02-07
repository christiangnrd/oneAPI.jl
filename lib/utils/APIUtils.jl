module APIUtils

# helpers that facilitate working with C APIs
using GPUUtils: @checked, @debug_ccall
export @checked, @debug_ccall
include("enum.jl")

end
