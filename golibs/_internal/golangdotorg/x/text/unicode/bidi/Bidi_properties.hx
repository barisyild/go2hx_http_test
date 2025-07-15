package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties_static_extension.Properties_static_extension) @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties_static_extension.Properties_static_extension) class Properties {
    public var _entry : stdgo.GoUInt8 = 0;
    public var _last : stdgo.GoUInt8 = 0;
    public function new(?_entry:stdgo.GoUInt8, ?_last:stdgo.GoUInt8) {
        if (_entry != null) this._entry = _entry;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_entry", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_last", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }])));
    public function __copy__() {
        return new Properties(_entry, _last);
    }
}
