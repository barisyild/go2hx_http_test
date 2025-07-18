package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.strings.Strings_t_stringfinder_static_extension.T_stringFinder_static_extension) @:using(stdgo._internal.strings.Strings_t_stringfinder_static_extension.T_stringFinder_static_extension) class T_stringFinder {
    public var _pattern : stdgo.GoString = "";
    public var _badCharSkip : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(256, 256).__setNumber32__();
    public var _goodSuffixSkip : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_pattern:stdgo.GoString, ?_badCharSkip:stdgo.GoArray<stdgo.GoInt>, ?_goodSuffixSkip:stdgo.Slice<stdgo.GoInt>) {
        if (_pattern != null) this._pattern = _pattern;
        if (_badCharSkip != null) this._badCharSkip = _badCharSkip;
        if (_goodSuffixSkip != null) this._goodSuffixSkip = _goodSuffixSkip;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_pattern", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_badCharSkip", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 256) }, optional : false }, { name : "_goodSuffixSkip", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_stringFinder(_pattern, _badCharSkip, _goodSuffixSkip);
    }
}
