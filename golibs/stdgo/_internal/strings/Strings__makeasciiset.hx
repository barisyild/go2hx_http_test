package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _makeASCIISet(_chars:stdgo.GoString):{ var _0 : stdgo._internal.strings.Strings_t_asciiset.T_asciiSet; var _1 : Bool; } {
        var _as = new stdgo._internal.strings.Strings_t_asciiset.T_asciiSet(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt32)]), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L879"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_chars.length) : Bool)) {
                var _c = @:assignType (_chars[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L881"
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L882"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.strings.Strings_t_asciiset.T_asciiSet; var _1 : Bool; } = { _0 : _as.__copy__(), _1 : false };
                        _as = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
_as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] = (_as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] | (((1u32 : stdgo.GoUInt32) << ((_c % (32 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L886"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.strings.Strings_t_asciiset.T_asciiSet; var _1 : Bool; } = { _0 : _as?.__copy__(), _1 : true };
            _as = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
