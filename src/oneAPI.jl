module oneAPI

using GPUArrays
using Adapt

using GPUCompiler

using LLVM
using LLVM.Interop
using Core: LLVMPtr

using SPIRV_LLVM_Translator_jll, SPIRV_Tools_jll

export oneL0

# core library
include("../lib/utils/APIUtils.jl")
include("../lib/level-zero/oneL0.jl")
using .oneL0

# device functionality (needs to be loaded first, because of generated functions)
include("device/pointer.jl")
include("device/array.jl")
include("device/runtime.jl")
include("device/opencl/utils.jl")
include("device/opencl/work_item.jl")
include("device/opencl/synchronization.jl")
include("device/opencl/memory.jl")
include("device/opencl/printf.jl")
include("device/opencl/math.jl")

# essential stuff
include("context.jl")

# compiler implementation
include("compiler/gpucompiler.jl")
include("compiler/execution.jl")
include("compiler/reflection.jl")

# array abstraction
include("memory.jl")
include("array.jl")
include("broadcast.jl")
include("gpuarrays.jl")

end
