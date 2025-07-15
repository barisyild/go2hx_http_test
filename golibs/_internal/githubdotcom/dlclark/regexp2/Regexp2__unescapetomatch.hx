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
function _unEscapeToMatch(_line:stdgo.GoString):stdgo.GoString {
        var _idx = @:assignType (stdgo._internal.strings.Strings_indexrune.indexRune(_line?.__copy__(), (92 : stdgo.GoInt32)) : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L273"
        if (_idx == ((-1 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L274"
            return _line?.__copy__();
        };
        var _buf = stdgo._internal.bytes.Bytes_newbufferstring.newBufferString((_line.__slice__(0, _idx) : stdgo.GoString)?.__copy__());
        var _inEscape = @:assignType (false : Bool);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L282"
        {
            var _i = @:assignType (_idx : stdgo.GoInt);
            while ((_i < (_line.length) : Bool)) {
                var _i__pointer__ = stdgo.Go.pointer(_i);
var _ch = @:assignType (_line[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L284"
                if (_ch == ((92 : stdgo.GoUInt8))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L285"
                    if (_inEscape) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L286"
                        _buf.writeByte(_ch);
                    };
                    _inEscape = !_inEscape;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L289"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L291"
                if (_inEscape) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L292"
                    {
                        final __value__ = _ch;
                        if (__value__ == ((120 : stdgo.GoUInt8))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L294"
                            _buf.writeByte(_internal.githubdotcom.dlclark.regexp2.Regexp2__scanhex._scanHex(_line.__copy__(), _i__pointer__));
                        } else if (__value__ == ((97 : stdgo.GoUInt8))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L296"
                            _buf.writeByte((7 : stdgo.GoUInt8));
                        } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L298"
                            _buf.writeByte((8 : stdgo.GoUInt8));
                        } else if (__value__ == ((101 : stdgo.GoUInt8))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L300"
                            _buf.writeByte((27 : stdgo.GoUInt8));
                        } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L302"
                            _buf.writeByte((12 : stdgo.GoUInt8));
                        } else if (__value__ == ((110 : stdgo.GoUInt8))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L304"
                            _buf.writeByte((10 : stdgo.GoUInt8));
                        } else if (__value__ == ((114 : stdgo.GoUInt8))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L306"
                            _buf.writeByte((13 : stdgo.GoUInt8));
                        } else if (__value__ == ((116 : stdgo.GoUInt8))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L308"
                            _buf.writeByte((9 : stdgo.GoUInt8));
                        } else if (__value__ == ((118 : stdgo.GoUInt8))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L310"
                            _buf.writeByte((11 : stdgo.GoUInt8));
                        } else {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L312"
                            if (((_ch >= (48 : stdgo.GoUInt8) : Bool) && (_ch <= (55 : stdgo.GoUInt8) : Bool) : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L313"
                                _buf.writeByte(_internal.githubdotcom.dlclark.regexp2.Regexp2__scanoctal._scanOctal(_line.__copy__(), _i__pointer__));
                            } else {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L315"
                                _buf.writeByte(_ch);
                            };
                        };
                    };
                    _inEscape = false;
                } else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L321"
                    _buf.writeByte(_ch);
                };
                _i++;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L325"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
