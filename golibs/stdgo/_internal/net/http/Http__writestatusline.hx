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
function _writeStatusLine(_bw:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _is11:Bool, _code:stdgo.GoInt, _scratch:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1546"
        if (_is11) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1547"
            _bw.writeString(("HTTP/1.1 " : stdgo.GoString));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1549"
            _bw.writeString(("HTTP/1.0 " : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1551"
        {
            var _text = @:assignType (stdgo._internal.net.http.Http_statustext.statusText(_code)?.__copy__() : stdgo.GoString);
            if (_text != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1552"
                _bw.write(stdgo._internal.strconv.Strconv_appendint.appendInt((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_code : stdgo.GoInt64), (10 : stdgo.GoInt)));
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1553"
                _bw.writeByte((32 : stdgo.GoUInt8));
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1554"
                _bw.writeString(_text?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1555"
                _bw.writeString(("\r\n" : stdgo.GoString));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1558"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_bw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })), ("%03d status code %d\r\n" : stdgo.GoString), new stdgo.AnyInterface(_code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
