@isTest
private class IntServerGetScrubIpDetails200ResponsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response1 = IntServerGetScrubIpDetails200Respons.getExample();
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response2 = getScrubIpDetails200Response1;
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response3 = new IntServerGetScrubIpDetails200Respons();
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response4 = getScrubIpDetails200Response3;

        System.assert(getScrubIpDetails200Response1.equals(getScrubIpDetails200Response2));
        System.assert(getScrubIpDetails200Response2.equals(getScrubIpDetails200Response1));
        System.assert(getScrubIpDetails200Response1.equals(getScrubIpDetails200Response1));
        System.assert(getScrubIpDetails200Response3.equals(getScrubIpDetails200Response4));
        System.assert(getScrubIpDetails200Response4.equals(getScrubIpDetails200Response3));
        System.assert(getScrubIpDetails200Response3.equals(getScrubIpDetails200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response1 = IntServerGetScrubIpDetails200Respons.getExample();
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response2 = IntServerGetScrubIpDetails200Respons.getExample();
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response3 = new IntServerGetScrubIpDetails200Respons();
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response4 = new IntServerGetScrubIpDetails200Respons();

        System.assert(getScrubIpDetails200Response1.equals(getScrubIpDetails200Response2));
        System.assert(getScrubIpDetails200Response2.equals(getScrubIpDetails200Response1));
        System.assert(getScrubIpDetails200Response3.equals(getScrubIpDetails200Response4));
        System.assert(getScrubIpDetails200Response4.equals(getScrubIpDetails200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response1 = IntServerGetScrubIpDetails200Respons.getExample();
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response2 = new IntServerGetScrubIpDetails200Respons();

        System.assertEquals(false, getScrubIpDetails200Response1.equals('foo'));
        System.assertEquals(false, getScrubIpDetails200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response1 = IntServerGetScrubIpDetails200Respons.getExample();
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response2 = new IntServerGetScrubIpDetails200Respons();
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response3;

        System.assertEquals(false, getScrubIpDetails200Response1.equals(getScrubIpDetails200Response3));
        System.assertEquals(false, getScrubIpDetails200Response2.equals(getScrubIpDetails200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response1 = IntServerGetScrubIpDetails200Respons.getExample();
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response2 = new IntServerGetScrubIpDetails200Respons();

        System.assertEquals(getScrubIpDetails200Response1.hashCode(), getScrubIpDetails200Response1.hashCode());
        System.assertEquals(getScrubIpDetails200Response2.hashCode(), getScrubIpDetails200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response1 = IntServerGetScrubIpDetails200Respons.getExample();
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response2 = IntServerGetScrubIpDetails200Respons.getExample();
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response3 = new IntServerGetScrubIpDetails200Respons();
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response4 = new IntServerGetScrubIpDetails200Respons();

        System.assert(getScrubIpDetails200Response1.equals(getScrubIpDetails200Response2));
        System.assert(getScrubIpDetails200Response3.equals(getScrubIpDetails200Response4));
        System.assertEquals(getScrubIpDetails200Response1.hashCode(), getScrubIpDetails200Response2.hashCode());
        System.assertEquals(getScrubIpDetails200Response3.hashCode(), getScrubIpDetails200Response4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response = new IntServerGetScrubIpDetails200Respons();
        Map<String, String> x-property-mappings = getScrubIpDetails200Response.getx-property-mappings();
        System.assertEquals('clientLinks', x-property-mappings.get('client_links'));
        System.assertEquals('r_package', x-property-mappings.get('package'));
        System.assertEquals('filterFirewall', x-property-mappings.get('filter_firewall'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerGetScrubIpDetails200Respons getScrubIpDetails200Response = new IntServerGetScrubIpDetails200Respons();
        System.assertEquals(new List<IntServerGetScrubIpDetails200Respons>(), getScrubIpDetails200Response.clientLinks);
        System.assertEquals(null, getScrubIpDetails200Response.serviceInfo);
        System.assertEquals(null, getScrubIpDetails200Response.billingDetails);
        System.assertEquals(null, getScrubIpDetails200Response.custCurrency);
        System.assertEquals(null, getScrubIpDetails200Response.custCurrencySymbol);
        System.assertEquals(null, getScrubIpDetails200Response.r_package);
        System.assertEquals(null, getScrubIpDetails200Response.extraInfoTables);
        System.assertEquals(null, getScrubIpDetails200Response.filterFirewall);
    }
}
