package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_queue_static_extension.T_queue_static_extension) @:using(stdgo._internal.regexp.Regexp_t_queue_static_extension.T_queue_static_extension) class T_queue {
    public var _sparse : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _dense : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
    public function new(?_sparse:stdgo.Slice<stdgo.GoUInt32>, ?_dense:stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>) {
        if (_sparse != null) this._sparse = _sparse;
        if (_dense != null) this._dense = _dense;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_sparse", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }) }, optional : false }, { name : "_dense", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_entrydott_entry.__type__stdgodot_internaldotregexpdotRegexp_t_entrydotT_entry }) }, optional : false }])));
    public function __copy__() {
        return new T_queue(_sparse, _dense);
    }
}
