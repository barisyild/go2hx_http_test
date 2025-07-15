package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.bidi.Bidi.Properties_asInterface) class Properties_static_extension {
    @:keep
    @:tdfield
    static public function _reverseBracket( _p:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties, _r:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L45"
        return (_internal.golangdotorg.x.text.unicode.bidi.Bidi__xormasks._xorMasks[((_p._entry >> (5i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] ^ _r : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function isOpeningBracket( _p:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties):Bool {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L41"
        return (_p._entry & (16 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function isBracket( _p:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties):Bool {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L37"
        return (_p._entry & (240 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function class_( _p:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties):_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties = _p?.__copy__();
        var _c = @:assignType ((_p._entry & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L30"
        if (_c == ((14u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
            _c = _internal.golangdotorg.x.text.unicode.bidi.Bidi__controlbytetoclass._controlByteToClass[((_p._last & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L33"
        return _c;
    }
}
