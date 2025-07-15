package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.Nistec.T_p224Table_asInterface) class T_p224Table_static_extension {
    @:keep
    @:tdfield
    static public function select( _table:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_t_p224table.T_p224Table>, _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>, _n:stdgo.GoUInt8):Void {
        @:recv var _table:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_t_p224table.T_p224Table> = _table;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L331"
        if ((_n >= (16 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L332"
            throw new stdgo.AnyInterface(("nistec: internal error: p224Table called with out-of-bounds value" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L334"
        _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp224point.newP224Point());
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L335"
        {
            var _i = @:assignType ((1 : stdgo.GoUInt8) : stdgo.GoUInt8);
            while ((_i < (16 : stdgo.GoUInt8) : Bool)) {
                var _cond = @:assignType (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_i, _n) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L337"
                _p.select(_table[((_i - (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)], _p, _cond);
                _i++;
            };
        };
    }
}
