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
@:keep @:allow(stdgo._internal.net.http.Http.Header_asInterface) class Header_static_extension {
    @:keep
    @:tdfield
    static public function _writeSubset( _h:stdgo._internal.net.http.Http_header.Header, _w:stdgo._internal.io.Io_writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):stdgo.Error {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _w;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_stringwriterdotstringwriter.__type__stdgodot_internaldotiodotIo_stringwriterdotStringWriter) : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : false };
        }, _ws = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L198"
        if (!_ok) {
            _ws = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_stringwriter.T_stringWriter(_w) : stdgo._internal.net.http.Http_t_stringwriter.T_stringWriter), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_stringwriterdott_stringwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_stringwriterdotT_stringWriter);
        };
        var __tmp__ = _h._sortedKeyValues(_exclude), _kvs:stdgo.Slice<stdgo._internal.net.http.Http_t_keyvalues.T_keyValues> = __tmp__._0, _sorter:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter> = __tmp__._1;
        var _formattedVals:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L203"
        if (_kvs != null) for (__12 => _kv in _kvs) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L204"
            if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validheaderfieldname.validHeaderFieldName(_kv._key?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L209"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L211"
            if (_kv._values != null) for (__13 => _v in _kv._values) {
                _v = stdgo._internal.net.http.Http__headernewlinetospace._headerNewlineToSpace.replace(_v?.__copy__())?.__copy__();
                _v = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_v?.__copy__())?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L214"
                if ((new stdgo.Slice<stdgo.GoString>(4, 4, ...[_kv._key?.__copy__(), (": " : stdgo.GoString), _v?.__copy__(), ("\r\n" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) != null) for (__14 => _s in (new stdgo.Slice<stdgo.GoString>(4, 4, ...[_kv._key?.__copy__(), (": " : stdgo.GoString), _v?.__copy__(), ("\r\n" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L215"
                    {
                        var __tmp__ = _ws.writeString(_s?.__copy__()), __15:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L216"
                            stdgo._internal.net.http.Http__headersorterpool._headerSorterPool.put(new stdgo.AnyInterface(stdgo.Go.asInterface(_sorter, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_headersorterdott_headersorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_headersorterdotT_headerSorter), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_headersorterdott_headersorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_headersorterdotT_headerSorter }))));
                            //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L217"
                            return _err;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L220"
                if ((({
                    final value = _trace;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField != null) : Bool)) {
                    _formattedVals = (_formattedVals.__append__(_v?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L224"
            if ((({
                final value = _trace;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L225"
                (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField(_kv._key?.__copy__(), _formattedVals);
                _formattedVals = (null : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L229"
        stdgo._internal.net.http.Http__headersorterpool._headerSorterPool.put(new stdgo.AnyInterface(stdgo.Go.asInterface(_sorter, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_headersorterdott_headersorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_headersorterdotT_headerSorter), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_headersorterdott_headersorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_headersorterdotT_headerSorter }))));
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L230"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function writeSubset( _h:stdgo._internal.net.http.Http_header.Header, _w:stdgo._internal.io.Io_writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>):stdgo.Error {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L193"
        return _h._writeSubset(_w, _exclude, null);
    }
    @:keep
    @:tdfield
    static public function _sortedKeyValues( _h:stdgo._internal.net.http.Http_header.Header, _exclude:stdgo.GoMap<stdgo.GoString, Bool>):{ var _0 : stdgo.Slice<stdgo._internal.net.http.Http_t_keyvalues.T_keyValues>; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>; } {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        var _kvs = (null : stdgo.Slice<stdgo._internal.net.http.Http_t_keyvalues.T_keyValues>), _hs = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>);
        _hs = (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__headersorterpool._headerSorterPool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_headersorterdott_headersorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_headersorterdotT_headerSorter })) : stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L175"
        if (((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kvs.capacity < (_h.length) : Bool)) {
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kvs = (new stdgo.Slice<stdgo._internal.net.http.Http_t_keyvalues.T_keyValues>((0 : stdgo.GoInt).toBasic(), (_h.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (_h.length) ? (0 : stdgo.GoInt).toBasic() : (_h.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.http.Http_t_keyvalues.T_keyValues)]) : stdgo.Slice<stdgo._internal.net.http.Http_t_keyvalues.T_keyValues>);
        };
        _kvs = ((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kvs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.net.http.Http_t_keyvalues.T_keyValues>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L179"
        if (_h != null) for (_k => _vv in _h) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L180"
            if (!(_exclude[_k] ?? false)) {
                _kvs = (_kvs.__append__((new stdgo._internal.net.http.Http_t_keyvalues.T_keyValues(_k?.__copy__(), _vv) : stdgo._internal.net.http.Http_t_keyvalues.T_keyValues)) : stdgo.Slice<stdgo._internal.net.http.Http_t_keyvalues.T_keyValues>);
            };
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kvs = _kvs;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L185"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_hs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_headersorterdott_headersorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_headersorterdotT_headerSorter })));
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L186"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.net.http.Http_t_keyvalues.T_keyValues>; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>; } = { _0 : _kvs, _1 : _hs };
            _kvs = __tmp__._0;
            _hs = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function clone( _h:stdgo._internal.net.http.Http_header.Header):stdgo._internal.net.http.Http_header.Header {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L95"
        if (_h == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L96"
            return null;
        };
        var _nv = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L101"
        if (_h != null) for (__12 => _vv in _h) {
            _nv = (_nv + ((_vv.length)) : stdgo.GoInt);
        };
        var _sv = (new stdgo.Slice<stdgo.GoString>((_nv : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _h2 = @:assignType ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header) : stdgo._internal.net.http.Http_header.Header);
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L106"
        if (_h != null) for (_k => _vv in _h) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L107"
            if (_vv == null) {
                _h2[_k] = (null : stdgo.Slice<stdgo.GoString>);
                //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L111"
                continue;
            };
            var _n = @:assignType (_sv.__copyTo__(_vv) : stdgo.GoInt);
            _h2[_k] = (_sv.__slice__(0, _n, _n) : stdgo.Slice<stdgo.GoString>);
            _sv = (_sv.__slice__(_n) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L117"
        return _h2;
    }
    @:keep
    @:tdfield
    static public function _write( _h:stdgo._internal.net.http.Http_header.Header, _w:stdgo._internal.io.Io_writer.Writer, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):stdgo.Error {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L90"
        return _h._writeSubset(_w, (null : stdgo.GoMap<stdgo.GoString, Bool>), _trace);
    }
    @:keep
    @:tdfield
    static public function write( _h:stdgo._internal.net.http.Http_header.Header, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L86"
        return _h._write(_w, null);
    }
    @:keep
    @:tdfield
    static public function del( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L81"
        (_h : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader).del(_key?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _has( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString):Bool {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        var __tmp__ = (_h != null && _h.__exists__(_key?.__copy__()) ? { _0 : _h[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __12:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L74"
        return _ok;
    }
    @:keep
    @:tdfield
    static public function _get( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L64"
        {
            var _v = (_h[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_v.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L65"
                return _v[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L67"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function values( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L59"
        return (_h : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader).values(_key?.__copy__());
    }
    @:keep
    @:tdfield
    static public function get( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L50"
        return (_h : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader).get(_key?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function set( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L40"
        (_h : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader).set(_key?.__copy__(), _value?.__copy__());
    }
    @:keep
    @:tdfield
    static public function add( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L31"
        (_h : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader).add(_key?.__copy__(), _value?.__copy__());
    }
}
