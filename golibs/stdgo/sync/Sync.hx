package stdgo.sync;
typedef Locker = stdgo._internal.sync.Sync_locker.Locker;
typedef Cond = stdgo._internal.sync.Sync_cond.Cond;
typedef Map_ = stdgo._internal.sync.Sync_map_.Map_;
typedef Mutex = stdgo._internal.sync.Sync_mutex.Mutex;
typedef Once = stdgo._internal.sync.Sync_once.Once;
typedef Pool = stdgo._internal.sync.Sync_pool.Pool;
typedef RWMutex = stdgo._internal.sync.Sync_rwmutex.RWMutex;
typedef WaitGroup = stdgo._internal.sync.Sync_waitgroup.WaitGroup;
typedef CondPointer = stdgo._internal.sync.Sync_condpointer.CondPointer;
typedef Map_Pointer = stdgo._internal.sync.Sync_map_pointer.Map_Pointer;
typedef MutexPointer = stdgo._internal.sync.Sync_mutexpointer.MutexPointer;
typedef OncePointer = stdgo._internal.sync.Sync_oncepointer.OncePointer;
typedef PoolPointer = stdgo._internal.sync.Sync_poolpointer.PoolPointer;
typedef RWMutexPointer = stdgo._internal.sync.Sync_rwmutexpointer.RWMutexPointer;
typedef WaitGroupPointer = stdgo._internal.sync.Sync_waitgrouppointer.WaitGroupPointer;
typedef CondPointerPointer = stdgo._internal.sync.Sync_condpointerpointer.CondPointerPointer;
typedef Map_PointerPointer = stdgo._internal.sync.Sync_map_pointerpointer.Map_PointerPointer;
typedef MutexPointerPointer = stdgo._internal.sync.Sync_mutexpointerpointer.MutexPointerPointer;
typedef OncePointerPointer = stdgo._internal.sync.Sync_oncepointerpointer.OncePointerPointer;
typedef PoolPointerPointer = stdgo._internal.sync.Sync_poolpointerpointer.PoolPointerPointer;
typedef RWMutexPointerPointer = stdgo._internal.sync.Sync_rwmutexpointerpointer.RWMutexPointerPointer;
typedef WaitGroupPointerPointer = stdgo._internal.sync.Sync_waitgrouppointerpointer.WaitGroupPointerPointer;
/**
    * Package sync provides basic synchronization primitives such as mutual
    * exclusion locks. Other than the Once and WaitGroup types, most are intended
    * for use by low-level library routines. Higher-level synchronization is
    * better done via channels and communication.
    * 
    * Values containing the types defined in this package should not be copied.
**/
class Sync {
    /**
        * NewCond returns a new Cond with Locker l.
    **/
    static public inline function newCond(_l:Locker):stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> return stdgo._internal.sync.Sync_newcond.newCond(_l);
    /**
        * OnceFunc returns a function that invokes f only once. The returned function
        * may be called concurrently.
        * 
        * If f panics, the returned function will panic with the same value on every call.
    **/
    static public inline function onceFunc(_f:() -> Void):() -> Void return stdgo._internal.sync.Sync_oncefunc.onceFunc(_f);
    /**
        * OnceValue returns a function that invokes f only once and returns the value
        * returned by f. The returned function may be called concurrently.
        * 
        * If f panics, the returned function will panic with the same value on every call.
    **/
    static public inline extern overload function onceValue<T_>(_f:() -> T_):() -> T_ return stdgo._internal.sync.Sync_oncevalue.onceValue(_f);
    /**
        * OnceValues returns a function that invokes f only once and returns the values
        * returned by f. The returned function may be called concurrently.
        * 
        * If f panics, the returned function will panic with the same value on every call.
    **/
    static public inline extern overload function onceValues<T1, T2>(_f:() -> stdgo.Tuple<T1, T2>):() -> { var _0 : T1; var _1 : T2; } return stdgo._internal.sync.Sync_oncevalues.onceValues(_f);
}
