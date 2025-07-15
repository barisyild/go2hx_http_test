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
function _repeat(_r:stdgo.GoInt32, _c:stdgo.GoInt):stdgo.Slice<stdgo.GoInt32> {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L394"
        if ((_c > (50 : stdgo.GoInt) : Bool)) {
            _c = (50 : stdgo.GoInt);
        };
        var _ret = (new stdgo.Slice<stdgo.GoInt32>((_c : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        _ret[(0 : stdgo.GoInt)] = _r;
        var _bp = @:assignType (1 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L403"
        while ((_bp < (_ret.length) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L404"
            (_ret.__slice__(_bp) : stdgo.Slice<stdgo.GoInt32>).__copyTo__((_ret.__slice__(0, _bp) : stdgo.Slice<stdgo.GoInt32>));
            _bp = (_bp * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L408"
        return _ret;
    }
