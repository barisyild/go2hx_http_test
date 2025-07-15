package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.regexp.Regexp__norune._noRune, __tmp__1 = stdgo._internal.regexp.Regexp__nonext._noNext, __tmp__2 = stdgo._internal.regexp.Regexp__anyrunenotnl._anyRuneNotNL, __tmp__3 = stdgo._internal.regexp.Regexp__anyrune._anyRune, __tmp__4 = stdgo._internal.regexp.Regexp__matchsize._matchSize;
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L720"
            if (((("\\.+*?()|[]{}^$" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) != null) for (__0 => _b in ((("\\.+*?()|[]{}^$" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) {
                stdgo._internal.regexp.Regexp__specialbytes._specialBytes[((_b % (16 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] = (stdgo._internal.regexp.Regexp__specialbytes._specialBytes[((_b % (16 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] | (((1 : stdgo.GoUInt8) << ((_b / (16 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
