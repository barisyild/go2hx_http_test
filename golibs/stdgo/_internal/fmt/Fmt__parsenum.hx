package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
function _parsenum(_s:stdgo.GoString, _start:stdgo.GoInt, _end:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } {
        var _num = (0 : stdgo.GoInt), _isnum = false, _newi = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L358"
        if ((_start >= _end : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L359"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoInt), _1 : false, _2 : _end };
                _num = __tmp__._0;
                _isnum = __tmp__._1;
                _newi = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L361"
        {
            _newi = _start;
            while ((((_newi < _end : Bool) && ((48 : stdgo.GoUInt8) <= _s[(_newi : stdgo.GoInt)] : Bool) : Bool) && (_s[(_newi : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L362"
                if (stdgo._internal.fmt.Fmt__toolarge._tooLarge(_num)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L363"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoInt), _1 : false, _2 : _end };
                        _num = __tmp__._0;
                        _isnum = __tmp__._1;
                        _newi = __tmp__._2;
                        __tmp__;
                    };
                };
_num = ((_num * (10 : stdgo.GoInt) : stdgo.GoInt) + ((_s[(_newi : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : stdgo.GoInt);
_isnum = true;
                _newi++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L368"
        return { _0 : _num, _1 : _isnum, _2 : _newi };
    }
