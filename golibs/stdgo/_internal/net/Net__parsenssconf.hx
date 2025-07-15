package stdgo._internal.net;
import stdgo._internal.net.netip.Netip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.os.Os;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.internal.poll.Poll;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.Io;
import stdgo._internal.sync.atomic_.Atomic_;
import _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage;
import stdgo._internal.runtime.Runtime;
function _parseNSSConf(_f:stdgo.Ref<stdgo._internal.net.Net_t_file.T_file>):stdgo.Ref<stdgo._internal.net.Net_t_nssconf.T_nssConf> {
        var _conf = (stdgo.Go.setRef(({} : stdgo._internal.net.Net_t_nssconf.T_nssConf), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_nssconfdott_nssconf.__type__stdgodot_internaldotnetdotNet_t_nssconfdotT_nssConf })) : stdgo.Ref<stdgo._internal.net.Net_t_nssconf.T_nssConf>);
        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L167"
        {
            var __tmp__ = _f._readLine(), _line:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            while (_ok) {
                _line = stdgo._internal.net.Net__trimspace._trimSpace(stdgo._internal.net.Net__removecomment._removeComment(_line.__copy__()).__copy__()).__copy__();
//"file:///Users/o/.go/go1.21.3/src/net/nss.go#L169"
                if ((_line.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L170"
                    {
                        {
                            var __tmp__ = _f._readLine();
                            _line = @:tmpset0 __tmp__._0?.__copy__();
                            _ok = @:tmpset0 __tmp__._1;
                        };
                        continue;
                    };
                };
var _colon = @:assignType (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_line.__copy__(), (58 : stdgo.GoUInt8)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/net/nss.go#L173"
                if (_colon == ((-1 : stdgo.GoInt))) {
                    (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.errors.Errors_new_.new_(("no colon on line" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L175"
                    return _conf;
                };
var _db = @:assignType (stdgo._internal.net.Net__trimspace._trimSpace((_line.__slice__(0, _colon) : stdgo.GoString).__copy__()).__copy__() : stdgo.GoString);
var _srcs = @:assignType ((_line.__slice__((_colon + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() : stdgo.GoString);
//"file:///Users/o/.go/go1.21.3/src/net/nss.go#L179"
                while (true) {
                    _srcs = stdgo._internal.net.Net__trimspace._trimSpace(_srcs?.__copy__())?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L181"
                    if ((_srcs.length) == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L182"
                        break;
                    };
                    var _sp = @:assignType (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_srcs?.__copy__(), (32 : stdgo.GoUInt8)) : stdgo.GoInt);
                    var _src:stdgo.GoString = ("" : stdgo.GoString);
                    //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L186"
                    if (_sp == ((-1 : stdgo.GoInt))) {
                        _src = _srcs?.__copy__();
                        _srcs = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    } else {
                        _src = (_srcs.__slice__(0, _sp) : stdgo.GoString)?.__copy__();
                        _srcs = stdgo._internal.net.Net__trimspace._trimSpace((_srcs.__slice__((_sp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__();
                    };
                    var _criteria:stdgo.Slice<stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion> = (null : stdgo.Slice<stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion>);
                    //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L195"
                    if ((((_srcs.length) > (0 : stdgo.GoInt) : Bool) && (_srcs[(0 : stdgo.GoInt)] == (91 : stdgo.GoUInt8)) : Bool)) {
                        var _bclose = @:assignType (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_srcs?.__copy__(), (93 : stdgo.GoUInt8)) : stdgo.GoInt);
                        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L197"
                        if (_bclose == ((-1 : stdgo.GoInt))) {
                            (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.errors.Errors_new_.new_(("unclosed criterion bracket" : stdgo.GoString));
                            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L199"
                            return _conf;
                        };
                        var _err:stdgo.Error = (null : stdgo.Error);
                        {
                            var __tmp__ = stdgo._internal.net.Net__parsecriteria._parseCriteria((_srcs.__slice__((1 : stdgo.GoInt), _bclose) : stdgo.GoString)?.__copy__());
                            _criteria = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L203"
                        if (_err != null) {
                            (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.errors.Errors_new_.new_((("invalid criteria: " : stdgo.GoString) + (_srcs.__slice__((1 : stdgo.GoInt), _bclose) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L205"
                            return _conf;
                        };
                        _srcs = (_srcs.__slice__((_bclose + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L209"
                    if ((@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sources == null) {
                        (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sources = (({
                            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.net.Net_t_nsssource.T_nssSource>>();
                            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.net.Net_t_nsssource.T_nssSource>);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.net.Net_t_nsssource.T_nssSource>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.net.Net_t_nsssource.T_nssSource>>);
                    };
                    (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sources[_db] = (((@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sources[_db] ?? (null : stdgo.Slice<stdgo._internal.net.Net_t_nsssource.T_nssSource>)).__append__(({ _source : _src?.__copy__(), _criteria : _criteria } : stdgo._internal.net.Net_t_nsssource.T_nssSource)) : stdgo.Slice<stdgo._internal.net.Net_t_nsssource.T_nssSource>);
                };
                {
                    var __tmp__ = _f._readLine();
                    _line = @:tmpset0 __tmp__._0?.__copy__();
                    _ok = @:tmpset0 __tmp__._1;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L218"
        return _conf;
    }
