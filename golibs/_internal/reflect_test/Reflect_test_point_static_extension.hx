package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.Point_asInterface) class Point_static_extension {
    @:keep
    @:tdfield
    static public function int32Method( _p:stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>, _x:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _p:stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point> = _p;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2421"
        return _x;
    }
    @:keep
    @:tdfield
    static public function int64Method( _p:stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>, _x:stdgo.GoInt64):stdgo.GoInt64 {
        @:recv var _p:stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point> = _p;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2416"
        return _x;
    }
    @:keep
    @:tdfield
    static public function totalDist( _p:_internal.reflect_test.Reflect_test_point.Point, _points:haxe.Rest<_internal.reflect_test.Reflect_test_point.Point>):stdgo.GoInt {
        var _points = new stdgo.Slice<_internal.reflect_test.Reflect_test_point.Point>(_points.length, 0, ..._points);
        @:recv var _p:_internal.reflect_test.Reflect_test_point.Point = _p?.__copy__();
        var _tot = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2405"
        if (_points != null) for (__1 => _q in _points) {
            var _dx = @:assignType (_q._x - _p._x : stdgo.GoInt);
            var _dy = @:assignType (_q._y - _p._y : stdgo.GoInt);
            _tot = (_tot + (((_dx * _dx : stdgo.GoInt) + (_dy * _dy : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2411"
        return _tot;
    }
    @:keep
    @:tdfield
    static public function noArgs( _p:_internal.reflect_test.Reflect_test_point.Point):Void {
        @:recv var _p:_internal.reflect_test.Reflect_test_point.Point = _p?.__copy__();
    }
    @:keep
    @:tdfield
    static public function gCMethod( _p:_internal.reflect_test.Reflect_test_point.Point, _k:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:_internal.reflect_test.Reflect_test_point.Point = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2393"
        stdgo._internal.runtime.Runtime_gc.gC();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2394"
        return (_k + _p._x : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function dist( _p:_internal.reflect_test.Reflect_test_point.Point, _scale:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:_internal.reflect_test.Reflect_test_point.Point = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2388"
        return (((_p._x * _p._x : stdgo.GoInt) * _scale : stdgo.GoInt) + ((_p._y * _p._y : stdgo.GoInt) * _scale : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function anotherMethod( _p:_internal.reflect_test.Reflect_test_point.Point, _scale:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:_internal.reflect_test.Reflect_test_point.Point = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2382"
        return (-1 : stdgo.GoInt);
    }
}
