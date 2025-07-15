package stdgo._internal.go.parser;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.go.ast.Ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.go.build.constraint.Constraint;
import stdgo._internal.go.internal.typeparams.Typeparams;
@:structInit @:using(stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension) @:using(stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension) class T_resolver {
    public var _handle : stdgo.Ref<stdgo._internal.go.token.Token_file.File> = (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
    public var _declErr : (stdgo._internal.go.token.Token_pos.Pos, stdgo.GoString) -> Void = null;
    public var _pkgScope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
    public var _topScope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
    public var _unresolved : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
    public var _depth : stdgo.GoInt = 0;
    public var _labelScope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
    public var _targetStack : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>>);
    public function new(?_handle:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, ?_declErr:(stdgo._internal.go.token.Token_pos.Pos, stdgo.GoString) -> Void, ?_pkgScope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, ?_topScope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, ?_unresolved:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>, ?_depth:stdgo.GoInt, ?_labelScope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, ?_targetStack:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>>) {
        if (_handle != null) this._handle = _handle;
        if (_declErr != null) this._declErr = _declErr;
        if (_pkgScope != null) this._pkgScope = _pkgScope;
        if (_topScope != null) this._topScope = _topScope;
        if (_unresolved != null) this._unresolved = _unresolved;
        if (_depth != null) this._depth = _depth;
        if (_labelScope != null) this._labelScope = _labelScope;
        if (_targetStack != null) this._targetStack = _targetStack;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_handle", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_filedotfile.__type__stdgodot_internaldotgodottokendotToken_filedotFile }) }, optional : false }, { name : "_declErr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos, stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_pkgScope", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_scopedotscope.__type__stdgodot_internaldotgodotastdotAst_scopedotScope }) }, optional : false }, { name : "_topScope", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_scopedotscope.__type__stdgodot_internaldotgodotastdotAst_scopedotScope }) }, optional : false }, { name : "_unresolved", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }) }) }, optional : false }, { name : "_depth", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_labelScope", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_scopedotscope.__type__stdgodot_internaldotgodotastdotAst_scopedotScope }) }, optional : false }, { name : "_targetStack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }) }) }) }, optional : false }])));
    public function __copy__() {
        return new T_resolver(_handle, _declErr, _pkgScope, _topScope, _unresolved, _depth, _labelScope, _targetStack);
    }
}
