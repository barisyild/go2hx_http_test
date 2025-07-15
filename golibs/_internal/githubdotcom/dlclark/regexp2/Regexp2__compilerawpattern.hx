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
function _compileRawPattern(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _pattern:stdgo.GoString):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _index = @:assignType (stdgo._internal.strings.Strings_lastindexany.lastIndexAny(_pattern?.__copy__(), ("/\"" : stdgo.GoString)) : stdgo.GoInt);
            var _opts:_internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L200"
            if (((_index + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                var _textOptions = @:assignType ((_pattern.__slice__((_index + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                _pattern = (_pattern.__slice__(0, (_index + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L204"
                if (stdgo._internal.strings.Strings_split.split(_textOptions?.__copy__(), ("," : stdgo.GoString)) != null) for (__0 => _textOpt in stdgo._internal.strings.Strings_split.split(_textOptions?.__copy__(), ("," : stdgo.GoString))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L205"
                    {
                        final __value__ = _textOpt;
                        if (__value__ == (("dupnames" : stdgo.GoString))) {} else {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L209"
                            if (stdgo._internal.strings.Strings_contains.contains(_textOpt?.__copy__(), ("i" : stdgo.GoString))) {
                                _opts = (_opts | ((1 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
                            };
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L212"
                            if (stdgo._internal.strings.Strings_contains.contains(_textOpt?.__copy__(), ("s" : stdgo.GoString))) {
                                _opts = (_opts | ((16 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
                            };
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L215"
                            if (stdgo._internal.strings.Strings_contains.contains(_textOpt?.__copy__(), ("m" : stdgo.GoString))) {
                                _opts = (_opts | ((2 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
                            };
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L218"
                            if (stdgo._internal.strings.Strings_contains.contains(_textOpt?.__copy__(), ("x" : stdgo.GoString))) {
                                _opts = (_opts | ((32 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
                            };
                        };
                    };
                };
            };
            _pattern = (_pattern.__slice__((1 : stdgo.GoInt), ((_pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L230"
                        {
                            var _rec = @:assignType ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_rec != null) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L231"
                                _internal.githubdotcom.dlclark.regexp2.Regexp2__problem._problem(_t, ("PANIC in compiling \"%v\": %v" : stdgo.GoString), new stdgo.AnyInterface(_pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _rec);
                            };
                        };
                    };
                    a();
                }) });
            };
            var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(_pattern?.__copy__(), _opts), _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L235"
            if (_err != null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L236"
                _internal.githubdotcom.dlclark.regexp2.Regexp2__problem._problem(_t, ("Error parsing \"%v\": %v" : stdgo.GoString), new stdgo.AnyInterface(_pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L238"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _re;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>);
            };
        };
    }
