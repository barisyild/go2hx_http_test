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
function testIncorrectTimeoutError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L88"
        stdgo._internal.log.Log_setflags.setFlags((4 : stdgo.GoInt));
        var _re = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("\\[(\\d+)\\]\\s+\\[([\\s\\S]+)\\]\\s+([\\s\\S]+).*" : stdgo.GoString), (512 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).matchTimeout = ((5i64 : stdgo._internal.time.Time_duration.Duration) * _internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod : stdgo._internal.time.Time_duration.Duration);
        var __tmp__ = _re.findStringMatch(("[10000] [Dec 15, 2012 1:42:43 AM] com.dev.log.LoggingExample main" : stdgo.GoString)), __0:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L95"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L96"
            _t.fatalf(("expected no error, got %v" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L100"
        stdgo._internal.time.Time_sleep.sleep(((1000000000i64 : stdgo._internal.time.Time_duration.Duration) + ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).matchTimeout * (2i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L102"
        {
            var _val = @:assignType (_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._clockEnd._read() - _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._current._read() : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
            if ((_val > (0i64 : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L103"
                _t.fatalf(("unexpected bg timer running: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_val, _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime)));
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L107"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (1000 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _re.findStringMatch(("[10000] [Dec 15, 2012 1:42:43 AM] com.dev.log.LoggingExample main" : stdgo.GoString)), __1:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L109"
                if (_err != null) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L110"
                    stdgo._internal.log.Log_printf.printf(("timeout" : stdgo.GoString));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L111"
                    _t.fatalf(("Expecting no error, got: \'%v\' on iteration %v" : stdgo.GoString), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
                _i++;
            };
        };
    }
