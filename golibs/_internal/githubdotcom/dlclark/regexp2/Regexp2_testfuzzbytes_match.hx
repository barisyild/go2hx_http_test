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
function testFuzzBytes_Match(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_53.T__struct_53>(2, 2, ...[({ _r : (new stdgo.Slice<stdgo.GoUInt8>(6, 6, ...[(48 : stdgo.GoUInt8), (191 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (42 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (48 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _s : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(240 : stdgo.GoUInt8), (176 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (145 : stdgo.GoUInt8), (247 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_53.T__struct_53), ({ _r : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(48 : stdgo.GoUInt8), (175 : stdgo.GoUInt8), (243 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (42 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _s : (new stdgo.Slice<stdgo.GoUInt8>(6, 6, ...[(243 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (135 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (137 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_53.T__struct_53)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _r : (null : stdgo.Slice<stdgo.GoUInt8>), _s : (null : stdgo.Slice<stdgo.GoUInt8>) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_53.T__struct_53)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_t__struct_53.T__struct_53>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1255"
        if (_testCases != null) for (__0 => _c in _testCases) {
            var _r = @:assignType ((_c._r : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1257"
            _t.run(_r?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(_r?.__copy__(), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1260"
                if (_err != null) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1261"
                    _t.fatal(new stdgo.AnyInterface(("should compile, but didn\'t" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1264"
                _re.matchString((_c._s : stdgo.GoString)?.__copy__());
            });
        };
    }
