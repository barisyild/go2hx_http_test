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
function _matchString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _toMatch:stdgo.GoString):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L242"
        if (({
            final value = _re;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L243"
            return null;
        };
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).matchTimeout = (1000000000i64 : stdgo._internal.time.Time_duration.Duration);
        var _escp = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L250"
        if (_toMatch != (("\\" : stdgo.GoString))) {
            _escp = _internal.githubdotcom.dlclark.regexp2.Regexp2__unescapetomatch._unEscapeToMatch(_toMatch?.__copy__())?.__copy__();
        };
        var __tmp__ = _re.findStringMatch(_escp?.__copy__()), _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L254"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L255"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__problem._problem(_t, ("Error matching \"%v\" in pattern \"%v\": %v" : stdgo.GoString), new stdgo.AnyInterface(_toMatch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L257"
        return _m;
    }
