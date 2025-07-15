package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering_static_extension.Ordering_static_extension) @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering_static_extension.Ordering_static_extension) class Ordering {
    public var _runes : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>);
    public var _directions : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction> = (null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction>);
    public var _startpos : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_runes:stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>, ?_directions:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction>, ?_startpos:stdgo.Slice<stdgo.GoInt>) {
        if (_runes != null) this._runes = _runes;
        if (_directions != null) this._directions = _directions;
        if (_startpos != null) this._startpos = _startpos;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_runes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }) }, optional : false }, { name : "_directions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_directiondotdirection.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_directiondotDirection }) }, optional : false }, { name : "_startpos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Ordering(_runes, _directions, _startpos);
    }
}
