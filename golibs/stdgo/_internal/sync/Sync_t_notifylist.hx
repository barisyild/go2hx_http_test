package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_t_notifylist_static_extension.T_notifyList_static_extension) @:using(stdgo._internal.sync.Sync_t_notifylist_static_extension.T_notifyList_static_extension) class T_notifyList {
    public var _wait : stdgo.GoUInt32 = 0;
    public var _notify : stdgo.GoUInt32 = 0;
    public var _lock : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _head : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _tail : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_wait:stdgo.GoUInt32, ?_notify:stdgo.GoUInt32, ?_lock:stdgo.GoUIntptr, ?_head:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_tail:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (_wait != null) this._wait = _wait;
        if (_notify != null) this._notify = _notify;
        if (_lock != null) this._lock = _lock;
        if (_head != null) this._head = _head;
        if (_tail != null) this._tail = _tail;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_wait", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_notify", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_lock", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "_head", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }, optional : false }, { name : "_tail", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }, optional : false }])));
    public function __copy__() {
        return new T_notifyList(_wait, _notify, _lock, _head, _tail);
    }
}
