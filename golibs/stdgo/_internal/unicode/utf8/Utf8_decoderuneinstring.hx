package stdgo._internal.unicode.utf8;
function decodeRuneInString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } {
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt);
        var _n = @:assignType (_s.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L201"
        if ((_n < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L202"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _s0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _x = @:assignType (stdgo._internal.unicode.utf8.Utf8__first._first[(_s0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L206"
        if ((_x >= (240 : stdgo.GoUInt8) : Bool)) {
            var _mask = @:assignType (((_x : stdgo.GoInt32) << (31i64 : stdgo.GoUInt64) : stdgo.GoInt32) >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L211"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (((_s[(0 : stdgo.GoInt)] : stdgo.GoInt32) & ((_mask ^ (-1i64 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32) | ((65533 : stdgo.GoInt32) & _mask : stdgo.GoInt32) : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _sz = @:assignType ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
        var _accept = @:assignType (stdgo._internal.unicode.utf8.Utf8__acceptranges._acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L215"
        if ((_n < _sz : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L216"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _s1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L219"
        if (((_s1 < _accept._lo : Bool) || (_accept._hi < _s1 : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L220"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L222"
        if ((_sz <= (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L223"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : ((((_s0 & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) | ((_s1 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) : stdgo.GoInt32), _1 : (2 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _s2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L226"
        if (((_s2 < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _s2 : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L227"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L229"
        if ((_sz <= (3 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L230"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (((((_s0 & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) | (((_s1 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_s2 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) : stdgo.GoInt32), _1 : (3 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _s3 = @:assignType (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L233"
        if (((_s3 < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _s3 : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L234"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L236"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : ((((((_s0 & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) << (18i64 : stdgo.GoUInt64) : stdgo.GoInt32) | (((_s1 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | (((_s2 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_s3 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) : stdgo.GoInt32), _1 : (4 : stdgo.GoInt) };
            _r = __tmp__._0;
            _size = __tmp__._1;
            __tmp__;
        };
    }
