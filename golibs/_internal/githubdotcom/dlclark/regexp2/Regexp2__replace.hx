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
function _replace(_regex:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _data:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_replacerdata.ReplacerData>, _evaluator:_internal.githubdotcom.dlclark.regexp2.Regexp2_matchevaluator.MatchEvaluator, _input:stdgo.GoString, _startAt:stdgo.GoInt, _count:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L32"
        if ((_count < (-1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L33"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("Count too small" : stdgo.GoString)) };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L35"
        if (_count == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L36"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _regex.findStringMatchStartingAt(_input?.__copy__(), _startAt), _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L41"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L42"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L44"
        if (({
            final value = _m;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L45"
            return { _0 : _input?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _text = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture._text;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L51"
        if (!_regex.rightToLeft()) {
            var _prevat = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L53"
            while (({
                final value = _m;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L54"
                if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.index != (_prevat)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L55"
                    _buf.writeString(((_text.__slice__(_prevat, (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.index) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__());
                };
                _prevat = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.index + (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.length_ : stdgo.GoInt);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L58"
                if (_evaluator == null) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L59"
                    _internal.githubdotcom.dlclark.regexp2.Regexp2__replacementimpl._replacementImpl(_data, _buf, _m);
                } else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L61"
                    _buf.writeString(_evaluator((_m : _internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match)?.__copy__())?.__copy__());
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L64"
                _count--;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L65"
                if (_count == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L66"
                    break;
                };
                {
                    var __tmp__ = _regex.findNextMatch(_m);
                    _m = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L69"
                if (_err != null) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L70"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L74"
            if ((_prevat < (_text.length) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L75"
                _buf.writeString(((_text.__slice__(_prevat) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__());
            };
        } else {
            var _prevat = @:assignType (_text.length : stdgo.GoInt);
            var _al:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L81"
            while (({
                final value = _m;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L82"
                if (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.index + (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.length_ : stdgo.GoInt) != (_prevat)) {
                    _al = (_al.__append__(((_text.__slice__(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.index + (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.length_ : stdgo.GoInt), _prevat) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
                _prevat = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.index;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L86"
                if (_evaluator == null) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L87"
                    _internal.githubdotcom.dlclark.regexp2.Regexp2__replacementimplrtl._replacementImplRTL(_data, (stdgo.Go.setRef(_al, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>), _m);
                } else {
                    _al = (_al.__append__(_evaluator((_m : _internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match)?.__copy__())?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L92"
                _count--;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L93"
                if (_count == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L94"
                    break;
                };
                {
                    var __tmp__ = _regex.findNextMatch(_m);
                    _m = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L97"
                if (_err != null) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L98"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L102"
            if ((_prevat > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L103"
                _buf.writeString(((_text.__slice__(0, _prevat) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__());
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L106"
            {
                var _i = @:assignType ((_al.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L107"
                    _buf.writeString(_al[(_i : stdgo.GoInt)].__copy__());
                    _i--;
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L111"
        return { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
