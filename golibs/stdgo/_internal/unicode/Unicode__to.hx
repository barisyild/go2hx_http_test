package stdgo._internal.unicode;
function _to(__case:stdgo.GoInt, _r:stdgo.GoInt32, _caseRange:stdgo.Slice<stdgo._internal.unicode.Unicode_caserange.CaseRange>):{ var _0 : stdgo.GoInt32; var _1 : Bool; } {
        var _mappedRune = (0 : stdgo.GoInt32), _foundMapping = false;
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L212"
        if (((__case < (0 : stdgo.GoInt) : Bool) || ((3 : stdgo.GoInt) <= __case : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L213"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : Bool; } = { _0 : (65533 : stdgo.GoInt32), _1 : false };
                _mappedRune = __tmp__._0;
                _foundMapping = __tmp__._1;
                __tmp__;
            };
        };
        var _lo = @:assignType (0 : stdgo.GoInt);
        var _hi = @:assignType (_caseRange.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L218"
        while ((_lo < _hi : Bool)) {
            var _m = @:assignType (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _cr = @:assignType (_caseRange[(_m : stdgo.GoInt)] : stdgo._internal.unicode.Unicode_caserange.CaseRange);
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L221"
            if ((((_cr.lo : stdgo.GoInt32) <= _r : Bool) && (_r <= (_cr.hi : stdgo.GoInt32) : Bool) : Bool)) {
                var _delta = @:assignType (_cr.delta[(__case : stdgo.GoInt)] : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L223"
                if ((_delta > (1114111 : stdgo.GoInt32) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L234"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : Bool; } = { _0 : ((_cr.lo : stdgo.GoInt32) + (((((_r - (_cr.lo : stdgo.GoInt32) : stdgo.GoInt32)) & (((1 : stdgo.GoInt32) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32) | ((__case & (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32), _1 : true };
                        _mappedRune = __tmp__._0;
                        _foundMapping = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L236"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : Bool; } = { _0 : (_r + _delta : stdgo.GoInt32), _1 : true };
                    _mappedRune = __tmp__._0;
                    _foundMapping = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L238"
            if ((_r < (_cr.lo : stdgo.GoInt32) : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L244"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : Bool; } = { _0 : _r, _1 : false };
            _mappedRune = __tmp__._0;
            _foundMapping = __tmp__._1;
            __tmp__;
        };
    }
