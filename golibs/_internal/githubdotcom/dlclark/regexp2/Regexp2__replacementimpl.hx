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
function _replacementImpl(_data:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_replacerdata.ReplacerData>, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>):Void {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L117"
        if ((@:checkr _data ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rules != null) for (__0 => _r in (@:checkr _data ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rules) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L119"
            if ((_r >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L120"
                _buf.writeString((@:checkr _data ?? throw stdgo.Error._nullPointerDereference.__underlying__()).strings[(_r : stdgo.GoInt)]?.__copy__());
            } else if ((_r < (-4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L122"
                _m._groupValueAppendToBuf(((-5 : stdgo.GoInt) - _r : stdgo.GoInt), _buf);
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L124"
                {
                    final __value__ = ((-5 : stdgo.GoInt) - _r : stdgo.GoInt);
                    if (__value__ == ((-1 : stdgo.GoInt))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L126"
                        {
                            var _i = @:assignType (0 : stdgo.GoInt);
                            while ((_i < (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.index : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L127"
                                _buf.writeRune((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture._text[(_i : stdgo.GoInt)]);
                                _i++;
                            };
                        };
                    } else if (__value__ == ((-2 : stdgo.GoInt))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L130"
                        {
                            var _i = @:assignType ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.index + (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.length_ : stdgo.GoInt);
                            while ((_i < ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture._text.length) : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L131"
                                _buf.writeRune((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture._text[(_i : stdgo.GoInt)]);
                                _i++;
                            };
                        };
                    } else if (__value__ == ((-3 : stdgo.GoInt))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L134"
                        _m._groupValueAppendToBuf((_m.groupCount() - (1 : stdgo.GoInt) : stdgo.GoInt), _buf);
                    } else if (__value__ == ((-4 : stdgo.GoInt))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L136"
                        {
                            var _i = @:assignType (0 : stdgo.GoInt);
                            while ((_i < ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture._text.length) : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/replace.go#L137"
                                _buf.writeRune((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture._text[(_i : stdgo.GoInt)]);
                                _i++;
                            };
                        };
                    };
                };
            };
        };
    }
