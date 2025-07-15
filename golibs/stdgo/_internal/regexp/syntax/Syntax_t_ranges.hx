package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_t_ranges_static_extension.T_ranges_static_extension) @:using(stdgo._internal.regexp.syntax.Syntax_t_ranges_static_extension.T_ranges_static_extension) class T_ranges {
    public var _p : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>);
    public function new(?_p:stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }) }, optional : false }])));
    public function __copy__() {
        return new T_ranges(_p);
    }
}
