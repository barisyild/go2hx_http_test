package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _after = ("" : stdgo.GoString), _found = false;
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1290"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), _prefix?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1291"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _s?.__copy__(), _1 : false };
                _after = __tmp__._0;
                _found = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1293"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_s.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__(), _1 : true };
            _after = __tmp__._0;
            _found = __tmp__._1;
            __tmp__;
        };
    }
