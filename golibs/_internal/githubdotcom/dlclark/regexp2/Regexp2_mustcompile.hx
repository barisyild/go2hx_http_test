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
function mustCompile(_str:stdgo.GoString, _opt:_internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> {
        var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(_str?.__copy__(), _opt), _regexp:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _error:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L88"
        if (_error != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L89"
            throw new stdgo.AnyInterface((((("regexp2: Compile(" : stdgo.GoString) + _internal.githubdotcom.dlclark.regexp2.Regexp2__quote._quote(_str?.__copy__())?.__copy__() : stdgo.GoString) + ("): " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _error.error()?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L91"
        return _regexp;
    }
