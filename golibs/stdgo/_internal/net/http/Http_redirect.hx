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
function redirect(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _url:stdgo.GoString, _code:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2197"
        {
            var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_url?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2203"
                if ((((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                    var _oldpath = @:assignType ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__() : stdgo.GoString);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2205"
                    if (_oldpath == ((stdgo.Go.str() : stdgo.GoString))) {
                        _oldpath = ("/" : stdgo.GoString);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2210"
                    if (((_url == (stdgo.Go.str() : stdgo.GoString)) || (_url[(0 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        var __tmp__ = stdgo._internal.path.Path_split.split(_oldpath?.__copy__()), _olddir:stdgo.GoString = __tmp__._0, __12:stdgo.GoString = __tmp__._1;
                        _url = (_olddir + _url?.__copy__() : stdgo.GoString)?.__copy__();
                    };
                    var _query:stdgo.GoString = ("" : stdgo.GoString);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2217"
                    {
                        var _i = @:assignType (stdgo._internal.strings.Strings_index.index(_url?.__copy__(), ("?" : stdgo.GoString)) : stdgo.GoInt);
                        if (_i != ((-1 : stdgo.GoInt))) {
                            {
                                final __tmp__0 = (_url.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_url.__slice__(_i) : stdgo.GoString)?.__copy__();
                                _url = @:binopAssign __tmp__0;
                                _query = @:binopAssign __tmp__1;
                            };
                        };
                    };
                    var _trailing = @:assignType (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_url?.__copy__(), ("/" : stdgo.GoString)) : Bool);
                    _url = stdgo._internal.path.Path_clean.clean(_url?.__copy__())?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2224"
                    if ((_trailing && !stdgo._internal.strings.Strings_hassuffix.hasSuffix(_url?.__copy__(), ("/" : stdgo.GoString)) : Bool)) {
                        _url = (_url + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                    _url = (_url + (_query)?.__copy__() : stdgo.GoString);
                };
            };
        };
        var _h = @:assignType (_w.header() : stdgo._internal.net.http.Http_header.Header);
        var __tmp__ = (_h != null && _h.__exists__(("Content-Type" : stdgo.GoString)) ? { _0 : _h[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __12:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hadCT:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2238"
        _h.set(("Location" : stdgo.GoString), stdgo._internal.net.http.Http__hexescapenonascii._hexEscapeNonASCII(_url?.__copy__())?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2239"
        if ((!_hadCT && ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ("GET" : stdgo.GoString)) || ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ("HEAD" : stdgo.GoString)) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2240"
            _h.set(("Content-Type" : stdgo.GoString), ("text/html; charset=utf-8" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2242"
        _w.writeHeader(_code);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2245"
        if ((!_hadCT && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ("GET" : stdgo.GoString)) : Bool)) {
            var _body = @:assignType (((((("<a href=\"" : stdgo.GoString) + stdgo._internal.net.http.Http__htmlescape._htmlEscape(_url?.__copy__())?.__copy__() : stdgo.GoString) + ("\">" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.net.http.Http_statustext.statusText(_code)?.__copy__() : stdgo.GoString) + ("</a>.\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2247"
            stdgo._internal.fmt.Fmt_fprintln.fprintln(_w, new stdgo.AnyInterface(_body, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
