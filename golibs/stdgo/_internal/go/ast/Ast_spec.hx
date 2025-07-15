package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:interface typedef Spec = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _specNode():Void;
    public dynamic function end():stdgo._internal.go.token.Token_pos.Pos;
    public dynamic function pos():stdgo._internal.go.token.Token_pos.Pos;
};
