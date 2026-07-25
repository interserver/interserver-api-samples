@isTest
private class IntServerDomainTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomain domain1 = IntServerDomain.getExample();
        IntServerDomain domain2 = domain1;
        IntServerDomain domain3 = new IntServerDomain();
        IntServerDomain domain4 = domain3;

        System.assert(domain1.equals(domain2));
        System.assert(domain2.equals(domain1));
        System.assert(domain1.equals(domain1));
        System.assert(domain3.equals(domain4));
        System.assert(domain4.equals(domain3));
        System.assert(domain3.equals(domain3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomain domain1 = IntServerDomain.getExample();
        IntServerDomain domain2 = IntServerDomain.getExample();
        IntServerDomain domain3 = new IntServerDomain();
        IntServerDomain domain4 = new IntServerDomain();

        System.assert(domain1.equals(domain2));
        System.assert(domain2.equals(domain1));
        System.assert(domain3.equals(domain4));
        System.assert(domain4.equals(domain3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomain domain1 = IntServerDomain.getExample();
        IntServerDomain domain2 = new IntServerDomain();

        System.assertEquals(false, domain1.equals('foo'));
        System.assertEquals(false, domain2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomain domain1 = IntServerDomain.getExample();
        IntServerDomain domain2 = new IntServerDomain();
        IntServerDomain domain3;

        System.assertEquals(false, domain1.equals(domain3));
        System.assertEquals(false, domain2.equals(domain3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomain domain1 = IntServerDomain.getExample();
        IntServerDomain domain2 = new IntServerDomain();

        System.assertEquals(domain1.hashCode(), domain1.hashCode());
        System.assertEquals(domain2.hashCode(), domain2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomain domain1 = IntServerDomain.getExample();
        IntServerDomain domain2 = IntServerDomain.getExample();
        IntServerDomain domain3 = new IntServerDomain();
        IntServerDomain domain4 = new IntServerDomain();

        System.assert(domain1.equals(domain2));
        System.assert(domain3.equals(domain4));
        System.assertEquals(domain1.hashCode(), domain2.hashCode());
        System.assertEquals(domain3.hashCode(), domain4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomain domain = new IntServerDomain();
        Map<String, String> x-property-mappings = domain.getx-property-mappings();
        System.assertEquals('clientLinks', x-property-mappings.get('client_links'));
        System.assertEquals('contactDetails', x-property-mappings.get('contact_details'));
        System.assertEquals('transferInfo', x-property-mappings.get('transfer_info'));
        System.assertEquals('domainLogs', x-property-mappings.get('domain_logs'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerDomain domain = new IntServerDomain();
        System.assertEquals(new Map<String, IntServerDomainServiceType>(), domain.serviceTypes);
        System.assertEquals(new List<IntServerDomainClientLink>(), domain.clientLinks);
        System.assertEquals(new List<String>(), domain.domainLogs);
        System.assertEquals(null, domain.serviceInfo);
        System.assertEquals(null, domain.billingDetails);
        System.assertEquals(null, domain.custCurrency);
        System.assertEquals(null, domain.custCurrencySymbol);
        System.assertEquals(null, domain.serviceExtra);
        System.assertEquals(null, domain.extraInfoTables);
        System.assertEquals(null, domain.serviceType);
        System.assertEquals(null, domain.contactDetails);
        System.assertEquals(null, domain.pwarning);
        System.assertEquals(null, domain.transferInfo);
        System.assertEquals(null, domain.errors);
        System.assertEquals(null, domain.allInfo);
        System.assertEquals(null, domain.registrarStatus);
        System.assertEquals(null, domain.locked);
        System.assertEquals(null, domain.whoisPrivacy);
        System.assertEquals(null, domain.autoRenew);
    }
}
