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
function testRE2ExtendedZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _notZero = @:assignType (("߀" : stdgo.GoString) : stdgo.GoString);
        var _r = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("^\\d$" : stdgo.GoString), (512 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L128"
        {
            var __tmp__ = _r.matchString(_notZero?.__copy__()), _m:Bool = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            if (_m) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L129"
                _t.fatal(new stdgo.AnyInterface(("Expected no match" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        _r = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("^\\D$" : stdgo.GoString), (512 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L133"
        {
            var __tmp__ = _r.matchString(_notZero?.__copy__()), _m:Bool = __tmp__._0, __1:stdgo.Error = __tmp__._1;
            if (!_m) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L134"
                _t.fatal(new stdgo.AnyInterface(("Expected match" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
