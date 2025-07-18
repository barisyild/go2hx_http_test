package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension) @:using(stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension) class Reader {
    public var _s : stdgo.GoString = "";
    public var _i : stdgo.GoInt64 = 0;
    public var _prevRune : stdgo.GoInt = 0;
    public function new(?_s:stdgo.GoString, ?_i:stdgo.GoInt64, ?_prevRune:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_i != null) this._i = _i;
        if (_prevRune != null) this._prevRune = _prevRune;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_prevRune", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new Reader(_s, _i, _prevRune);
    }
}
