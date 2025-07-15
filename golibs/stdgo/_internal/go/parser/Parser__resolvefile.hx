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
function _resolveFile(_file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _handle:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _declErr:(stdgo._internal.go.token.Token_pos.Pos, stdgo.GoString) -> Void):Void {
        var _pkgScope = stdgo._internal.go.ast.Ast_newscope.newScope(null);
        var _r = (stdgo.Go.setRef(({ _handle : _handle, _declErr : _declErr, _topScope : _pkgScope, _pkgScope : _pkgScope, _depth : (1 : stdgo.GoInt) } : stdgo._internal.go.parser.Parser_t_resolver.T_resolver), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })) : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L31"
        if ((@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls != null) for (__0 => _decl in (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decls) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L32"
            stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_resolverdott_resolver.__type__stdgodot_internaldotgodotparserdotParser_t_resolverdotT_resolver })), _decl);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L35"
        _r._closeScope();
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L36"
        stdgo._internal.go.parser.Parser__assert._assert(({
            final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._topScope;
            (value == null || (value : Dynamic).__nil__);
        }), ("unbalanced scopes" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L37"
        stdgo._internal.go.parser.Parser__assert._assert(({
            final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._labelScope;
            (value == null || (value : Dynamic).__nil__);
        }), ("unbalanced label scopes" : stdgo.GoString));
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L41"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unresolved != null) for (__1 => _ident in (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unresolved) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L43"
            stdgo._internal.go.parser.Parser__assert._assert((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj == (stdgo._internal.go.parser.Parser__unresolved._unresolved), ("object already resolved" : stdgo.GoString));
            (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pkgScope.lookup((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L45"
            if (({
                final value = (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj;
                (value == null || (value : Dynamic).__nil__);
            })) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unresolved[(_i : stdgo.GoInt)] = _ident;
                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L47"
                _i++;
            } else if (false) {
                var _pos = @:assignType ((stdgo.Go.typeAssert((@:checkr (@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decl, stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("pos", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })])) : stdgo._internal.go.parser.Parser_t__interface_6.T__interface_6).pos() : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///Users/o/.go/go1.21.3/src/go/parser/resolver.go#L50"
                _r._trace(("resolved %s@%v to package object %v" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_ident.pos(), _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)), new stdgo.AnyInterface(stdgo.Go.asInterface(_pos, _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)));
            };
        };
        (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pkgScope;
        (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unresolved = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unresolved.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
    }
