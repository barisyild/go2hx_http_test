package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _lastBoundary(_fd:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _i = @:assignType (_b.length : stdgo.GoInt);
        var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__lastrunestart._lastRuneStart(_fd, _b), _info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = __tmp__._0, _p:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L465"
        if (_p == ((-1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L466"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L468"
        if (_info._size == ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L469"
            if (_p == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L470"
                return (-1 : stdgo.GoInt);
            };
            _i = _p;
            {
                var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__lastrunestart._lastRuneStart(_fd, (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
                _info = @:tmpset0 __tmp__._0?.__copy__();
                _p = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L474"
            if (_p == ((-1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L475"
                return _i;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L478"
        if ((_p + (_info._size : stdgo.GoInt) : stdgo.GoInt) != (_i)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L479"
            return _i;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L481"
        if (_info.boundaryAfter()) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L482"
            return _i;
        };
        var _ss = @:assignType ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
        var _v = @:assignType ((stdgo.Go.pointer(_ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._backwards(_info?.__copy__()) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L486"
        {
            _i = _p;
            while (((_i >= (0 : stdgo.GoInt) : Bool) && (_v != (1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState)) : Bool)) {
                {
                    var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__lastrunestart._lastRuneStart(_fd, (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
                    _info = @:tmpset0 __tmp__._0.__copy__();
                    _p = @:tmpset0 __tmp__._1;
                };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L488"
                {
                    _v = (stdgo.Go.pointer(_ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._backwards(_info.__copy__());
                    if (_v == ((2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L489"
                        break;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L491"
                if ((_p + (_info._size : stdgo.GoInt) : stdgo.GoInt) != (_i)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L492"
                    if (_p == ((-1 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L493"
                        return (-1 : stdgo.GoInt);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L495"
                    return _i;
                };
                _i = _p;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L498"
        return _i;
    }
