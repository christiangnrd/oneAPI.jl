# copies

export append_copy!, append_fill!, append_prefetch!, append_advise!

append_copy!(list::ZeCommandList, dst::Union{Ptr,ZePtr}, src::Union{Ptr,ZePtr},
             size::Integer, event::Union{ZeEvent,Nothing}=nothing) =
    zeCommandListAppendMemoryCopy(list, dst, src, size, something(event, C_NULL))

append_fill!(list::ZeCommandList, ptr::Union{Ptr,ZePtr}, pattern::Union{Ptr,ZePtr},
             pattern_size::Integer, size::Integer, event::Union{ZeEvent,Nothing}=nothing) =
    zeCommandListAppendMemoryFill(list, ptr, pattern, pattern_size, size, something(event, C_NULL))

append_prefetch!(list::ZeCommandList, ptr::Union{Ptr,ZePtr}, size::Integer) =
    zeCommandListAppendMemoryPrefetch(list, ptr, size)

append_advise!(list::ZeCommandList, dev::ZeDevice, ptr::Union{Ptr,ZePtr}, size::Integer,
               advise::ze_memory_advice_t) =
    zeCommandListAppendMemAdvise(list, dev, ptr, size, advise)
