package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_byLiteral_asInterface) class T_byLiteral_static_extension {
    @:keep
    @:tdfield
    static public function swap( _s:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral = _s;
        {
            final __tmp__0 = _s[(_j : stdgo.GoInt)];
            final __tmp__1 = _s[(_i : stdgo.GoInt)];
            final __tmp__2 = _s;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _s;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _s:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral = _s;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L320"
        return (_s[(_i : stdgo.GoInt)]._literal < _s[(_j : stdgo.GoInt)]._literal : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral):stdgo.GoInt {
        @:recv var _s:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral = _s;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L317"
        return (_s.length);
    }
    @:keep
    @:tdfield
    static public function _sort( _s:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral>, _a:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral> = _s;
        @:_1 (_s : stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral).__setData__((_a : stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral));
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L314"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_byliteraldott_byliteral.__type__stdgodot_internaldotcompressdotflatedotFlate_t_byliteraldotT_byLiteral })));
    }
}
