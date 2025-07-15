package stdgo._internal.net.http;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.net.Net;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.sort.Sort;
import stdgo._internal.mime.Mime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.multipart.Multipart;
import stdgo._internal.path.Path;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.bytes.Bytes;
import _internal.golangdotorg.x.net.http.httpguts.Httpguts;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.net.url.Url;
import _internal.golangdotorg.x.net.http.httpproxy.Httpproxy;
import _internal.golangdotorg.x.net.http2.hpack.Hpack;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sync.Sync;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.container.list.List;
import stdgo._internal.internal.safefilepath.Safefilepath;
@:structInit @:using(stdgo._internal.net.http.Http_t_readwritecloserbody_static_extension.T_readWriteCloserBody_static_extension) @:using(stdgo._internal.net.http.Http_t_readwritecloserbody_static_extension.T_readWriteCloserBody_static_extension) class T_readWriteCloserBody {
    @:optional
    public var __0 : stdgo._internal.net.http.Http_t_incomparable.T_incomparable = new stdgo._internal.net.http.Http_t_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _br : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    @:embedded
    public var readWriteCloser : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser = (null : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser);
    public function new(?__0:stdgo._internal.net.http.Http_t_incomparable.T_incomparable, ?_br:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?readWriteCloser:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser) {
        if (__0 != null) this.__0 = __0;
        if (_br != null) this._br = _br;
        if (readWriteCloser != null) this.readWriteCloser = readWriteCloser;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_incomparabledott_incomparable.__type__stdgodot_internaldotnetdothttpdotHttp_t_incomparabledotT_incomparable }, optional : false }, { name : "_br", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader }) }, optional : false }, { name : "readWriteCloser", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readwritecloserdotreadwritecloser.__type__stdgodot_internaldotiodotIo_readwritecloserdotReadWriteCloser }, optional : false }])));
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check31 (this.readWriteCloser ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.readWriteCloser ?? throw stdgo.Error._nullPointerDereference.__underlying__()).write;
    public function __copy__() {
        return new T_readWriteCloserBody(__0, _br, readWriteCloser);
    }
}
