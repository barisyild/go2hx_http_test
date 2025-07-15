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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2SettingsFrame_asInterface) class T_http2SettingsFrame_static_extension {
    @:keep
    @:tdfield
    static public function foreachSetting( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>, _fn:stdgo._internal.net.http.Http_t_http2setting.T_http2Setting -> stdgo.Error):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2215"
        _f._checkValid();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2216"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _f.numSettings() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2217"
                {
                    var _err = @:assignType (_fn(_f.setting(_i).__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2218"
                        return _err;
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2221"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function hasDuplicates( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = _f;
        var _num = @:assignType (_f.numSettings() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2184"
        if (_num == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2185"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2189"
        if ((_num < (10 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2190"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < _num : Bool)) {
                    var _idi = @:assignType (_f.setting(_i).iD : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID);
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2192"
                    {
                        var _j = @:assignType (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _num : Bool)) {
                            var _idj = @:assignType (_f.setting(_j).iD : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID);
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2194"
                            if (_idi == (_idj)) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2195"
                                return true;
                            };
                            _j++;
                        };
                    };
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2199"
            return false;
        };
        var _seen = ({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID, Bool>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2202"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _num : Bool)) {
                var _id = @:assignType (_f.setting(_i).iD : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID);
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2204"
                if ((_seen[_id] ?? false)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2205"
                    return true;
                };
_seen[_id] = true;
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2209"
        return false;
    }
    @:keep
    @:tdfield
    static public function numSettings( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2179"
        return (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p.length) / (6 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function setting( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>, _i:stdgo.GoInt):stdgo._internal.net.http.Http_t_http2setting.T_http2Setting {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = _f;
        var _buf = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2173"
        return ({ iD : (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint16((_buf.__slice__((_i * (6 : stdgo.GoInt) : stdgo.GoInt), ((_i * (6 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID), val : stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_buf.__slice__(((_i * (6 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt), ((_i * (6 : stdgo.GoInt) : stdgo.GoInt) + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) } : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting);
    }
    @:keep
    @:tdfield
    static public function value( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>, _id:stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = _f;
        var _v = (0 : stdgo.GoUInt32), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2160"
        _f._checkValid();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2161"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _f.numSettings() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2162"
                {
                    var _s = @:assignType (_f.setting(_i).__copy__() : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting);
                    if (_s.iD == (_id)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2163"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : Bool; } = { _0 : _s.val, _1 : true };
                            _v = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2166"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : Bool; } = { _0 : (0u32 : stdgo.GoUInt32), _1 : false };
            _v = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function isAck( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2156"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.flags.has((1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame, _0:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void return @:_5 __self__._writeDebug(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame):Void return @:_5 __self__._invalidate();
    @:embedded
    @:embeddededffieldsffun
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame):Void return @:_5 __self__._checkValid();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function header( __self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame):stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:_5 __self__.header();
}
