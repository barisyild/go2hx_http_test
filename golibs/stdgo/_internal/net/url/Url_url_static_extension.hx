package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.net.url.Url.URL_asInterface) class URL_static_extension {
    @:keep
    @:tdfield
    static public function joinPath( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _elem:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.net.url.Url_url.URL> {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        _elem = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_u.escapedPath()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_elem : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
        var _p:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1196"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_elem[(0 : stdgo.GoInt)]?.__copy__(), ("/" : stdgo.GoString))) {
            _elem[(0 : stdgo.GoInt)] = (("/" : stdgo.GoString) + _elem[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString)?.__copy__();
            _p = (stdgo._internal.path.Path_join.join(...(_elem : Array<stdgo.GoString>)).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            _p = stdgo._internal.path.Path_join.join(...(_elem : Array<stdgo.GoString>))?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1206"
        if ((stdgo._internal.strings.Strings_hassuffix.hasSuffix(_elem[((_elem.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("/" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hassuffix.hasSuffix(_p?.__copy__(), ("/" : stdgo.GoString)) : Bool)) {
            _p = (_p + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        var _url = @:assignType ((_u : stdgo._internal.net.url.Url_url.URL)?.__copy__() : stdgo._internal.net.url.Url_url.URL);
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1210"
        _url._setPath(_p?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1211"
        return (stdgo.Go.setRef(_url, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL })) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
    }
    @:keep
    @:tdfield
    static public function unmarshalBinary( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse((_text : stdgo.GoString)?.__copy__()), _u1:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1183"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1184"
            return _err;
        };
        {
            var __tmp__ = (_u1 : stdgo._internal.net.url.Url_url.URL)?.__copy__();
            var x = (_u : stdgo._internal.net.url.Url_url.URL);
            x.scheme = __tmp__?.scheme;
            x.opaque = __tmp__?.opaque;
            x.user = __tmp__?.user;
            x.host = __tmp__?.host;
            x.path = __tmp__?.path;
            x.rawPath = __tmp__?.rawPath;
            x.omitHost = __tmp__?.omitHost;
            x.forceQuery = __tmp__?.forceQuery;
            x.rawQuery = __tmp__?.rawQuery;
            x.fragment = __tmp__?.fragment;
            x.rawFragment = __tmp__?.rawFragment;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1187"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalBinary( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var _text = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1178"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : ((_u.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            _text = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function port( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url__splithostport._splitHostPort((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__()), __0:stdgo.GoString = __tmp__._0, _port:stdgo.GoString = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1153"
        return _port?.__copy__();
    }
    @:keep
    @:tdfield
    static public function hostname( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url__splithostport._splitHostPort((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__()), _host:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1145"
        return _host?.__copy__();
    }
    @:keep
    @:tdfield
    static public function requestURI( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var _result = @:assignType ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opaque?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1123"
        if (_result == ((stdgo.Go.str() : stdgo.GoString))) {
            _result = _u.escapedPath()?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1125"
            if (_result == ((stdgo.Go.str() : stdgo.GoString))) {
                _result = ("/" : stdgo.GoString);
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1129"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_result?.__copy__(), ("//" : stdgo.GoString))) {
                _result = (((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _result?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1133"
        if (((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).forceQuery || ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawQuery != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _result = (_result + ((("?" : stdgo.GoString) + (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawQuery?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1136"
        return _result?.__copy__();
    }
    @:keep
    @:tdfield
    static public function query( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo._internal.net.url.Url_values.Values {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url_parsequery.parseQuery((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawQuery?.__copy__()), _v:stdgo._internal.net.url.Url_values.Values = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1116"
        return _v;
    }
    @:keep
    @:tdfield
    static public function resolveReference( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _ref:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.Ref<stdgo._internal.net.url.Url_url.URL> {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var _url = @:assignType ((_ref : stdgo._internal.net.url.Url_url.URL)?.__copy__() : stdgo._internal.net.url.Url_url.URL);
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1081"
        if ((@:checkr _ref ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == ((stdgo.Go.str() : stdgo.GoString))) {
            _url.scheme = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1084"
        if ((((@:checkr _ref ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme != ((stdgo.Go.str() : stdgo.GoString)) || (@:checkr _ref ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || ({
            final value = (@:checkr _ref ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1088"
            _url._setPath(stdgo._internal.net.url.Url__resolvepath._resolvePath(_ref.escapedPath()?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1089"
            return (stdgo.Go.setRef(_url, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL })) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1091"
        if ((@:checkr _ref ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opaque != ((stdgo.Go.str() : stdgo.GoString))) {
            _url.user = null;
            _url.host = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            _url.path = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1095"
            return (stdgo.Go.setRef(_url, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL })) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1097"
        if ((((@:checkr _ref ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path == ((stdgo.Go.str() : stdgo.GoString)) && !(@:checkr _ref ?? throw stdgo.Error._nullPointerDereference.__underlying__()).forceQuery : Bool) && ((@:checkr _ref ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawQuery == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _url.rawQuery = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawQuery?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1099"
            if ((@:checkr _ref ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fragment == ((stdgo.Go.str() : stdgo.GoString))) {
                _url.fragment = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fragment?.__copy__();
                _url.rawFragment = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawFragment?.__copy__();
            };
        };
        _url.host = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__();
        _url.user = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1107"
        _url._setPath(stdgo._internal.net.url.Url__resolvepath._resolvePath(_u.escapedPath()?.__copy__(), _ref.escapedPath()?.__copy__())?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1108"
        return (stdgo.Go.setRef(_url, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL })) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
    }
    @:keep
    @:tdfield
    static public function parse( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _ref:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_ref?.__copy__()), _refURL:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1067"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1068"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1070"
        return { _0 : _u.resolveReference(_refURL), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function isAbs( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):Bool {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1059"
        return (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme != ((stdgo.Go.str() : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function redacted( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L864"
        if (({
            final value = _u;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L865"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _ru = @:assignType ((_u : stdgo._internal.net.url.Url_url.URL)?.__copy__() : stdgo._internal.net.url.Url_url.URL);
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L869"
        {
            var __tmp__ = _ru.user.password(), __0:stdgo.GoString = __tmp__._0, _has:Bool = __tmp__._1;
            if (_has) {
                _ru.user = stdgo._internal.net.url.Url_userpassword.userPassword(_ru.user.username()?.__copy__(), ("xxxxx" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L872"
        return (_ru.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L810"
        if ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L811"
            _buf.writeString((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L812"
            _buf.writeByte((58 : stdgo.GoUInt8));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L814"
        if ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opaque != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L815"
            _buf.writeString((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opaque?.__copy__());
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L817"
            if ((((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme != ((stdgo.Go.str() : stdgo.GoString)) || (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || ({
                final value = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L818"
                if ((((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).omitHost && (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && ({
                    final value = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user;
                    (value == null || (value : Dynamic).__nil__);
                }) : Bool)) {} else {
                    //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L821"
                    if ((((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host != ((stdgo.Go.str() : stdgo.GoString)) || (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || ({
                        final value = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L822"
                        _buf.writeString(("//" : stdgo.GoString));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L824"
                    {
                        var _ui = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user;
                        if (({
                            final value = _ui;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L825"
                            _buf.writeString((_ui.string() : stdgo.GoString)?.__copy__());
                            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L826"
                            _buf.writeByte((64 : stdgo.GoUInt8));
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L828"
                    {
                        var _h = @:assignType ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__() : stdgo.GoString);
                        if (_h != ((stdgo.Go.str() : stdgo.GoString))) {
                            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L829"
                            _buf.writeString(stdgo._internal.net.url.Url__escape._escape(_h?.__copy__(), (3 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__());
                        };
                    };
                };
            };
            var _path = @:assignType (_u.escapedPath()?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L834"
            if (((_path != ((stdgo.Go.str() : stdgo.GoString)) && _path[(0 : stdgo.GoInt)] != ((47 : stdgo.GoUInt8)) : Bool) && ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L835"
                _buf.writeByte((47 : stdgo.GoUInt8));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L837"
            if (_buf.len() == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L844"
                {
                    var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_path?.__copy__(), ("/" : stdgo.GoString)), _segment:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
                    if (stdgo._internal.strings.Strings_contains.contains(_segment?.__copy__(), (":" : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L845"
                        _buf.writeString(("./" : stdgo.GoString));
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L848"
            _buf.writeString(_path?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L850"
        if (((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).forceQuery || ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawQuery != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L851"
            _buf.writeByte((63 : stdgo.GoUInt8));
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L852"
            _buf.writeString((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawQuery?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L854"
        if ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fragment != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L855"
            _buf.writeByte((35 : stdgo.GoUInt8));
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L856"
            _buf.writeString(_u.escapedFragment()?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L858"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function escapedFragment( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L761"
        if ((((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawFragment != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.net.url.Url__validencoded._validEncoded((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawFragment?.__copy__(), (7 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) : Bool)) {
            var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawFragment?.__copy__(), (7 : stdgo._internal.net.url.Url_t_encoding.T_encoding)), _f:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L763"
            if (((_err == null) && (_f == (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fragment) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L764"
                return (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawFragment?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L767"
        return stdgo._internal.net.url.Url__escape._escape((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fragment?.__copy__(), (7 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _setFragment( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _f:stdgo.GoString):stdgo.Error {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_f?.__copy__(), (7 : stdgo._internal.net.url.Url_t_encoding.T_encoding)), _frag:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L739"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L740"
            return _err;
        };
        (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fragment = _frag?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L743"
        {
            var _escf = @:assignType (stdgo._internal.net.url.Url__escape._escape(_frag?.__copy__(), (7 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__() : stdgo.GoString);
            if (_f == (_escf)) {
                (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawFragment = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            } else {
                (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawFragment = _f?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L749"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function escapedPath( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L698"
        if ((((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawPath != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.net.url.Url__validencoded._validEncoded((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawPath?.__copy__(), (1 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) : Bool)) {
            var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawPath?.__copy__(), (1 : stdgo._internal.net.url.Url_t_encoding.T_encoding)), _p:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L700"
            if (((_err == null) && (_p == (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L701"
                return (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawPath?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L704"
        if ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path == (("*" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L705"
            return ("*" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L707"
        return stdgo._internal.net.url.Url__escape._escape((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__(), (1 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _setPath( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _p:stdgo.GoString):stdgo.Error {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_p?.__copy__(), (1 : stdgo._internal.net.url.Url_t_encoding.T_encoding)), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L675"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L676"
            return _err;
        };
        (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path = _path?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L679"
        {
            var _escp = @:assignType (stdgo._internal.net.url.Url__escape._escape(_path?.__copy__(), (1 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__() : stdgo.GoString);
            if (_p == (_escp)) {
                (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawPath = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            } else {
                (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawPath = _p?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L685"
        return (null : stdgo.Error);
    }
}
