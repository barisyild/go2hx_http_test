package stdgo._internal.os.exec;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
@:keep @:allow(stdgo._internal.os.exec.Exec.Cmd_asInterface) class Cmd_static_extension {
    @:keep
    @:tdfield
    static public function environ_( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Slice<stdgo.GoString> {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: environ_";
    }
    @:keep
    @:tdfield
    static public function _environ( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: _environ";
    }
    @:keep
    @:tdfield
    static public function stderrPipe( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: stderrPipe";
    }
    @:keep
    @:tdfield
    static public function stdoutPipe( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: stdoutPipe";
    }
    @:keep
    @:tdfield
    static public function stdinPipe( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo._internal.io.Io_writecloser.WriteCloser; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: stdinPipe";
    }
    @:keep
    @:tdfield
    static public function combinedOutput( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: combinedOutput";
    }
    @:keep
    @:tdfield
    static public function output( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: output";
    }
    @:keep
    @:tdfield
    static public function _awaitGoroutines( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>, _timer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: _awaitGoroutines";
    }
    @:keep
    @:tdfield
    static public function wait_( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: wait_";
    }
    @:keep
    @:tdfield
    static public function _watchCtx( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>, _resultc:stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
    }
    @:keep
    @:tdfield
    static public function start( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: start";
    }
    @:keep
    @:tdfield
    static public function run( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: run";
    }
    @:keep
    @:tdfield
    static public function _writerDescriptor( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: _writerDescriptor";
    }
    @:keep
    @:tdfield
    static public function _childStderr( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>, _childStdout:stdgo.Ref<stdgo._internal.os.Os_file.File>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: _childStderr";
    }
    @:keep
    @:tdfield
    static public function _childStdout( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: _childStdout";
    }
    @:keep
    @:tdfield
    static public function _childStdin( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: _childStdin";
    }
    @:keep
    @:tdfield
    static public function _argv( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Slice<stdgo.GoString> {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: _argv";
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = _c;
        trace("funclit");
        throw "not implemented: string";
    }
}
