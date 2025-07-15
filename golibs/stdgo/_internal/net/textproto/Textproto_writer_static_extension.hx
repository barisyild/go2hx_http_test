package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function _closeDot( _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L50"
        if (({
            final value = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L51"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot.close();
        };
    }
    @:keep
    @:tdfield
    static public function dotWriter( _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>):stdgo._internal.io.Io_writecloser.WriteCloser {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L44"
        _w._closeDot();
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot = (stdgo.Go.setRef(({ _w : _w } : stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_t_dotwriterdott_dotwriter.__type__stdgodot_internaldotnetdottextprotodotTextproto_t_dotwriterdotT_dotWriter })) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L46"
        return stdgo.Go.asInterface((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_t_dotwriterdott_dotwriter.__type__stdgodot_internaldotnetdottextprotodotTextproto_t_dotwriterdotT_dotWriter }));
    }
    @:keep
    @:tdfield
    static public function printfLine( _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L30"
        _w._closeDot();
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L31"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__()).w, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })), _format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L32"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__()).w.write(stdgo._internal.net.textproto.Textproto__crnl._crnl);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/writer.go#L33"
        return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__()).w.flush();
    }
}
