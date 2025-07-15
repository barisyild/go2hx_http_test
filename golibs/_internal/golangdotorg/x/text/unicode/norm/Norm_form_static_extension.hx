package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.norm.Norm.Form_asInterface) class Form_static_extension {
    @:keep
    @:tdfield
    static public function _transform( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _rb = @:assignType (new _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer() : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L58"
        _rb._init(_f, _src);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L59"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L61"
            _rb._setFlusher((_dst.__slice__(_nDst) : stdgo.Slice<stdgo.GoUInt8>), _internal.golangdotorg.x.text.unicode.norm.Norm__flushtransform._flushTransform);
            var _end = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__decomposesegment._decomposeSegment((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>), _nSrc, _atEOF) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L63"
            if ((_end < (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L64"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _nDst, _1 : _nSrc, _2 : _internal.golangdotorg.x.text.unicode.norm.Norm__errs._errs[(-_end : stdgo.GoInt)] };
                    _nDst = __tmp__._0;
                    _nSrc = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _nDst = ((_dst.length) - (_rb._out.length) : stdgo.GoInt);
            _nSrc = _end;
            _end = _rb._nsrc;
            var _eof = @:assignType (_atEOF : Bool);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L72"
            {
                var _n = @:assignType ((_nSrc + (_dst.length) : stdgo.GoInt) - _nDst : stdgo.GoInt);
                if ((_n < _end : Bool)) {
                    _err = _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst;
                    _end = _n;
                    _eof = false;
                };
            };
            var __tmp__ = _rb._f._quickSpan(_rb._src?.__copy__(), _nSrc, _end, _eof), _end:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            var _n = @:assignType ((_dst.__slice__(_nDst) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_rb._src._bytes.__slice__(_nSrc, _end) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            _nSrc = (_nSrc + (_n) : stdgo.GoInt);
            _nDst = (_nDst + (_n) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L81"
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L82"
                if (((_err == null && (_n < _rb._nsrc : Bool) : Bool) && !_atEOF : Bool)) {
                    _err = _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L85"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _nDst, _1 : _nSrc, _2 : _err };
                    _nDst = __tmp__._0;
                    _nSrc = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function transform( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _b = _src;
        var _eof = @:assignType (_atEOF : Bool);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L24"
        {
            var _ns = @:assignType (_dst.length : stdgo.GoInt);
            if ((_ns < (_b.length) : Bool)) {
                _err = _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst;
                _eof = false;
                _b = (_b.__slice__(0, _ns) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)]._quickSpan(_internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes(_b)?.__copy__(), (0 : stdgo.GoInt), (_b.length), _eof), _i:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        var _n = @:assignType (_dst.__copyTo__((_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L31"
        if (!_ok) {
            {
                var __tmp__ = _f._transform((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _atEOF);
                _nDst = @:tmpset0 __tmp__._0;
                _nSrc = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L33"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (_nDst + _n : stdgo.GoInt), _1 : (_nSrc + _n : stdgo.GoInt), _2 : _err };
                _nDst = __tmp__._0;
                _nSrc = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L36"
        if (((_err == null && (_n < (_src.length) : Bool) : Bool) && !_atEOF : Bool)) {
            _err = _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L39"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _n, _1 : _n, _2 : _err };
            _nDst = __tmp__._0;
            _nSrc = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function reset( _:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form):Void {
        @:recv var _:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _;
    }
    @:keep
    @:tdfield
    static public function reader( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        {};
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _rr = (stdgo.Go.setRef(({ _rb : (new _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer() : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer), _r : _r, _inbuf : _buf } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_normreader.T_normReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_normreaderdott_normreader.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_normreaderdotT_normReader })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_normreader.T_normReader>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L123"
        (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._init(_f, _buf);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L124"
        return stdgo.Go.asInterface(_rr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_normreaderdott_normreader.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_normreaderdotT_normReader }));
    }
    @:keep
    @:tdfield
    static public function writer( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        var _wr = (stdgo.Go.setRef(({ _rb : (new _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer() : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer), _w : _w } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_normwriter.T_normWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_normwriterdott_normwriter.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_normwriterdotT_normWriter })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_normwriter.T_normWriter>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L68"
        (@:checkr _wr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._init(_f, (null : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L69"
        return stdgo.Go.asInterface(_wr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_normwriterdott_normwriter.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_normwriterdotT_normWriter }));
    }
    @:keep
    @:tdfield
    static public function lastBoundary( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L459"
        return _internal.golangdotorg.x.text.unicode.norm.Norm__lastboundary._lastBoundary(_internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)], _b);
    }
    @:keep
    @:tdfield
    static public function _nextBoundary( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _nsrc:stdgo.GoInt, _atEOF:Bool):stdgo.GoInt {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L419"
        if (_nsrc == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L420"
            if (_atEOF) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L421"
                return (0 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L423"
            return (-1 : stdgo.GoInt);
        };
        var _fd = _internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)];
        var _info = @:assignType ((@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info(_src?.__copy__(), (0 : stdgo.GoInt))?.__copy__() : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L427"
        if (_info._size == ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L428"
            if (_atEOF) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L429"
                return (1 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L431"
            return (-1 : stdgo.GoInt);
        };
        var _ss = @:assignType ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L434"
        (stdgo.Go.pointer(_ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._first(_info?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L436"
        {
            var _i = @:assignType (_info._size : stdgo.GoInt);
            while ((_i < _nsrc : Bool)) {
                _info = (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info(_src.__copy__(), _i).__copy__();
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L438"
                if (_info._size == ((0 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L439"
                    if (_atEOF) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L440"
                        return _i;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L442"
                    return (-1 : stdgo.GoInt);
                };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L446"
                {
                    var _s = @:assignType ((stdgo.Go.pointer(_ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._next(_info.__copy__()) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
                    if (_s != ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L447"
                        return _i;
                    };
                };
                _i = (_i + ((_info._size : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L450"
        if (((!_atEOF && !_info.boundaryAfter() : Bool) && !_ss._isMax() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L451"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L453"
        return _nsrc;
    }
    @:keep
    @:tdfield
    static public function nextBoundaryInString( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _s:stdgo.GoString, _atEOF:Bool):stdgo.GoInt {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L415"
        return _f._nextBoundary(_internal.golangdotorg.x.text.unicode.norm.Norm__inputstring._inputString(_s?.__copy__())?.__copy__(), (_s.length), _atEOF);
    }
    @:keep
    @:tdfield
    static public function nextBoundary( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _b:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):stdgo.GoInt {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L408"
        return _f._nextBoundary(_internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes(_b)?.__copy__(), (_b.length), _atEOF);
    }
    @:keep
    @:tdfield
    static public function firstBoundaryInString( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _s:stdgo.GoString):stdgo.GoInt {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L401"
        return _f._firstBoundary(_internal.golangdotorg.x.text.unicode.norm.Norm__inputstring._inputString(_s?.__copy__())?.__copy__(), (_s.length));
    }
    @:keep
    @:tdfield
    static public function _firstBoundary( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _nsrc:stdgo.GoInt):stdgo.GoInt {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        var _i = @:assignType (_src._skipContinuationBytes((0 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L372"
        if ((_i >= _nsrc : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L373"
            return (-1 : stdgo.GoInt);
        };
        var _fd = _internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)];
        var _ss = @:assignType ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L380"
        while (true) {
            var _info = @:assignType ((@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info(_src?.__copy__(), _i)?.__copy__() : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L382"
            if (_info._size == ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L383"
                return (-1 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L385"
            {
                var _s = @:assignType ((stdgo.Go.pointer(_ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._next(_info?.__copy__()) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
                if (_s != ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L386"
                    return _i;
                };
            };
            _i = (_i + ((_info._size : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L389"
            if ((_i >= _nsrc : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L390"
                if ((!_info.boundaryAfter() && !_ss._isMax() : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L391"
                    return (-1 : stdgo.GoInt);
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L393"
                return _nsrc;
            };
        };
    }
    @:keep
    @:tdfield
    static public function firstBoundary( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L367"
        return _f._firstBoundary(_internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes(_b)?.__copy__(), (_b.length));
    }
    @:keep
    @:tdfield
    static public function quickSpanString( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _s:stdgo.GoString):stdgo.GoInt {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)]._quickSpan(_internal.golangdotorg.x.text.unicode.norm.Norm__inputstring._inputString(_s?.__copy__())?.__copy__(), (0 : stdgo.GoInt), (_s.length), true), _n:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L361"
        return _n;
    }
    @:keep
    @:tdfield
    static public function spanString( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _s:stdgo.GoString, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)]._quickSpan(_internal.golangdotorg.x.text.unicode.norm.Norm__inputstring._inputString(_s?.__copy__())?.__copy__(), (0 : stdgo.GoInt), (_s.length), _atEOF), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L290"
        if ((_n < (_s.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L291"
            if (!_ok) {
                _err = _internal.golangdotorg.x.text.transform.Transform_errendofspan.errEndOfSpan;
            } else {
                _err = _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L297"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function span( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _b:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)]._quickSpan(_internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes(_b)?.__copy__(), (0 : stdgo.GoInt), (_b.length), _atEOF), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L276"
        if ((_n < (_b.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L277"
            if (!_ok) {
                _err = _internal.golangdotorg.x.text.transform.Transform_errendofspan.errEndOfSpan;
            } else {
                _err = _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L283"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function quickSpan( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)]._quickSpan(_internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes(_b)?.__copy__(), (0 : stdgo.GoInt), (_b.length), true), _n:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L269"
        return _n;
    }
    @:keep
    @:tdfield
    static public function appendString( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _out:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L262"
        return _f._doAppend(_out, _internal.golangdotorg.x.text.unicode.norm.Norm__inputstring._inputString(_src?.__copy__())?.__copy__(), (_src.length));
    }
    @:keep
    @:tdfield
    static public function _doAppend( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _out:stdgo.Slice<stdgo.GoUInt8>, _src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L198"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L199"
            return _out;
        };
        var _ft = _internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L203"
        if ((_out.length) == ((0 : stdgo.GoInt))) {
            var __tmp__ = _ft._quickSpan(_src?.__copy__(), (0 : stdgo.GoInt), _n, true), _p:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1;
            _out = _src._appendSlice(_out, (0 : stdgo.GoInt), _p);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L206"
            if (_p == (_n)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L207"
                return _out;
            };
            var _rb = @:assignType ({ _f : (_ft : _internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo)?.__copy__(), _src : _src?.__copy__(), _nsrc : _n, _out : _out, _flushF : _internal.golangdotorg.x.text.unicode.norm.Norm__appendflush._appendFlush } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L210"
            return _internal.golangdotorg.x.text.unicode.norm.Norm__doappendinner._doAppendInner((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>), _p);
        };
        var _rb = @:assignType ({ _f : (_ft : _internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo)?.__copy__(), _src : _src?.__copy__(), _nsrc : _n } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L213"
        return _internal.golangdotorg.x.text.unicode.norm.Norm__doappend._doAppend((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>), _out, (0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function append( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _out:stdgo.Slice<stdgo.GoUInt8>, _src:haxe.Rest<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _src = new stdgo.Slice<stdgo.GoUInt8>(_src.length, 0, ..._src);
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L194"
        return _f._doAppend(_out, _internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes(_src)?.__copy__(), (_src.length));
    }
    @:keep
    @:tdfield
    static public function isNormalString( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _s:stdgo.GoString):Bool {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        var _src = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__inputstring._inputString(_s?.__copy__())?.__copy__() : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input);
        var _ft = _internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)];
        var __tmp__ = _ft._quickSpan(_src?.__copy__(), (0 : stdgo.GoInt), (_s.length), true), _bp:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L116"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L117"
            return true;
        };
        var _rb = @:assignType ({ _f : (_ft : _internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo)?.__copy__(), _src : _src?.__copy__(), _nsrc : (_s.length) } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L120"
        _rb._setFlusher((null : stdgo.Slice<stdgo.GoUInt8>), function(_rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>):Bool {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L121"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune : Bool)) {
                    var _info = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune[(_i : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L123"
                    if (((_bp + (_info._size : stdgo.GoInt) : stdgo.GoInt) > (_s.length) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L124"
                        return false;
                    };
var _p = @:assignType (_info._pos : stdgo.GoUInt8);
var _pe = @:assignType (_p + _info._size : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L128"
                    while ((_p < _pe : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L129"
                        if (_s[(_bp : stdgo.GoInt)] != ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byte[(_p : stdgo.GoInt)])) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L130"
                            return false;
                        };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L132"
                        _bp++;
                        _p++;
                    };
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L135"
            return true;
        });
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L137"
        while ((_bp < (_s.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L138"
            {
                _bp = _internal.golangdotorg.x.text.unicode.norm.Norm__decomposesegment._decomposeSegment((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>), _bp, true);
                if ((_bp < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L139"
                    return false;
                };
            };
            {
                var __tmp__ = _rb._f._quickSpan(_rb._src?.__copy__(), _bp, (_s.length), true);
                _bp = @:tmpset0 __tmp__._0;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L143"
        return true;
    }
    @:keep
    @:tdfield
    static public function isNormal( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        var _src = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes(_b)?.__copy__() : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input);
        var _ft = _internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)];
        var __tmp__ = _ft._quickSpan(_src?.__copy__(), (0 : stdgo.GoInt), (_b.length), true), _bp:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L77"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L78"
            return true;
        };
        var _rb = @:assignType ({ _f : (_ft : _internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo)?.__copy__(), _src : _src?.__copy__(), _nsrc : (_b.length) } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L81"
        _rb._setFlusher((null : stdgo.Slice<stdgo.GoUInt8>), _internal.golangdotorg.x.text.unicode.norm.Norm__cmpnormalbytes._cmpNormalBytes);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L82"
        while ((_bp < (_b.length) : Bool)) {
            _rb._out = (_b.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L84"
            {
                _bp = _internal.golangdotorg.x.text.unicode.norm.Norm__decomposesegment._decomposeSegment((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>), _bp, true);
                if ((_bp < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L85"
                    return false;
                };
            };
            {
                var __tmp__ = _rb._f._quickSpan(_rb._src?.__copy__(), _bp, (_b.length), true);
                _bp = @:tmpset0 __tmp__._0;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L89"
        return true;
    }
    @:keep
    @:tdfield
    static public function string( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        var _src = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__inputstring._inputString(_s?.__copy__())?.__copy__() : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input);
        var _ft = _internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)];
        var __tmp__ = _ft._quickSpan(_src?.__copy__(), (0 : stdgo.GoInt), (_s.length), true), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L63"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L64"
            return _s?.__copy__();
        };
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L67"
        _out.__copyTo__((_s.__slice__((0 : stdgo.GoInt), _n) : stdgo.GoString));
        var _rb = @:assignType ({ _f : (_ft : _internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo)?.__copy__(), _src : _src?.__copy__(), _nsrc : (_s.length), _out : _out, _flushF : _internal.golangdotorg.x.text.unicode.norm.Norm__appendflush._appendFlush } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L69"
        return (_internal.golangdotorg.x.text.unicode.norm.Norm__doappendinner._doAppendInner((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>), _n) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function bytes( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        var _src = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes(_b)?.__copy__() : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input);
        var _ft = _internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)];
        var __tmp__ = _ft._quickSpan(_src?.__copy__(), (0 : stdgo.GoInt), (_b.length), true), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L49"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L50"
            return _b;
        };
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), (_b.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L53"
        _out.__copyTo__((_b.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>));
        var _rb = @:assignType ({ _f : (_ft : _internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo)?.__copy__(), _src : _src?.__copy__(), _nsrc : (_b.length), _out : _out, _flushF : _internal.golangdotorg.x.text.unicode.norm.Norm__appendflush._appendFlush } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L55"
        return _internal.golangdotorg.x.text.unicode.norm.Norm__doappendinner._doAppendInner((stdgo.Go.setRef(_rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>), _n);
    }
    @:keep
    @:tdfield
    static public function propertiesString( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _s:stdgo.GoString):_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L234"
        if (((_f == (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form)) || (_f == (1 : _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L235"
            return ({
                @:tupleArg var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcdata._nfcData._lookupString(_s?.__copy__());
                var __f__ = _internal.golangdotorg.x.text.unicode.norm.Norm__compinfo._compInfo;
                var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcdata._nfcData._lookupString(_s?.__copy__());
                __f__((__tmp__._0 : stdgo.GoUInt16), (__tmp__._1 : stdgo.GoInt));
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L237"
        return ({
            @:tupleArg var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcdata._nfkcData._lookupString(_s?.__copy__());
            var __f__ = _internal.golangdotorg.x.text.unicode.norm.Norm__compinfo._compInfo;
            var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcdata._nfkcData._lookupString(_s?.__copy__());
            __f__((__tmp__._0 : stdgo.GoUInt16), (__tmp__._1 : stdgo.GoInt));
        });
    }
    @:keep
    @:tdfield
    static public function properties( _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _s:stdgo.Slice<stdgo.GoUInt8>):_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties {
        @:recv var _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = _f;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L226"
        if (((_f == (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form)) || (_f == (1 : _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L227"
            return ({
                @:tupleArg var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcdata._nfcData._lookup(_s);
                var __f__ = _internal.golangdotorg.x.text.unicode.norm.Norm__compinfo._compInfo;
                var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcdata._nfcData._lookup(_s);
                __f__((__tmp__._0 : stdgo.GoUInt16), (__tmp__._1 : stdgo.GoInt));
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L229"
        return ({
            @:tupleArg var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcdata._nfkcData._lookup(_s);
            var __f__ = _internal.golangdotorg.x.text.unicode.norm.Norm__compinfo._compInfo;
            var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcdata._nfkcData._lookup(_s);
            __f__((__tmp__._0 : stdgo.GoUInt16), (__tmp__._1 : stdgo.GoInt));
        });
    }
}
