package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_t_poolchainelt_static_extension.T_poolChainElt_static_extension) @:using(stdgo._internal.sync.Sync_t_poolchainelt_static_extension.T_poolChainElt_static_extension) class T_poolChainElt {
    @:embedded
    public var _poolDequeue : stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue = ({} : stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue);
    public var _next : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt> = (null : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>);
    public var _prev : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt> = (null : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>);
    public function new(?_poolDequeue:stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue, ?_next:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>, ?_prev:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>) {
        if (_poolDequeue != null) this._poolDequeue = _poolDequeue;
        if (_next != null) this._next = _next;
        if (_prev != null) this._prev = _prev;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_poolDequeue", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_t_pooldequeuedott_pooldequeue.__type__stdgodot_internaldotsyncdotSync_t_pooldequeuedotT_poolDequeue }, optional : false }, { name : "_next", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_t_poolchaineltdott_poolchainelt.__type__stdgodot_internaldotsyncdotSync_t_poolchaineltdotT_poolChainElt }) }, optional : false }, { name : "_prev", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_t_poolchaineltdott_poolchainelt.__type__stdgodot_internaldotsyncdotSync_t_poolchaineltdotT_poolChainElt }) }, optional : false }])));
    public var _pack(get, never) : (stdgo.GoUInt32, stdgo.GoUInt32) -> stdgo.GoUInt64;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__pack():(stdgo.GoUInt32, stdgo.GoUInt32) -> stdgo.GoUInt64 return @:check32 this._poolDequeue._pack;
    public var _popHead(get, never) : () -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__popHead():() -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check32 this._poolDequeue._popHead;
    public var _popTail(get, never) : () -> { var _0 : stdgo.AnyInterface; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__popTail():() -> { var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:check32 this._poolDequeue._popTail;
    public var _pushHead(get, never) : stdgo.AnyInterface -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__pushHead():stdgo.AnyInterface -> Bool return @:check32 this._poolDequeue._pushHead;
    public var _unpack(get, never) : stdgo.GoUInt64 -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__unpack():stdgo.GoUInt64 -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return @:check32 this._poolDequeue._unpack;
    public function __copy__() {
        return new T_poolChainElt(_poolDequeue, _next, _prev);
    }
}
