package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function fprint(_w:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _x:stdgo.AnyInterface, _f:stdgo._internal.go.ast.Ast_fieldfilter.FieldFilter):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L40"
        return stdgo._internal.go.ast.Ast__fprint._fprint(_w, _fset, _x, _f);
    }
