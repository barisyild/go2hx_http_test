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
@:keep @:follow @:using(stdgo._internal.go.parser.Parser_mode_static_extension.Mode_static_extension) @:using(stdgo._internal.go.parser.Parser_modepointer_static_extension.ModePointer_static_extension) typedef ModePointer = stdgo.Pointer<stdgo._internal.go.parser.Parser_mode.Mode>;
