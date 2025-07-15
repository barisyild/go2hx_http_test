package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.internal.nistec.Nistec.P256Point_asInterface) class P256Point_static_extension {
    @:keep
    @:tdfield
    static public function scalarBaseMult( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _p;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L415"
        if ((_scalar.length) != ((32 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L416"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid scalar length" : stdgo.GoString)) };
        };
        var _tables = _p._generatorTable();
        var _t = stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L427"
        _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point());
        var _tableIndex = @:assignType (63 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L429"
        if (_scalar != null) for (__0 => _byte in _scalar) {
            var _windowValue = @:assignType (_byte >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L431"
            _tables[(_tableIndex : stdgo.GoInt)].select(_t, _windowValue);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L432"
            _p.add(_p, _t);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L433"
            _tableIndex--;
            _windowValue = (_byte & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L436"
            _tables[(_tableIndex : stdgo.GoInt)].select(_t, _windowValue);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L437"
            _p.add(_p, _t);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L438"
            _tableIndex--;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L441"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _generatorTable( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table>> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _p;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L395"
        stdgo._internal.crypto.internal.nistec.Nistec__p256generatortableonce._p256GeneratorTableOnce.do_(function():Void {
            stdgo._internal.crypto.internal.nistec.Nistec__p256generatortable._p256GeneratorTable = (stdgo.Go.setRef(new stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table>(64, 64, ...[for (i in 0 ... (64 > 64 ? 64 : 64 : stdgo.GoInt).toBasic()) new stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table(15, 15, ...[for (i in 0 ... 15) (null : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>)])]), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotnistec_t_p256tabledott_p256table.__type__stdgodot_internaldotcryptodotinternaldotnistecdotNistec_t_p256tabledotT_p256Table }, 64) })) : stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table>>);
            var _base = stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point().setGenerator();
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L398"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (64 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.crypto.internal.nistec.Nistec__p256generatortable._p256GeneratorTable[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)] = stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point().set(_base);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L400"
                    {
                        var _j = @:assignType (1 : stdgo.GoInt);
                        while ((_j < (15 : stdgo.GoInt) : Bool)) {
                            stdgo._internal.crypto.internal.nistec.Nistec__p256generatortable._p256GeneratorTable[(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] = stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point().add(stdgo._internal.crypto.internal.nistec.Nistec__p256generatortable._p256GeneratorTable[(_i : stdgo.GoInt)][(_j - (1 : stdgo.GoInt) : stdgo.GoInt)], _base);
                            _j++;
                        };
                    };
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L403"
                    _base.double(_base);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L404"
                    _base.double(_base);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L405"
                    _base.double(_base);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L406"
                    _base.double(_base);
                    _i++;
                };
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L409"
        return stdgo._internal.crypto.internal.nistec.Nistec__p256generatortable._p256GeneratorTable;
    }
    @:keep
    @:tdfield
    static public function scalarMult( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _p;
        var _table = (new stdgo.GoArray<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>>(15, 15, ...[
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point(),
stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point()]) : stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L351"
        _table[(0 : stdgo.GoInt)].set(_q);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L352"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (15 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L353"
                _table[(_i : stdgo.GoInt)].double(_table[(_i / (2 : stdgo.GoInt) : stdgo.GoInt)]);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L354"
                _table[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].add(_table[(_i : stdgo.GoInt)], _q);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _t = stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L360"
        _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point());
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L361"
        if (_scalar != null) for (_i => _byte in _scalar) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L364"
            if (_i != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L365"
                _p.double(_p);
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L366"
                _p.double(_p);
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L367"
                _p.double(_p);
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L368"
                _p.double(_p);
            };
            var _windowValue = @:assignType (_byte >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L372"
            _table.select(_t, _windowValue);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L373"
            _p.add(_p, _t);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L375"
            _p.double(_p);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L376"
            _p.double(_p);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L377"
            _p.double(_p);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L378"
            _p.double(_p);
            _windowValue = (_byte & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L381"
            _table.select(_t, _windowValue);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L382"
            _p.add(_p, _t);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L385"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function select( _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _p1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _p2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _q;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L319"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x.select((@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, (@:checkr _p2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, _cond);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L320"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y.select((@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, (@:checkr _p2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, _cond);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L321"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.select((@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z, (@:checkr _p2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z, _cond);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L322"
        return _q;
    }
    @:keep
    @:tdfield
    static public function double( _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _q;
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).square((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x);
        var _t1 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).square((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y);
        var _t2 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).square((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z);
        var _t3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).mul((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L280"
        _t3.add(_t3, _t3);
        var _z3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).mul((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L282"
        _z3.add(_z3, _z3);
        var _y3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).mul(stdgo._internal.crypto.internal.nistec.Nistec__p256b._p256B(), _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L284"
        _y3.sub(_y3, _z3);
        var _x3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).add(_y3, _y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L286"
        _y3.add(_x3, _y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L287"
        _x3.sub(_t1, _y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L288"
        _y3.add(_t1, _y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L289"
        _y3.mul(_x3, _y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L290"
        _x3.mul(_x3, _t3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L291"
        _t3.add(_t2, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L292"
        _t2.add(_t2, _t3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L293"
        _z3.mul(stdgo._internal.crypto.internal.nistec.Nistec__p256b._p256B(), _z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L294"
        _z3.sub(_z3, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L295"
        _z3.sub(_z3, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L296"
        _t3.add(_z3, _z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L297"
        _z3.add(_z3, _t3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L298"
        _t3.add(_t0, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L299"
        _t0.add(_t3, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L300"
        _t0.sub(_t0, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L301"
        _t0.mul(_t0, _z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L302"
        _y3.add(_y3, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L303"
        _t0.mul((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L304"
        _t0.add(_t0, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L305"
        _z3.mul(_t0, _z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L306"
        _x3.sub(_x3, _z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L307"
        _z3.mul(_t0, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L308"
        _z3.add(_z3, _z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L309"
        _z3.add(_z3, _z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L311"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x.set(_x3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L312"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y.set(_y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L313"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.set(_z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L314"
        return _q;
    }
    @:keep
    @:tdfield
    static public function add( _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _p1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _p2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _q;
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).mul((@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, (@:checkr _p2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x);
        var _t1 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).mul((@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, (@:checkr _p2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y);
        var _t2 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).mul((@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z, (@:checkr _p2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z);
        var _t3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).add((@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, (@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y);
        var _t4 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).add((@:checkr _p2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, (@:checkr _p2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L226"
        _t3.mul(_t3, _t4);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L227"
        _t4.add(_t0, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L228"
        _t3.sub(_t3, _t4);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L229"
        _t4.add((@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, (@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z);
        var _x3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).add((@:checkr _p2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, (@:checkr _p2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L231"
        _t4.mul(_t4, _x3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L232"
        _x3.add(_t1, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L233"
        _t4.sub(_t4, _x3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L234"
        _x3.add((@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, (@:checkr _p1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z);
        var _y3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).add((@:checkr _p2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, (@:checkr _p2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L236"
        _x3.mul(_x3, _y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L237"
        _y3.add(_t0, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L238"
        _y3.sub(_x3, _y3);
        var _z3 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).mul(stdgo._internal.crypto.internal.nistec.Nistec__p256b._p256B(), _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L240"
        _x3.sub(_y3, _z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L241"
        _z3.add(_x3, _x3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L242"
        _x3.add(_x3, _z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L243"
        _z3.sub(_t1, _x3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L244"
        _x3.add(_t1, _x3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L245"
        _y3.mul(stdgo._internal.crypto.internal.nistec.Nistec__p256b._p256B(), _y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L246"
        _t1.add(_t2, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L247"
        _t2.add(_t1, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L248"
        _y3.sub(_y3, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L249"
        _y3.sub(_y3, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L250"
        _t1.add(_y3, _y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L251"
        _y3.add(_t1, _y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L252"
        _t1.add(_t0, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L253"
        _t0.add(_t1, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L254"
        _t0.sub(_t0, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L255"
        _t1.mul(_t4, _y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L256"
        _t2.mul(_t0, _y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L257"
        _y3.mul(_x3, _z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L258"
        _y3.add(_y3, _t2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L259"
        _x3.mul(_t3, _x3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L260"
        _x3.sub(_x3, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L261"
        _z3.mul(_t4, _z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L262"
        _t1.mul(_t3, _t0);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L263"
        _z3.add(_z3, _t1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L265"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x.set(_x3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L266"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y.set(_y3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L267"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.set(_z3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L268"
        return _q;
    }
    @:keep
    @:tdfield
    static public function _bytesCompressed( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _p;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L200"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.isZero() == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L201"
            return ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _zinv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).invert((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).mul((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, _zinv);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).mul((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, _zinv);
        var _buf = ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((2 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf[(0 : stdgo.GoInt)] = (_buf[(0 : stdgo.GoInt)] | ((_y.bytes()[(31 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _buf = (_buf.__append__(...(_x.bytes() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L213"
        return _buf;
    }
    @:keep
    @:tdfield
    static public function bytesCompressed( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _p;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(33, 33).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L196"
        return _p._bytesCompressed((stdgo.Go.setRef(_out, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 33) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function _bytesX( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _p;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L179"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.isZero() == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L180"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("P256 point is the point at infinity" : stdgo.GoString)) };
        };
        var _zinv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).invert((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).mul((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, _zinv);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L186"
        return { _0 : ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_x.bytes() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function bytesX( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _p;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L175"
        return _p._bytesX((stdgo.Go.setRef(_out, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function _bytes( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _p;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L155"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.isZero() == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L156"
            return ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _zinv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).invert((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).mul((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x, _zinv);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).mul((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y, _zinv);
        var _buf = ((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((4 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__append__(...(_x.bytes() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__append__(...(_y.bytes() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L166"
        return _buf;
    }
    @:keep
    @:tdfield
    static public function bytes( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _p;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(65, 65).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L151"
        return _p._bytes((stdgo.Go.setRef(_out, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 65) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function setBytes( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _p;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L59"
        if (((_b.length == (1 : stdgo.GoInt)) && (_b[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L62"
            return { _0 : _p.set(stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point()), _1 : (null : stdgo.Error) };
        } else if (((_b.length == (65 : stdgo.GoInt)) && (_b[(0 : stdgo.GoInt)] == (4 : stdgo.GoUInt8)) : Bool)) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).setBytes((_b.__slice__((1 : stdgo.GoInt), (33 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L67"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L68"
                return { _0 : null, _1 : _err };
            };
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).setBytes((_b.__slice__((33 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _y:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L71"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L72"
                return { _0 : null, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L74"
            {
                var _err = @:assignType (stdgo._internal.crypto.internal.nistec.Nistec__p256checkoncurve._p256CheckOnCurve(_x, _y) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L75"
                    return { _0 : null, _1 : _err };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L77"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x.set(_x);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L78"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y.set(_y);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L79"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.one();
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L80"
            return { _0 : _p, _1 : (null : stdgo.Error) };
        } else if (((_b.length == (33 : stdgo.GoInt)) && (((_b[(0 : stdgo.GoInt)] == (2 : stdgo.GoUInt8)) || (_b[(0 : stdgo.GoInt)] == (3 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).setBytes((_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L85"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L86"
                return { _0 : null, _1 : _err };
            };
            var _y = stdgo._internal.crypto.internal.nistec.Nistec__p256polynomial._p256Polynomial((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>), _x);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L91"
            if (!stdgo._internal.crypto.internal.nistec.Nistec__p256sqrt._p256Sqrt(_y, _y)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L92"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P256 compressed point encoding" : stdgo.GoString)) };
            };
            var _otherRoot = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_p256elementdotp256element.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_p256elementdotP256Element })) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L98"
            _otherRoot.sub(_otherRoot, _y);
            var _cond = @:assignType ((_y.bytes()[(31 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) ^ (_b[(0 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L100"
            _y.select(_otherRoot, _y, (_cond : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L102"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x.set(_x);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L103"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y.set(_y);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L104"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.one();
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L105"
            return { _0 : _p, _1 : (null : stdgo.Error) };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L108"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid P256 point encoding" : stdgo.GoString)) };
        };
    }
    @:keep
    @:tdfield
    static public function set( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _p;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L48"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x.set((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L49"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y.set((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L50"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.set((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L51"
        return _p;
    }
    @:keep
    @:tdfield
    static public function setGenerator( _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> {
        @:recv var _p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> = _p;
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L40"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._x.setBytes((new stdgo.Slice<stdgo.GoUInt8>(32, 32, ...[
(107 : stdgo.GoUInt8),
(23 : stdgo.GoUInt8),
(209 : stdgo.GoUInt8),
(242 : stdgo.GoUInt8),
(225 : stdgo.GoUInt8),
(44 : stdgo.GoUInt8),
(66 : stdgo.GoUInt8),
(71 : stdgo.GoUInt8),
(248 : stdgo.GoUInt8),
(188 : stdgo.GoUInt8),
(230 : stdgo.GoUInt8),
(229 : stdgo.GoUInt8),
(99 : stdgo.GoUInt8),
(164 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8),
(242 : stdgo.GoUInt8),
(119 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(125 : stdgo.GoUInt8),
(129 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(235 : stdgo.GoUInt8),
(51 : stdgo.GoUInt8),
(160 : stdgo.GoUInt8),
(244 : stdgo.GoUInt8),
(161 : stdgo.GoUInt8),
(57 : stdgo.GoUInt8),
(69 : stdgo.GoUInt8),
(216 : stdgo.GoUInt8),
(152 : stdgo.GoUInt8),
(194 : stdgo.GoUInt8),
(150 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L41"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._y.setBytes((new stdgo.Slice<stdgo.GoUInt8>(32, 32, ...[
(79 : stdgo.GoUInt8),
(227 : stdgo.GoUInt8),
(66 : stdgo.GoUInt8),
(226 : stdgo.GoUInt8),
(254 : stdgo.GoUInt8),
(26 : stdgo.GoUInt8),
(127 : stdgo.GoUInt8),
(155 : stdgo.GoUInt8),
(142 : stdgo.GoUInt8),
(231 : stdgo.GoUInt8),
(235 : stdgo.GoUInt8),
(74 : stdgo.GoUInt8),
(124 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(158 : stdgo.GoUInt8),
(22 : stdgo.GoUInt8),
(43 : stdgo.GoUInt8),
(206 : stdgo.GoUInt8),
(51 : stdgo.GoUInt8),
(87 : stdgo.GoUInt8),
(107 : stdgo.GoUInt8),
(49 : stdgo.GoUInt8),
(94 : stdgo.GoUInt8),
(206 : stdgo.GoUInt8),
(203 : stdgo.GoUInt8),
(182 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8),
(104 : stdgo.GoUInt8),
(55 : stdgo.GoUInt8),
(191 : stdgo.GoUInt8),
(81 : stdgo.GoUInt8),
(245 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L42"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._z.one();
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L43"
        return _p;
    }
}
