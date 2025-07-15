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
@:keep class T__interface_5_static_extension {
    @:interfacetypeffun
    static public function pos(t:stdgo._internal.go.parser.Parser_t__interface_5.T__interface_5):stdgo._internal.go.token.Token_pos.Pos return t.pos();
}
