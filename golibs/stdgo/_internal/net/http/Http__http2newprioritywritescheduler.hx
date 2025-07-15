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
function _http2NewPriorityWriteScheduler(_cfg:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywriteschedulerconfig.T_http2PriorityWriteSchedulerConfig>):stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler {
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10919"
        if (({
            final value = _cfg;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _cfg = (stdgo.Go.setRef(({ maxClosedNodesInTree : (10 : stdgo.GoInt), maxIdleNodesInTree : (10 : stdgo.GoInt), throttleOutOfOrderWrites : false } : stdgo._internal.net.http.Http_t_http2prioritywriteschedulerconfig.T_http2PriorityWriteSchedulerConfig), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritywriteschedulerconfigdott_http2prioritywriteschedulerconfig.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritywriteschedulerconfigdotT_http2PriorityWriteSchedulerConfig })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywriteschedulerconfig.T_http2PriorityWriteSchedulerConfig>);
        };
        var _ws = (stdgo.Go.setRef(({ _nodes : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>), _maxClosedNodesInTree : (@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxClosedNodesInTree, _maxIdleNodesInTree : (@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxIdleNodesInTree, _enableWriteThrottle : (@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).throttleOutOfOrderWrites } : stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritywriteschedulerdott_http2prioritywritescheduler.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritywriteschedulerdotT_http2priorityWriteScheduler })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>);
        (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes[(0u32 : stdgo.GoUInt32)] = (stdgo.Go.setRef((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10936"
        if ((@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).throttleOutOfOrderWrites) {
            (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeThrottleLimit = (1024 : stdgo.GoInt32);
        } else {
            (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeThrottleLimit = (2147483647 : stdgo.GoInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10941"
        return stdgo.Go.asInterface(_ws, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritywriteschedulerdott_http2prioritywritescheduler.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritywriteschedulerdotT_http2priorityWriteScheduler }));
    }
