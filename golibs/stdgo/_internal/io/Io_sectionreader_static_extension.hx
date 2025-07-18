package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.io.Io.SectionReader_asInterface) class SectionReader_static_extension {
    @:keep
    @:tdfield
    static public function size( _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = _s;
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L559"
        return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._limit - (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function readAt( _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = _s;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L543"
        if (((_off < (0i64 : stdgo.GoInt64) : Bool) || (_off >= ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._limit - (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/io/io.go#L544"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _off = (_off + ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L547"
        {
            var _max = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._limit - _off : stdgo.GoInt64);
            if (((_p.length : stdgo.GoInt64) > _max : Bool)) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _max) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.readAt(_p, _off);
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L550"
                if (_err == null) {
                    _err = stdgo._internal.io.Io_eof.eOF;
                };
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L553"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L555"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.readAt(_p, _off);
    }
    @:keep
    @:tdfield
    static public function seek( _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = _s;
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L525"
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _offset = (_offset + ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base) : stdgo.GoInt64);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _offset = (_offset + ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off) : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _offset = (_offset + ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._limit) : stdgo.GoInt64);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L527"
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.io.Io__errwhence._errWhence };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L535"
        if ((_offset < (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/io/io.go#L536"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.io.Io__erroffset._errOffset };
        };
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = _offset;
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L539"
        return { _0 : (_offset - (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function read( _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = _s;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L510"
        if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off >= (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._limit : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/io/io.go#L511"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L513"
        {
            var _max = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._limit - (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off : stdgo.GoInt64);
            if (((_p.length : stdgo.GoInt64) > _max : Bool)) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _max) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        {
            var __tmp__ = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.readAt(_p, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L518"
        return { _0 : _n, _1 : _err };
    }
}
