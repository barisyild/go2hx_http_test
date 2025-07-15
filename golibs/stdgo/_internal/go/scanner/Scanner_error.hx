package stdgo._internal.go.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.go.scanner.Scanner_error_static_extension.Error_static_extension) @:using(stdgo._internal.go.scanner.Scanner_error_static_extension.Error_static_extension) class Error {
    public var pos : stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
    public var msg : stdgo.GoString = "";
    public function new(?pos:stdgo._internal.go.token.Token_position.Position, ?msg:stdgo.GoString) {
        if (pos != null) this.pos = pos;
        if (msg != null) this.msg = msg;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "pos", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_positiondotposition.__type__stdgodot_internaldotgodottokendotToken_positiondotPosition }, optional : false }, { name : "msg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new Error(pos, msg);
    }
}
