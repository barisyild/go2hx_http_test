package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _doAppend(_rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _out:stdgo.Slice<stdgo.GoUInt8>, _p:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L217"
        _rb._setFlusher(_out, _internal.golangdotorg.x.text.unicode.norm.Norm__appendflush._appendFlush);
        var __0 = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src?.__copy__() : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input), __1 = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nsrc : stdgo.GoInt);
var _n = __1, _src = __0;
        var _doMerge = @:assignType ((_out.length) > (0 : stdgo.GoInt) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L220"
        {
            var _q = @:assignType (_src._skipContinuationBytes(_p) : stdgo.GoInt);
            if ((_q > _p : Bool)) {
                (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = _src._appendSlice((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out, _p, _q);
                _p = _q;
                _doMerge = _internal.golangdotorg.x.text.unicode.norm.Norm__patchtail._patchTail(_rb);
            };
        };
        var _fd = (stdgo.Go.setRef((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_forminfodott_forminfo.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_forminfodotT_formInfo })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L227"
        if (_doMerge) {
            var _info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = ({} : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L229"
            if ((_p < _n : Bool)) {
                _info = (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info(_src?.__copy__(), _p)?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L231"
                if ((!_info.boundaryBefore() || (_info._nLeadingNonStarters() > (0 : stdgo.GoUInt8) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L232"
                    if (_p == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L233"
                        _internal.golangdotorg.x.text.unicode.norm.Norm__decomposetolastboundary._decomposeToLastBoundary(_rb);
                    };
                    _p = _internal.golangdotorg.x.text.unicode.norm.Norm__decomposesegment._decomposeSegment(_rb, _p, true);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L238"
            if (_info._size == ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L239"
                _rb._doFlush();
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L241"
                return _src._appendSlice((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out, _p, _n);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L243"
            if (((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L244"
                return _internal.golangdotorg.x.text.unicode.norm.Norm__doappendinner._doAppendInner(_rb, _p);
            };
        };
        _p = _internal.golangdotorg.x.text.unicode.norm.Norm__appendquick._appendQuick(_rb, _p);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L248"
        return _internal.golangdotorg.x.text.unicode.norm.Norm__doappendinner._doAppendInner(_rb, _p);
    }
