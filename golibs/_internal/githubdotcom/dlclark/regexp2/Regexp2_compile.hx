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
function compile(_expr:stdgo.GoString, _opt:_internal.githubdotcom.dlclark.regexp2.Regexp2_regexoptions.RegexOptions):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __tmp__ = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_parse.parse(_expr?.__copy__(), (_opt : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)), _tree:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L59"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L60"
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_write.write(_tree), _code:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L65"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L66"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp.go#L70"
        return { _0 : (stdgo.Go.setRef(({ _pattern : _expr?.__copy__(), _options : _opt, _caps : (@:checkr _code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).caps, _capnames : (@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__()).capnames, _capslist : (@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__()).caplist, _capsize : (@:checkr _code ?? throw stdgo.Error._nullPointerDereference.__underlying__()).capsize, _code : _code, matchTimeout : _internal.githubdotcom.dlclark.regexp2.Regexp2_defaultmatchtimeout.defaultMatchTimeout, _muRun : (stdgo.Go.setRef((new stdgo._internal.sync.Sync_mutex.Mutex() : stdgo._internal.sync.Sync_mutex.Mutex), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex })) : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>) } : _internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_regexpdotregexp.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_regexpdotRegexp })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_regexp.Regexp>), _1 : (null : stdgo.Error) };
    }
