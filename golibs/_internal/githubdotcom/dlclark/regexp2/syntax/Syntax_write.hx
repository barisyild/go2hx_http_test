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
function write(_tree:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code>; var _1 : stdgo.Error; } {
        var _w = @:assignType ({ _intStack : (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (32 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _emitted : (new stdgo.Slice<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _stringhash : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), _sethash : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer);
        var __tmp__ = _w._codeFromTree(_tree), _code:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L20"
        if (((((@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (128 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) > (0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : Bool) && ({
            final value = _code;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L21"
            stdgo._internal.os.Os_stdout.stdout.writeString(_code.dump()?.__copy__());
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L22"
            stdgo._internal.os.Os_stdout.stdout.writeString(("\n" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L25"
        return { _0 : _code, _1 : _err };
    }
