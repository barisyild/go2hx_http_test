package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_inst_static_extension.Inst_static_extension) @:using(stdgo._internal.regexp.syntax.Syntax_inst_static_extension.Inst_static_extension) class Inst {
    public var op : stdgo._internal.regexp.syntax.Syntax_instop.InstOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
    public var out : stdgo.GoUInt32 = 0;
    public var arg : stdgo.GoUInt32 = 0;
    public var rune : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public function new(?op:stdgo._internal.regexp.syntax.Syntax_instop.InstOp, ?out:stdgo.GoUInt32, ?arg:stdgo.GoUInt32, ?rune:stdgo.Slice<stdgo.GoInt32>) {
        if (op != null) this.op = op;
        if (out != null) this.out = out;
        if (arg != null) this.arg = arg;
        if (rune != null) this.rune = rune;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "op", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instopdotinstop.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instopdotInstOp }, optional : false }, { name : "out", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "arg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "rune", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Inst(op, out, arg, rune);
    }
}
