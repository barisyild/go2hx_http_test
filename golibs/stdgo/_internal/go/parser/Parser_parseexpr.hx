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
function parseExpr(_x:stdgo.GoString):{ var _0 : stdgo._internal.go.ast.Ast_expr.Expr; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L237"
        return stdgo._internal.go.parser.Parser_parseexprfrom.parseExprFrom(stdgo._internal.go.token.Token_newfileset.newFileSet(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), new stdgo.AnyInterface((_x : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode));
    }
