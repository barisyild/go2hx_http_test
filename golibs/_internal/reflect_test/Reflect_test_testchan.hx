package _internal.reflect_test;
function testChan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1636"
        {
            var _loop = @:assignType (0 : stdgo.GoInt);
            while ((_loop < (2 : stdgo.GoInt) : Bool)) {
                var _c:stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
var _cv:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1641"
                {
                    final __value__ = _loop;
                    if (__value__ == ((1 : stdgo.GoInt))) {
                        _c = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                        _cv = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).__copy__();
                    } else if (__value__ == ((0 : stdgo.GoInt))) {
                        _cv = stdgo._internal.reflect.Reflect_makechan.makeChan(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), (1 : stdgo.GoInt)).__copy__();
                        _c = (stdgo.Go.typeAssert(_cv.interface_(), stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) : stdgo.Chan<stdgo.GoInt>);
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1651"
                _cv.send(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((2 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__());
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1652"
                {
                    var _i = @:assignType (_c.__get__() : stdgo.GoInt);
                    if (_i != ((2 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1653"
                        _t.errorf(("reflect Send 2, native recv %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1657"
                _c.__send__((3 : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1658"
                {
                    var __tmp__ = _cv.recv(), _i:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (((_i.int_() != (3i64 : stdgo.GoInt64)) || !_ok : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1659"
                        _t.errorf(("native send 3, reflect Recv %d, %t" : stdgo.GoString), new stdgo.AnyInterface(_i.int_(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    };
                };
var __tmp__ = _cv.tryRecv(), _val:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1664"
                if ((_val.isValid() || _ok : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1665"
                    _t.errorf(("TryRecv on empty chan: %s, %t" : stdgo.GoString), new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__valuetostring._valueToString(_val.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1669"
                _c.__send__((4 : stdgo.GoInt));
{
                    var __tmp__ = _cv.tryRecv();
                    _val = @:tmpset0 __tmp__._0.__copy__();
                    _ok = @:tmpset0 __tmp__._1;
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1671"
                if (!_val.isValid()) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1672"
                    _t.errorf(("TryRecv on ready chan got nil" : stdgo.GoString));
                } else {
                    var _i = @:assignType (_val.int_() : stdgo.GoInt64);
                    if (((_i != (4i64 : stdgo.GoInt64)) || !_ok : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1674"
                        _t.errorf(("native send 4, TryRecv %d, %t" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1678"
                _c.__send__((100 : stdgo.GoInt));
_ok = _cv.trySend(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((5 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__());
var _i = @:assignType (_c.__get__() : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1681"
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1682"
                    _t.errorf(("TrySend on full chan succeeded: value %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
_ok = _cv.trySend(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((6 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__());
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1687"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1688"
                    _t.errorf(("TrySend on empty chan failed" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1689"
                    {
                        var __select__ = true;
                        var __c__0 = null;
                        while (__select__) {
                            if ({
                                if (__c__0 == null) {
                                    __c__0 = _c;
                                };
                                __c__0 != null && __c__0.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    var _x = __c__0.__get__();
                                    {
                                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1691"
                                        _t.errorf(("TrySend failed but it did send %d" : stdgo.GoString), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                                    };
                                };
                            } else {
                                __select__ = false;
                                {};
                            };
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1695"
                    {
                        _i = _c.__get__();
                        if (_i != ((6 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1696"
                            _t.errorf(("TrySend 6, recv %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1701"
                _c.__send__((123 : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1702"
                _cv.close();
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1703"
                {
                    var __tmp__ = _cv.recv(), _i:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (((_i.int_() != (123i64 : stdgo.GoInt64)) || !_ok : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1704"
                        _t.errorf(("send 123 then close; Recv %d, %t" : stdgo.GoString), new stdgo.AnyInterface(_i.int_(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1706"
                {
                    var __tmp__ = _cv.recv(), _i:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (((_i.int_() != (0i64 : stdgo.GoInt64)) || _ok : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1707"
                        _t.errorf(("after close Recv %d, %t" : stdgo.GoString), new stdgo.AnyInterface(_i.int_(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    };
                };
                _loop++;
            };
        };
        var _c:stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
        var _cv = @:assignType (stdgo._internal.reflect.Reflect_makechan.makeChan(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), (0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        _c = (stdgo.Go.typeAssert(_cv.interface_(), stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) : stdgo.Chan<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1715"
        if (_cv.trySend(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((7 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1716"
            _t.errorf(("TrySend on sync chan succeeded" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1718"
        {
            var __tmp__ = _cv.tryRecv(), _v:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((_v.isValid() || _ok : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1719"
                _t.errorf(("TryRecv on sync chan succeeded: isvalid=%v ok=%v" : stdgo.GoString), new stdgo.AnyInterface(_v.isValid(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
            };
        };
        _cv = stdgo._internal.reflect.Reflect_makechan.makeChan(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), (10 : stdgo.GoInt))?.__copy__();
        _c = (stdgo.Go.typeAssert(_cv.interface_(), stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) : stdgo.Chan<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1725"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1726"
                _c.__send__(_i);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1728"
        {
            var __0 = @:assignType (_cv.len() : stdgo.GoInt), __1 = @:assignType (_cv.cap() : stdgo.GoInt);
var _m = __1, _l = __0;
            if (((_l != (_c.length)) || (_m != _c.capacity) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1729"
                _t.errorf(("Len/Cap = %d/%d want %d/%d" : stdgo.GoString), new stdgo.AnyInterface(_l, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_c.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_c.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
