package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_onepassinst_static_extension.T_onePassInst_static_extension) @:using(stdgo._internal.regexp.Regexp_t_onepassinst_static_extension.T_onePassInst_static_extension) class T_onePassInst {
    @:embedded
    public var inst : stdgo._internal.regexp.syntax.Syntax_inst.Inst = ({} : stdgo._internal.regexp.syntax.Syntax_inst.Inst);
    public var next : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public function new(?inst:stdgo._internal.regexp.syntax.Syntax_inst.Inst, ?next:stdgo.Slice<stdgo.GoUInt32>) {
        if (inst != null) this.inst = inst;
        if (next != null) this.next = next;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "inst", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst }, optional : false }, { name : "next", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }) }, optional : false }])));
    public var matchEmptyWidth(get, never) : (stdgo.GoInt32, stdgo.GoInt32) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_matchEmptyWidth():(stdgo.GoInt32, stdgo.GoInt32) -> Bool return @:check32 this.inst.matchEmptyWidth;
    public var matchRune(get, never) : stdgo.GoInt32 -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_matchRune():stdgo.GoInt32 -> Bool return @:check32 this.inst.matchRune;
    public var matchRunePos(get, never) : stdgo.GoInt32 -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_matchRunePos():stdgo.GoInt32 -> stdgo.GoInt return @:check32 this.inst.matchRunePos;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check32 this.inst.string;
    public var _op(get, never) : () -> stdgo._internal.regexp.syntax.Syntax_instop.InstOp;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__op():() -> stdgo._internal.regexp.syntax.Syntax_instop.InstOp return @:check32 this.inst._op;
    public function __copy__() {
        return new T_onePassInst(inst, next);
    }
}
