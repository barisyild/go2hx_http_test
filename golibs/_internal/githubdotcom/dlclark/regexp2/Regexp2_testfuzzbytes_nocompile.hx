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
function testFuzzBytes_NoCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_52.T__struct_52>(4, 4, ...[({ _r : (new stdgo.Slice<stdgo.GoUInt8>(10, 10, ...[(40 : stdgo.GoUInt8), (40 : stdgo.GoUInt8), (41 : stdgo.GoUInt8), (92 : stdgo.GoUInt8), (55 : stdgo.GoUInt8), (40 : stdgo.GoUInt8), (63 : stdgo.GoUInt8), (40 : stdgo.GoUInt8), (41 : stdgo.GoUInt8), (41 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_52.T__struct_52), ({ _r : (new stdgo.Slice<stdgo.GoUInt8>(9, 9, ...[(40 : stdgo.GoUInt8), (92 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), (40 : stdgo.GoUInt8), (63 : stdgo.GoUInt8), (40 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (41 : stdgo.GoUInt8), (41 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_52.T__struct_52), ({ _r : (new stdgo.Slice<stdgo.GoUInt8>(13, 13, ...[
(40 : stdgo.GoUInt8),
(63 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(92 : stdgo.GoUInt8),
(49 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(63 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_52.T__struct_52), ({ _r : (new stdgo.Slice<stdgo.GoUInt8>(12, 12, ...[
(40 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(92 : stdgo.GoUInt8),
(55 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(63 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_52.T__struct_52)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _r : (null : stdgo.Slice<stdgo.GoUInt8>) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_52.T__struct_52)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_52.T__struct_52>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1227"
        if (_testCases != null) for (__0 => _c in _testCases) {
            var _r = @:assignType ((_c._r : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1229"
            _t.run(_r?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(_r?.__copy__(), (386 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __1:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1232"
                if (_err == null) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1233"
                    _t.fatal(new stdgo.AnyInterface(("should fail compile, but didn\'t" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            });
        };
    }
