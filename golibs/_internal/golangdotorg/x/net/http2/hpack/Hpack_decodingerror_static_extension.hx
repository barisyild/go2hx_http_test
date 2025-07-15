package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.golangdotorg.x.net.http2.hpack.Hpack.DecodingError_asInterface) class DecodingError_static_extension {
    @:keep
    @:tdfield
    static public function error( _de:_internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError):stdgo.GoString {
        @:recv var _de:_internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError = _de?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L23"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("decoding error: %v" : stdgo.GoString), ({
            final __t__ = _de.err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))?.__copy__();
    }
}
