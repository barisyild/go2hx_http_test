package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.runtime.Runtime;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.log.Log__std._std, __tmp__1 = stdgo._internal.log.Log__bufferpool._bufferPool;
            stdgo._internal.log.internal.Internal_defaultoutput.defaultOutput = function(_pc:stdgo.GoUIntptr, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/log/log.go#L251"
                return stdgo._internal.log.Log__std._std._output(_pc, (0 : stdgo.GoInt), function(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
                    //"file:///Users/o/.go/go1.21.3/src/log/log.go#L252"
                    return (_buf.__append__(...(_data : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                });
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
