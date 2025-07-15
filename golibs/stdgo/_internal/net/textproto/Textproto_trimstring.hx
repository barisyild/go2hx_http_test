package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function trimString(_s:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/textproto.go#L125"
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.net.textproto.Textproto__isasciispace._isASCIISpace(_s[(0 : stdgo.GoInt)]) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/textproto.go#L128"
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.net.textproto.Textproto__isasciispace._isASCIISpace(_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/textproto.go#L131"
        return _s?.__copy__();
    }
