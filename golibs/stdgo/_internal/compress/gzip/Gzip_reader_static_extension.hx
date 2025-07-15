package stdgo._internal.compress.gzip;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.time.Time;
import stdgo._internal.compress.flate.Flate;
@:keep @:allow(stdgo._internal.compress.gzip.Gzip.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function close( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader> = _z;
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L290"
        return (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decompressor.close();
    }
    @:keep
    @:tdfield
    static public function read( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader> = _z;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L247"
        if ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L248"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L251"
        while (_n == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decompressor.read(_p);
                _n = @:tmpset0 __tmp__._0;
                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest = stdgo._internal.hash.crc32.Crc32_update.update((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest, stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable, (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size = ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size + ((_n : stdgo.GoUInt32)) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L255"
            if (({
                final __t__ = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != (({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L257"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L261"
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.compress.gzip.Gzip__noeof._noEOF(_err);
                    //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L263"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _digest = @:assignType (stdgo._internal.compress.gzip.Gzip__le._le.uint32(((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            var _size = @:assignType (stdgo._internal.compress.gzip.Gzip__le._le.uint32(((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L267"
            if (((_digest != (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest) || (_size != (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size) : Bool)) {
                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.compress.gzip.Gzip_errchecksum.errChecksum;
                //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L269"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            {
                final __tmp__0 = (0u32 : stdgo.GoUInt32);
                final __tmp__1 = (0u32 : stdgo.GoUInt32);
                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest = @:binopAssign __tmp__0;
                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L274"
            if (!(@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multistream) {
                //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L275"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_eof.eOF };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L279"
            {
                {
                    var __tmp__ = _z._readHeader();
                    (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
                };
                if ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L280"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L284"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readHeader( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>):{ var _0 : stdgo._internal.compress.gzip.Gzip_header.Header; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader> = _z;
        var _hdr = ({} : stdgo._internal.compress.gzip.Gzip_header.Header), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L175"
        {
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L183"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : _err };
                    _hdr = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L185"
        if ((((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(0 : stdgo.GoInt)] != ((31 : stdgo.GoUInt8)) || (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(1 : stdgo.GoInt)] != ((139 : stdgo.GoUInt8)) : Bool) || ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(2 : stdgo.GoInt)] != (8 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L186"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip_errheader.errHeader };
                _hdr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _flg = @:assignType ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L189"
        {
            var _t = @:assignType (stdgo._internal.compress.gzip.Gzip__le._le.uint32(((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
            if ((_t > (0i64 : stdgo.GoInt64) : Bool)) {
                _hdr.modTime = stdgo._internal.time.Time_unix.unix(_t, (0i64 : stdgo.GoInt64))?.__copy__();
            };
        };
        _hdr.oS = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(9 : stdgo.GoInt)];
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest = stdgo._internal.hash.crc32.Crc32_checksumieee.checksumIEEE(((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L198"
        if ((_flg & (4 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L199"
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L200"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip__noeof._noEOF(_err) };
                        _hdr = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest = stdgo._internal.hash.crc32.Crc32_update.update((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest, stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable, ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            var _data = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.compress.gzip.Gzip__le._le.uint16(((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L204"
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, _data);
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L205"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip__noeof._noEOF(_err) };
                        _hdr = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest = stdgo._internal.hash.crc32.Crc32_update.update((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest, stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable, _data);
            _hdr.extra = _data;
        };
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L212"
        if ((_flg & (8 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L213"
            {
                {
                    var __tmp__ = _z._readString();
                    _s = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L214"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip__noeof._noEOF(_err) };
                        _hdr = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _hdr.name = _s?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L219"
        if ((_flg & (16 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L220"
            {
                {
                    var __tmp__ = _z._readString();
                    _s = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L221"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip__noeof._noEOF(_err) };
                        _hdr = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _hdr.comment = _s?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L226"
        if ((_flg & (2 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L227"
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L228"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip__noeof._noEOF(_err) };
                        _hdr = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _digest = @:assignType (stdgo._internal.compress.gzip.Gzip__le._le.uint16(((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L231"
            if (_digest != (((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L232"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : stdgo._internal.compress.gzip.Gzip_errheader.errHeader };
                    _hdr = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest = (0u32 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L237"
        if ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decompressor == null) {
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decompressor = stdgo._internal.compress.flate.Flate_newreader.newReader((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L240"
            (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decompressor;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_resetterdotresetter.__type__stdgodot_internaldotcompressdotflatedotFlate_resetterdotResetter) : stdgo._internal.compress.flate.Flate_resetter.Resetter).reset((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, (null : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L242"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.compress.gzip.Gzip_header.Header; var _1 : stdgo.Error; } = { _0 : _hdr?.__copy__(), _1 : (null : stdgo.Error) };
            _hdr = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readString( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader> = _z;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _needConv = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L144"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L145"
                if ((_i >= ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L146"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : stdgo._internal.compress.gzip.Gzip_errheader.errHeader };
                };
{
                    var __tmp__ = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.readByte();
                    (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
//"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L149"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L150"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _err };
                };
//"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L152"
                if (((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(_i : stdgo.GoInt)] > (127 : stdgo.GoUInt8) : Bool)) {
                    _needConv = true;
                };
//"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L155"
                if ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest = stdgo._internal.hash.crc32.Crc32_update.update((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._digest, stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable, ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L160"
                    if (_needConv) {
                        var _s = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), _i).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L162"
                        if (((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) != null) for (__0 => _v in ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)) {
                            _s = (_s.__append__((_v : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L165"
                        return { _0 : (_s : stdgo.GoString).__copy__(), _1 : (null : stdgo.Error) };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L167"
                    return { _0 : (((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__(), _1 : (null : stdgo.Error) };
                };
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function multistream( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>, _ok:Bool):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader> = _z;
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multistream = _ok;
    }
    @:keep
    @:tdfield
    static public function reset( _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader> = _z;
        {
            var __tmp__ = ({ _decompressor : (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decompressor, _multistream : true } : stdgo._internal.compress.gzip.Gzip_reader.Reader);
            var x = (_z : stdgo._internal.compress.gzip.Gzip_reader.Reader);
            x.header = __tmp__?.header;
            x._r = __tmp__?._r;
            x._decompressor = __tmp__?._decompressor;
            x._digest = __tmp__?._digest;
            x._size = __tmp__?._size;
            x._buf = __tmp__?._buf;
            x._err = __tmp__?._err;
            x._multistream = __tmp__?._multistream;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L108"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _r;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_readerdotreader.__type__stdgodot_internaldotcompressdotflatedotFlate_readerdotReader) : stdgo._internal.compress.flate.Flate_reader.Reader), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.compress.flate.Flate_reader.Reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r = _rr;
            } else {
                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newreader.newReader(_r), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader }));
            };
        };
        {
            var __tmp__ = _z._readHeader();
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = @:tmpset0 __tmp__._0?.__copy__();
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L114"
        return (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
    }
}
