package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_mutator_asInterface) class T_mutator_static_extension {
    @:keep
    @:tdfield
    static public function _mutateBytes( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _ptrB:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _b = (_ptrB : stdgo.Slice<stdgo.GoUInt8>);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L267"
                        if (stdgo._internal.unsafe.Unsafe_slicedata.sliceData((_ptrB : stdgo.Slice<stdgo.GoUInt8>)) != (stdgo._internal.unsafe.Unsafe_slicedata.sliceData(_b))) {
                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L268"
                            throw new stdgo.AnyInterface(("data moved to new address" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                        };
                        @:_1 (_ptrB : stdgo.Slice<stdgo.GoUInt8>).__setData__(_b);
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L273"
            while (true) {
                var _mut = @:assignType (stdgo._internal.internal.fuzz.Fuzz__byteslicemutators._byteSliceMutators[(_m._rand((stdgo._internal.internal.fuzz.Fuzz__byteslicemutators._byteSliceMutators.length)) : stdgo.GoInt)] : stdgo._internal.internal.fuzz.Fuzz_t_byteslicemutator.T_byteSliceMutator);
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L275"
                {
                    var _mutated = _mut(_m, _b);
                    if (_mutated != null) {
                        _b = _mutated;
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L277"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _mutateFloat( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _v:stdgo.GoFloat64, _maxValue:stdgo.GoFloat64):stdgo.GoFloat64 {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        var _max:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L191"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L192"
            {
                final __value__ = _m._rand((4 : stdgo.GoInt));
                if (__value__ == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L195"
                    if ((_v >= _maxValue : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L196"
                        continue;
                    };
                    _max = (100 : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L199"
                    if (((_v > (0 : stdgo.GoFloat64) : Bool) && ((_maxValue - _v : stdgo.GoFloat64) < _max : Bool) : Bool)) {
                        _max = (_maxValue - _v : stdgo.GoFloat64);
                    };
                    _v = (_v + ((((1 : stdgo.GoInt) + _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L204"
                    return _v;
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L207"
                    if ((_v <= -_maxValue : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L208"
                        continue;
                    };
                    _max = (100 : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L211"
                    if (((_v < (0 : stdgo.GoFloat64) : Bool) && ((_maxValue + _v : stdgo.GoFloat64) < _max : Bool) : Bool)) {
                        _max = (_maxValue + _v : stdgo.GoFloat64);
                    };
                    _v = (_v - ((((1 : stdgo.GoInt) + _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L216"
                    return _v;
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    var _absV = @:assignType (stdgo._internal.math.Math_abs.abs(_v) : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L220"
                    if (((_v == (0 : stdgo.GoFloat64)) || (_absV >= _maxValue : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L221"
                        continue;
                    };
                    _max = (10 : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L224"
                    if (((_maxValue / _absV : stdgo.GoFloat64) < _max : Bool)) {
                        _max = (_maxValue / _absV : stdgo.GoFloat64);
                    };
                    _v = (_v * ((((1 : stdgo.GoInt) + _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L229"
                    return _v;
                } else if (__value__ == ((3 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L232"
                    if (_v == ((0 : stdgo.GoFloat64))) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L233"
                        continue;
                    };
                    _v = (_v / ((((1 : stdgo.GoInt) + _m._rand((10 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L236"
                    return _v;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _mutateUInt( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _v:stdgo.GoUInt64, _maxValue:stdgo.GoUInt64):stdgo.GoUInt64 {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        var _max:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L159"
        while (true) {
            _max = (100i64 : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L161"
            {
                final __value__ = _m._rand((2 : stdgo.GoInt));
                if (__value__ == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L164"
                    if ((_v >= _maxValue : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L165"
                        continue;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L167"
                    if (((_v > (0i64 : stdgo.GoUInt64) : Bool) && ((_maxValue - _v : stdgo.GoUInt64) < _max : Bool) : Bool)) {
                        _max = (_maxValue - _v : stdgo.GoUInt64);
                    };
                    _v = (_v + ((((1 : stdgo.GoInt) + _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L173"
                    return _v;
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L176"
                    if ((_v <= (0i64 : stdgo.GoUInt64) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L177"
                        continue;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L179"
                    if ((_v < _max : Bool)) {
                        _max = _v;
                    };
                    _v = (_v - ((((1 : stdgo.GoInt) + _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L184"
                    return _v;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _mutateInt( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _v:stdgo.GoInt64, _maxValue:stdgo.GoInt64):stdgo.GoInt64 {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        var _max:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L128"
        while (true) {
            _max = (100i64 : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L130"
            {
                final __value__ = _m._rand((2 : stdgo.GoInt));
                if (__value__ == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L133"
                    if ((_v >= _maxValue : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L134"
                        continue;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L136"
                    if (((_v > (0i64 : stdgo.GoInt64) : Bool) && ((_maxValue - _v : stdgo.GoInt64) < _max : Bool) : Bool)) {
                        _max = (_maxValue - _v : stdgo.GoInt64);
                    };
                    _v = (_v + ((((1 : stdgo.GoInt) + _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L141"
                    return _v;
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L144"
                    if ((_v <= -_maxValue : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L145"
                        continue;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L147"
                    if (((_v < (0i64 : stdgo.GoInt64) : Bool) && ((_maxValue + _v : stdgo.GoInt64) < _max : Bool) : Bool)) {
                        _max = (_maxValue + _v : stdgo.GoInt64);
                    };
                    _v = (_v - ((((1 : stdgo.GoInt) + _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt64);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L152"
                    return _v;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _mutate( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _vals:stdgo.Slice<stdgo.AnyInterface>, _maxBytes:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        var _maxPerVal = @:assignType ((_maxBytes / (_vals.length) : stdgo.GoInt) - (100 : stdgo.GoInt) : stdgo.GoInt);
        var _i = @:assignType (_m._rand((_vals.length)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L68"
        {
            final __type__ = _vals[(_i : stdgo.GoInt)];
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int_kind))) {
                var _v:stdgo.GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface((_m._mutateInt((_v : stdgo.GoInt64), (2147483647i64 : stdgo.GoInt64)) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int8_kind))) {
                var _v:stdgo.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface((_m._mutateInt((_v : stdgo.GoInt64), (127i64 : stdgo.GoInt64)) : stdgo.GoInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int8_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int16_kind))) {
                var _v:stdgo.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface((_m._mutateInt((_v : stdgo.GoInt64), (32767i64 : stdgo.GoInt64)) : stdgo.GoInt16), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int16_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int64_kind))) {
                var _v:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface(_m._mutateInt(_v, (2147483647i64 : stdgo.GoInt64)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint_kind))) {
                var _v:stdgo.GoUInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface((_m._mutateUInt((_v : stdgo.GoUInt64), (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint16_kind))) {
                var _v:stdgo.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface((_m._mutateUInt((_v : stdgo.GoUInt64), (65535i64 : stdgo.GoUInt64)) : stdgo.GoUInt16), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint16_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint32_kind))) {
                var _v:stdgo.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface((_m._mutateUInt((_v : stdgo.GoUInt64), (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint64_kind))) {
                var _v:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface(_m._mutateUInt((_v : stdgo.GoUInt64), (4294967295i64 : stdgo.GoUInt64)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(float32_kind))) {
                var _v:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface((_m._mutateFloat((_v : stdgo.GoFloat64), (3.4028234663852886e+38 : stdgo.GoFloat64)) : stdgo.GoFloat32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(float64_kind))) {
                var _v:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface(_m._mutateFloat(_v, (1.7976931348623157e+308 : stdgo.GoFloat64)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(bool_kind))) {
                var _v:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? false : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L90"
                if (_m._rand((2 : stdgo.GoInt)) == ((1 : stdgo.GoInt))) {
                    _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface(!_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)));
                };
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int32_kind))) {
                var _v:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface((_m._mutateInt((_v : stdgo.GoInt64), (2147483647i64 : stdgo.GoInt64)) : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint8_kind))) {
                var _v:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface((_m._mutateUInt((_v : stdgo.GoUInt64), (255i64 : stdgo.GoUInt64)) : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(string_kind))) {
                var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L98"
                if (((_v.length) > _maxPerVal : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L99"
                    throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("cannot mutate bytes of length %d" : stdgo.GoString), new stdgo.AnyInterface((_v.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L101"
                if (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch.capacity < _maxPerVal : Bool)) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch = ((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _maxPerVal).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_v : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch.__slice__(0, (_v.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L105"
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch.__copyTo__(_v);
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L107"
                _m._mutateBytes((stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>));
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))) {
                var _v:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L110"
                if (((_v.length) > _maxPerVal : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L111"
                    throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("cannot mutate bytes of length %d" : stdgo.GoString), new stdgo.AnyInterface((_v.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L113"
                if (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch.capacity < _maxPerVal : Bool)) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch = ((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _maxPerVal).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_v : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch.__slice__(0, (_v.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L117"
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch.__copyTo__(_v);
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L119"
                _m._mutateBytes((stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>));
                _vals[(_i : stdgo.GoInt)] = new stdgo.AnyInterface((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })));
            } else {
                var _v:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L122"
                throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("type not supported for mutating: %T" : stdgo.GoString), _vals[(_i : stdgo.GoInt)]), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _chooseLen( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L37"
        {
            var _x = @:assignType (_m._rand((100 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_x < (90 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L39"
                return (_m._rand(stdgo._internal.internal.fuzz.Fuzz__min._min((8 : stdgo.GoInt), _n)) + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else if ((_x < (99 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L41"
                return (_m._rand(stdgo._internal.internal.fuzz.Fuzz__min._min((32 : stdgo.GoInt), _n)) + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L43"
                return (_m._rand(_n) + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _randByteOrder( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>):stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L28"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._bool()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L29"
            return stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbinarydotbinary_t_littleendiandott_littleendian.__type__stdgodot_internaldotencodingdotbinarydotBinary_t_littleendiandotT_littleEndian);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L31"
        return stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbinarydotbinary_t_bigendiandott_bigendian.__type__stdgodot_internaldotencodingdotbinarydotBinary_t_bigendiandotT_bigEndian);
    }
    @:keep
    @:tdfield
    static public function _rand( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutator.go#L24"
        return (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._intn(_n);
    }
}
