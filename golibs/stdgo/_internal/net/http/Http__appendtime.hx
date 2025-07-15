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
function _appendTime(_b:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo._internal.time.Time_time.Time):stdgo.Slice<stdgo.GoUInt8> {
        {};
        {};
        _t = _t.uTC()?.__copy__();
        var __tmp__ = _t.date(), _yy:stdgo.GoInt = __tmp__._0, _mm:stdgo._internal.time.Time_month.Month = __tmp__._1, _dd:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t.clock(), _hh:stdgo.GoInt = __tmp__._0, _mn:stdgo.GoInt = __tmp__._1, _ss:stdgo.GoInt = __tmp__._2;
        var _day = @:assignType ((("SunMonTueWedThuFriSat" : stdgo.GoString).__slice__(((3 : stdgo._internal.time.Time_weekday.Weekday) * _t.weekday() : stdgo._internal.time.Time_weekday.Weekday)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _mon = @:assignType ((("JanFebMarAprMayJunJulAugSepOctNovDec" : stdgo.GoString).__slice__(((3 : stdgo._internal.time.Time_month.Month) * ((_mm - (1 : stdgo._internal.time.Time_month.Month) : stdgo._internal.time.Time_month.Month)) : stdgo._internal.time.Time_month.Month)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L956"
        return (_b.__append__(_day[(0 : stdgo.GoInt)],
_day[(1 : stdgo.GoInt)],
_day[(2 : stdgo.GoInt)],
(44 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_dd / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_dd % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
_mon[(0 : stdgo.GoInt)],
_mon[(1 : stdgo.GoInt)],
_mon[(2 : stdgo.GoInt)],
(32 : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_yy / (1000 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (((_yy / (100 : stdgo.GoInt) : stdgo.GoInt)) % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (((_yy / (10 : stdgo.GoInt) : stdgo.GoInt)) % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_yy % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_hh / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_hh % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(58 : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_mn / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_mn % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(58 : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_ss / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_ss % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(71 : stdgo.GoUInt8),
(77 : stdgo.GoUInt8),
(84 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
