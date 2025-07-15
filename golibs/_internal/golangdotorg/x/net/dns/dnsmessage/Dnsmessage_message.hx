package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_message_static_extension.Message_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_message_static_extension.Message_static_extension) class Message {
    @:embedded
    public var header : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header);
    public var questions : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question> = (null : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question>);
    public var answers : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource> = (null : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>);
    public var authorities : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource> = (null : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>);
    public var additionals : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource> = (null : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>);
    public function new(?header:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header, ?questions:stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question>, ?answers:stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>, ?authorities:stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>, ?additionals:stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>) {
        if (header != null) this.header = header;
        if (questions != null) this.questions = questions;
        if (answers != null) this.answers = answers;
        if (authorities != null) this.authorities = authorities;
        if (additionals != null) this.additionals = additionals;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "header", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_headerdotheader.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_headerdotHeader }, optional : false }, { name : "questions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_questiondotquestion.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_questiondotQuestion }) }, optional : false }, { name : "answers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_resourcedotresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_resourcedotResource }) }, optional : false }, { name : "authorities", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_resourcedotresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_resourcedotResource }) }, optional : false }, { name : "additionals", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_resourcedotresource.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_resourcedotResource }) }, optional : false }])));
    public var _pack(get, never) : () -> { var _0 : stdgo.GoUInt16; var _1 : stdgo.GoUInt16; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__pack():() -> { var _0 : stdgo.GoUInt16; var _1 : stdgo.GoUInt16; } return @:check32 this.header._pack;
    public function __copy__() {
        return new Message(header, questions, answers, authorities, additionals);
    }
}
