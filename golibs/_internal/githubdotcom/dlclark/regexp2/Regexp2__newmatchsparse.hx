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
function _newMatchSparse(_regex:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>, _caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, _capcount:stdgo.GoInt, _text:stdgo.Slice<stdgo.GoInt32>, _startpos:stdgo.GoInt):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> {
        var _m = _internal.githubdotcom.dlclark.regexp2.Regexp2__newmatch._newMatch(_regex, _capcount, _text, _startpos);
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparseCaps = _caps;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L81"
        return _m;
    }
