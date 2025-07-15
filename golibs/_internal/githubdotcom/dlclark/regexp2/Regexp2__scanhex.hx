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
function _scanHex(_line:stdgo.GoString, _idx:stdgo.Pointer<stdgo.GoInt>):stdgo.GoUInt8 {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L347"
        if ((_idx.value >= ((_line.length) - (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L348"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("not enough hex chars in %v at %v" : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_idx.value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L350"
        _idx.value++;
        var _d1 = @:assignType (_internal.githubdotcom.dlclark.regexp2.Regexp2__hexdigit._hexDigit(_line[(_idx.value : stdgo.GoInt)]) : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L352"
        _idx.value++;
        var _d2 = @:assignType (_internal.githubdotcom.dlclark.regexp2.Regexp2__hexdigit._hexDigit(_line[(_idx.value : stdgo.GoInt)]) : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L354"
        if (((_d1 < (0 : stdgo.GoInt) : Bool) || (_d2 < (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L355"
            throw new stdgo.AnyInterface(("bad hex chars" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L358"
        return (((_d1 * (16 : stdgo.GoInt) : stdgo.GoInt) + _d2 : stdgo.GoInt) : stdgo.GoUInt8);
    }
