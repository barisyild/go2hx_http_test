package stdgo._internal.unicode.utf8;
function encodeRune(_p:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L344"
        {
            var _i = @:assignType (_r : stdgo.GoUInt32);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_i <= (127u32 : stdgo.GoUInt32) : Bool))) {
                        _p[(0 : stdgo.GoInt)] = (_r : stdgo.GoUInt8);
                        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L347"
                        return (1 : stdgo.GoInt);
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_i <= (2047u32 : stdgo.GoUInt32) : Bool))) {
                        _p[(1 : stdgo.GoInt)];
                        _p[(0 : stdgo.GoInt)] = ((192 : stdgo.GoUInt8) | ((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _p[(1 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | ((_r : stdgo.GoUInt8) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L352"
                        return (2 : stdgo.GoInt);
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && ((_i > (1114111u32 : stdgo.GoUInt32) : Bool) || (((55296u32 : stdgo.GoUInt32) <= _i : Bool) && (_i <= (57343u32 : stdgo.GoUInt32) : Bool) : Bool)))) {
                        _r = (65533 : stdgo.GoInt32);
                        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L355"
                        @:fallthrough {
                            __switchIndex__ = 3;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_i <= (65535u32 : stdgo.GoUInt32) : Bool))) {
                        _p[(2 : stdgo.GoInt)];
                        _p[(0 : stdgo.GoInt)] = ((224 : stdgo.GoUInt8) | ((_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _p[(1 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | (((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _p[(2 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | ((_r : stdgo.GoUInt8) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L361"
                        return (3 : stdgo.GoInt);
                        break;
                        break;
                    } else {
                        _p[(3 : stdgo.GoInt)];
                        _p[(0 : stdgo.GoInt)] = ((240 : stdgo.GoUInt8) | ((_r >> (18i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _p[(1 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | (((_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _p[(2 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | (((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _p[(3 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | ((_r : stdgo.GoUInt8) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L368"
                        return (4 : stdgo.GoInt);
                        break;
                    };
                    break;
                };
                return (0 : stdgo.GoInt);
            };
        };
    }
