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
function _newMatch(_regex:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _capcount:stdgo.GoInt, _text:stdgo.Slice<stdgo.GoInt32>, _startpos:stdgo.GoInt):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> {
        var _m = @:assignType ({ _regex : _regex, _matchcount : (new stdgo.Slice<stdgo.GoInt>((_capcount : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _matches : (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((_capcount : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>), _textstart : _startpos, _balancing : false } : _internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match);
        _m.group.name = ("0" : stdgo.GoString);
        _m.group.capture._text = _text;
        _m._matches[(0 : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L75"
        return (stdgo.Go.setRef(_m, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_matchdotmatch.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_matchdotMatch })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>);
    }
