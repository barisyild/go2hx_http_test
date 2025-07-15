package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_onepassprog_static_extension.T_onePassProg_static_extension) @:using(stdgo._internal.regexp.Regexp_t_onepassprog_static_extension.T_onePassProg_static_extension) class T_onePassProg {
    public var inst : stdgo.Slice<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
    public var start : stdgo.GoInt = 0;
    public var numCap : stdgo.GoInt = 0;
    public function new(?inst:stdgo.Slice<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>, ?start:stdgo.GoInt, ?numCap:stdgo.GoInt) {
        if (inst != null) this.inst = inst;
        if (start != null) this.start = start;
        if (numCap != null) this.numCap = numCap;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "inst", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_onepassinstdott_onepassinst.__type__stdgodot_internaldotregexpdotRegexp_t_onepassinstdotT_onePassInst }) }, optional : false }, { name : "start", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "numCap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_onePassProg(inst, start, numCap);
    }
}
