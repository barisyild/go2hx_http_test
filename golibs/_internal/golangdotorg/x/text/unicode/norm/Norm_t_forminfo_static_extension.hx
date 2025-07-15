package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.norm.Norm.T_formInfo_asInterface) class T_formInfo_static_extension {
    @:keep
    @:tdfield
    static public function _quickSpan( _f:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo>, _src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _i:stdgo.GoInt, _end:stdgo.GoInt, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _f:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo> = _f;
        var _n = (0 : stdgo.GoInt), _ok = false;
        var _lastCC:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ss = @:assignType ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
        var _lastSegStart = @:assignType (_i : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L308"
        {
            _n = _end;
            while ((_i < _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L309"
                {
                    var _j = @:assignType (_src._skipASCII(_i, _n) : stdgo.GoInt);
                    if (_i != (_j)) {
                        _i = _j;
                        _lastSegStart = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        _lastCC = (0 : stdgo.GoUInt8);
                        _ss = (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L314"
                        continue;
                    };
                };
                var _info = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info(_src?.__copy__(), _i)?.__copy__() : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L317"
                if (_info._size == ((0 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L318"
                    if (_atEOF) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L320"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _n, _1 : true };
                            _n = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L322"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _lastSegStart, _1 : true };
                        _n = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L326"
                {
                    final __value__ = (stdgo.Go.pointer(_ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._next(_info?.__copy__());
                    if (__value__ == ((1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                        _lastSegStart = _i;
                    } else if (__value__ == ((2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L330"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _lastSegStart, _1 : false };
                            _n = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                    } else if (__value__ == ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L332"
                        if ((_lastCC > _info._ccc : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L333"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _lastSegStart, _1 : false };
                                _n = __tmp__._0;
                                _ok = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L336"
                if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._composing) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L337"
                    if (!_info._isYesC()) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L338"
                        break;
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L341"
                    if (!_info._isYesD()) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L342"
                        break;
                    };
                };
                _lastCC = _info._ccc;
                _i = (_i + ((_info._size : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L348"
        if (_i == (_n)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L349"
            if (!_atEOF) {
                _n = _lastSegStart;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L352"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _n, _1 : true };
                _n = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L354"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _lastSegStart, _1 : false };
            _n = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
}
