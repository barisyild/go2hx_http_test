package stdgo._internal.mime.quotedprintable;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.mime.quotedprintable.Quotedprintable_reader_static_extension.Reader_static_extension) @:using(stdgo._internal.mime.quotedprintable.Quotedprintable_reader_static_extension.Reader_static_extension) class Reader {
    public var _br : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _rerr : stdgo.Error = (null : stdgo.Error);
    public var _line : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_br:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_rerr:stdgo.Error, ?_line:stdgo.Slice<stdgo.GoUInt8>) {
        if (_br != null) this._br = _br;
        if (_rerr != null) this._rerr = _rerr;
        if (_line != null) this._line = _line;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_br", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader }) }, optional : false }, { name : "_rerr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_line", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Reader(_br, _rerr, _line);
    }
}
