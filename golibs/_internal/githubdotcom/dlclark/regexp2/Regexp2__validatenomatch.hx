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
function _validateNoMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>):Void {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L145"
        if ((({
            final value = _re;
            (value == null || (value : Dynamic).__nil__);
        }) || ({
            final value = _m;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L146"
            return;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L149"
        _internal.githubdotcom.dlclark.regexp2.Regexp2__problem._problem(_t, ("Expected no match for pattern \'%v\', but got \'%v\'" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_m.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
