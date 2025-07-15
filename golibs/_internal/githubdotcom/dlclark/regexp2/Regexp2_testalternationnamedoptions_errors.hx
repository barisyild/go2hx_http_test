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
function testAlternationNamedOptions_Errors(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoString>(22, 22, ...[
("(?(?e))" : stdgo.GoString),
("(?(?a)" : stdgo.GoString),
("(?(?" : stdgo.GoString),
("(?(" : stdgo.GoString),
("?(a:b)" : stdgo.GoString),
("?(a)" : stdgo.GoString),
("?(a|b)" : stdgo.GoString),
("?((a)" : stdgo.GoString),
("?((a)a" : stdgo.GoString),
("?((a)a|" : stdgo.GoString),
("?((a)a|b" : stdgo.GoString),
("(?(?i))" : stdgo.GoString),
("(?(?I))" : stdgo.GoString),
("(?(?m))" : stdgo.GoString),
("(?(?M))" : stdgo.GoString),
("(?(?s))" : stdgo.GoString),
("(?(?S))" : stdgo.GoString),
("(?(?x))" : stdgo.GoString),
("(?(?X))" : stdgo.GoString),
("(?(?n))" : stdgo.GoString),
("(?(?N))" : stdgo.GoString),
(" (?(?n))" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L978"
        if (_data != null) for (__0 => _p in _data) {
            var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(_p?.__copy__(), (0 : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L980"
            if (_err == null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L981"
                _t.fatal(new stdgo.AnyInterface(("Expected error, got nil" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L983"
            if (({
                final value = _re;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L984"
                _t.fatal(new stdgo.AnyInterface(("Expected unparsed regexp, got non-nil" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L987"
            if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_err.error()?.__copy__(), ("error parsing regexp: " : stdgo.GoString))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_test.go#L988"
                _t.fatalf(("Wanted parse error, got \'%v\'" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
    }
