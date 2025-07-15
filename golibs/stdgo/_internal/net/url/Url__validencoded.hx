package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function _validEncoded(_s:stdgo.GoString, _mode:stdgo._internal.net.url.Url_t_encoding.T_encoding):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L714"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L720"
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((33 : stdgo.GoUInt8)) || __value__ == ((36 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((39 : stdgo.GoUInt8)) || __value__ == ((40 : stdgo.GoUInt8)) || __value__ == ((41 : stdgo.GoUInt8)) || __value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((44 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((61 : stdgo.GoUInt8)) || __value__ == ((58 : stdgo.GoUInt8)) || __value__ == ((64 : stdgo.GoUInt8))) {} else if (__value__ == ((91 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8))) {} else if (__value__ == ((37 : stdgo.GoUInt8))) {} else {
                        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L728"
                        if (stdgo._internal.net.url.Url__shouldescape._shouldEscape(_s[(_i : stdgo.GoInt)], _mode)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L729"
                            return false;
                        };
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L733"
        return true;
    }
