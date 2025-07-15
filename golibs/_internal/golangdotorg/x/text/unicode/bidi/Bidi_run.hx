package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_run_static_extension.Run_static_extension) @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_run_static_extension.Run_static_extension) class Run {
    public var _runes : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _direction : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction = ((0 : stdgo.GoInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction);
    public var _startpos : stdgo.GoInt = 0;
    public function new(?_runes:stdgo.Slice<stdgo.GoInt32>, ?_direction:_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction, ?_startpos:stdgo.GoInt) {
        if (_runes != null) this._runes = _runes;
        if (_direction != null) this._direction = _direction;
        if (_startpos != null) this._startpos = _startpos;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_runes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false }, { name : "_direction", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_directiondotdirection.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_directiondotDirection }, optional : false }, { name : "_startpos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new Run(_runes, _direction, _startpos);
    }
}
