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
class Header_asInterface {
    @:keep
    public dynamic function _writeSubset(_w:stdgo._internal.io.Io_writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):stdgo.Error return @:_0 __self__.value._writeSubset(_w, _exclude, _trace);
    @:keep
    public dynamic function writeSubset(_w:stdgo._internal.io.Io_writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>):stdgo.Error return @:_0 __self__.value.writeSubset(_w, _exclude);
    @:keep
    public dynamic function _sortedKeyValues(_exclude:stdgo.GoMap<stdgo.GoString, Bool>):{ var _0 : stdgo.Slice<stdgo._internal.net.http.Http_t_keyvalues.T_keyValues>; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>; } return @:_0 __self__.value._sortedKeyValues(_exclude);
    @:keep
    public dynamic function clone():stdgo._internal.net.http.Http_header.Header return @:_0 __self__.value.clone();
    @:keep
    public dynamic function _write(_w:stdgo._internal.io.Io_writer.Writer, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):stdgo.Error return @:_0 __self__.value._write(_w, _trace);
    @:keep
    public dynamic function write(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.write(_w);
    @:keep
    public dynamic function del(_key:stdgo.GoString):Void @:_0 __self__.value.del(_key);
    @:keep
    public dynamic function _has(_key:stdgo.GoString):Bool return @:_0 __self__.value._has(_key);
    @:keep
    public dynamic function _get(_key:stdgo.GoString):stdgo.GoString return @:_0 __self__.value._get(_key);
    @:keep
    public dynamic function values(_key:stdgo.GoString):stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.values(_key);
    @:keep
    public dynamic function get(_key:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.get(_key);
    @:keep
    public dynamic function set(_key:stdgo.GoString, _value:stdgo.GoString):Void @:_0 __self__.value.set(_key, _value);
    @:keep
    public dynamic function add(_key:stdgo.GoString, _value:stdgo.GoString):Void @:_0 __self__.value.add(_key, _value);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_headerpointer.HeaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
