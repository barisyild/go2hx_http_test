package _internal.githubdotcom.dlclark.regexp2;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.log.Log;
import _internal.githubdotcom.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.unicode.Unicode;
function testSetPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("^\\s*-TEST" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L58"
        if (({
            final value = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fcPrefix;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L59"
            _t.fatalf(("Expected prefix set [-\\s] but was nil" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L61"
        if (((@:checkr (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fcPrefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).prefixSet.string() : stdgo.GoString) != (("[-\\s]" : stdgo.GoString))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L62"
            _t.fatalf(("Expected prefix set [\\s-] but was %v" : stdgo.GoString), new stdgo.AnyInterface(((@:checkr (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fcPrefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).prefixSet.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
