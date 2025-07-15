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
var _sniffSignatures : stdgo.Slice<stdgo._internal.net.http.Http_t_sniffsig.T_sniffSig> = (new stdgo.Slice<stdgo._internal.net.http.Http_t_sniffsig.T_sniffSig>(51, 51, ...[
stdgo.Go.asInterface(((("<!DOCTYPE HTML" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<HTML" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<HEAD" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<SCRIPT" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<IFRAME" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<H1" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<DIV" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<FONT" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<TABLE" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<A" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<STYLE" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<TITLE" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<B" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<BODY" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<BR" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<P" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface(((("<!--" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_htmlsigdott_htmlsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_htmlsigdotT_htmlSig),
stdgo.Go.asInterface((stdgo.Go.setRef(({ _mask : ((stdgo.Go.str(255, 255, 255, 255, 255) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _pat : ((("<?xml" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _skipWS : true, _ct : ("text/xml; charset=utf-8" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((("%PDF-" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("application/pdf" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((("%!PS-Adobe-" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("application/postscript" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef(({ _mask : ((stdgo.Go.str(255, 255, 0, 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _pat : ((stdgo.Go.str(254, 255, 0, 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _ct : ("text/plain; charset=utf-16be" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })),
stdgo.Go.asInterface((stdgo.Go.setRef(({ _mask : ((stdgo.Go.str(255, 255, 0, 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _pat : ((stdgo.Go.str(255, 254, 0, 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _ct : ("text/plain; charset=utf-16le" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })),
stdgo.Go.asInterface((stdgo.Go.setRef(({ _mask : ((stdgo.Go.str(255, 255, 255, 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _pat : ((stdgo.Go.str("\ufeff", 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _ct : ("text/plain; charset=utf-8" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((stdgo.Go.str(0, 0, 1, 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("image/x-icon" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((stdgo.Go.str(0, 0, 2, 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("image/x-icon" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((("BM" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("image/bmp" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((("GIF87a" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("image/gif" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((("GIF89a" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("image/gif" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef(({ _mask : ((stdgo.Go.str(255,
255,
255,
255,
0,
0,
0,
0,
255,
255,
255,
255,
255,
255) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _pat : ((stdgo.Go.str("RIFF", 0, 0, 0, 0, "WEBPVP") : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _ct : ("image/webp" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((stdgo.Go.str(137, "PNG\r\n", 26, "\n") : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("image/png" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((stdgo.Go.str(255, 216, 255) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("image/jpeg" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef(({ _mask : ((stdgo.Go.str(255,
255,
255,
255,
0,
0,
0,
0,
255,
255,
255,
255) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _pat : ((stdgo.Go.str("FORM", 0, 0, 0, 0, "AIFF") : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _ct : ("audio/aiff" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })),
stdgo.Go.asInterface((stdgo.Go.setRef(({ _mask : ((stdgo.Go.str(255, 255, 255) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _pat : ((("ID3" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _ct : ("audio/mpeg" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })),
stdgo.Go.asInterface((stdgo.Go.setRef(({ _mask : ((stdgo.Go.str(255, 255, 255, 255, 255) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _pat : ((stdgo.Go.str("OggS", 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _ct : ("application/ogg" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })),
stdgo.Go.asInterface((stdgo.Go.setRef(({ _mask : ((stdgo.Go.str(255, 255, 255, 255, 255, 255, 255, 255) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _pat : ((stdgo.Go.str("MThd", 0, 0, 0, 6) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _ct : ("audio/midi" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })),
stdgo.Go.asInterface((stdgo.Go.setRef(({ _mask : ((stdgo.Go.str(255,
255,
255,
255,
0,
0,
0,
0,
255,
255,
255,
255) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _pat : ((stdgo.Go.str("RIFF", 0, 0, 0, 0, "AVI ") : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _ct : ("video/avi" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })),
stdgo.Go.asInterface((stdgo.Go.setRef(({ _mask : ((stdgo.Go.str(255,
255,
255,
255,
0,
0,
0,
0,
255,
255,
255,
255) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _pat : ((stdgo.Go.str("RIFF", 0, 0, 0, 0, "WAVE") : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _ct : ("audio/wave" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })),
stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_mp4sig.T_mp4Sig() : stdgo._internal.net.http.Http_t_mp4sig.T_mp4Sig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_mp4sigdott_mp4sig.__type__stdgodot_internaldotnetdothttpdotHttp_t_mp4sigdotT_mp4Sig),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((stdgo.Go.str(26, "Eߣ") : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("video/webm" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef(({ _pat : ((stdgo.Go.str(0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
"LP") : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _mask : ((stdgo.Go.str(0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
255,
255) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _ct : ("application/vnd.ms-fontobject" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maskedsigdott_maskedsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_maskedsigdotT_maskedSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((stdgo.Go.str(0, 1, 0, 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("font/ttf" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((("OTTO" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("font/otf" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((("ttcf" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("font/collection" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((("wOFF" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("font/woff" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((("wOF2" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("font/woff2" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((stdgo.Go.str(31, 139, "\x08") : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("application/x-gzip" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((stdgo.Go.str("PK", 3, 4) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("application/zip" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((stdgo.Go.str("Rar!", 26, "\x07", 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("application/x-rar-compressed" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((stdgo.Go.str("Rar!", 26, "\x07", 1, 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("application/x-rar-compressed" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_exactsig.T_exactSig(((stdgo.Go.str(0, "asm") : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("application/wasm" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_exactsig.T_exactSig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_exactsig.T_exactSig>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_exactsigdott_exactsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_exactsigdotT_exactSig })),
stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_textsig.T_textSig() : stdgo._internal.net.http.Http_t_textsig.T_textSig), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_textsigdott_textsig.__type__stdgodot_internaldotnetdothttpdotHttp_t_textsigdotT_textSig)]) : stdgo.Slice<stdgo._internal.net.http.Http_t_sniffsig.T_sniffSig>);
