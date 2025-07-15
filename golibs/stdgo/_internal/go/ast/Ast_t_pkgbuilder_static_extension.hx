package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_pkgBuilder_asInterface) class T_pkgBuilder_static_extension {
    @:keep
    @:tdfield
    static public function _declare( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder>, _scope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _altScope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder> = _p;
        var _alt = _scope.insert(_obj);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L31"
        if ((({
            final value = _alt;
            (value == null || (value : Dynamic).__nil__);
        }) && ({
            final value = _altScope;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool)) {
            _alt = _altScope.lookup((@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L35"
        if (({
            final value = _alt;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            var _prevDecl = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L37"
            {
                var _pos = @:assignType (_alt.pos() : stdgo._internal.go.token.Token_pos.Pos);
                if (_pos.isValid()) {
                    _prevDecl = stdgo._internal.fmt.Fmt_sprintf.sprintf(("\n\tprevious declaration at %s" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fset.position(_pos), _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_positiondotposition.__type__stdgodot_internaldotgodottokendotToken_positiondotPosition), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_positiondotposition.__type__stdgodot_internaldotgodottokendotToken_positiondotPosition)))?.__copy__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L40"
            _p._error(_obj.pos(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s redeclared in this block%s" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_prevDecl, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _errorf( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder>, _pos:stdgo._internal.go.token.Token_pos.Pos, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder> = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L26"
        _p._error(_pos, stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _error( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder>, _pos:stdgo._internal.go.token.Token_pos.Pos, _msg:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder> = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L22"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errors.add((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fset.position(_pos)?.__copy__(), _msg?.__copy__());
    }
}
