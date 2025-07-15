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
function _marshalCorpusFile(_vals:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoUInt8> {
        var _vals = new stdgo.Slice<stdgo.AnyInterface>(_vals.length, 0, ..._vals);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L25"
        if ((_vals.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L26"
            throw new stdgo.AnyInterface(("must have at least one value to marshal" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _b = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(((stdgo._internal.internal.fuzz.Fuzz__encversion1._encVersion1 + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L31"
        if (_vals != null) for (__0 => _val in _vals) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L32"
            {
                final __type__ = _val;
                if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int8_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int16_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int64_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint16_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint32_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint64_kind)) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(bool_kind))) {
                    var _t:stdgo.AnyInterface = __type__?.__underlying__();
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L34"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%T(%v)\n" : stdgo.GoString), _t, _t);
                } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(float32_kind))) {
                    var _t:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L36"
                    if ((stdgo._internal.math.Math_isnan.isNaN((_t : stdgo.GoFloat64)) && (stdgo._internal.math.Math_float32bits.float32bits(_t) != stdgo._internal.math.Math_float32bits.float32bits((stdgo._internal.math.Math_nan.naN() : stdgo.GoFloat32))) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L49"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("math.Float32frombits(0x%x)\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.math.Math_float32bits.float32bits(_t), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L60"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%T(%v)\n" : stdgo.GoString), new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind))), new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind))));
                    };
                } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(float64_kind))) {
                    var _t:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L63"
                    if ((stdgo._internal.math.Math_isnan.isNaN(_t) && (stdgo._internal.math.Math_float64bits.float64bits(_t) != stdgo._internal.math.Math_float64bits.float64bits(stdgo._internal.math.Math_nan.naN())) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L64"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("math.Float64frombits(0x%x)\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.math.Math_float64bits.float64bits(_t), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L66"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%T(%v)\n" : stdgo.GoString), new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))), new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
                    };
                } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(string_kind))) {
                    var _t:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L69"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("string(%q)\n" : stdgo.GoString), new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int32_kind))) {
                    var _t:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L83"
                    if (stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_t)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L84"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("rune(%q)\n" : stdgo.GoString), new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L86"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("int32(%v)\n" : stdgo.GoString), new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                    };
                } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint8_kind))) {
                    var _t:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L91"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("byte(%q)\n" : stdgo.GoString), new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))));
                } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))) {
                    var _t:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L93"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("[]byte(%q)\n" : stdgo.GoString), new stdgo.AnyInterface(_t, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                } else {
                    var _t:stdgo.AnyInterface = __type__?.__underlying__();
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L95"
                    throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unsupported type: %T" : stdgo.GoString), _t), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L98"
        return _b.bytes();
    }
