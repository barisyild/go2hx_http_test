package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _qzero(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _p:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = new stdgo.GoArray<stdgo.GoFloat64>(6, 6).__setNumber32__().__setNil__(), _q:stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> = new stdgo.GoArray<stdgo.GoFloat64>(6, 6).__setNumber32__().__setNil__();
        //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L412"
        if ((_x >= (8 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(stdgo._internal.math.Math__q0r8._q0R8, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }, 6) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(stdgo._internal.math.Math__q0s8._q0S8, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }, 6) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (4.5454 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(stdgo._internal.math.Math__q0r5._q0R5, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }, 6) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(stdgo._internal.math.Math__q0s5._q0S5, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }, 6) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2.8571 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(stdgo._internal.math.Math__q0r3._q0R3, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }, 6) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(stdgo._internal.math.Math__q0s3._q0S3, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }, 6) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        } else if ((_x >= (2 : stdgo.GoFloat64) : Bool)) {
            _p = (stdgo.Go.setRef(stdgo._internal.math.Math__q0r2._q0R2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }, 6) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
            _q = (stdgo.Go.setRef(stdgo._internal.math.Math__q0s2._q0S2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }, 6) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>);
        };
        var _z = @:assignType ((1 : stdgo.GoFloat64) / ((_x * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _r = @:assignType (_p[(0 : stdgo.GoInt)] + (_z * ((_p[(1 : stdgo.GoInt)] + (_z * ((_p[(2 : stdgo.GoInt)] + (_z * ((_p[(3 : stdgo.GoInt)] + (_z * ((_p[(4 : stdgo.GoInt)] + (_z * _p[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _s = @:assignType ((1 : stdgo.GoFloat64) + (_z * ((_q[(0 : stdgo.GoInt)] + (_z * ((_q[(1 : stdgo.GoInt)] + (_z * ((_q[(2 : stdgo.GoInt)] + (_z * ((_q[(3 : stdgo.GoInt)] + (_z * ((_q[(4 : stdgo.GoInt)] + (_z * _q[(5 : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/math/j0.go#L428"
        return ((((-0.125 : stdgo.GoFloat64) + (_r / _s : stdgo.GoFloat64) : stdgo.GoFloat64)) / _x : stdgo.GoFloat64);
    }
