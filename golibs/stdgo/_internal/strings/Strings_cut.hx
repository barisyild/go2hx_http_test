package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function cut(_s:stdgo.GoString, _sep:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _before = ("" : stdgo.GoString), _after = ("" : stdgo.GoString), _found = false;
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1279"
        {
            var _i = @:assignType (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), _sep?.__copy__()) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1280"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__(), _1 : (_s.__slice__((_i + (_sep.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : true };
                    _before = __tmp__._0;
                    _after = __tmp__._1;
                    _found = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1282"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _s?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
            _before = __tmp__._0;
            _after = __tmp__._1;
            _found = __tmp__._2;
            __tmp__;
        };
    }
