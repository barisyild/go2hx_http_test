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
function unescape(_input:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _idx = @:assignType (stdgo._internal.strings.Strings_indexrune.indexRune(_input?.__copy__(), (92 : stdgo.GoInt32)) : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L60"
        if (_idx == ((-1 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L61"
            return { _0 : _input?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _buf = stdgo._internal.bytes.Bytes_newbufferstring.newBufferString((_input.__slice__(0, _idx) : stdgo.GoString)?.__copy__());
        var _p = @:assignType (new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser() : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L68"
        _p._setPattern((_input.__slice__((_idx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L69"
        while (true) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L70"
            if (_p._rightMost()) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L71"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _p._getErr((("illegal \\ at end of pattern" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
            };
            var __tmp__ = _p._scanCharEscape(), _r:stdgo.GoInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L74"
            if (_err != null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L75"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L77"
            _buf.writeRune(_r);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L79"
            if (_p._rightMost()) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L80"
                return { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            };
            _r = _p._moveRightGetChar();
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L84"
            while (_r != ((92 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L85"
                _buf.writeRune(_r);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L86"
                if (_p._rightMost()) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/escape.go#L88"
                    return { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                };
                _r = _p._moveRightGetChar();
            };
        };
    }
