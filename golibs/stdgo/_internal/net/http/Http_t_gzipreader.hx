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
@:structInit @:using(stdgo._internal.net.http.Http_t_gzipreader_static_extension.T_gzipReader_static_extension) @:using(stdgo._internal.net.http.Http_t_gzipreader_static_extension.T_gzipReader_static_extension) class T_gzipReader {
    @:optional
    public var __0 : stdgo._internal.net.http.Http_t_incomparable.T_incomparable = new stdgo._internal.net.http.Http_t_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _body : stdgo.Ref<stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal>);
    public var _zr : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader> = (null : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>);
    public var _zerr : stdgo.Error = (null : stdgo.Error);
    public function new(?__0:stdgo._internal.net.http.Http_t_incomparable.T_incomparable, ?_body:stdgo.Ref<stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal>, ?_zr:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>, ?_zerr:stdgo.Error) {
        if (__0 != null) this.__0 = __0;
        if (_body != null) this._body = _body;
        if (_zr != null) this._zr = _zr;
        if (_zerr != null) this._zerr = _zerr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_incomparabledott_incomparable.__type__stdgodot_internaldotnetdothttpdotHttp_t_incomparabledotT_incomparable }, optional : false }, { name : "_body", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodyeofsignaldott_bodyeofsignal.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodyeofsignaldotT_bodyEOFSignal }) }, optional : false }, { name : "_zr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotgzipdotgzip_readerdotreader.__type__stdgodot_internaldotcompressdotgzipdotGzip_readerdotReader }) }, optional : false }, { name : "_zerr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new T_gzipReader(__0, _body, _zr, _zerr);
    }
}
