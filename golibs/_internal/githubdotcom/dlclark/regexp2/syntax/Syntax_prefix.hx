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
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix_static_extension.Prefix_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix_static_extension.Prefix_static_extension) class Prefix {
    public var prefixStr : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var prefixSet : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet = ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet);
    public var caseInsensitive : Bool = false;
    public function new(?prefixStr:stdgo.Slice<stdgo.GoInt32>, ?prefixSet:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet, ?caseInsensitive:Bool) {
        if (prefixStr != null) this.prefixStr = prefixStr;
        if (prefixSet != null) this.prefixSet = prefixSet;
        if (caseInsensitive != null) this.caseInsensitive = caseInsensitive;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "prefixStr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false }, { name : "prefixSet", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_charsetdotcharset.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_charsetdotCharSet }, optional : false }, { name : "caseInsensitive", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new Prefix(prefixStr, prefixSet, caseInsensitive);
    }
}
