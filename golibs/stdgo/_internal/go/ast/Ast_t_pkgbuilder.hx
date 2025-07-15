package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.ast.Ast_t_pkgbuilder_static_extension.T_pkgBuilder_static_extension) @:using(stdgo._internal.go.ast.Ast_t_pkgbuilder_static_extension.T_pkgBuilder_static_extension) class T_pkgBuilder {
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    public var _errors : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = (new stdgo._internal.go.scanner.Scanner_errorlist.ErrorList(0, 0) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList);
    public function new(?_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, ?_errors:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList) {
        if (_fset != null) this._fset = _fset;
        if (_errors != null) this._errors = _errors;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_fset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_filesetdotfileset.__type__stdgodot_internaldotgodottokendotToken_filesetdotFileSet }) }, optional : false }, { name : "_errors", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotscannerdotscanner_errorlistdoterrorlist.__type__stdgodot_internaldotgodotscannerdotScanner_errorlistdotErrorList }, optional : false }])));
    public function __copy__() {
        return new T_pkgBuilder(_fset, _errors);
    }
}
