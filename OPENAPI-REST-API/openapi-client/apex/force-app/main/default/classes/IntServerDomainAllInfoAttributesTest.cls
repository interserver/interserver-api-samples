@isTest
private class IntServerDomainAllInfoAttributesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainAllInfoAttributes domainAllInfoAttributes1 = IntServerDomainAllInfoAttributes.getExample();
        IntServerDomainAllInfoAttributes domainAllInfoAttributes2 = domainAllInfoAttributes1;
        IntServerDomainAllInfoAttributes domainAllInfoAttributes3 = new IntServerDomainAllInfoAttributes();
        IntServerDomainAllInfoAttributes domainAllInfoAttributes4 = domainAllInfoAttributes3;

        System.assert(domainAllInfoAttributes1.equals(domainAllInfoAttributes2));
        System.assert(domainAllInfoAttributes2.equals(domainAllInfoAttributes1));
        System.assert(domainAllInfoAttributes1.equals(domainAllInfoAttributes1));
        System.assert(domainAllInfoAttributes3.equals(domainAllInfoAttributes4));
        System.assert(domainAllInfoAttributes4.equals(domainAllInfoAttributes3));
        System.assert(domainAllInfoAttributes3.equals(domainAllInfoAttributes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainAllInfoAttributes domainAllInfoAttributes1 = IntServerDomainAllInfoAttributes.getExample();
        IntServerDomainAllInfoAttributes domainAllInfoAttributes2 = IntServerDomainAllInfoAttributes.getExample();
        IntServerDomainAllInfoAttributes domainAllInfoAttributes3 = new IntServerDomainAllInfoAttributes();
        IntServerDomainAllInfoAttributes domainAllInfoAttributes4 = new IntServerDomainAllInfoAttributes();

        System.assert(domainAllInfoAttributes1.equals(domainAllInfoAttributes2));
        System.assert(domainAllInfoAttributes2.equals(domainAllInfoAttributes1));
        System.assert(domainAllInfoAttributes3.equals(domainAllInfoAttributes4));
        System.assert(domainAllInfoAttributes4.equals(domainAllInfoAttributes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainAllInfoAttributes domainAllInfoAttributes1 = IntServerDomainAllInfoAttributes.getExample();
        IntServerDomainAllInfoAttributes domainAllInfoAttributes2 = new IntServerDomainAllInfoAttributes();

        System.assertEquals(false, domainAllInfoAttributes1.equals('foo'));
        System.assertEquals(false, domainAllInfoAttributes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainAllInfoAttributes domainAllInfoAttributes1 = IntServerDomainAllInfoAttributes.getExample();
        IntServerDomainAllInfoAttributes domainAllInfoAttributes2 = new IntServerDomainAllInfoAttributes();
        IntServerDomainAllInfoAttributes domainAllInfoAttributes3;

        System.assertEquals(false, domainAllInfoAttributes1.equals(domainAllInfoAttributes3));
        System.assertEquals(false, domainAllInfoAttributes2.equals(domainAllInfoAttributes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainAllInfoAttributes domainAllInfoAttributes1 = IntServerDomainAllInfoAttributes.getExample();
        IntServerDomainAllInfoAttributes domainAllInfoAttributes2 = new IntServerDomainAllInfoAttributes();

        System.assertEquals(domainAllInfoAttributes1.hashCode(), domainAllInfoAttributes1.hashCode());
        System.assertEquals(domainAllInfoAttributes2.hashCode(), domainAllInfoAttributes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainAllInfoAttributes domainAllInfoAttributes1 = IntServerDomainAllInfoAttributes.getExample();
        IntServerDomainAllInfoAttributes domainAllInfoAttributes2 = IntServerDomainAllInfoAttributes.getExample();
        IntServerDomainAllInfoAttributes domainAllInfoAttributes3 = new IntServerDomainAllInfoAttributes();
        IntServerDomainAllInfoAttributes domainAllInfoAttributes4 = new IntServerDomainAllInfoAttributes();

        System.assert(domainAllInfoAttributes1.equals(domainAllInfoAttributes2));
        System.assert(domainAllInfoAttributes3.equals(domainAllInfoAttributes4));
        System.assertEquals(domainAllInfoAttributes1.hashCode(), domainAllInfoAttributes2.hashCode());
        System.assertEquals(domainAllInfoAttributes3.hashCode(), domainAllInfoAttributes4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainAllInfoAttributes domainAllInfoAttributes = new IntServerDomainAllInfoAttributes();
        Map<String, String> x-property-mappings = domainAllInfoAttributes.getx-property-mappings();
        System.assertEquals('contactSet', x-property-mappings.get('contact_set'));
        System.assertEquals('registryCreatedate', x-property-mappings.get('registry_createdate'));
        System.assertEquals('registryExpiredate', x-property-mappings.get('registry_expiredate'));
        System.assertEquals('tldData', x-property-mappings.get('tld_data'));
        System.assertEquals('letExpire', x-property-mappings.get('let_expire'));
        System.assertEquals('autoRenew', x-property-mappings.get('auto_renew'));
        System.assertEquals('sponsoringRsp', x-property-mappings.get('sponsoring_rsp'));
        System.assertEquals('gdprConsentStatus', x-property-mappings.get('gdpr_consent_status'));
        System.assertEquals('nameserverList', x-property-mappings.get('nameserver_list'));
        System.assertEquals('registryUpdatedate', x-property-mappings.get('registry_updatedate'));
        System.assertEquals('affiliateId', x-property-mappings.get('affiliate_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerDomainAllInfoAttributes domainAllInfoAttributes = new IntServerDomainAllInfoAttributes();
        System.assertEquals(new List<IntServerDomainNameServer>(), domainAllInfoAttributes.nameserverList);
        System.assertEquals(null, domainAllInfoAttributes.contactSet);
        System.assertEquals(null, domainAllInfoAttributes.registryCreatedate);
        System.assertEquals(null, domainAllInfoAttributes.registryExpiredate);
        System.assertEquals(null, domainAllInfoAttributes.tldData);
        System.assertEquals(null, domainAllInfoAttributes.letExpire);
        System.assertEquals(null, domainAllInfoAttributes.autoRenew);
        System.assertEquals(null, domainAllInfoAttributes.sponsoringRsp);
        System.assertEquals(null, domainAllInfoAttributes.gdprConsentStatus);
        System.assertEquals(null, domainAllInfoAttributes.registryUpdatedate);
        System.assertEquals(null, domainAllInfoAttributes.affiliateId);
        System.assertEquals(null, domainAllInfoAttributes.expiredate);
    }
}
