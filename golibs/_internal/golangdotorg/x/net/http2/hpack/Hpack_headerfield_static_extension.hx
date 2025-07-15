package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.golangdotorg.x.net.http2.hpack.Hpack.HeaderField_asInterface) class HeaderField_static_extension {
    @:keep
    @:tdfield
    static public function size( _hf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):stdgo.GoUInt32 {
        @:recv var _hf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField = _hf?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L74"
        return ((((_hf.name.length) + (_hf.value.length) : stdgo.GoInt) + (32 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function string( _hf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):stdgo.GoString {
        @:recv var _hf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField = _hf?.__copy__();
        var _suffix:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L54"
        if (_hf.sensitive) {
            _suffix = (" (sensitive)" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L57"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("header field %q = %q%s" : stdgo.GoString), new stdgo.AnyInterface(_hf.name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_hf.value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_suffix, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isPseudo( _hf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):Bool {
        @:recv var _hf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField = _hf?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L49"
        return ((_hf.name.length != (0 : stdgo.GoInt)) && (_hf.name[(0 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) : Bool);
    }
}
