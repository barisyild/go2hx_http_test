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
@:keep @:allow(stdgo._internal.net.http.Http.T_ioFile_asInterface) class T_ioFile_static_extension {
    @:keep
    @:tdfield
    static public function readdir( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile = _f?.__copy__();
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _f._file;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filedotfile.__type__stdgodot_internaldotiodotfsdotFs_filedotFile)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_readdirfiledotreaddirfile.__type__stdgodot_internaldotiodotfsdotFs_readdirfiledotReadDirFile) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : false };
        }, _d = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L811"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L812"
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>), _1 : stdgo._internal.net.http.Http__errmissingreaddir._errMissingReadDir };
        };
        var _list:stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo> = (null : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L815"
        while (true) {
            var __tmp__ = _d.readDir((_count - (_list.length) : stdgo.GoInt)), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L817"
            if (_dirs != null) for (__12 => _dir in _dirs) {
                var __tmp__ = _dir.info(), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L819"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L821"
                    continue;
                };
                _list = (_list.__append__(_info) : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L825"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L826"
                return { _0 : _list, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L828"
            if (((_count < (0 : stdgo.GoInt) : Bool) || ((_list.length) >= _count : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L829"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L832"
        return { _0 : _list, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function readDir( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile = _f?.__copy__();
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _f._file;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filedotfile.__type__stdgodot_internaldotiodotfsdotFs_filedotFile)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_readdirfiledotreaddirfile.__type__stdgodot_internaldotiodotfsdotFs_readdirfiledotReadDirFile) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : false };
        }, _d = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L803"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L804"
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : stdgo._internal.net.http.Http__errmissingreaddir._errMissingReadDir };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L806"
        return _d.readDir(_count);
    }
    @:keep
    @:tdfield
    static public function seek( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile = _f?.__copy__();
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _f._file;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filedotfile.__type__stdgodot_internaldotiodotfsdotFs_filedotFile)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_seekerdotseeker.__type__stdgodot_internaldotiodotIo_seekerdotSeeker) : stdgo._internal.io.Io_seeker.Seeker), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.io.Io_seeker.Seeker), _1 : false };
        }, _s = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L795"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L796"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.net.http.Http__errmissingseek._errMissingSeek };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L798"
        return _s.seek(_offset, _whence);
    }
    @:keep
    @:tdfield
    static public function stat( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile = _f?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L788"
        return _f._file.stat();
    }
    @:keep
    @:tdfield
    static public function read( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile = _f?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L787"
        return _f._file.read(_b);
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile):stdgo.Error {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofile.T_ioFile = _f?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L786"
        return _f._file.close();
    }
}
