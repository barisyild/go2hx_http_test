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
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax.T_regexNode_asInterface) class T_regexNode_static_extension {
    @:keep
    @:tdfield
    static public function _dump( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.GoString {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _stack:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var curNode = _n;
        var curChild = @:assignType (0 : stdgo.GoInt);
        var _buf = stdgo._internal.bytes.Bytes_newbufferstring.newBufferString(curNode._description()?.__copy__());
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L628"
        _buf.writeRune((10 : stdgo.GoInt32));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L630"
        while (true) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L631"
            if ((((@:checkr curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children != null) && (curChild < ((@:checkr curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) : Bool) : Bool)) {
                _stack = (_stack.__append__((curChild + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                curNode = (@:checkr curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(curChild : stdgo.GoInt)];
                curChild = (0 : stdgo.GoInt);
                var depth = @:assignType (_stack.length : stdgo.GoInt);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L637"
                if ((depth > (32 : stdgo.GoInt) : Bool)) {
                    depth = (32 : stdgo.GoInt);
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L640"
                _buf.write((_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__padspace._padSpace.__slice__(0, depth) : stdgo.Slice<stdgo.GoUInt8>));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L641"
                _buf.writeString(curNode._description()?.__copy__());
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L642"
                _buf.writeRune((10 : stdgo.GoInt32));
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L644"
                if ((_stack.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L645"
                    break;
                };
                curChild = _stack[((_stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                _stack = (_stack.__slice__(0, ((_stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                curNode = (@:checkr curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L653"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _description( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.GoString {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L556"
        _buf.writeString(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__typestr._typeStr[((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t : stdgo.GoInt)]?.__copy__());
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L558"
        if ((((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L559"
            _buf.writeString(("-C" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L561"
        if ((((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L562"
            _buf.writeString(("-I" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L564"
        if ((((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L565"
            _buf.writeString(("-L" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L567"
        if ((((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (2 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L568"
            _buf.writeString(("-M" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L570"
        if ((((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L571"
            _buf.writeString(("-S" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L573"
        if ((((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L574"
            _buf.writeString(("-X" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L576"
        if ((((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (256 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L577"
            _buf.writeString(("-E" : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L580"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t;
                    if (__value__ == ((3 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((6 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((7 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((10 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L582"
                        _buf.writeString(((("(Ch = " : stdgo.GoString) + _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_chardescription.charDescription((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L583"
                        break;
                        break;
                    } else if (__value__ == ((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L585"
                        _buf.writeString(((((("(index = " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m)?.__copy__() : stdgo.GoString) + (", unindex = " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L586"
                        break;
                        break;
                    } else if (__value__ == ((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((33 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L588"
                        _buf.writeString(((("(index = " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L589"
                        break;
                        break;
                    } else if (__value__ == ((12 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L591"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("(String = %s)" : stdgo.GoString), new stdgo.AnyInterface(((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L592"
                        break;
                        break;
                    } else if (__value__ == ((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((5 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((8 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L594"
                        _buf.writeString(((("(Set = " : stdgo.GoString) + ((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set ?? throw stdgo.Error._nullPointerDereference.__underlying__()).string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L595"
                        break;
                        break;
                    };
                };
                break;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L598"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t;
                    if (__value__ == ((3 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((6 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((7 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((5 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((8 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((26 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((27 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L600"
                        _buf.writeString(("(Min = " : stdgo.GoString));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L601"
                        _buf.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m)?.__copy__());
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L602"
                        _buf.writeString((", Max = " : stdgo.GoString));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L603"
                        if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == ((2147483647 : stdgo.GoInt))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L604"
                            _buf.writeString(("inf" : stdgo.GoString));
                        } else {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L606"
                            _buf.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n)?.__copy__());
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L608"
                        _buf.writeString((")" : stdgo.GoString));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L610"
                        break;
                        break;
                    };
                };
                break;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L613"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _makeQuantifier( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _lazy:Bool, _min:stdgo.GoInt, _max:stdgo.GoInt):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L503"
        if (((_min == (0 : stdgo.GoInt)) && (_max == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L504"
            return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L507"
        if (((_min == (1 : stdgo.GoInt)) && (_max == (1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L508"
            return _n;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L511"
        {
            final __value__ = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t;
            if (__value__ == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((10 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L513"
                if (_lazy) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L514"
                    _n._makeRep((6 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), _min, _max);
                } else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L516"
                    _n._makeRep((3 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), _min, _max);
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L518"
                return _n;
            } else {
                var _t:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType = ((0 : stdgo.GoInt32) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L522"
                if (_lazy) {
                    _t = (27 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                } else {
                    _t = (26 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                };
                var _result = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN(_t, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _min, _max);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L528"
                _result._addChild(_n);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L529"
                return _result;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _reverseLeft( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L492"
        if (((((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) && (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == ((25 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool) && (((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L494"
            {
                var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
var _right = __1, _left = __0;
                while ((_left < _right : Bool)) {
                    {
                        final __tmp__0 = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_right : stdgo.GoInt)];
                        final __tmp__1 = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_left : stdgo.GoInt)];
                        final __tmp__2 = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children;
                        final __tmp__3 = (_left : stdgo.GoInt);
                        final __tmp__4 = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children;
                        final __tmp__5 = (_right : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    {
                        final __tmp__0 = (_left + (1 : stdgo.GoInt) : stdgo.GoInt);
                        final __tmp__1 = (_right - (1 : stdgo.GoInt) : stdgo.GoInt);
                        _left = @:binopAssign __tmp__0;
                        _right = @:binopAssign __tmp__1;
                    };
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L499"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _reduceSet( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L476"
        if (({
            final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t = (22 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        } else if ((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isSingleton()) {
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch = (@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set ?? throw stdgo.Error._nullPointerDereference.__underlying__()).singletonChar();
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set = null;
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t = ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t + ((-2 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        } else if ((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isSingletonInverse()) {
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch = (@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set ?? throw stdgo.Error._nullPointerDereference.__underlying__()).singletonChar();
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set = null;
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t = ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t + ((-1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L488"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _reduceGroup( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _u = _n;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L464"
        while ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == ((29 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
            _u = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(0 : stdgo.GoInt)];
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L468"
        return _u;
    }
    @:keep
    @:tdfield
    static public function _stripEnation( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _emptyType:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L451"
        {
            final __value__ = ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L453"
                return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode(_emptyType, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L455"
                return (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(0 : stdgo.GoInt)];
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L457"
                return _n;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _reduceRep( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _u = _n;
        var _t = @:assignType ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        var _min = @:assignType ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m : stdgo.GoInt);
        var _max = @:assignType ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L400"
        while (true) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L401"
            if (((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L402"
                break;
            };
            var _child = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(0 : stdgo.GoInt)];
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L408"
            if ((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t != (_t)) {
                var _childType = @:assignType ((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L411"
                if (!(((((_childType >= (3 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : Bool) && (_childType <= (5 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : Bool) : Bool) && _t == ((26 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool) || (((_childType >= (6 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : Bool) && (_childType <= (8 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : Bool) : Bool) && _t == ((27 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool) : Bool))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L413"
                    break;
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L419"
            if ((((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m == ((0 : stdgo.GoInt)) && ((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m > (1 : stdgo.GoInt) : Bool) : Bool) || ((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n < ((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m * (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L420"
                break;
            };
            _u = _child;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L424"
            if (((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L425"
                if ((((2147483646 : stdgo.GoInt) / (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m : stdgo.GoInt) < _min : Bool)) {
                    (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m = (2147483647 : stdgo.GoInt);
                } else {
                    (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m = ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m * _min : stdgo.GoInt);
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L431"
            if (((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L432"
                if ((((2147483646 : stdgo.GoInt) / (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n : stdgo.GoInt) < _max : Bool)) {
                    (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = (2147483647 : stdgo.GoInt);
                } else {
                    (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n * _max : stdgo.GoInt);
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L440"
        if ((2147483647 : stdgo.GoInt) == (_min)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L441"
            return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((22 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L443"
        return _u;
    }
    @:keep
    @:tdfield
    static public function _reduceConcatenation( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _optionsLast:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
        var _optionsAt:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt), _j:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L313"
        if (((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L314"
            return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options);
        };
        var _wasLastString = @:assignType (false : Bool);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L319"
        {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                _i = @:binopAssign __tmp__0;
                _j = @:binopAssign __tmp__1;
            };
            while ((_i < ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) : Bool)) {
                var _at:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>), _prev:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
_at = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_i : stdgo.GoInt)];
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L324"
                if ((_j < _i : Bool)) {
                    (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_j : stdgo.GoInt)] = _at;
                };
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L328"
                if ((((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (25 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) && (((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) == (((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L330"
                    {
                        var _k = @:assignType (0 : stdgo.GoInt);
                        while ((_k < ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) : Bool)) {
                            (@:checkr (@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_k : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _n;
                            _k++;
                        };
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L335"
                    _n._insertChildren((_i + (1 : stdgo.GoInt) : stdgo.GoInt), (@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L337"
                    _j--;
                } else if ((((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (12 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool)) {
                    _optionsAt = ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (65 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L342"
                    if ((!_wasLastString || (_optionsLast != _optionsAt) : Bool)) {
                        _wasLastString = true;
                        _optionsLast = _optionsAt;
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L345"
                        {
                            {
                                final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                final __tmp__1 = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                                _i = @:binopAssign __tmp__0;
                                _j = @:binopAssign __tmp__1;
                            };
                            continue;
                        };
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L348"
                    _j--;
                    _prev = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_j : stdgo.GoInt)];
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L351"
                    if ((@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        (@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t = (12 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                        (@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str = (new stdgo.Slice<stdgo.GoInt32>(1, 1, ...[(@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L356"
                    if (((_optionsAt & (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) == ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L357"
                        if ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                            (@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str = ((@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__append__((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch) : stdgo.Slice<stdgo.GoInt32>);
                        } else {
                            (@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str = ((@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__append__(...((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str : Array<stdgo.GoInt32>)) : stdgo.Slice<stdgo.GoInt32>);
                        };
                    } else {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L363"
                        if ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                            (@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str = ((@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__append__((0 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L366"
                            ((@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).__copyTo__((@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str);
                            (@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(0 : stdgo.GoInt)] = (@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch;
                        } else {
                            var _merge = (new stdgo.Slice<stdgo.GoInt32>((((@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length) + ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L371"
                            _merge.__copyTo__((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L372"
                            (_merge.__slice__(((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length)) : stdgo.Slice<stdgo.GoInt32>).__copyTo__((@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str);
                            (@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str = _merge;
                        };
                    };
                } else if ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == ((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L377"
                    _j--;
                } else {
                    _wasLastString = false;
                };
                {
                    final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _i = @:binopAssign __tmp__0;
                    _j = @:binopAssign __tmp__1;
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L383"
        if ((_j < _i : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L385"
            _n._removeChildren(_j, _i);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L388"
        return _n._stripEnation((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
    }
    @:keep
    @:tdfield
    static public function _reduceAlternation( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L223"
        if (((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L224"
            return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((22 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options);
        };
        var _wasLastSet = @:assignType (false : Bool);
        var _lastNodeCannotMerge = @:assignType (false : Bool);
        var _optionsLast:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt), _j:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L232"
        {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                _i = @:binopAssign __tmp__0;
                _j = @:binopAssign __tmp__1;
            };
            while ((_i < ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) : Bool)) {
                var _at = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_i : stdgo.GoInt)];
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L235"
                if ((_j < _i : Bool)) {
                    (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_j : stdgo.GoInt)] = _at;
                };
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L239"
                while (true) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L240"
                    if ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == ((24 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L241"
                        {
                            var _k = @:assignType (0 : stdgo.GoInt);
                            while ((_k < ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) : Bool)) {
                                (@:checkr (@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_k : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _n;
                                _k++;
                            };
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L244"
                        _n._insertChildren((_i + (1 : stdgo.GoInt) : stdgo.GoInt), (@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children);
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L246"
                        _j--;
                    } else if ((((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool)) {
                        var _optionsAt = @:assignType ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (65 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L251"
                        if ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == ((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L252"
                            if ((((!_wasLastSet || _optionsLast != (_optionsAt) : Bool) || _lastNodeCannotMerge : Bool) || !(@:checkr (@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isMergeable() : Bool)) {
                                _wasLastSet = true;
                                _lastNodeCannotMerge = !(@:checkr (@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isMergeable();
                                _optionsLast = _optionsAt;
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L256"
                                break;
                            };
                        } else if (((!_wasLastSet || _optionsLast != (_optionsAt) : Bool) || _lastNodeCannotMerge : Bool)) {
                            _wasLastSet = true;
                            _lastNodeCannotMerge = false;
                            _optionsLast = _optionsAt;
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L262"
                            break;
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L267"
                        _j--;
                        var _prev = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_j : stdgo.GoInt)];
                        var _prevCharClass:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L271"
                        if ((@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                            _prevCharClass = (stdgo.Go.setRef((new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet() : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_charsetdotcharset.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_charsetdotCharSet })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L273"
                            _prevCharClass._addChar((@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch);
                        } else {
                            _prevCharClass = (@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set;
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L278"
                        if ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L279"
                            _prevCharClass._addChar((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch);
                        } else {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L281"
                            _prevCharClass._addSet(((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet)?.__copy__());
                        };
                        (@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t = (11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                        (@:checkr _prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set = _prevCharClass;
                    } else if ((@:checkr _at ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == ((22 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L287"
                        _j--;
                    } else {
                        _wasLastSet = false;
                        _lastNodeCannotMerge = false;
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L292"
                    break;
                };
                {
                    final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _i = @:binopAssign __tmp__0;
                    _j = @:binopAssign __tmp__1;
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L296"
        if ((_j < _i : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L297"
            _n._removeChildren(_j, _i);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L300"
        return _n._stripEnation((22 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
    }
    @:keep
    @:tdfield
    static public function _reduce( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L195"
        {
            final __value__ = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t;
            if (__value__ == ((24 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L197"
                return _n._reduceAlternation();
            } else if (__value__ == ((25 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L200"
                return _n._reduceConcatenation();
            } else if (__value__ == ((26 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((27 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L203"
                return _n._reduceRep();
            } else if (__value__ == ((29 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L206"
                return _n._reduceGroup();
            } else if (__value__ == ((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((5 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L209"
                return _n._reduceSet();
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L212"
                return _n;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _makeRep( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _t:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType, _min:stdgo.GoInt, _max:stdgo.GoInt):Void {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t = ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t + ((_t - (9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m = _min;
        (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = _max;
    }
    @:keep
    @:tdfield
    static public function _removeChildren( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _startIndex:stdgo.GoInt, _endIndex:stdgo.GoInt):Void {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children = (((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.__slice__(0, _startIndex) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>).__append__(...(((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.__slice__(_endIndex) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>) : Array<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>)) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>);
    }
    @:keep
    @:tdfield
    static public function _insertChildren( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _afterIndex:stdgo.GoInt, _nodes:stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>):Void {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _newChildren = (new stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>((0 : stdgo.GoInt).toBasic(), (((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) + (_nodes.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>);
        (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children = (((_newChildren.__append__(...(((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.__slice__(0, _afterIndex) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>) : Array<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>)) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>).__append__(...(_nodes : Array<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>)) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>).__append__(...(((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.__slice__(_afterIndex) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>) : Array<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>)) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>);
    }
    @:keep
    @:tdfield
    static public function _addChild( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _child:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):Void {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _reduced = _child._reduce();
        (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children = ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.__append__(_reduced) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>);
        (@:checkr _reduced ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _n;
    }
    @:keep
    @:tdfield
    static public function _writeStrToBuf( _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void {
        @:recv var _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L166"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/tree.go#L167"
                _buf.writeRune((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
    }
}
