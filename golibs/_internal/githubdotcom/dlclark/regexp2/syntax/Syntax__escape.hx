package _internal.githubdotcom.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
function _escape(_b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _r:stdgo.GoInt32, _force:Bool):Void {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L21"
        if (stdgo._internal.unicode.Unicode_isprint.isPrint(_r)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L22"
            if (((stdgo._internal.strings.Strings_indexrune.indexRune(("\\.+*?()|[]{}^$# " : stdgo.GoString), _r) >= (0 : stdgo.GoInt) : Bool) || _force : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L23"
                _b.writeRune((92 : stdgo.GoInt32));
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L25"
            _b.writeRune(_r);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L26"
            return;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L29"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _r;
                    if (__value__ == ((7 : stdgo.GoInt32))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L31"
                        _b.writeString(("\\a" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((12 : stdgo.GoInt32))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L33"
                        _b.writeString(("\\f" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((10 : stdgo.GoInt32))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L35"
                        _b.writeString(("\\n" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((13 : stdgo.GoInt32))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L37"
                        _b.writeString(("\\r" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((9 : stdgo.GoInt32))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L39"
                        _b.writeString(("\\t" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((11 : stdgo.GoInt32))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L41"
                        _b.writeString(("\\v" : stdgo.GoString));
                        break;
                    } else {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L43"
                        if ((_r < (256 : stdgo.GoInt32) : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L44"
                            _b.writeString(("\\x" : stdgo.GoString));
                            var _s = @:assignType (stdgo._internal.strconv.Strconv_formatint.formatInt((_r : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L46"
                            if ((_s.length) == ((1 : stdgo.GoInt))) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L47"
                                _b.writeRune((48 : stdgo.GoInt32));
                            };
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L49"
                            _b.writeString(_s?.__copy__());
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L50"
                            break;
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L52"
                        _b.writeString(("\\u" : stdgo.GoString));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L53"
                        _b.writeString(stdgo._internal.strconv.Strconv_formatint.formatInt((_r : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__());
                    };
                };
                break;
            };
        };
    }
