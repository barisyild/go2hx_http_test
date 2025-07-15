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
function _runRegexTrial(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _pattern:stdgo.GoString, _options:_internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions, _input:stdgo.GoString, _expected:stdgo.GoString):Void {
        var _result = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = _internal.githubdotcom.dlclark.regexp2.Regexp2_compile.compile(_pattern?.__copy__(), _options), _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1053"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1054"
            if (_expected != (("Error." : stdgo.GoString))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1055"
                _t.errorf(("Compiling pattern \'%v\' with options \'%v\' -- expected \'%v\' got \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_options, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_regexoptionsdotregexoptions.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_regexoptionsdotRegexOptions)), new stdgo.AnyInterface(_expected, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_err.error(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1057"
            return;
        };
        var _groupNums = _re.getGroupNumbers();
        var __tmp__ = _re.findStringMatch(_input?.__copy__()), _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1062"
        if (_err != null) {
            _result = stdgo._internal.fmt.Fmt_sprintf.sprintf(("Error. %v" : stdgo.GoString), new stdgo.AnyInterface(_err.error(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__();
        } else if (({
            final value = _m;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            _result = ("Pass." : stdgo.GoString);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1066"
            if (_m.groups() != null) for (_i => _group in _m.groups()) {
                var _gid = @:assignType (_groupNums[(_i : stdgo.GoInt)] : stdgo.GoInt);
                _result = (_result + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((" Group[%v]=" : stdgo.GoString) : stdgo.GoString), new stdgo.AnyInterface(_gid, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))))?.__copy__() : stdgo.GoString);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1070"
                if (_group.captures != null) for (__0 => _cp in _group.captures) {
                    _result = (_result + (stdgo._internal.fmt.Fmt_sprintf.sprintf((("(%v,%v)" : stdgo.GoString) : stdgo.GoString), new stdgo.AnyInterface(_cp.index, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_cp.length_, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))))?.__copy__() : stdgo.GoString);
                };
            };
        } else {
            _result = ("Fail." : stdgo.GoString);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1078"
        if (_expected != (_result)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_mono_test.go#L1079"
            _t.errorf(("Matching input \'%v\' against pattern \'%v\' with options \'%v\' -- expected \'%v\' got \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_input, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_options, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_regexoptionsdotregexoptions.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_regexoptionsdotRegexOptions)), new stdgo.AnyInterface(_expected, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_result, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
