package stdgo._internal.net.http.httptrace;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
function withClientTrace(_ctx:stdgo._internal.context.Context_context.Context, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):stdgo._internal.context.Context_context.Context {
        //"file:///Users/o/.go/go1.21.3/src/net/http/httptrace/trace.go#L35"
        if (({
            final value = _trace;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/httptrace/trace.go#L36"
            throw new stdgo.AnyInterface(("nil trace" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _old = stdgo._internal.net.http.httptrace.Httptrace_contextclienttrace.contextClientTrace(_ctx);
        //"file:///Users/o/.go/go1.21.3/src/net/http/httptrace/trace.go#L39"
        _trace._compose(_old);
        _ctx = stdgo._internal.context.Context_withvalue.withValue(_ctx, new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.net.http.httptrace.Httptrace_t_clienteventcontextkey.T_clientEventContextKey() : stdgo._internal.net.http.httptrace.Httptrace_t_clienteventcontextkey.T_clientEventContextKey), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttptracedothttptrace_t_clienteventcontextkeydott_clienteventcontextkey.__type__stdgodot_internaldotnetdothttpdothttptracedotHttptrace_t_clienteventcontextkeydotT_clientEventContextKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttptracedothttptrace_t_clienteventcontextkeydott_clienteventcontextkey.__type__stdgodot_internaldotnetdothttpdothttptracedotHttptrace_t_clienteventcontextkeydotT_clientEventContextKey)), new stdgo.AnyInterface(stdgo.Go.asInterface(_trace, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttptracedothttptrace_clienttracedotclienttrace.__type__stdgodot_internaldotnetdothttpdothttptracedotHttptrace_clienttracedotClientTrace), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttptracedothttptrace_clienttracedotclienttrace.__type__stdgodot_internaldotnetdothttpdothttptracedotHttptrace_clienttracedotClientTrace }))));
        //"file:///Users/o/.go/go1.21.3/src/net/http/httptrace/trace.go#L42"
        if (_trace._hasNetHooks()) {
            var _nt = (stdgo.Go.setRef(({ connectStart : (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).connectStart, connectDone : (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).connectDone } : stdgo._internal.internal.nettrace.Nettrace_trace.Trace), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_tracedottrace.__type__stdgodot_internaldotinternaldotnettracedotNettrace_tracedotTrace })) : stdgo.Ref<stdgo._internal.internal.nettrace.Nettrace_trace.Trace>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/httptrace/trace.go#L47"
            if ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSStart != null) {
                (@:checkr _nt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSStart = function(_name:stdgo.GoString):Void {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/httptrace/trace.go#L49"
                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSStart(({ host : _name?.__copy__() } : stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo.DNSStartInfo));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/httptrace/trace.go#L52"
            if ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSDone != null) {
                (@:checkr _nt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSDone = function(_netIPs:stdgo.Slice<stdgo.AnyInterface>, _coalesced:Bool, _err:stdgo.Error):Void {
                    var _addrs = (new stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>((_netIPs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_netIPs.length : stdgo.GoInt).toBasic() > 0 ? (_netIPs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.Net_ipaddr.IPAddr)]) : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/httptrace/trace.go#L55"
                    if (_netIPs != null) for (_i => _ip in _netIPs) {
                        _addrs[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert(_ip, _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr) : stdgo._internal.net.Net_ipaddr.IPAddr)?.__copy__();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/httptrace/trace.go#L58"
                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSDone(({ addrs : _addrs, coalesced : _coalesced, err : _err } : stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo.DNSDoneInfo));
                };
            };
            _ctx = stdgo._internal.context.Context_withvalue.withValue(_ctx, new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.internal.nettrace.Nettrace_tracekey.TraceKey() : stdgo._internal.internal.nettrace.Nettrace_tracekey.TraceKey), _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_tracekeydottracekey.__type__stdgodot_internaldotinternaldotnettracedotNettrace_tracekeydotTraceKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_tracekeydottracekey.__type__stdgodot_internaldotinternaldotnettracedotNettrace_tracekeydotTraceKey)), new stdgo.AnyInterface(stdgo.Go.asInterface(_nt, _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_tracedottrace.__type__stdgodot_internaldotinternaldotnettracedotNettrace_tracedotTrace), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_tracedottrace.__type__stdgodot_internaldotinternaldotnettracedotNettrace_tracedotTrace }))));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/httptrace/trace.go#L67"
        return _ctx;
    }
