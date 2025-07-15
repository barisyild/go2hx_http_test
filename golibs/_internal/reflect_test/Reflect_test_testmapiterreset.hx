package _internal.reflect_test;
function testMapIterReset(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _iter = (stdgo.Go.setRef(({} : stdgo._internal.reflect.Reflect_mapiter.MapIter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_mapiterdotmapiter.__type__stdgodot_internaldotreflectdotReflect_mapiterdotMapIter })) : stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7591"
        ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7592"
                                ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                            };
                            a();
                        }) });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7593"
                    _iter.next();
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7594"
                    _t.error(new stdgo.AnyInterface(("Next did not panic" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
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
            };
            a();
        });
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
x.set(("three" : stdgo.GoString), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7599"
        _iter.reset(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7600"
        {
            var __0 = @:assignType (_internal.reflect_test.Reflect_test__iteratetostring._iterateToString(_iter)?.__copy__() : stdgo.GoString), __1 = @:assignType (("[one: 1, three: 3, two: 2]" : stdgo.GoString) : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7601"
                _t.errorf(("iterator returned %s (after sorting), want %s" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7605"
        _iter.reset((new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7606"
        ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7607"
                                ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                            };
                            a();
                        }) });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7608"
                    _iter.next();
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7609"
                    _t.error(new stdgo.AnyInterface(("Next did not panic" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
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
            };
            a();
        });
        var _m2 = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
x.set((2 : stdgo.GoInt), ("two" : stdgo.GoString));
x.set((3 : stdgo.GoInt), ("three" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7614"
        _iter.reset(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7615"
        {
            var __0 = @:assignType (_internal.reflect_test.Reflect_test__iteratetostring._iterateToString(_iter)?.__copy__() : stdgo.GoString), __1 = @:assignType (("[1: one, 2: two, 3: three]" : stdgo.GoString) : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7616"
                _t.errorf(("iterator returned %s (after sorting), want %s" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        var _m3 = ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.GoUInt64>();
            x.__defaultValue__ = () -> (0 : stdgo.GoUInt64);
            x.set((1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64));
x.set((2i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64));
x.set((4i64 : stdgo.GoUInt64), (8i64 : stdgo.GoUInt64));
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoUInt64>);
        var _kv = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0i64 : stdgo.GoUInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7626"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (5 : stdgo.GoInt) : Bool)) {
                var _seenk:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _seenv:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7628"
                _iter.reset(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m3, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) })))).__copy__());
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7629"
                while (_iter.next()) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7630"
                    _kv.setIterKey(_iter);
                    _seenk = (_seenk ^ (_kv.uint()) : stdgo.GoUInt64);
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7632"
                    _kv.setIterValue(_iter);
                    _seenv = (_seenv ^ (_kv.uint()) : stdgo.GoUInt64);
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7635"
                if (_seenk != ((7i64 : stdgo.GoUInt64))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7636"
                    _t.errorf(("iteration yielded keys %b, want %b" : stdgo.GoString), new stdgo.AnyInterface(_seenk, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))), new stdgo.AnyInterface((7 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7638"
                if (_seenv != ((14i64 : stdgo.GoUInt64))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7639"
                    _t.errorf(("iteration yielded values %b, want %b" : stdgo.GoString), new stdgo.AnyInterface(_seenv, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))), new stdgo.AnyInterface((14 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
                _i++;
            };
        };
        var _n = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((10 : stdgo.GoInt), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7645"
            _iter.reset(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))))?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7646"
            _iter.reset((new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value));
        }) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7648"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7649"
            _t.errorf(("MapIter.Reset allocated %d times" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
