package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:interface typedef Node = stdgo.StructType & {
    /**
        
        
        * position of first character belonging to the node
    **/
    @:interfacetypeffun
    public dynamic function pos():stdgo._internal.go.token.Token_pos.Pos;
    /**
        
        
        * position of first character immediately after the node
    **/
    @:interfacetypeffun
    public dynamic function end():stdgo._internal.go.token.Token_pos.Pos;
};
