package stdgo._internal.sync;
function newCond(_l:stdgo._internal.sync.Sync_locker.Locker):stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> {
        return { l : _l };
    }
