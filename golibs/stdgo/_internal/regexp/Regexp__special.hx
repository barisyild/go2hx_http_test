package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _special(_b:stdgo.GoUInt8):Bool {
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L716"
        return ((_b < (128 : stdgo.GoUInt8) : Bool) && ((stdgo._internal.regexp.Regexp__specialbytes._specialBytes[((_b % (16 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] & (((1 : stdgo.GoUInt8) << ((_b / (16 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8)) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool);
    }
