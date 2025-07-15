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
function testBadGroupConstruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _bad = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("(?>-" : stdgo.GoString), ("(?<" : stdgo.GoString), ("(?<=" : stdgo.GoString), ("(?<!" : stdgo.GoString), ("(?>" : stdgo.GoString), ("(?)" : stdgo.GoString), ("(?<)" : stdgo.GoString), ("(?\')" : stdgo.GoString), ("(?<-" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1165"
        if (_bad != null) for (__0 => _b in _bad) {
            var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(_b?.__copy__(), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __1:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1167"
            if (_err == null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L1168"
                _t.fatalf(("Wanted error, but got no error for pattern: %v" : stdgo.GoString), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
