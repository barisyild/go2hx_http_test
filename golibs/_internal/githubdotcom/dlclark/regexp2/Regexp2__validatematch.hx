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
function _validateMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _re:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, _toMatch:stdgo.GoString, _value:stdgo.GoString, _idx:stdgo.GoInt, _capIdx:stdgo.GoInt):Void {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L153"
        if (({
            final value = _re;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L155"
            return;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L158"
        if (({
            final value = _m;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L160"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__problem._problem(_t, ("Expected match for pattern \'%v\' with input \'%v\', but got no match" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_toMatch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L161"
            return;
        };
        var _g = _m.groups();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L165"
        if (((_g.length) <= _idx : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L166"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__problem._problem(_t, ("Expected group %v does not exist in pattern \'%v\' with input \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_idx, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_toMatch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L167"
            return;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L170"
        if (_value == (("<unset>" : stdgo.GoString))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L172"
            if (((_g[(_idx : stdgo.GoInt)].captures.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L173"
                _internal.githubdotcom.dlclark.regexp2.Regexp2__problem._problem(_t, ("Expected no cap %v in group %v in pattern \'%v\' with input \'%v\'" : stdgo.GoString), new stdgo.AnyInterface((_g[(_idx : stdgo.GoInt)].captures[(_capIdx : stdgo.GoInt)].string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_idx, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_toMatch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L176"
            return;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L179"
        if (((_g[(_idx : stdgo.GoInt)].captures.length) <= _capIdx : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L180"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__problem._problem(_t, ("Expected cap %v does not exist in group %v in pattern \'%v\' with input \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_capIdx, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_idx, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_toMatch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L181"
            return;
        };
        var _escp = @:assignType (_internal.githubdotcom.dlclark.regexp2.Regexp2__unescapegroup._unEscapeGroup((_g[(_idx : stdgo.GoInt)].string() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L186"
        if (_escp != (_value)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L187"
            _internal.githubdotcom.dlclark.regexp2.Regexp2__problem._problem(_t, ("Expected \'%v\' but got \'%v\' for cap %v, group %v for pattern \'%v\' with input \'%v\'" : stdgo.GoString), new stdgo.AnyInterface(_value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_escp, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_capIdx, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_idx, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_toMatch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L188"
            return;
        };
    }
