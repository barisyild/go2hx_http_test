package stdgo._internal.go.parser;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.go.ast.Ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.go.build.constraint.Constraint;
import stdgo._internal.go.internal.typeparams.Typeparams;
function _readSource(_filename:stdgo.GoString, _src:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L25"
        if (({
            final value = _src;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L26"
            {
                final __type__ = _src;
                if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(string_kind))) {
                    var _s:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L28"
                    return { _0 : (_s : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))) {
                    var _s:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L30"
                    return { _0 : _s, _1 : (null : stdgo.Error) };
                } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))) {
                    var _s:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L33"
                    if (({
                        final value = _s;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L34"
                        return { _0 : _s.bytes(), _1 : (null : stdgo.Error) };
                    };
                } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)) {
                    var _s:stdgo._internal.io.Io_reader.Reader = __type__ == null ? (null : stdgo._internal.io.Io_reader.Reader) : __type__.__underlying__() == null ? (null : stdgo._internal.io.Io_reader.Reader) : __type__ == null ? (null : stdgo._internal.io.Io_reader.Reader) : __type__.__underlying__().value;
                    //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L37"
                    return stdgo._internal.io.Io_readall.readAll(_s);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L39"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid source" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L41"
        return stdgo._internal.os.Os_readfile.readFile(_filename?.__copy__());
    }
