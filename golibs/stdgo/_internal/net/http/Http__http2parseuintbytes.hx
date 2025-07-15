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
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _v_146:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_145:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_144:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _n1_148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_147:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3157"
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7659503i64;
                    } else {
                        _gotoNext = 7659543i64;
                    };
                } else if (__value__ == (7659503i64)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7659543i64;
                } else if (__value__ == (7659543i64)) {
                    _s0_144 = _s;
                    _gotoNext = 7659552i64;
                } else if (__value__ == (7659552i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3162"
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7659562i64;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7659620i64;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7659683i64;
                    } else {
                        _gotoNext = 7659964i64;
                    };
                } else if (__value__ == (7659562i64)) {
                    _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                    _gotoNext = 7660752i64;
                } else if (__value__ == (7659620i64)) {
                    _gotoNext = 7660048i64;
                } else if (__value__ == (7659683i64)) {
                    _gotoNext = 7659734i64;
                } else if (__value__ == (7659734i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3172"
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7659745i64;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7659904i64;
                    } else {
                        _gotoNext = 7659936i64;
                    };
                } else if (__value__ == (7659745i64)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3176"
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7659852i64;
                    } else {
                        _gotoNext = 7660048i64;
                    };
                } else if (__value__ == (7659852i64)) {
                    _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                    _gotoNext = 7660752i64;
                } else if (__value__ == (7659904i64)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7660048i64;
                } else if (__value__ == (7659936i64)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7660048i64;
                } else if (__value__ == (7659964i64)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7660752i64;
                } else if (__value__ == (7660048i64)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_127 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_128 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_145 = (0 : stdgo.GoInt);
                    _gotoNext = 7660117i64;
                } else if (__value__ == (7660117i64)) {
                    //"file://#L0"
                    if ((_i_145 < (_s.length) : Bool)) {
                        _gotoNext = 7660145i64;
                    } else {
                        _gotoNext = 7660737i64;
                    };
                } else if (__value__ == (7660145i64)) {
                    _d_147 = _s[(_i_145 : stdgo.GoInt)];
                    _gotoNext = 7660174i64;
                } else if (__value__ == (7660174i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3198"
                    if ((((48 : stdgo.GoUInt8) <= _d_147 : Bool) && (_d_147 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7660185i64;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_147 : Bool) && (_d_147 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7660229i64;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_147 : Bool) && (_d_147 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7660278i64;
                    } else {
                        _gotoNext = 7660327i64;
                    };
                } else if (__value__ == (7660185i64)) {
                    _v_146 = (_d_147 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7660392i64;
                } else if (__value__ == (7660229i64)) {
                    _v_146 = ((_d_147 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7660392i64;
                } else if (__value__ == (7660278i64)) {
                    _v_146 = ((_d_147 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7660392i64;
                } else if (__value__ == (7660327i64)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                    _gotoNext = 7660752i64;
                } else if (__value__ == (7660392i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3210"
                    if (((_v_146 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7660410i64;
                    } else {
                        _gotoNext = 7660469i64;
                    };
                } else if (__value__ == (7660410i64)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                    _gotoNext = 7660752i64;
                } else if (__value__ == (7660469i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3216"
                    if ((_n >= _cutoff_127 : Bool)) {
                        _gotoNext = 7660484i64;
                    } else {
                        _gotoNext = 7660572i64;
                    };
                } else if (__value__ == (7660484i64)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errrange.errRange;
                    _gotoNext = 7660752i64;
                } else if (__value__ == (7660572i64)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_148 = (_n + (_v_146 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3225"
                    if (((_n1_148 < _n : Bool) || (_n1_148 > _maxVal_128 : Bool) : Bool)) {
                        _gotoNext = 7660640i64;
                    } else {
                        _gotoNext = 7660725i64;
                    };
                } else if (__value__ == (7660640i64)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errrange.errRange;
                    _gotoNext = 7660752i64;
                } else if (__value__ == (7660725i64)) {
                    _n = _n1_148;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3195"
                    _i_145++;
                    _gotoNext = 7660117i64;
                } else if (__value__ == (7660737i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3234"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7660752i64;
                } else if (__value__ == (7660752i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3237"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_144 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_numerror.NumError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstrconvdotstrconv_numerrordotnumerror.__type__stdgodot_internaldotstrconvdotStrconv_numerrordotNumError })) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
