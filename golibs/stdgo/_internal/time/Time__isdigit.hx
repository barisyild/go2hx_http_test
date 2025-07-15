package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
private function _isDigit__tp__0(_s:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt):Bool {
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L900"
        if (((_s.length) <= _i : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L901"
            return false;
        };
        var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L904"
        return (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool);
    }
overload inline extern function _isDigit(_s:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt):Bool return _isDigit__tp__0(_s, _i);
private function _isDigit__tp__1(_s:stdgo.GoString, _i:stdgo.GoInt):Bool {
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L900"
        if (((_s.length) <= _i : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L901"
            return false;
        };
        var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L904"
        return (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool);
    }
overload inline extern function _isDigit(_s:stdgo.GoString, _i:stdgo.GoInt):Bool return _isDigit__tp__1(_s, _i);
