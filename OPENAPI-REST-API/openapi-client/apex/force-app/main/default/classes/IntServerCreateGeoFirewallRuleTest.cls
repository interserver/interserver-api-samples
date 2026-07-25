@isTest
private class IntServerCreateGeoFirewallRuleTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerCreateGeoFirewallRule createGeoFirewallRule1 = IntServerCreateGeoFirewallRule.getExample();
        IntServerCreateGeoFirewallRule createGeoFirewallRule2 = createGeoFirewallRule1;
        IntServerCreateGeoFirewallRule createGeoFirewallRule3 = new IntServerCreateGeoFirewallRule();
        IntServerCreateGeoFirewallRule createGeoFirewallRule4 = createGeoFirewallRule3;

        System.assert(createGeoFirewallRule1.equals(createGeoFirewallRule2));
        System.assert(createGeoFirewallRule2.equals(createGeoFirewallRule1));
        System.assert(createGeoFirewallRule1.equals(createGeoFirewallRule1));
        System.assert(createGeoFirewallRule3.equals(createGeoFirewallRule4));
        System.assert(createGeoFirewallRule4.equals(createGeoFirewallRule3));
        System.assert(createGeoFirewallRule3.equals(createGeoFirewallRule3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerCreateGeoFirewallRule createGeoFirewallRule1 = IntServerCreateGeoFirewallRule.getExample();
        IntServerCreateGeoFirewallRule createGeoFirewallRule2 = IntServerCreateGeoFirewallRule.getExample();
        IntServerCreateGeoFirewallRule createGeoFirewallRule3 = new IntServerCreateGeoFirewallRule();
        IntServerCreateGeoFirewallRule createGeoFirewallRule4 = new IntServerCreateGeoFirewallRule();

        System.assert(createGeoFirewallRule1.equals(createGeoFirewallRule2));
        System.assert(createGeoFirewallRule2.equals(createGeoFirewallRule1));
        System.assert(createGeoFirewallRule3.equals(createGeoFirewallRule4));
        System.assert(createGeoFirewallRule4.equals(createGeoFirewallRule3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerCreateGeoFirewallRule createGeoFirewallRule1 = IntServerCreateGeoFirewallRule.getExample();
        IntServerCreateGeoFirewallRule createGeoFirewallRule2 = new IntServerCreateGeoFirewallRule();

        System.assertEquals(false, createGeoFirewallRule1.equals('foo'));
        System.assertEquals(false, createGeoFirewallRule2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerCreateGeoFirewallRule createGeoFirewallRule1 = IntServerCreateGeoFirewallRule.getExample();
        IntServerCreateGeoFirewallRule createGeoFirewallRule2 = new IntServerCreateGeoFirewallRule();
        IntServerCreateGeoFirewallRule createGeoFirewallRule3;

        System.assertEquals(false, createGeoFirewallRule1.equals(createGeoFirewallRule3));
        System.assertEquals(false, createGeoFirewallRule2.equals(createGeoFirewallRule3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerCreateGeoFirewallRule createGeoFirewallRule1 = IntServerCreateGeoFirewallRule.getExample();
        IntServerCreateGeoFirewallRule createGeoFirewallRule2 = new IntServerCreateGeoFirewallRule();

        System.assertEquals(createGeoFirewallRule1.hashCode(), createGeoFirewallRule1.hashCode());
        System.assertEquals(createGeoFirewallRule2.hashCode(), createGeoFirewallRule2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerCreateGeoFirewallRule createGeoFirewallRule1 = IntServerCreateGeoFirewallRule.getExample();
        IntServerCreateGeoFirewallRule createGeoFirewallRule2 = IntServerCreateGeoFirewallRule.getExample();
        IntServerCreateGeoFirewallRule createGeoFirewallRule3 = new IntServerCreateGeoFirewallRule();
        IntServerCreateGeoFirewallRule createGeoFirewallRule4 = new IntServerCreateGeoFirewallRule();

        System.assert(createGeoFirewallRule1.equals(createGeoFirewallRule2));
        System.assert(createGeoFirewallRule3.equals(createGeoFirewallRule4));
        System.assertEquals(createGeoFirewallRule1.hashCode(), createGeoFirewallRule2.hashCode());
        System.assertEquals(createGeoFirewallRule3.hashCode(), createGeoFirewallRule4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerCreateGeoFirewallRule createGeoFirewallRule = new IntServerCreateGeoFirewallRule();
        Map<String, String> x-property-mappings = createGeoFirewallRule.getx-property-mappings();
        System.assertEquals('xdpAction', x-property-mappings.get('xdp_action'));
        System.assertEquals('destinationPort', x-property-mappings.get('destination_port'));
        System.assertEquals('countryCode', x-property-mappings.get('country_code'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerCreateGeoFirewallRule createGeoFirewallRule = new IntServerCreateGeoFirewallRule();
        System.assertEquals(80, createGeoFirewallRule.destinationPort);
        System.assertEquals(null, createGeoFirewallRule.xdpAction);
        System.assertEquals(null, createGeoFirewallRule.countryCode);
        System.assertEquals(null, createGeoFirewallRule.asn);
    }
}
