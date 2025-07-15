package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Pipeline_asInterface) class Pipeline_static_extension {
    @:keep
    @:tdfield
    static public function endResponse( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L65"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._response.end(_id);
    }
    @:keep
    @:tdfield
    static public function startResponse( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L59"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._response.start(_id);
    }
    @:keep
    @:tdfield
    static public function endRequest( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L53"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._request.end(_id);
    }
    @:keep
    @:tdfield
    static public function startRequest( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L47"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._request.start(_id);
    }
    @:keep
    @:tdfield
    static public function next( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline>):stdgo.GoUInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_pipeline.Pipeline> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L37"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        var _id = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L39"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id++;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L40"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L41"
        return _id;
    }
}
