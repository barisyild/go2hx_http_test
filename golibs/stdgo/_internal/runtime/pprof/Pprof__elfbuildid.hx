package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
function _elfBuildID(_file:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.os.Os_open.open(_file?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L24"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L25"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
            };
            {
                final __f__ = _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L29"
            {
                var __tmp__ = _f.readAt((_buf.__slice__(0, (64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L30"
                    {
                        final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L34"
            if ((((_buf[(0 : stdgo.GoInt)] != ((127 : stdgo.GoUInt8)) || _buf[(1 : stdgo.GoInt)] != ((69 : stdgo.GoUInt8)) : Bool) || _buf[(2 : stdgo.GoInt)] != ((76 : stdgo.GoUInt8)) : Bool) || (_buf[(3 : stdgo.GoInt)] != (70 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L35"
                {
                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errbadelf._errBadELF };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _byteOrder:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder = (null : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L39"
            {
                final __value__ = _buf[(5 : stdgo.GoInt)];
                if (__value__ == ((1 : stdgo.GoUInt8))) {
                    _byteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbinarydotbinary_t_littleendiandott_littleendian.__type__stdgodot_internaldotencodingdotbinarydotBinary_t_littleendiandotT_littleEndian);
                } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                    _byteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbinarydotbinary_t_bigendiandott_bigendian.__type__stdgodot_internaldotencodingdotbinarydotBinary_t_bigendiandotT_bigEndian);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L41"
                    {
                        final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errbadelf._errBadELF };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            var _shnum:stdgo.GoInt = (0 : stdgo.GoInt);
            var _shoff:stdgo.GoInt64 = (0 : stdgo.GoInt64), _shentsize:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L50"
            {
                final __value__ = _buf[(4 : stdgo.GoInt)];
                if (__value__ == ((1 : stdgo.GoUInt8))) {
                    _shoff = (_byteOrder.uint32((_buf.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                    _shentsize = (_byteOrder.uint16((_buf.__slice__((46 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L56"
                    if (_shentsize != ((40i64 : stdgo.GoInt64))) {
                        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L57"
                        {
                            final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errbadelf._errBadELF };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    _shnum = (_byteOrder.uint16((_buf.__slice__((48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                    _shoff = (_byteOrder.uint64((_buf.__slice__((40 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                    _shentsize = (_byteOrder.uint16((_buf.__slice__((58 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L63"
                    if (_shentsize != ((64i64 : stdgo.GoInt64))) {
                        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L64"
                        {
                            final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errbadelf._errBadELF };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    _shnum = (_byteOrder.uint16((_buf.__slice__((60 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L52"
                    {
                        final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errbadelf._errBadELF };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L69"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < _shnum : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L70"
                    {
                        var __tmp__ = _f.readAt((_buf.__slice__(0, _shentsize) : stdgo.Slice<stdgo.GoUInt8>), (_shoff + ((_i : stdgo.GoInt64) * _shentsize : stdgo.GoInt64) : stdgo.GoInt64)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L71"
                            {
                                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _err };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
//"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L73"
                    {
                        var _typ = @:assignType (_byteOrder.uint32((_buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                        if (_typ != ((7u32 : stdgo.GoUInt32))) {
                            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L74"
                            {
                                _i++;
                                continue;
                            };
                        };
                    };
var _off:stdgo.GoInt64 = (0 : stdgo.GoInt64), _size:stdgo.GoInt64 = (0 : stdgo.GoInt64);
//"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L77"
                    if (_shentsize == ((40i64 : stdgo.GoInt64))) {
                        _off = (_byteOrder.uint32((_buf.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                        _size = (_byteOrder.uint32((_buf.__slice__((20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                    } else {
                        _off = (_byteOrder.uint64((_buf.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                        _size = (_byteOrder.uint64((_buf.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                    };
_size = (_size + (_off) : stdgo.GoInt64);
//"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L87"
                    while ((_off < _size : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L88"
                        {
                            var __tmp__ = _f.readAt((_buf.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _off), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L89"
                                {
                                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                        var _nameSize = @:assignType (_byteOrder.uint32((_buf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                        var _descSize = @:assignType (_byteOrder.uint32((_buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                        var _noteType = @:assignType (_byteOrder.uint32((_buf.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                        var _descOff = @:assignType (_off + (((12 : stdgo.GoInt) + (((_nameSize + (3 : stdgo.GoInt) : stdgo.GoInt)) & (((3 : stdgo.GoInt) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64);
                        _off = (_descOff + ((((_descSize + (3 : stdgo.GoInt) : stdgo.GoInt)) & (((3 : stdgo.GoInt) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64);
                        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L96"
                        if ((((((_nameSize != ((4 : stdgo.GoInt)) || _noteType != ((3 : stdgo.GoInt)) : Bool) || _buf[(12 : stdgo.GoInt)] != ((71 : stdgo.GoUInt8)) : Bool) || _buf[(13 : stdgo.GoInt)] != ((78 : stdgo.GoUInt8)) : Bool) || _buf[(14 : stdgo.GoInt)] != ((85 : stdgo.GoUInt8)) : Bool) || (_buf[(15 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L97"
                            continue;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L99"
                        if ((_descSize > (_buf.length) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L100"
                            {
                                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errbadelf._errBadELF };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L102"
                        {
                            var __tmp__ = _f.readAt((_buf.__slice__(0, _descSize) : stdgo.Slice<stdgo.GoUInt8>), _descOff), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L103"
                                {
                                    final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L105"
                        {
                            final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), new stdgo.AnyInterface((_buf.__slice__(0, _descSize) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))))?.__copy__(), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/elf.go#L108"
            {
                final __ret__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.runtime.pprof.Pprof__errnobuildid._errNoBuildID };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : ("" : stdgo.GoString), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : ("" : stdgo.GoString), _1 : (null : stdgo.Error) };
            };
        };
    }
