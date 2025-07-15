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
function _unwrapNopCloser(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : Bool; } {
        var _underlyingReader = (null : stdgo._internal.io.Io_reader.Reader), _isNopCloser = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L1086"
        {
            final __value__ = stdgo._internal.reflect.Reflect_typeof.typeOf(({
                final __t__ = _r;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            if ((__value__.string() : String) == (stdgo._internal.net.http.Http__nopclosertype._nopCloserType.string() : String) || (__value__.string() : String) == (stdgo._internal.net.http.Http__nopcloserwritertotype._nopCloserWriterToType.string() : String)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L1088"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : Bool; } = { _0 : (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(({
                        final __t__ = _r;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    })).field((0 : stdgo.GoInt)).interface_(), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader) : stdgo._internal.io.Io_reader.Reader), _1 : true };
                    _underlyingReader = __tmp__._0;
                    _isNopCloser = __tmp__._1;
                    __tmp__;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L1090"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : Bool; } = { _0 : (null : stdgo._internal.io.Io_reader.Reader), _1 : false };
                    _underlyingReader = __tmp__._0;
                    _isNopCloser = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
