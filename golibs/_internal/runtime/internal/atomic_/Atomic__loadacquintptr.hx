package _internal.runtime.internal.atomic_;
function loadAcquintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr {
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L68"
        return _ptr.value;
    }
