package stdgo._internal.mime;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(stdgo._internal.mime.Mime_worddecoder_static_extension.WordDecoder_static_extension) @:using(stdgo._internal.mime.Mime_worddecoder_static_extension.WordDecoder_static_extension) class WordDecoder {
    public var charsetReader : (stdgo.GoString, stdgo._internal.io.Io_reader.Reader) -> { var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo.Error; } = null;
    public function new(?charsetReader:(stdgo.GoString, stdgo._internal.io.Io_reader.Reader) -> { var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo.Error; }) {
        if (charsetReader != null) this.charsetReader = charsetReader;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "charsetReader", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new WordDecoder(charsetReader);
    }
}
