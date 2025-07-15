package _internal.githubdotcom.dlclark.regexp2;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.log.Log;
import _internal.githubdotcom.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.unicode.Unicode;
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.Regexp2_group_static_extension.Group_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.Regexp2_group_static_extension.Group_static_extension) class Group {
    @:embedded
    public var capture : _internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture = ({} : _internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture);
    public var name : stdgo.GoString = "";
    public var captures : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture> = (null : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture>);
    public function new(?capture:_internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture, ?name:stdgo.GoString, ?captures:stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture>) {
        if (capture != null) this.capture = capture;
        if (name != null) this.name = name;
        if (captures != null) this.captures = captures;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "capture", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_capturedotcapture.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_capturedotCapture }, optional : false }, { name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "captures", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_capturedotcapture.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_capturedotCapture }) }, optional : false }])));
    public var runes(get, never) : () -> stdgo.Slice<stdgo.GoInt32>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_runes():() -> stdgo.Slice<stdgo.GoInt32> return @:check32 this.capture.runes;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check32 this.capture.string;
    public function __copy__() {
        return new Group(capture, name, captures);
    }
}
