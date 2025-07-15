package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
class T_pkgBuilder_asInterface {
    @:keep
    public dynamic function _declare(_scope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _altScope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>):Void @:_0 __self__.value._declare(_scope, _altScope, _obj);
    @:keep
    public dynamic function _errorf(_pos:stdgo._internal.go.token.Token_pos.Pos, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._errorf(_pos, _format, ..._args);
    @:keep
    public dynamic function _error(_pos:stdgo._internal.go.token.Token_pos.Pos, _msg:stdgo.GoString):Void @:_0 __self__.value._error(_pos, _msg);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.ast.Ast_t_pkgbuilderpointer.T_pkgBuilderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
