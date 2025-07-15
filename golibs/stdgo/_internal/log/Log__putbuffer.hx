package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.runtime.Runtime;
function _putBuffer(_p:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Void {
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L181"
        if (((_p : stdgo.Slice<stdgo.GoUInt8>).capacity > (65536 : stdgo.GoInt) : Bool)) {
            @:_1 (_p : stdgo.Slice<stdgo.GoUInt8>).__setData__((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L184"
        stdgo._internal.log.Log__bufferpool._bufferPool.put(new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))));
    }
