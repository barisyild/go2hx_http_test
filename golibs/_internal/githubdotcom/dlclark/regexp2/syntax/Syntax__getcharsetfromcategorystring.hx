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
function _getCharSetFromCategoryString(_negateSet:Bool, _negateCat:Bool, _cats:haxe.Rest<stdgo.GoString>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
        var _cats = new stdgo.Slice<stdgo.GoString>(_cats.length, 0, ..._cats);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L81"
        if ((_negateCat && _negateSet : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L82"
            throw new stdgo.AnyInterface(("BUG!  You should only negate the set OR the category in a constant setup, but not both" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _c = @:assignType ({ _negate : _negateSet } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet);
        _c._categories = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>((_cats.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_cats.length : stdgo.GoInt).toBasic() > 0 ? (_cats.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category)]) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L88"
        if (_cats != null) for (_i => _cat in _cats) {
            _c._categories[(_i : stdgo.GoInt)] = ({ _cat : _cat?.__copy__(), _negate : _negateCat } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L91"
        return function():stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
            var _local = @:assignType (_c?.__copy__() : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/charclass.go#L95"
            return (stdgo.Go.setRef(_local, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_charsetdotcharset.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_charsetdotCharSet })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        };
    }
