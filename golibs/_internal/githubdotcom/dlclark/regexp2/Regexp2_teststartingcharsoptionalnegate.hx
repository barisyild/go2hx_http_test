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
function testStartingCharsOptionalNegate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("(^(\\S{2} )?\\S{2}(\\d+|/) *\\S{3}\\S{3} ?\\d{2,4}[A-Z] ?\\d{2}[A-Z]{3}|(\\S{2} )?\\d{2,4})" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L395"
        if (({
            final value = (@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fcPrefix;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L396"
            _t.fatalf(("FcPrefix wanted nil, got %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fcPrefix, _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_prefixdotprefix.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_prefixdotPrefix), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_prefixdotprefix.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_prefixdotPrefix }))));
        };
    }
