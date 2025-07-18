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
class T_regexFcd_asInterface {
    @:keep
    public dynamic function _calculateFC(_nt:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType, _node:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, curIndex:stdgo.GoInt):Void @:_0 __self__.value._calculateFC(_nt, _node, curIndex);
    @:keep
    public dynamic function _skipChild():Void @:_0 __self__.value._skipChild();
    @:keep
    public dynamic function _topFC():stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> return @:_0 __self__.value._topFC();
    @:keep
    public dynamic function _popFC():stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> return @:_0 __self__.value._popFC();
    @:keep
    public dynamic function _fcIsEmpty():Bool return @:_0 __self__.value._fcIsEmpty();
    @:keep
    public dynamic function _pushFC(_fc:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc):Void @:_0 __self__.value._pushFC(_fc);
    @:keep
    public dynamic function _popInt():stdgo.GoInt return @:_0 __self__.value._popInt();
    @:keep
    public dynamic function _intIsEmpty():Bool return @:_0 __self__.value._intIsEmpty();
    @:keep
    public dynamic function _pushInt(i:stdgo.GoInt):Void @:_0 __self__.value._pushInt(i);
    @:keep
    public dynamic function _regexFCFromRegexTree(_tree:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> return @:_0 __self__.value._regexFCFromRegexTree(_tree);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcdpointer.T_regexFcdPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
