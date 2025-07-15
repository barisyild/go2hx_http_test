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
function _cloneMultipartForm(_f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>):stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form> {
        //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L36"
        if (({
            final value = _f;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L37"
            return null;
        };
        var _f2 = (stdgo.Go.setRef(({ value : (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value : stdgo._internal.net.http.Http_header.Header).clone() : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) } : stdgo._internal.mime.multipart.Multipart_form.Form), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_formdotform.__type__stdgodot_internaldotmimedotmultipartdotMultipart_formdotForm })) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L42"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).file != null) {
            var _m = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L44"
            if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).file != null) for (_k => _vv in (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).file) {
                var _vv2 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>((_vv.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>);
                //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L46"
                if (_vv != null) for (_i => _v in _vv) {
                    _vv2[(_i : stdgo.GoInt)] = stdgo._internal.net.http.Http__clonemultipartfileheader._cloneMultipartFileHeader(_v);
                };
                _m[_k] = _vv2;
            };
            (@:checkr _f2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).file = _m;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L53"
        return _f2;
    }
