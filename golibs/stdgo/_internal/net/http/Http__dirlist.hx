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
function _dirList(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _f:stdgo._internal.net.http.Http_file.File):Void {
        var _dirs:stdgo._internal.net.http.Http_t_anydirs.T_anyDirs = (null : stdgo._internal.net.http.Http_t_anydirs.T_anyDirs);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L136"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _f;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_filedotfile.__type__stdgodot_internaldotnetdothttpdotHttp_filedotFile)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_readdirfiledotreaddirfile.__type__stdgodot_internaldotiodotfsdotFs_readdirfiledotReadDirFile) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : false };
            }, _d = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _list:stdgo._internal.net.http.Http_t_direntrydirs.T_dirEntryDirs = (new stdgo._internal.net.http.Http_t_direntrydirs.T_dirEntryDirs(0, 0) : stdgo._internal.net.http.Http_t_direntrydirs.T_dirEntryDirs);
                {
                    var __tmp__ = _d.readDir((-1 : stdgo.GoInt));
                    _list = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                _dirs = stdgo.Go.asInterface(_list, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_direntrydirsdott_direntrydirs.__type__stdgodot_internaldotnetdothttpdotHttp_t_direntrydirsdotT_dirEntryDirs);
            } else {
                var _list:stdgo._internal.net.http.Http_t_fileinfodirs.T_fileInfoDirs = (new stdgo._internal.net.http.Http_t_fileinfodirs.T_fileInfoDirs(0, 0) : stdgo._internal.net.http.Http_t_fileinfodirs.T_fileInfoDirs);
                {
                    var __tmp__ = _f.readdir((-1 : stdgo.GoInt));
                    _list = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                _dirs = stdgo.Go.asInterface(_list, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_fileinfodirsdott_fileinfodirs.__type__stdgodot_internaldotnetdothttpdotHttp_t_fileinfodirsdotT_fileInfoDirs);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L146"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L147"
            stdgo._internal.net.http.Http__logf._logf(_r, ("http: error reading directory: %v" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L148"
            stdgo._internal.net.http.Http_error.error(_w, ("Error reading directory" : stdgo.GoString), (500 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L149"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L151"
        stdgo._internal.sort.Sort_slice.slice(({
            final __t__ = _dirs;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_anydirsdott_anydirs.__type__stdgodot_internaldotnetdothttpdotHttp_t_anydirsdotT_anyDirs)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L151"
            return (_dirs._name(_i) < _dirs._name(_j) : Bool);
        });
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L153"
        _w.header().set(("Content-Type" : stdgo.GoString), ("text/html; charset=utf-8" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L154"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("<pre>\n" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L155"
        {
            var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (_dirs._len() : stdgo.GoInt);
var _n = __1, _i = __0;
            while ((_i < _n : Bool)) {
                var _name = @:assignType (_dirs._name(_i).__copy__() : stdgo.GoString);
//"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L157"
                if (_dirs._isDir(_i)) {
                    _name = (_name + (("/" : stdgo.GoString)).__copy__() : stdgo.GoString);
                };
var _url = @:assignType ({ path : _name.__copy__() } : stdgo._internal.net.url.Url_url.URL);
//"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L164"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("<a href=\"%s\">%s</a>\n" : stdgo.GoString), new stdgo.AnyInterface((_url.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.net.http.Http__htmlreplacer._htmlReplacer.replace(_name.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L166"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("</pre>\n" : stdgo.GoString));
    }
