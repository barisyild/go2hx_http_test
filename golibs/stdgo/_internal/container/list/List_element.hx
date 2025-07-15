package stdgo._internal.container.list;
@:structInit @:using(stdgo._internal.container.list.List_element_static_extension.Element_static_extension) @:using(stdgo._internal.container.list.List_element_static_extension.Element_static_extension) class Element {
    public var _next : stdgo.Ref<stdgo._internal.container.list.List_element.Element> = (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
    public var _prev : stdgo.Ref<stdgo._internal.container.list.List_element.Element> = (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
    public var _list : stdgo.Ref<stdgo._internal.container.list.List_list.List> = (null : stdgo.Ref<stdgo._internal.container.list.List_list.List>);
    public var value : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_next:stdgo.Ref<stdgo._internal.container.list.List_element.Element>, ?_prev:stdgo.Ref<stdgo._internal.container.list.List_element.Element>, ?_list:stdgo.Ref<stdgo._internal.container.list.List_list.List>, ?value:stdgo.AnyInterface) {
        if (_next != null) this._next = _next;
        if (_prev != null) this._prev = _prev;
        if (_list != null) this._list = _list;
        if (value != null) this.value = value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_next", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontainerdotlistdotlist_elementdotelement.__type__stdgodot_internaldotcontainerdotlistdotList_elementdotElement }) }, optional : false }, { name : "_prev", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontainerdotlistdotlist_elementdotelement.__type__stdgodot_internaldotcontainerdotlistdotList_elementdotElement }) }, optional : false }, { name : "_list", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontainerdotlistdotlist_listdotlist.__type__stdgodot_internaldotcontainerdotlistdotList_listdotList }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }])));
    public function __copy__() {
        return new Element(_next, _prev, _list, value);
    }
}
