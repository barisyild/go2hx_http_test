package _internal.golangdotorg.x.crypto.cryptobyte.asn1;
@:keep @:allow(_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1.Tag_asInterface) class Tag_static_extension {
    @:keep
    @:tdfield
    static public function contextSpecific( _t:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag {
        @:recv var _t:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag = _t;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1/asn1.go#L26"
        return (_t | (128 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag) : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag);
    }
    @:keep
    @:tdfield
    static public function constructed( _t:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag {
        @:recv var _t:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag = _t;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1/asn1.go#L23"
        return (_t | (32 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag) : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag);
    }
}
