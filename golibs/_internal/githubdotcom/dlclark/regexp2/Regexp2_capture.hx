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
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.Regexp2_capture_static_extension.Capture_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.Regexp2_capture_static_extension.Capture_static_extension) class Capture {
    public var _text : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var index : stdgo.GoInt = 0;
    public var length_ : stdgo.GoInt = 0;
    public function new(?_text:stdgo.Slice<stdgo.GoInt32>, ?index:stdgo.GoInt, ?length_:stdgo.GoInt) {
        if (_text != null) this._text = _text;
        if (index != null) this.index = index;
        if (length_ != null) this.length_ = length_;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_text", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false }, { name : "index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "length_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new Capture(_text, index, length_);
    }
}
