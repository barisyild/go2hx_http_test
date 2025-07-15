package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_streamwriter_static_extension.StreamWriter_static_extension) @:using(stdgo._internal.crypto.cipher.Cipher_streamwriter_static_extension.StreamWriter_static_extension) class StreamWriter {
    public var s : stdgo._internal.crypto.cipher.Cipher_stream.Stream = (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream);
    public var w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?s:stdgo._internal.crypto.cipher.Cipher_stream.Stream, ?w:stdgo._internal.io.Io_writer.Writer, ?err:stdgo.Error) {
        if (s != null) this.s = s;
        if (w != null) this.w = w;
        if (err != null) this.err = err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "s", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_streamdotstream.__type__stdgodot_internaldotcryptodotcipherdotCipher_streamdotStream }, optional : false }, { name : "w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }, { name : "err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new StreamWriter(s, w, err);
    }
}
