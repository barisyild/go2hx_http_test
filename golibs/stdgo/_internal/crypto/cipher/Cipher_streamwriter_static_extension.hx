package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.StreamWriter_asInterface) class StreamWriter_static_extension {
    @:keep
    @:tdfield
    static public function close( _w:stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter):stdgo.Error {
        @:recv var _w:stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter = _w?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/io.go#L49"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _w.w;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_closerdotcloser.__type__stdgodot_internaldotiodotIo_closerdotCloser) : stdgo._internal.io.Io_closer.Closer), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.Io_closer.Closer), _1 : false };
            }, _c = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/io.go#L50"
                return _c.close();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/io.go#L52"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter = _w?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _c = (new stdgo.Slice<stdgo.GoUInt8>((_src.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/io.go#L38"
        _w.s.xORKeyStream(_c, _src);
        {
            var __tmp__ = _w.w.write(_c);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/io.go#L40"
        if (((_n != (_src.length)) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/io.go#L43"
        return { _0 : _n, _1 : _err };
    }
}
