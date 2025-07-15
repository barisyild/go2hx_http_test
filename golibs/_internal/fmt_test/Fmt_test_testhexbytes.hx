package _internal.fmt_test;
function testHexBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("00010203" : stdgo.GoString), ("%x" : stdgo.GoString), new stdgo.AnyInterface((stdgo.Go.setRef(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1139"
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1140"
            _t.errorf(("simple: got count, err = %d, %v; expected 1, nil" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        var _check = function(_msg:stdgo.GoString, _x:stdgo.Slice<stdgo.GoUInt8>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1143"
            if ((_x.length) != ((4 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1144"
                _t.errorf(("%s: bad length %d" : stdgo.GoString), new stdgo.AnyInterface(_msg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_x.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1146"
            if (_x != null) for (_i => _b in _x) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1147"
                if ((_b : stdgo.GoInt) != (_i)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1148"
                    _t.errorf(("%s: bad x[%d] = %x" : stdgo.GoString), new stdgo.AnyInterface(_msg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_x[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1152"
        _check(("simple" : stdgo.GoString), _a);
        _a = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("00010203 00010203" : stdgo.GoString), ("%x %x" : stdgo.GoString), new stdgo.AnyInterface((stdgo.Go.setRef(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))), new stdgo.AnyInterface((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1156"
        if (((_n != (2 : stdgo.GoInt)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1157"
            _t.errorf(("simple pair: got count, err = %d, %v; expected 2, nil" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1159"
        _check(("simple pair a" : stdgo.GoString), _a);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1160"
        _check(("simple pair b" : stdgo.GoString), _b);
        _a = (null : stdgo.Slice<stdgo.GoUInt8>);
        _b = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("00010203:" : stdgo.GoString), ("%x" : stdgo.GoString), new stdgo.AnyInterface((stdgo.Go.setRef(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1165"
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1166"
            _t.errorf(("colon: got count, err = %d, %v; expected 1, nil" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1168"
        _check(("colon" : stdgo.GoString), _a);
        _a = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("00010203:00010203" : stdgo.GoString), ("%x:%x" : stdgo.GoString), new stdgo.AnyInterface((stdgo.Go.setRef(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))), new stdgo.AnyInterface((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1172"
        if (((_n != (2 : stdgo.GoInt)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1173"
            _t.errorf(("colon pair: got count, err = %d, %v; expected 2, nil" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1175"
        _check(("colon pair a" : stdgo.GoString), _a);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1176"
        _check(("colon pair b" : stdgo.GoString), _b);
        _a = (null : stdgo.Slice<stdgo.GoUInt8>);
        _b = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("000102034:" : stdgo.GoString), ("%x" : stdgo.GoString), new stdgo.AnyInterface((stdgo.Go.setRef(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1183"
        if (((_n != (0 : stdgo.GoInt)) || (_err == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1184"
            _t.errorf(("odd count: got count, err = %d, %v; expected 0, error" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
