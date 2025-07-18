package stdgo._internal.go.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
function _trailingDigits(_text:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _i = @:assignType (stdgo._internal.bytes.Bytes_lastindexbyte.lastIndexByte(_text, (58 : stdgo.GoUInt8)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L301"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L302"
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(((_text.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L306"
        return { _0 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (_n : stdgo.GoInt), _2 : _err == null };
    }
