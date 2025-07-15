package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function _trim(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L99"
        while (((_i < (_s.length) : Bool) && (((_s[(_i : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_s[(_i : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L100"
            _i++;
        };
        var _n = @:assignType (_s.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L103"
        while (((_n > _i : Bool) && (((_s[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_s[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L104"
            _n--;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L106"
        return (_s.__slice__(_i, _n) : stdgo.Slice<stdgo.GoUInt8>);
    }
