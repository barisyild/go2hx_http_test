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
function _newGroup(_name:stdgo.GoString, _text:stdgo.Slice<stdgo.GoInt32>, _caps:stdgo.Slice<stdgo.GoInt>, _capcount:stdgo.GoInt):_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group {
        var _g = @:assignType (new _internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group() : _internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group);
        _g.capture._text = _text;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L298"
        if ((_capcount > (0 : stdgo.GoInt) : Bool)) {
            _g.capture.index = _caps[(((_capcount - (1 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt)];
            _g.capture.length_ = _caps[(((_capcount * (2 : stdgo.GoInt) : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt)];
        };
        _g.name = _name?.__copy__();
        _g.captures = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture>((_capcount : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_capcount : stdgo.GoInt).toBasic() > 0 ? (_capcount : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture)]) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L304"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _capcount : Bool)) {
                _g.captures[(_i : stdgo.GoInt)] = ({ _text : _text, index : _caps[(_i * (2 : stdgo.GoInt) : stdgo.GoInt)], length_ : _caps[((_i * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] } : _internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture);
                _i++;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L313"
        return _g?.__copy__();
    }
