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
function testIncorrectDeadline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L61"
        if (_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._start.isZero()) {
            _internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._start = stdgo._internal.time.Time_now.now()?.__copy__();
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L65"
        while (_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._running) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L66"
            stdgo._internal.time.Time_sleep.sleep(_internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L68"
        _t.logf(("current fast: %+v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast, _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fastclockdott_fastclock.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fastclockdotT_fastclock), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fastclockdott_fastclock.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fastclockdotT_fastclock)));
        var _timeout = @:assignType ((5i64 : stdgo._internal.time.Time_duration.Duration) * _internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod : stdgo._internal.time.Time_duration.Duration);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L71"
        stdgo._internal.time.Time_sleep.sleep(((10i64 : stdgo._internal.time.Time_duration.Duration) * _internal.githubdotcom.dlclark.regexp2.Regexp2__clockperiod._clockPeriod : stdgo._internal.time.Time_duration.Duration));
        var _nowTick = @:assignType (_internal.githubdotcom.dlclark.regexp2.Regexp2__durationtoticks._durationToTicks(stdgo._internal.time.Time_since.since(_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._start?.__copy__())) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
        var _d = @:assignType (_internal.githubdotcom.dlclark.regexp2.Regexp2__makedeadline._makeDeadline(_timeout) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
        var _gotTick = @:assignType (_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._current._read() : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L77"
        _t.logf(("nowTick: %+v, gotTick: %+v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_nowTick, _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime)), new stdgo.AnyInterface(stdgo.Go.asInterface(_gotTick, _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime)));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L78"
        if ((_nowTick > _gotTick : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L79"
            _t.errorf(("Expectd current should greater than %v, got %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_gotTick, _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime)), new stdgo.AnyInterface(stdgo.Go.asInterface(_nowTick, _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime)));
        };
        var _expectedDeadTick = @:assignType (_nowTick + _internal.githubdotcom.dlclark.regexp2.Regexp2__durationtoticks._durationToTicks(_timeout) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L82"
        if ((_d < _expectedDeadTick : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock_test.go#L83"
            _t.errorf(("Expectd deadTick %v, got %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_expectedDeadTick, _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime)), new stdgo.AnyInterface(stdgo.Go.asInterface(_d, _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_t_fasttimedott_fasttime.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_t_fasttimedotT_fasttime)));
        };
    }
