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
function benchmarkShortSearch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L315"
        _internal.githubdotcom.dlclark.regexp2.Regexp2_settimeoutcheckperiod.setTimeoutCheckPeriod((100000000i64 : stdgo._internal.time.Time_duration.Duration));
        {};
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L322"
        if ((new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496>(6, 6, ...[(new _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("serial-no-timeout" : stdgo.GoString), false, _internal.githubdotcom.dlclark.regexp2.Regexp2_defaultmatchtimeout.defaultMatchTimeout, (0i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("serial-fixed-timeout" : stdgo.GoString), false, (1000000000i64 : stdgo._internal.time.Time_duration.Duration), (0i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("serial-increasing-timeout" : stdgo.GoString), false, (1000000000i64 : stdgo._internal.time.Time_duration.Duration), (1000000000i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("parallel-no-timeout" : stdgo.GoString), true, _internal.githubdotcom.dlclark.regexp2.Regexp2_defaultmatchtimeout.defaultMatchTimeout, (0i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("parallel-fixed-timeout" : stdgo.GoString), true, (1000000000i64 : stdgo._internal.time.Time_duration.Duration), (0i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("parallel-increasing-timeout" : stdgo.GoString), true, (1000000000i64 : stdgo._internal.time.Time_duration.Duration), (1000000000i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496>) != null) for (__0 => _mode in (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496>(6, 6, ...[(new _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("serial-no-timeout" : stdgo.GoString), false, _internal.githubdotcom.dlclark.regexp2.Regexp2_defaultmatchtimeout.defaultMatchTimeout, (0i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("serial-fixed-timeout" : stdgo.GoString), false, (1000000000i64 : stdgo._internal.time.Time_duration.Duration), (0i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("serial-increasing-timeout" : stdgo.GoString), false, (1000000000i64 : stdgo._internal.time.Time_duration.Duration), (1000000000i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("parallel-no-timeout" : stdgo.GoString), true, _internal.githubdotcom.dlclark.regexp2.Regexp2_defaultmatchtimeout.defaultMatchTimeout, (0i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("parallel-fixed-timeout" : stdgo.GoString), true, (1000000000i64 : stdgo._internal.time.Time_duration.Duration), (0i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("parallel-increasing-timeout" : stdgo.GoString), true, (1000000000i64 : stdgo._internal.time.Time_duration.Duration), (1000000000i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496>)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L330"
            _b.run(_mode._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var _t = _internal.githubdotcom.dlclark.regexp2.Regexp2__maketext._makeText((100 : stdgo.GoInt));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L332"
                _b.setBytes((_t.length : stdgo.GoInt64));
                var _matchOnce = function(_r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>):Void {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L334"
                    {
                        var __tmp__ = _r.matchRunes(_t), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_m) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L335"
                            _b.fatal(new stdgo.AnyInterface(("match!" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                        } else if (_err != null) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L337"
                            _b.fatalf(("Err %v" : stdgo.GoString), ({
                                final __t__ = _err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }));
                        };
                    };
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L341"
                if (!_mode._parallel) {
                    var _r = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("ABCDEFGHIJKLMNOPQRSTUVWXYZ$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).matchTimeout = _mode._timeout;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L344"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L345"
                            _matchOnce(_r);
(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).matchTimeout = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).matchTimeout + (_mode._increase) : stdgo._internal.time.Time_duration.Duration);
                            _i++;
                        };
                    };
                } else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L349"
                    _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
                        var _r = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("ABCDEFGHIJKLMNOPQRSTUVWXYZ$" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
                        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).matchTimeout = _mode._timeout;
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L352"
                        while (_pb.next()) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L353"
                            _matchOnce(_r);
                            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).matchTimeout = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).matchTimeout + (_mode._increase) : stdgo._internal.time.Time_duration.Duration);
                        };
                    });
                };
            });
        };
    }
