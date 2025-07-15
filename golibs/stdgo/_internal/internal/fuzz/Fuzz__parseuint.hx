package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
function _parseUint(_val:stdgo.GoString, _typ:stdgo.GoString):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L343"
        {
            final __value__ = _typ;
            if (__value__ == (("uint" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L346"
                return { _0 : new stdgo.AnyInterface((_i : stdgo.GoUInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint_kind))), _1 : _err };
            } else if (__value__ == (("uint8" : stdgo.GoString)) || __value__ == (("byte" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (8 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L349"
                return { _0 : new stdgo.AnyInterface((_i : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), _1 : _err };
            } else if (__value__ == (("uint16" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (16 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L352"
                return { _0 : new stdgo.AnyInterface((_i : stdgo.GoUInt16), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint16_kind))), _1 : _err };
            } else if (__value__ == (("uint32" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (32 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L355"
                return { _0 : new stdgo.AnyInterface((_i : stdgo.GoUInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))), _1 : _err };
            } else if (__value__ == (("uint64" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L357"
                return ({
                    @:explicitConversion final __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt));
                    { _0 : new stdgo.AnyInterface(__tmp__._0, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))), _1 : __tmp__._1 };
                });
            } else {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L359"
                throw new stdgo.AnyInterface(("unreachable" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
    }
