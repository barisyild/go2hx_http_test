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
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax.T_regexFc_asInterface) class T_regexFc_static_extension {
    @:keep
    @:tdfield
    static public function _addFC( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>, _fc:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc, _concatenate:Bool):Bool {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L310"
        if ((!(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc.isMergeable() || !_fc._cc.isMergeable() : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L311"
            return false;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L314"
        if (_concatenate) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L315"
            if (!(@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nullable) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L316"
                return true;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L319"
            if (!_fc._nullable) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nullable = false;
            };
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L323"
            if (_fc._nullable) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nullable = true;
            };
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caseInsensitive = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caseInsensitive || _fc._caseInsensitive : Bool);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L329"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc._addSet(_fc._cc?.__copy__());
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L331"
        return true;
    }
    @:keep
    @:tdfield
    static public function _getFirstChars( _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>):_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet {
        @:recv var _r:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> = _r;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L302"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caseInsensitive) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L303"
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc._addLowercase();
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L306"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc?.__copy__();
    }
}
