package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
class T_nodeStack_asInterface {
    @:keep
    public dynamic function _pop(_pos:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.ast.Ast_node.Node return @:_0 __self__.value._pop(_pos);
    @:keep
    public dynamic function _push(_n:stdgo._internal.go.ast.Ast_node.Node):Void @:_0 __self__.value._push(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.ast.Ast_t_nodestackpointer.T_nodeStackPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
