@isTest
private class IntServerWebsiteTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsite website1 = IntServerWebsite.getExample();
        IntServerWebsite website2 = website1;
        IntServerWebsite website3 = new IntServerWebsite();
        IntServerWebsite website4 = website3;

        System.assert(website1.equals(website2));
        System.assert(website2.equals(website1));
        System.assert(website1.equals(website1));
        System.assert(website3.equals(website4));
        System.assert(website4.equals(website3));
        System.assert(website3.equals(website3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsite website1 = IntServerWebsite.getExample();
        IntServerWebsite website2 = IntServerWebsite.getExample();
        IntServerWebsite website3 = new IntServerWebsite();
        IntServerWebsite website4 = new IntServerWebsite();

        System.assert(website1.equals(website2));
        System.assert(website2.equals(website1));
        System.assert(website3.equals(website4));
        System.assert(website4.equals(website3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsite website1 = IntServerWebsite.getExample();
        IntServerWebsite website2 = new IntServerWebsite();

        System.assertEquals(false, website1.equals('foo'));
        System.assertEquals(false, website2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsite website1 = IntServerWebsite.getExample();
        IntServerWebsite website2 = new IntServerWebsite();
        IntServerWebsite website3;

        System.assertEquals(false, website1.equals(website3));
        System.assertEquals(false, website2.equals(website3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsite website1 = IntServerWebsite.getExample();
        IntServerWebsite website2 = new IntServerWebsite();

        System.assertEquals(website1.hashCode(), website1.hashCode());
        System.assertEquals(website2.hashCode(), website2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsite website1 = IntServerWebsite.getExample();
        IntServerWebsite website2 = IntServerWebsite.getExample();
        IntServerWebsite website3 = new IntServerWebsite();
        IntServerWebsite website4 = new IntServerWebsite();

        System.assert(website1.equals(website2));
        System.assert(website3.equals(website4));
        System.assertEquals(website1.hashCode(), website2.hashCode());
        System.assertEquals(website3.hashCode(), website4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsite website = new IntServerWebsite();
        Map<String, String> x-property-mappings = website.getx-property-mappings();
        System.assertEquals('clientLinks', x-property-mappings.get('client_links'));
        System.assertEquals('r_package', x-property-mappings.get('package'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerWebsite website = new IntServerWebsite();
        System.assertEquals(new List<IntServerWebsiteClientLink>(), website.clientLinks);
        System.assertEquals(new List<Object>(), website.serviceExtra);
        System.assertEquals(null, website.serviceInfo);
        System.assertEquals(null, website.billingDetails);
        System.assertEquals(null, website.custCurrency);
        System.assertEquals(null, website.custCurrencySymbol);
        System.assertEquals(null, website.serviceMaster);
        System.assertEquals(null, website.r_package);
        System.assertEquals(null, website.extraInfoTables);
    }
}
