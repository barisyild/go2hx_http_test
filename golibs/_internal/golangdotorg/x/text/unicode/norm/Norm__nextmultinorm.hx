package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _nextMultiNorm(_i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        var _j = @:assignType (0 : stdgo.GoInt);
        var _d = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L207"
        while ((_j < (_d.length) : Bool)) {
            var _info = @:assignType ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info(({ _bytes : _d } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input), _j)?.__copy__() : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L209"
            if (_info.boundaryBefore()) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L210"
                (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._compose();
                var _seg = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._flushCopy(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L212"
                (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._insertUnsafe(({ _bytes : _d } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input), _j, _info?.__copy__());
                (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg = (_d.__slice__((_j + (_info._size : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L214"
                return _seg;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L216"
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._insertUnsafe(({ _bytes : _d } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input), _j, _info?.__copy__());
            _j = (_j + ((_info._size : stdgo.GoInt)) : stdgo.GoInt);
        };
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg = (null : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _internal.golangdotorg.x.text.unicode.norm.Norm__nextcomposed._nextComposed;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L221"
        return _internal.golangdotorg.x.text.unicode.norm.Norm__donormcomposed._doNormComposed(_i);
    }
