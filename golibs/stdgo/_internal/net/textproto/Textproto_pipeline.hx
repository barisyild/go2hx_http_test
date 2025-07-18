package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_pipeline_static_extension.Pipeline_static_extension) @:using(stdgo._internal.net.textproto.Textproto_pipeline_static_extension.Pipeline_static_extension) class Pipeline {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _id : stdgo.GoUInt = 0;
    public var _request : stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer = ({} : stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer);
    public var _response : stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer = ({} : stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer);
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_id:stdgo.GoUInt, ?_request:stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer, ?_response:stdgo._internal.net.textproto.Textproto_t_sequencer.T_sequencer) {
        if (_mu != null) this._mu = _mu;
        if (_id != null) this._id = _id;
        if (_request != null) this._request = _request;
        if (_response != null) this._response = _response;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint_kind) }, optional : false }, { name : "_request", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_t_sequencerdott_sequencer.__type__stdgodot_internaldotnetdottextprotodotTextproto_t_sequencerdotT_sequencer }, optional : false }, { name : "_response", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_t_sequencerdott_sequencer.__type__stdgodot_internaldotnetdottextprotodotTextproto_t_sequencerdotT_sequencer }, optional : false }])));
    public function __copy__() {
        return new Pipeline(_mu, _id, _request, _response);
    }
}
