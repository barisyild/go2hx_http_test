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
function _http2summarizeFrame(_f:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame):stdgo.GoString {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3020"
        _f.header()._writeDebug((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3021"
        {
            final __type__ = _f;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingsframedott_http2settingsframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingsframedotT_http2SettingsFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>) : __type__.__underlying__().value);
                var _n = @:assignType (0 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3024"
                _f.foreachSetting(function(_s:stdgo._internal.net.http.Http_t_http2setting.T_http2Setting):stdgo.Error {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3025"
                    _n++;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3026"
                    if (_n == ((1 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3027"
                        _buf.writeString((", settings:" : stdgo.GoString));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3029"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), (" %v=%v," : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_s.iD, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingiddott_http2settingid.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingiddotT_http2SettingID), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingiddott_http2settingid.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingiddotT_http2SettingID)), new stdgo.AnyInterface(_s.val, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3030"
                    return (null : stdgo.Error);
                });
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3032"
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3033"
                    _buf.truncate((_buf.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2dataframedott_http2dataframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2dataframedotT_http2DataFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>) : __type__.__underlying__().value);
                var _data = _f.data();
                {};
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3038"
                if (((_data.length) > (256 : stdgo.GoInt) : Bool)) {
                    _data = (_data.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3041"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), (" data=%q" : stdgo.GoString), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3042"
                if (((_f.data().length) > (256 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3043"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), (" (%d bytes omitted)" : stdgo.GoString), new stdgo.AnyInterface(((_f.data().length) - (256 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2windowupdateframedott_http2windowupdateframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2windowupdateframedotT_http2WindowUpdateFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3046"
                if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID == ((0u32 : stdgo.GoUInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3047"
                    _buf.writeString((" (conn)" : stdgo.GoString));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3049"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), (" incr=%v" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).increment, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pingframedott_http2pingframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pingframedotT_http2PingFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3051"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), (" ping=%q" : stdgo.GoString), new stdgo.AnyInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayframedott_http2goawayframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayframedotT_http2GoAwayFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3053"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), (" LastStreamID=%v ErrCode=%v Debug=%q" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lastStreamID, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode)), new stdgo.AnyInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugData, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2rststreamframedott_http2rststreamframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2rststreamframedotT_http2RSTStreamFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3056"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), (" ErrCode=%v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3058"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
