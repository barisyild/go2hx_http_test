package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
var _tracing : _internal.runtime.trace_.Trace__t__struct_13.T__struct_13 = ({ mutex : ({} : stdgo._internal.sync.Sync_mutex.Mutex), _enabled : ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_) } : _internal.runtime.trace_.Trace__t__struct_13.T__struct_13);
