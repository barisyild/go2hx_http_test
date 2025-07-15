package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_streamreader_static_extension.StreamReader_static_extension) @:using(stdgo._internal.crypto.cipher.Cipher_streamreader_static_extension.StreamReader_static_extension) class StreamReader {
    public var s : stdgo._internal.crypto.cipher.Cipher_stream.Stream = (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream);
    public var r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public function new(?s:stdgo._internal.crypto.cipher.Cipher_stream.Stream, ?r:stdgo._internal.io.Io_reader.Reader) {
        if (s != null) this.s = s;
        if (r != null) this.r = r;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_streamdotstream.__type__stdgodot_internaldotcryptodotcipherdotCipher_streamdotStream }, optional : false }, { name : "r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }])));
    public function __copy__() {
        return new StreamReader(s, r);
    }
}
