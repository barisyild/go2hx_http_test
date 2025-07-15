package stdgo._internal.net.http.httptrace;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(stdgo._internal.net.http.httptrace.Httptrace_gotconninfo_static_extension.GotConnInfo_static_extension) @:using(stdgo._internal.net.http.httptrace.Httptrace_gotconninfo_static_extension.GotConnInfo_static_extension) class GotConnInfo {
    public var conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public var reused : Bool = false;
    public var wasIdle : Bool = false;
    public var idleTime : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public function new(?conn:stdgo._internal.net.Net_conn.Conn, ?reused:Bool, ?wasIdle:Bool, ?idleTime:stdgo._internal.time.Time_duration.Duration) {
        if (conn != null) this.conn = conn;
        if (reused != null) this.reused = reused;
        if (wasIdle != null) this.wasIdle = wasIdle;
        if (idleTime != null) this.idleTime = idleTime;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "conn", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn }, optional : false }, { name : "reused", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "wasIdle", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "idleTime", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false }])));
    public function __copy__() {
        return new GotConnInfo(conn, reused, wasIdle, idleTime);
    }
}
