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
function testRE2CompatCapture_Invalid(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _bogus = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("(?P<name>a" : stdgo.GoString), ("(?P<name>" : stdgo.GoString), ("(?P<name" : stdgo.GoString), ("(?P<x y>a)" : stdgo.GoString), ("(?P<>a)" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L29"
        if (_bogus != null) for (__0 => _inp in _bogus) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L30"
            _t.run(_inp?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(_inp?.__copy__(), (512 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L32"
                if (_err == null) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L33"
                    _t.fatal(new stdgo.AnyInterface(("Expected failure to parse" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L35"
                if (({
                    final value = _r;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_re2_test.go#L36"
                    _t.fatal(new stdgo.AnyInterface(("expected regexp to be nil" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            });
        };
    }
