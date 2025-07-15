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
function testErr_GroupName(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L320"
        {
            var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(("foo(?<0>bar)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __0:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L321"
                _t.fatalf(("zero group, expected error during compile" : stdgo.GoString));
            } else {
                var __0 = @:assignType (("error parsing regexp: capture number cannot be zero in `foo(?<0>bar)`" : stdgo.GoString) : stdgo.GoString), __1 = @:assignType (_err.error()?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L323"
                    _t.fatalf(("invalid error text, want \'%v\', got \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L325"
        {
            var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(("foo(?\'0\'bar)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __1:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L326"
                _t.fatalf(("zero group, expected error during compile" : stdgo.GoString));
            } else {
                var __0 = @:assignType (("error parsing regexp: capture number cannot be zero in `foo(?\'0\'bar)`" : stdgo.GoString) : stdgo.GoString), __1 = @:assignType (_err.error()?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L328"
                    _t.fatalf(("invalid error text, want \'%v\', got \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L332"
        {
            var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(("foo(?<1bar>)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __2:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L333"
                _t.fatalf(("invalid group name, expected error during compile" : stdgo.GoString));
            } else {
                var __0 = @:assignType (("error parsing regexp: invalid group name: group names must begin with a word character and have a matching terminator in `foo(?<1bar>)`" : stdgo.GoString) : stdgo.GoString), __1 = @:assignType (_err.error()?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L335"
                    _t.fatalf(("invalid error text, want \'%v\', got \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L337"
        {
            var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(("foo(?\'1bar\')" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __3:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L338"
                _t.fatalf(("invalid group name, expected error during compile" : stdgo.GoString));
            } else {
                var __0 = @:assignType (("error parsing regexp: invalid group name: group names must begin with a word character and have a matching terminator in `foo(?\'1bar\')`" : stdgo.GoString) : stdgo.GoString), __1 = @:assignType (_err.error()?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L340"
                    _t.fatalf(("invalid error text, want \'%v\', got \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L344"
        {
            var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(("foo(?<bar)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __4:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L345"
                _t.fatalf(("invalid group name, expected error during compile" : stdgo.GoString));
            } else {
                var __0 = @:assignType (("error parsing regexp: invalid group name: group names must begin with a word character and have a matching terminator in `foo(?<bar)`" : stdgo.GoString) : stdgo.GoString), __1 = @:assignType (_err.error()?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L347"
                    _t.fatalf(("invalid error text, want \'%v\', got \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L349"
        {
            var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(("foo(?\'bar)" : stdgo.GoString), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __5:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L350"
                _t.fatalf(("invalid group name, expected error during compile" : stdgo.GoString));
            } else {
                var __0 = @:assignType (("error parsing regexp: invalid group name: group names must begin with a word character and have a matching terminator in `foo(?\'bar)`" : stdgo.GoString) : stdgo.GoString), __1 = @:assignType (_err.error()?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L352"
                    _t.fatalf(("invalid error text, want \'%v\', got \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
    }
