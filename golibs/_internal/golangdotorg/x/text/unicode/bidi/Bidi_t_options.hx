package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_options_static_extension.T_options_static_extension) @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_options_static_extension.T_options_static_extension) class T_options {
    public var _defaultDirection : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction = ((0 : stdgo.GoInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction);
    public function new(?_defaultDirection:_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction) {
        if (_defaultDirection != null) this._defaultDirection = _defaultDirection;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_defaultDirection", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_directiondotdirection.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_directiondotDirection }, optional : false }])));
    public function __copy__() {
        return new T_options(_defaultDirection);
    }
}
