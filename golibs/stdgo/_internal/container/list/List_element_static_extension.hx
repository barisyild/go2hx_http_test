package stdgo._internal.container.list;
@:keep @:allow(stdgo._internal.container.list.List.Element_asInterface) class Element_static_extension {
    @:keep
    @:tdfield
    static public function prev( _e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):stdgo.Ref<stdgo._internal.container.list.List_element.Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.container.list.List_element.Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/container/list/list.go#L40"
        {
            var _p = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev;
            if ((({
                final value = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._list;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (_p != (stdgo.Go.setRef((@:checkr (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._list ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontainerdotlistdotlist_elementdotelement.__type__stdgodot_internaldotcontainerdotlistdotList_elementdotElement })) : stdgo.Ref<stdgo._internal.container.list.List_element.Element>)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/container/list/list.go#L41"
                return _p;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/container/list/list.go#L43"
        return null;
    }
    @:keep
    @:tdfield
    static public function next( _e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):stdgo.Ref<stdgo._internal.container.list.List_element.Element> {
        @:recv var _e:stdgo.Ref<stdgo._internal.container.list.List_element.Element> = _e;
        //"file:///Users/o/.go/go1.21.3/src/container/list/list.go#L32"
        {
            var _p = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
            if ((({
                final value = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._list;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (_p != (stdgo.Go.setRef((@:checkr (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._list ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontainerdotlistdotlist_elementdotelement.__type__stdgodot_internaldotcontainerdotlistdotList_elementdotElement })) : stdgo.Ref<stdgo._internal.container.list.List_element.Element>)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/container/list/list.go#L33"
                return _p;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/container/list/list.go#L35"
        return null;
    }
}
