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
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.Regexp2.T_fasttime_asInterface) class T_fasttime_static_extension {
    @:keep
    @:tdfield
    static public function _reached( _t:_internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime):Bool {
        @:recv var _t:_internal.githubdotcom.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime = _t;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/fastclock.go#L42"
        return (_internal.githubdotcom.dlclark.regexp2.Regexp2__fast._fast._current._read() >= _t : Bool);
    }
}
