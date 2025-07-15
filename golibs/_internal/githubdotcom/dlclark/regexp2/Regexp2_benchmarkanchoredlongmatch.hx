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
function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L118"
        _b.stopTimer();
        var _data = @:assignType (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.GoString);
        var _x = (new stdgo.Slice<stdgo.GoInt32>(((32768 : stdgo.GoInt) * (_data.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L121"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (32768 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L122"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (_data.length) : Bool)) {
                        _x[((_i * (_data.length) : stdgo.GoInt) + _j : stdgo.GoInt)] = (_data[(_j : stdgo.GoInt)] : stdgo.GoInt32);
                        _j++;
                    };
                };
                _i++;
            };
        };
        var _re = _internal.githubdotcom.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("^.bc(d|e)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L128"
        _b.startTimer();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L129"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L130"
                {
                    var __tmp__ = _re.matchRunes(_x), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((!_m || (_err != null) : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_performance_test.go#L131"
                        _b.fatalf(("no match or error! %v" : stdgo.GoString), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                };
                _i++;
            };
        };
    }
