package stdgo._internal.internal.singleflight;
@:structInit @:using(stdgo._internal.internal.singleflight.Singleflight_t_call_static_extension.T_call_static_extension) @:using(stdgo._internal.internal.singleflight.Singleflight_t_call_static_extension.T_call_static_extension) class T_call {
    public var _wg : stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
    public var _val : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _dups : stdgo.GoInt = 0;
    public var _chans : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>> = (null : stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>>);
    public function new(?_wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup, ?_val:stdgo.AnyInterface, ?_err:stdgo.Error, ?_dups:stdgo.GoInt, ?_chans:stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result>>) {
        if (_wg != null) this._wg = _wg;
        if (_val != null) this._val = _val;
        if (_err != null) this._err = _err;
        if (_dups != null) this._dups = _dups;
        if (_chans != null) this._chans = _chans;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_wg", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_waitgroupdotwaitgroup.__type__stdgodot_internaldotsyncdotSync_waitgroupdotWaitGroup }, optional : false }, { name : "_val", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_dups", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_chans", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotsingleflightdotsingleflight_resultdotresult.__type__stdgodot_internaldotinternaldotsingleflightdotSingleflight_resultdotResult }) }) }, optional : false }])));
    public function __copy__() {
        return new T_call(_wg, _val, _err, _dups, _chans);
    }
}
