package _internal.githubdotcom.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax.AnchorLoc_asInterface) class AnchorLoc_static_extension {
    @:keep
    @:tdfield
    static public function string( _anchors:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc):stdgo.GoString {
        @:recv var _anchors:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc = _anchors;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L866"
        if ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L867"
            _buf.writeString((", Beginning" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L869"
        if ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L870"
            _buf.writeString((", Start" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L872"
        if ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (2 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L873"
            _buf.writeString((", Bol" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L875"
        if ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L876"
            _buf.writeString((", Boundary" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L878"
        if ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (128 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L879"
            _buf.writeString((", ECMABoundary" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L881"
        if ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (8 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L882"
            _buf.writeString((", Eol" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L884"
        if ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L885"
            _buf.writeString((", End" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L887"
        if ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L888"
            _buf.writeString((", EndZ" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L892"
        if ((_buf.len() >= (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L893"
            return ((_buf.string() : stdgo.GoString).__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L895"
        return ("None" : stdgo.GoString);
    }
}
