package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:structInit @:using(_internal.golangdotorg.x.net.idna.Idna_t_labeliter_static_extension.T_labelIter_static_extension) @:using(_internal.golangdotorg.x.net.idna.Idna_t_labeliter_static_extension.T_labelIter_static_extension) class T_labelIter {
    public var _orig : stdgo.GoString = "";
    public var _slice : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _curStart : stdgo.GoInt = 0;
    public var _curEnd : stdgo.GoInt = 0;
    public var _i : stdgo.GoInt = 0;
    public function new(?_orig:stdgo.GoString, ?_slice:stdgo.Slice<stdgo.GoString>, ?_curStart:stdgo.GoInt, ?_curEnd:stdgo.GoInt, ?_i:stdgo.GoInt) {
        if (_orig != null) this._orig = _orig;
        if (_slice != null) this._slice = _slice;
        if (_curStart != null) this._curStart = _curStart;
        if (_curEnd != null) this._curEnd = _curEnd;
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_orig", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_slice", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }, { name : "_curStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_curEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_labelIter(_orig, _slice, _curStart, _curEnd, _i);
    }
}
