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
function _assert(_cond:Bool, _msg:stdgo.GoString):Void {
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L377"
        if (!_cond) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L378"
            throw new stdgo.AnyInterface((("go/parser internal error: " : stdgo.GoString) + _msg?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
