package stdgo._internal.internal.poll;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
@:keep @:allow(stdgo._internal.internal.poll.Poll.FD_asInterface) class FD_static_extension {
    @:keep
    @:tdfield
    static public function seek( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: seek";
    }
    @:keep
    @:tdfield
    static public function readDirent( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: readDirent";
    }
    @:keep
    @:tdfield
    static public function fchdir( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: fchdir";
    }
    @:keep
    @:tdfield
    static public function rawWrite( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: rawWrite";
    }
    @:keep
    @:tdfield
    static public function rawRead( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: rawRead";
    }
    @:keep
    @:tdfield
    static public function writeOnce( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: writeOnce";
    }
    @:keep
    @:tdfield
    static public function waitWrite( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: waitWrite";
    }
    @:keep
    @:tdfield
    static public function dup( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: dup";
    }
    @:keep
    @:tdfield
    static public function fstat( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _s:stdgo.Ref<stdgo._internal.syscall.Syscall_stat_t.Stat_t>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: fstat";
    }
    @:keep
    @:tdfield
    static public function fchmod( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _mode:stdgo.GoUInt32):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: fchmod";
    }
    @:keep
    @:tdfield
    static public function accept( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.GoString; var _3 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: accept";
    }
    @:keep
    @:tdfield
    static public function writeMsgInet6( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: writeMsgInet6";
    }
    @:keep
    @:tdfield
    static public function writeMsgInet4( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: writeMsgInet4";
    }
    @:keep
    @:tdfield
    static public function writeMsg( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: writeMsg";
    }
    @:keep
    @:tdfield
    static public function writeTo( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: writeTo";
    }
    @:keep
    @:tdfield
    static public function writeToInet6( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: writeToInet6";
    }
    @:keep
    @:tdfield
    static public function writeToInet4( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: writeToInet4";
    }
    @:keep
    @:tdfield
    static public function pwrite( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: pwrite";
    }
    @:keep
    @:tdfield
    static public function write( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: write";
    }
    @:keep
    @:tdfield
    static public function readMsgInet6( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _sa6:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: readMsgInet6";
    }
    @:keep
    @:tdfield
    static public function readMsgInet4( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _sa4:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: readMsgInet4";
    }
    @:keep
    @:tdfield
    static public function readMsg( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _4 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: readMsg";
    }
    @:keep
    @:tdfield
    static public function readFromInet6( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _from:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: readFromInet6";
    }
    @:keep
    @:tdfield
    static public function readFromInet4( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _from:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: readFromInet4";
    }
    @:keep
    @:tdfield
    static public function readFrom( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: readFrom";
    }
    @:keep
    @:tdfield
    static public function pread( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: pread";
    }
    @:keep
    @:tdfield
    static public function read( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: read";
    }
    @:keep
    @:tdfield
    static public function setBlocking( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: setBlocking";
    }
    @:keep
    @:tdfield
    static public function close( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: close";
    }
    @:keep
    @:tdfield
    static public function _destroy( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: _destroy";
    }
    @:keep
    @:tdfield
    static public function init( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _net:stdgo.GoString, _pollable:Bool):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: init";
    }
    @:keep
    @:tdfield
    static public function rawControl( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _f:stdgo.GoUIntptr -> Void):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: rawControl";
    }
    @:keep
    @:tdfield
    static public function ftruncate( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _size:stdgo.GoInt64):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: ftruncate";
    }
    @:keep
    @:tdfield
    static public function fchown( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: fchown";
    }
    @:keep
    @:tdfield
    static public function shutdown( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _how:stdgo.GoInt):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: shutdown";
    }
    @:keep
    @:tdfield
    static public function _eofError( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _n:stdgo.GoInt, _err:stdgo.Error):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: _eofError";
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: setWriteDeadline";
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: setReadDeadline";
    }
    @:keep
    @:tdfield
    static public function setDeadline( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: setDeadline";
    }
    @:keep
    @:tdfield
    static public function _writeUnlock( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):Void {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
    }
    @:keep
    @:tdfield
    static public function _writeLock( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: _writeLock";
    }
    @:keep
    @:tdfield
    static public function _readUnlock( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):Void {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
    }
    @:keep
    @:tdfield
    static public function _readLock( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: _readLock";
    }
    @:keep
    @:tdfield
    static public function _decref( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: _decref";
    }
    @:keep
    @:tdfield
    static public function _incref( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: _incref";
    }
    @:keep
    @:tdfield
    static public function fsync( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> = _fd;
        trace("funclit");
        throw "not implemented: fsync";
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _init( __self__:stdgo._internal.internal.poll.Poll_fd.FD):Void return @:_5 __self__._init();
}
