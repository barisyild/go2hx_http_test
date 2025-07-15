package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function print(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _x:stdgo.AnyInterface):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L74"
        return stdgo._internal.go.ast.Ast_fprint.fprint(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })), _fset, _x, stdgo._internal.go.ast.Ast_notnilfilter.notNilFilter);
    }
