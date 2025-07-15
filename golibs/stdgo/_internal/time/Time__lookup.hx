package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _lookup(_tab:stdgo.Slice<stdgo.GoString>, _val:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L388"
        if (_tab != null) for (_i => _v in _tab) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L389"
            if ((((_val.length) >= (_v.length) : Bool) && stdgo._internal.time.Time__match._match((_val.__slice__((0 : stdgo.GoInt), (_v.length)) : stdgo.GoString)?.__copy__(), _v?.__copy__()) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L390"
                return { _0 : _i, _1 : (_val.__slice__((_v.length)) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L393"
        return { _0 : (-1 : stdgo.GoInt), _1 : _val?.__copy__(), _2 : stdgo._internal.time.Time__errbad._errBad };
    }
