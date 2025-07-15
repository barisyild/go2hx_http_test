package _internal.githubdotcom.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_error.Error> = _e;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L63"
        if (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).args.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L64"
            return ((((("error parsing regexp: " : stdgo.GoString) + ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).code.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (" in `" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expr?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L66"
        return ((((("error parsing regexp: " : stdgo.GoString) + stdgo._internal.fmt.Fmt_sprintf.sprintf(((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).code.string() : stdgo.GoString)?.__copy__(), ...((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).args : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString) + (" in `" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expr?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
