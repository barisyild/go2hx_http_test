package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_cond_static_extension.Cond_static_extension) @:using(stdgo._internal.sync.Sync_cond_static_extension.Cond_static_extension) class Cond {
    public var _noCopy : stdgo._internal.sync.Sync_t_nocopy.T_noCopy = ({} : stdgo._internal.sync.Sync_t_nocopy.T_noCopy);
    public var l : stdgo._internal.sync.Sync_locker.Locker = (null : stdgo._internal.sync.Sync_locker.Locker);
    public var _notify : stdgo._internal.sync.Sync_t_notifylist.T_notifyList = ({} : stdgo._internal.sync.Sync_t_notifylist.T_notifyList);
    public var _checker : stdgo._internal.sync.Sync_t_copychecker.T_copyChecker = (new stdgo.GoUIntptr(0) : stdgo._internal.sync.Sync_t_copychecker.T_copyChecker);
    @:local
    var cond = #if target.threaded new sys.thread.Condition() #else null #end;
    public function new(?_noCopy:stdgo._internal.sync.Sync_t_nocopy.T_noCopy, ?l:stdgo._internal.sync.Sync_locker.Locker, ?_notify:stdgo._internal.sync.Sync_t_notifylist.T_notifyList, ?_checker:stdgo._internal.sync.Sync_t_copychecker.T_copyChecker, ?cond) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (l != null) this.l = l;
        if (_notify != null) this._notify = _notify;
        if (_checker != null) this._checker = _checker;
        if (cond != null) this.cond = cond;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_noCopy", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_t_nocopydott_nocopy.__type__stdgodot_internaldotsyncdotSync_t_nocopydotT_noCopy }, optional : false }, { name : "l", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_lockerdotlocker.__type__stdgodot_internaldotsyncdotSync_lockerdotLocker }, optional : false }, { name : "_notify", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_t_notifylistdott_notifylist.__type__stdgodot_internaldotsyncdotSync_t_notifylistdotT_notifyList }, optional : false }, { name : "_checker", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_t_copycheckerdott_copychecker.__type__stdgodot_internaldotsyncdotSync_t_copycheckerdotT_copyChecker }, optional : false }])));
    public function __copy__() {
        return new Cond(_noCopy, l, _notify, _checker, cond);
    }
}
