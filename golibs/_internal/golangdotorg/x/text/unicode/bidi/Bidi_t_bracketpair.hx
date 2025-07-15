package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair_static_extension.T_bracketPair_static_extension) @:using(_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair_static_extension.T_bracketPair_static_extension) class T_bracketPair {
    public var _opener : stdgo.GoInt = 0;
    public var _closer : stdgo.GoInt = 0;
    public function new(?_opener:stdgo.GoInt, ?_closer:stdgo.GoInt) {
        if (_opener != null) this._opener = _opener;
        if (_closer != null) this._closer = _closer;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_opener", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_closer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_bracketPair(_opener, _closer);
    }
}
