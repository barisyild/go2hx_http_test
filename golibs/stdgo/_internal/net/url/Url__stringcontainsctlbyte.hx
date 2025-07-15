package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function _stringContainsCTLByte(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1247"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _b = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1249"
                if (((_b < (32 : stdgo.GoUInt8) : Bool) || (_b == (127 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1250"
                    return true;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1253"
        return false;
    }
