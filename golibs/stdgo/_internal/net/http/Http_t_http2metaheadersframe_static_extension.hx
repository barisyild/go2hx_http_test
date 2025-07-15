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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2MetaHeadersFrame_asInterface) class T_http2MetaHeadersFrame_static_extension {
    @:keep
    @:tdfield
    static public function _checkPseudos( _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame> = _mh;
        var _isRequest:Bool = false, _isResponse:Bool = false;
        var _pf = _mh.pseudoFields();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2889"
        if (_pf != null) for (_i => _hf in _pf) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2890"
            {
                final __value__ = _hf.name;
                if (__value__ == ((":method" : stdgo.GoString)) || __value__ == ((":path" : stdgo.GoString)) || __value__ == ((":scheme" : stdgo.GoString)) || __value__ == ((":authority" : stdgo.GoString))) {
                    _isRequest = true;
                } else if (__value__ == ((":status" : stdgo.GoString))) {
                    _isResponse = true;
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2896"
                    return stdgo.Go.asInterface((_hf.name : stdgo._internal.net.http.Http_t_http2pseudoheadererror.T_http2pseudoHeaderError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pseudoheadererrordott_http2pseudoheadererror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pseudoheadererrordotT_http2pseudoHeaderError);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2901"
            if ((_pf.__slice__(0, _i) : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>) != null) for (__12 => _hf2 in (_pf.__slice__(0, _i) : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2902"
                if (_hf.name == (_hf2.name)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2903"
                    return stdgo.Go.asInterface((_hf.name : stdgo._internal.net.http.Http_t_http2duplicatepseudoheadererror.T_http2duplicatePseudoHeaderError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2duplicatepseudoheadererrordott_http2duplicatepseudoheadererror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2duplicatepseudoheadererrordotT_http2duplicatePseudoHeaderError);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2907"
        if ((_isRequest && _isResponse : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2908"
            return stdgo._internal.net.http.Http__http2errmixpseudoheadertypes._http2errMixPseudoHeaderTypes;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2910"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function pseudoFields( _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField> {
        @:recv var _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame> = _mh;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2878"
        if ((@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields != null) for (_i => _hf in (@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2879"
            if (!_hf.isPseudo()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2880"
                return ((@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields.__slice__(0, _i) : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2883"
        return (@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields;
    }
    @:keep
    @:tdfield
    static public function regularFields( _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField> {
        @:recv var _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame> = _mh;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2867"
        if ((@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields != null) for (_i => _hf in (@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2868"
            if (!_hf.isPseudo()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2869"
                return ((@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields.__slice__(_i) : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2872"
        return (null : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
    }
    @:keep
    @:tdfield
    static public function pseudoValue( _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>, _pseudo:stdgo.GoString):stdgo.GoString {
        @:recv var _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame> = _mh;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2853"
        if ((@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields != null) for (__12 => _hf in (@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2854"
            if (!_hf.isPseudo()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2855"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2857"
            if ((_hf.name.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) == (_pseudo)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2858"
                return _hf.value?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2861"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame, _0:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void return @:_5 __self__._writeDebug(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Void return @:_5 __self__._invalidate();
    @:embedded
    @:embeddededffieldsffun
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Void return @:_5 __self__._checkValid();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function streamEnded( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Bool return @:_5 __self__.streamEnded();
    @:embedded
    @:embeddededffieldsffun
    public static function headersEnded( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Bool return @:_5 __self__.headersEnded();
    @:embedded
    @:embeddededffieldsffun
    public static function headerBlockFragment( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.headerBlockFragment();
    @:embedded
    @:embeddededffieldsffun
    public static function header( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:_5 __self__.header();
    @:embedded
    @:embeddededffieldsffun
    public static function hasPriority( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Bool return @:_5 __self__.hasPriority();
}
