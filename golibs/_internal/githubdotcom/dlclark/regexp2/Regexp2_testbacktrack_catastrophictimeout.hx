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
function testBacktrack_CatastrophicTimeout(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(("(.+)*\\?" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L16"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L17"
            _t.fatal(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L19"
        _t.logf(("code dump: %v" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code.dump(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        {};
        {};
        var _lateAllowance = (_internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod + (500000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L25"
        if ((new stdgo.Slice<stdgo._internal.time.Time_duration.Duration>(7, 7, ...[(-1000000i64 : stdgo._internal.time.Time_duration.Duration), (0i64 : stdgo._internal.time.Time_duration.Duration), (1000000i64 : stdgo._internal.time.Time_duration.Duration), (10000000i64 : stdgo._internal.time.Time_duration.Duration), (100000000i64 : stdgo._internal.time.Time_duration.Duration), (500000000i64 : stdgo._internal.time.Time_duration.Duration), (1000000000i64 : stdgo._internal.time.Time_duration.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_duration.Duration>) != null) for (__0 => _timeout in (new stdgo.Slice<stdgo._internal.time.Time_duration.Duration>(7, 7, ...[(-1000000i64 : stdgo._internal.time.Time_duration.Duration), (0i64 : stdgo._internal.time.Time_duration.Duration), (1000000i64 : stdgo._internal.time.Time_duration.Duration), (10000000i64 : stdgo._internal.time.Time_duration.Duration), (100000000i64 : stdgo._internal.time.Time_duration.Duration), (500000000i64 : stdgo._internal.time.Time_duration.Duration), (1000000000i64 : stdgo._internal.time.Time_duration.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_duration.Duration>)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L34"
            _t.run(stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface(stdgo.Go.asInterface(_timeout, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).matchTimeout = _timeout;
                var _start = @:assignType (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
                var __tmp__ = _r.findStringMatch(("Do you think you found the problem string!" : stdgo.GoString)), _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _elapsed = @:assignType (stdgo._internal.time.Time_since.since(_start?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L39"
                if (_err == null) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L40"
                    _t.errorf(("expected timeout err" : stdgo.GoString));
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L42"
                if (({
                    final value = _m;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L43"
                    _t.errorf(("Expected no match" : stdgo.GoString));
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L45"
                _t.logf(("timeed out after %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_elapsed, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L46"
                if ((_elapsed < (_timeout - (10000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L47"
                    _t.errorf(("Match timed out too quickly (%v instead of expected %v)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_elapsed, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface(stdgo.Go.asInterface((_timeout - (10000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L49"
                if ((_elapsed > (_timeout + _lateAllowance : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L50"
                    _t.errorf(("Match timed out too late (%v instead of expected %v)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_elapsed, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface(stdgo.Go.asInterface((_timeout + _lateAllowance : stdgo._internal.time.Time_duration.Duration), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
                };
            });
        };
    }
