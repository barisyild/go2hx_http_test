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
function testDeadline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L16"
        if ((new stdgo.Slice<stdgo._internal.time.Time_duration.Duration>(4, 4, ...[(_internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod / (10i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration), _internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod, (_internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod * (5i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration), (_internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod * (10i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_duration.Duration>) != null) for (__0 => _delay in (new stdgo.Slice<stdgo._internal.time.Time_duration.Duration>(4, 4, ...[(_internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod / (10i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration), _internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod, (_internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod * (5i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration), (_internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod * (10i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_duration.Duration>)) {
            var _delay = @:assignType (_delay : stdgo._internal.time.Time_duration.Duration);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L23"
            _t.run(stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface(stdgo.Go.asInterface(_delay, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L24"
                _t.parallel();
                var _start = @:assignType (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
                var _d = @:assignType (_internal.githubdotcom.dlclark.regexp2.Regexp2__makedeadline._makeDeadline(_delay) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L27"
                if (_d._reached()) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L28"
                    _t.fatalf(("deadline (%v) unexpectedly expired immediately" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_delay, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L30"
                stdgo._internal.time.Time_sleep.sleep((_delay / (2i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L31"
                if (_d._reached()) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L32"
                    _t.fatalf(("deadline (%v) expired too soon (after %v)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_delay, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_since.since(_start?.__copy__()), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L34"
                stdgo._internal.time.Time_sleep.sleep(((_delay / (2i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) + ((2i64 : stdgo._internal.time.Time_duration.Duration) * _internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L35"
                if (!_d._reached()) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L36"
                    _t.fatalf(("deadline (%v) did not expire within %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_delay, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_since.since(_start?.__copy__()), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
                };
            });
        };
    }
