package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function newPackage(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>, _importer:stdgo._internal.go.ast.Ast_importer.Importer, _universe:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>; var _1 : stdgo.Error; } {
        var _p:stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder = ({} : stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder);
        _p._fset = _fset;
        var _pkgName = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _pkgScope = stdgo._internal.go.ast.Ast_newscope.newScope(_universe);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L80"
        if (_files != null) for (__0 => _file in _files) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L82"
            {
                var _name = @:assignType ((@:checkr (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__() : stdgo.GoString);
                if (_pkgName == ((stdgo.Go.str() : stdgo.GoString))) {
                    _pkgName = _name?.__copy__();
                } else if (_name != (_pkgName)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L86"
                    _p._errorf((@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).package_, ("package %s; expected %s" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_pkgName, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L87"
                    continue;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L91"
            if ((@:checkr (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope ?? throw stdgo.Error._nullPointerDereference.__underlying__()).objects != null) for (__1 => _obj in (@:checkr (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope ?? throw stdgo.Error._nullPointerDereference.__underlying__()).objects) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L92"
                _p._declare(_pkgScope, null, _obj);
            };
        };
        var _imports = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L100"
        if (_files != null) for (__1 => _file in _files) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L103"
            if ((@:checkr (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name != (_pkgName)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L104"
                continue;
            };
            var _importErrors = @:assignType (false : Bool);
            var _fileScope = stdgo._internal.go.ast.Ast_newscope.newScope(_pkgScope);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L110"
            if ((@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).imports != null) for (__2 => _spec in (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).imports) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L111"
                if (_importer == null) {
                    _importErrors = true;
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L113"
                    continue;
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__()), _path:stdgo.GoString = __tmp__._0, __3:stdgo.Error = __tmp__._1;
                var __tmp__ = _importer(_imports, _path?.__copy__()), _pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L117"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L118"
                    _p._errorf((@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path.pos(), ("could not import %s (%s)" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                    _importErrors = true;
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L120"
                    continue;
                };
                var _name = @:assignType ((@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L128"
                if (({
                    final value = (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _name = (@:checkr (@:checkr _spec ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__();
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L133"
                if (_name == (("." : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L135"
                    if ((@:checkr (stdgo.Go.typeAssert((@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_scopedotscope.__type__stdgodot_internaldotgodotastdotAst_scopedotScope })) : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).objects != null) for (__4 => _obj in (@:checkr (stdgo.Go.typeAssert((@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_scopedotscope.__type__stdgodot_internaldotgodotastdotAst_scopedotScope })) : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).objects) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L136"
                        _p._declare(_fileScope, _pkgScope, _obj);
                    };
                } else if (_name != (("_" : stdgo.GoString))) {
                    var _obj = stdgo._internal.go.ast.Ast_newobj.newObj((1 : stdgo._internal.go.ast.Ast_objkind.ObjKind), _name?.__copy__());
                    (@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).decl = new stdgo.AnyInterface(stdgo.Go.asInterface(_spec, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_importspecdotimportspec.__type__stdgodot_internaldotgodotastdotAst_importspecdotImportSpec), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_importspecdotimportspec.__type__stdgodot_internaldotgodotastdotAst_importspecdotImportSpec })));
                    (@:checkr _obj ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data = (@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data;
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L146"
                    _p._declare(_fileScope, _pkgScope, _obj);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L151"
            if (_importErrors) {
                (@:checkr _pkgScope ?? throw stdgo.Error._nullPointerDereference.__underlying__()).outer = null;
            };
            var _i = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L159"
            if ((@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unresolved != null) for (__3 => _ident in (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unresolved) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L160"
                if (!stdgo._internal.go.ast.Ast__resolve._resolve(_fileScope, _ident)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L161"
                    _p._errorf(_ident.pos(), ("undeclared name: %s" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _ident ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unresolved[(_i : stdgo.GoInt)] = _ident;
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L163"
                    _i++;
                };
            };
            (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unresolved = ((@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unresolved.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            (@:checkr _pkgScope ?? throw stdgo.Error._nullPointerDereference.__underlying__()).outer = _universe;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L171"
        _p._errors.sort();
        //"file:///Users/o/.go/go1.21.3/src/go/ast/resolve.go#L172"
        return { _0 : (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast_package.Package(_pkgName?.__copy__(), _pkgScope, _imports, _files) : stdgo._internal.go.ast.Ast_package.Package), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_packagedotpackage.__type__stdgodot_internaldotgodotastdotAst_packagedotPackage })) : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>), _1 : _p._errors.err() };
    }
