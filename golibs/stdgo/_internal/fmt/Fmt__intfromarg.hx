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
function _intFromArg(_a:stdgo.Slice<stdgo.AnyInterface>, _argNum:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } {
        var _num = (0 : stdgo.GoInt), _isInt = false, _newArgNum = (0 : stdgo.GoInt);
        _newArgNum = _argNum;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L938"
        if ((_argNum < (_a.length) : Bool)) {
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_a[(_argNum : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.basic(int_kind)) : stdgo.GoInt), _1 : true };
                } catch(__exception__) {
                    { _0 : (0 : stdgo.GoInt), _1 : false };
                };
                _num = @:tmpset0 __tmp__._0;
                _isInt = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L940"
            if (!_isInt) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L942"
                {
                    var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_a[(_argNum : stdgo.GoInt)])?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                    {
                        final __value__ = _v.kind();
                        if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            var _n = @:assignType (_v.int_() : stdgo.GoInt64);
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L945"
                            if (((_n : stdgo.GoInt) : stdgo.GoInt64) == (_n)) {
                                _num = (_n : stdgo.GoInt);
                                _isInt = true;
                            };
                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            var _n = @:assignType (_v.uint() : stdgo.GoUInt64);
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L951"
                            if ((((_n : stdgo.GoInt64) >= (0i64 : stdgo.GoInt64) : Bool) && (((_n : stdgo.GoInt) : stdgo.GoUInt64) == _n) : Bool)) {
                                _num = (_n : stdgo.GoInt);
                                _isInt = true;
                            };
                        } else {};
                    };
                };
            };
            _newArgNum = (_argNum + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L960"
            if (stdgo._internal.fmt.Fmt__toolarge._tooLarge(_num)) {
                _num = (0 : stdgo.GoInt);
                _isInt = false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L965"
        return { _0 : _num, _1 : _isInt, _2 : _newArgNum };
    }
