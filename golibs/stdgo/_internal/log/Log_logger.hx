package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.log.Log_logger_static_extension.Logger_static_extension) @:using(stdgo._internal.log.Log_logger_static_extension.Logger_static_extension) class Logger {
    public var _outMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _out : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _prefix : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.GoString> = ({} : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.GoString>);
    public var _flag : stdgo._internal.sync.atomic_.Atomic__int32.Int32 = ({} : stdgo._internal.sync.atomic_.Atomic__int32.Int32);
    public var _isDiscard : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public function new(?_outMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_out:stdgo._internal.io.Io_writer.Writer, ?_prefix:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.GoString>, ?_flag:stdgo._internal.sync.atomic_.Atomic__int32.Int32, ?_isDiscard:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_) {
        if (_outMu != null) this._outMu = _outMu;
        if (_out != null) this._out = _out;
        if (_prefix != null) this._prefix = _prefix;
        if (_flag != null) this._flag = _flag;
        if (_isDiscard != null) this._isDiscard = _isDiscard;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_outMu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_out", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }, { name : "_prefix", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__pointer_dotpointer_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__pointer_dotPointer_ }, optional : false }, { name : "_flag", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__int32dotint32.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__int32dotInt32 }, optional : false }, { name : "_isDiscard", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__bool_dotbool_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__bool_dotBool_ }, optional : false }])));
    public function __copy__() {
        return new Logger(_outMu, _out, _prefix, _flag, _isDiscard);
    }
}
