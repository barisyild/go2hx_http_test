package _internal.runtime.internal.atomic_;
function loadAcq64(_ptr:stdgo.Pointer<stdgo.GoUInt64>):stdgo.GoUInt64 {
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/atomic_wasm.go#L62"
        return _ptr.value;
    }
