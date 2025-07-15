package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _compInfo(_v:stdgo.GoUInt16, _sz:stdgo.GoInt):_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L244"
        if (_v == ((0 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L245"
            return ({ _size : (_sz : stdgo.GoUInt8) } : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
        } else if ((_v >= (32768 : stdgo.GoUInt16) : Bool)) {
            var _p = @:assignType ({ _size : (_sz : stdgo.GoUInt8), _ccc : (_v : stdgo.GoUInt8), _tccc : (_v : stdgo.GoUInt8), _flags : ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) } : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L253"
            if (((_p._ccc > (0 : stdgo.GoUInt8) : Bool) || _p._combinesBackward() : Bool)) {
                _p._nLead = ((_p._flags & (3 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) : stdgo.GoUInt8);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L256"
            return _p?.__copy__();
        };
        var _h = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__decomps._decomps[(_v : stdgo.GoInt)] : stdgo.GoUInt8);
        var _f = @:assignType (((((_h & (192 : stdgo.GoUInt8) : stdgo.GoUInt8) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) >> (2i64 : stdgo.GoUInt64) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo)) | (4 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo);
        var _p = @:assignType ({ _size : (_sz : stdgo.GoUInt8), _flags : _f, _index : _v } : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L262"
        if ((_v >= (11733 : stdgo.GoUInt16) : Bool)) {
            _v = (_v + ((((_h & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt16) + (1 : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo.GoUInt16);
            var _c = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__decomps._decomps[(_v : stdgo.GoInt)] : stdgo.GoUInt8);
            _p._tccc = (_c >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
            _p._flags = (_p._flags | (((_c & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo)) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L267"
            if ((_v >= (19183 : stdgo.GoUInt16) : Bool)) {
                _p._nLead = (_c & (3 : stdgo.GoUInt8) : stdgo.GoUInt8);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L269"
                if ((_v >= (19424 : stdgo.GoUInt16) : Bool)) {
                    _p._flags = (_p._flags & ((3 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo)) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo);
                    _p._index = (0 : stdgo.GoUInt16);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L273"
                    return _p?.__copy__();
                };
                _p._ccc = _internal.golangdotorg.x.text.unicode.norm.Norm__decomps._decomps[((_v + (1 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt)];
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L278"
        return _p?.__copy__();
    }
