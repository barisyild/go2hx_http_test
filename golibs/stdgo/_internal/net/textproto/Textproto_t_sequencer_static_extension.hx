package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.T_sequencer_asInterface) class T_sequencer_static_extension {
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer>, _id:stdgo.GoUInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L100"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L101"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id != (_id)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L102"
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L103"
            throw new stdgo.AnyInterface(("out of sync" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L105"
        _id++;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id = _id;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L107"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wait == null) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wait = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>>();
                x.__defaultValue__ = () -> (null : stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>>) : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>>);
        };
        var __tmp__ = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wait != null && (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wait.__exists__(_id) ? { _0 : (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wait[_id], _1 : true } : { _0 : (null : stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>), _1 : false }), _c:stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L111"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L112"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wait != null) (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wait.__remove__(_id);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L114"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L115"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L116"
            if (_c != null) _c.__close__();
        };
    }
    @:keep
    @:tdfield
    static public function start( _s:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer>, _id:stdgo.GoUInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L82"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L83"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id == (_id)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L84"
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L85"
            return;
        };
        var _c = (new stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>(0, () -> ({  } : stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21)) : stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L88"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wait == null) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wait = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>>();
                x.__defaultValue__ = () -> (null : stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>>) : stdgo.GoMap<stdgo.GoUInt, stdgo.Chan<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>>);
        };
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wait[_id] = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L92"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/pipeline.go#L93"
        _c.__get__();
    }
}
