package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.runtime.Runtime;
function _itoa(_buf:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _i:stdgo.GoInt, _wid:stdgo.GoInt):Void {
        var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
        var _bp = @:assignType (19 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L97"
        while (((_i >= (10 : stdgo.GoInt) : Bool) || (_wid > (1 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/log/log.go#L98"
            _wid--;
            var _q = @:assignType (_i / (10 : stdgo.GoInt) : stdgo.GoInt);
            _b[(_bp : stdgo.GoInt)] = ((((48 : stdgo.GoInt) + _i : stdgo.GoInt) - (_q * (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/log/log.go#L101"
            _bp--;
            _i = _q;
        };
        _b[(_bp : stdgo.GoInt)] = (((48 : stdgo.GoInt) + _i : stdgo.GoInt) : stdgo.GoUInt8);
        @:_1 (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__(...((_b.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>));
    }
