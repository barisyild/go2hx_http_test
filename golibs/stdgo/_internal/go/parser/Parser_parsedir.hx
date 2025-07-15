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
function parseDir(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _path:stdgo.GoString, _filter:stdgo._internal.io.fs.Fs_fileinfo.FileInfo -> Bool, _mode:stdgo._internal.go.parser.Parser_mode.Mode):{ var _0 : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>; var _1 : stdgo.Error; } {
        var _pkgs = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>), _first = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.os.Os_readdir.readDir(_path?.__copy__()), _list:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L141"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L142"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>), _1 : _err };
                _pkgs = __tmp__._0;
                _first = __tmp__._1;
                __tmp__;
            };
        };
        _pkgs = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>);
        //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L146"
        if (_list != null) for (__0 => _d in _list) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L147"
            if ((_d.isDir() || !stdgo._internal.strings.Strings_hassuffix.hasSuffix(_d.name()?.__copy__(), (".go" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L148"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L150"
            if (_filter != null) {
                var __tmp__ = _d.info(), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L152"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L153"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>), _1 : _err };
                        _pkgs = __tmp__._0;
                        _first = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L155"
                if (!_filter(_info)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L156"
                    continue;
                };
            };
            var _filename = @:assignType (stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), _d.name()?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L160"
            {
                var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, _filename?.__copy__(), (null : stdgo.AnyInterface), _mode), _src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    var _name = @:assignType ((@:checkr (@:checkr _src ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__() : stdgo.GoString);
                    var __tmp__ = (_pkgs != null && _pkgs.__exists__(_name?.__copy__()) ? { _0 : _pkgs[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>), _1 : false }), _pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package> = __tmp__._0, _found:Bool = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L163"
                    if (!_found) {
                        _pkg = (stdgo.Go.setRef(({ name : _name?.__copy__(), files : (({
                            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>();
                            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>) } : stdgo._internal.go.ast.Ast_package.Package), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_packagedotpackage.__type__stdgodot_internaldotgodotastdotAst_packagedotPackage })) : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>);
                        _pkgs[_name] = _pkg;
                    };
                    (@:checkr _pkg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).files[_filename] = _src;
                } else if (_first == null) {
                    _first = _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L176"
        return { _0 : _pkgs, _1 : _first };
    }
