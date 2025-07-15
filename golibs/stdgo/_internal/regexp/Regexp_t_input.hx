package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:interface typedef T_input = stdgo.StructType & {
    /**
        
        
        * advance one rune
    **/
    @:interfacetypeffun
    public dynamic function _step(_pos:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; };
    /**
        
        
        * can we look ahead without losing info?
    **/
    @:interfacetypeffun
    public dynamic function _canCheckPrefix():Bool;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _hasPrefix(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):Bool;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _index(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _context(_pos:stdgo.GoInt):stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag;
};
