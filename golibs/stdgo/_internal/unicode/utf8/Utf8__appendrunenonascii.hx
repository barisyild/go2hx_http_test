package stdgo._internal.unicode.utf8;
function _appendRuneNonASCII(_p:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L385"
        {
            var _i = @:assignType (_r : stdgo.GoUInt32);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_i <= (2047u32 : stdgo.GoUInt32) : Bool))) {
                        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L387"
                        return (_p.__append__(((192 : stdgo.GoUInt8) | ((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8) : stdgo.GoUInt8), ((128 : stdgo.GoUInt8) | ((_r : stdgo.GoUInt8) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && ((_i > (1114111u32 : stdgo.GoUInt32) : Bool) || (((55296u32 : stdgo.GoUInt32) <= _i : Bool) && (_i <= (57343u32 : stdgo.GoUInt32) : Bool) : Bool)))) {
                        _r = (65533 : stdgo.GoInt32);
                        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L390"
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_i <= (65535u32 : stdgo.GoUInt32) : Bool))) {
                        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L392"
                        return (_p.__append__(((224 : stdgo.GoUInt8) | ((_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8) : stdgo.GoUInt8), ((128 : stdgo.GoUInt8) | (((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8), ((128 : stdgo.GoUInt8) | ((_r : stdgo.GoUInt8) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                        break;
                        break;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L394"
                        return (_p.__append__(((240 : stdgo.GoUInt8) | ((_r >> (18i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8) : stdgo.GoUInt8), ((128 : stdgo.GoUInt8) | (((_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8), ((128 : stdgo.GoUInt8) | (((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8), ((128 : stdgo.GoUInt8) | ((_r : stdgo.GoUInt8) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                        break;
                    };
                    break;
                };
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
    }
