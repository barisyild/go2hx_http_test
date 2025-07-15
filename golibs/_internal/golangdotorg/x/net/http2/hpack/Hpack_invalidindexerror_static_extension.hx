package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.golangdotorg.x.net.http2.hpack.Hpack.InvalidIndexError_asInterface) class InvalidIndexError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:_internal.golangdotorg.x.net.http2.hpack.Hpack_invalidindexerror.InvalidIndexError):stdgo.GoString {
        @:recv var _e:_internal.golangdotorg.x.net.http2.hpack.Hpack_invalidindexerror.InvalidIndexError = _e;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L31"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid indexed representation index %d" : stdgo.GoString), new stdgo.AnyInterface((_e : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
    }
}
