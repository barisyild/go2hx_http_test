package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_t_frag_static_extension.T_frag_static_extension) @:using(stdgo._internal.regexp.syntax.Syntax_t_frag_static_extension.T_frag_static_extension) class T_frag {
    public var _i : stdgo.GoUInt32 = 0;
    public var _out : stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList = ({} : stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList);
    public var _nullable : Bool = false;
    public function new(?_i:stdgo.GoUInt32, ?_out:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList, ?_nullable:Bool) {
        if (_i != null) this._i = _i;
        if (_out != null) this._out = _out;
        if (_nullable != null) this._nullable = _nullable;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_out", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_t_patchlistdott_patchlist.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_t_patchlistdotT_patchList }, optional : false }, { name : "_nullable", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_frag(_i, _out, _nullable);
    }
}
