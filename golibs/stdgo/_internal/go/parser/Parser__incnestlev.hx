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
function _incNestLev(_p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> {
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L114"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nestLev++;
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L115"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nestLev > (100000 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L116"
            _p._error((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos, ("exceeded max nesting depth" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L117"
            throw new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.go.parser.Parser_t_bailout.T_bailout() : stdgo._internal.go.parser.Parser_t_bailout.T_bailout), _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_bailoutdott_bailout.__type__stdgodot_internaldotgodotparserdotParser_t_bailoutdotT_bailout), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_bailoutdott_bailout.__type__stdgodot_internaldotgodotparserdotParser_t_bailoutdotT_bailout));
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/parser.go#L119"
        return _p;
    }
