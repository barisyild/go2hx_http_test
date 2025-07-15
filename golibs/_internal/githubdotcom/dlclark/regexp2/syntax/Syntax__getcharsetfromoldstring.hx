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
function _getCharSetFromOldString(_setText:stdgo.Slice<stdgo.GoInt32>, _negate:Bool):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
        var _c = @:assignType (new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet() : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L101"
        if (((_setText.length) > (0 : stdgo.GoInt) : Bool)) {
            var _fillFirst = @:assignType (false : Bool);
            var _l = @:assignType (_setText.length : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L104"
            if (_negate) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L105"
                if (_setText[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32))) {
                    _setText = (_setText.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
                } else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L108"
                    _l++;
                    _fillFirst = true;
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L113"
            if ((_l % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                _c._ranges = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>((_l / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_l / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_l / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)]) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            } else {
                _c._ranges = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>(((_l / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((_l / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? ((_l / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange)]) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>);
            };
            var _first = @:assignType (true : Bool);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L120"
            if (_fillFirst) {
                _c._ranges[(0 : stdgo.GoInt)] = ({ _first : (0 : stdgo.GoInt32) } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange);
                _first = false;
            };
            var _i = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L126"
            if (_setText != null) for (__0 => _r in _setText) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L127"
                if (_first) {
                    _c._ranges[(_i : stdgo.GoInt)] = ({ _first : _r } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange);
                    _first = false;
                } else {
                    _c._ranges[(_i : stdgo.GoInt)]._last = (_r - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L133"
                    _i++;
                    _first = true;
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L137"
            if (!_first) {
                _c._ranges[(_i : stdgo.GoInt)]._last = (1114111 : stdgo.GoInt32);
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L142"
        return function():stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
            var _local = @:assignType (_c?.__copy__() : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L144"
            return (stdgo.Go.setRef(_local, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_charsetdotcharset.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_charsetdotCharSet })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        };
    }
