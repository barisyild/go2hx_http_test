package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _nextMulti(_i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        var _j = @:assignType (0 : stdgo.GoInt);
        var _d = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L187"
        {
            _j = (1 : stdgo.GoInt);
            while (((_j < (_d.length) : Bool) && !stdgo._internal.unicode.utf8.Utf8_runestart.runeStart(_d[(_j : stdgo.GoInt)]) : Bool)) {
                {};
                _j++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L189"
        while ((_j < (_d.length) : Bool)) {
            var _info = @:assignType ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info(({ _bytes : _d } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input), _j)?.__copy__() : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L191"
            if (_info.boundaryBefore()) {
                (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg = (_d.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L193"
                return (_d.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _j = (_j + ((_info._size : stdgo.GoInt)) : stdgo.GoInt);
        };
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._nextMain;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L199"
        return (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next(_i);
    }
