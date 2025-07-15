package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function lookup(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } {
        var _p = ({} : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _sz = (0 : stdgo.GoInt);
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L87"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L89"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : ({ _entry : _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidivalues._bidiValues[(_c0 : stdgo.GoInt)] } : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (1 : stdgo.GoInt) };
                _p = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (194 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L91"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (1 : stdgo.GoInt) };
                _p = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L93"
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L94"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (0 : stdgo.GoInt) };
                    _p = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L98"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L99"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (1 : stdgo.GoInt) };
                    _p = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L101"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : ({ _entry : _internal.golangdotorg.x.text.unicode.bidi.Bidi__trie._trie._lookupValue((_i : stdgo.GoUInt32), _c1) } : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (2 : stdgo.GoInt) };
                _p = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L103"
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L104"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (0 : stdgo.GoInt) };
                    _p = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L108"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L109"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (1 : stdgo.GoInt) };
                    _p = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L114"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L115"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (1 : stdgo.GoInt) };
                    _p = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L117"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : ({ _entry : _internal.golangdotorg.x.text.unicode.bidi.Bidi__trie._trie._lookupValue((_i : stdgo.GoUInt32), _c2), _last : _c2 } : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (3 : stdgo.GoInt) };
                _p = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L119"
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L120"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (0 : stdgo.GoInt) };
                    _p = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L124"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L125"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (1 : stdgo.GoInt) };
                    _p = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L130"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L131"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (1 : stdgo.GoInt) };
                    _p = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c2 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_o : stdgo.GoInt)];
            var _c3 = @:assignType (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L136"
            if (((_c3 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c3 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L137"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (1 : stdgo.GoInt) };
                    _p = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L139"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : ({ _entry : _internal.golangdotorg.x.text.unicode.bidi.Bidi__trie._trie._lookupValue((_i : stdgo.GoUInt32), _c3) } : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (4 : stdgo.GoInt) };
                _p = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L142"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } = { _0 : (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _1 : (1 : stdgo.GoInt) };
            _p = __tmp__._0;
            _sz = __tmp__._1;
            __tmp__;
        };
    }
