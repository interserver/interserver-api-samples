@isTest
private class IntServerDeleteGeoFirewallRuleTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule1 = IntServerDeleteGeoFirewallRule.getExample();
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule2 = deleteGeoFirewallRule1;
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule3 = new IntServerDeleteGeoFirewallRule();
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule4 = deleteGeoFirewallRule3;

        System.assert(deleteGeoFirewallRule1.equals(deleteGeoFirewallRule2));
        System.assert(deleteGeoFirewallRule2.equals(deleteGeoFirewallRule1));
        System.assert(deleteGeoFirewallRule1.equals(deleteGeoFirewallRule1));
        System.assert(deleteGeoFirewallRule3.equals(deleteGeoFirewallRule4));
        System.assert(deleteGeoFirewallRule4.equals(deleteGeoFirewallRule3));
        System.assert(deleteGeoFirewallRule3.equals(deleteGeoFirewallRule3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule1 = IntServerDeleteGeoFirewallRule.getExample();
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule2 = IntServerDeleteGeoFirewallRule.getExample();
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule3 = new IntServerDeleteGeoFirewallRule();
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule4 = new IntServerDeleteGeoFirewallRule();

        System.assert(deleteGeoFirewallRule1.equals(deleteGeoFirewallRule2));
        System.assert(deleteGeoFirewallRule2.equals(deleteGeoFirewallRule1));
        System.assert(deleteGeoFirewallRule3.equals(deleteGeoFirewallRule4));
        System.assert(deleteGeoFirewallRule4.equals(deleteGeoFirewallRule3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule1 = IntServerDeleteGeoFirewallRule.getExample();
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule2 = new IntServerDeleteGeoFirewallRule();

        System.assertEquals(false, deleteGeoFirewallRule1.equals('foo'));
        System.assertEquals(false, deleteGeoFirewallRule2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule1 = IntServerDeleteGeoFirewallRule.getExample();
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule2 = new IntServerDeleteGeoFirewallRule();
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule3;

        System.assertEquals(false, deleteGeoFirewallRule1.equals(deleteGeoFirewallRule3));
        System.assertEquals(false, deleteGeoFirewallRule2.equals(deleteGeoFirewallRule3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule1 = IntServerDeleteGeoFirewallRule.getExample();
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule2 = new IntServerDeleteGeoFirewallRule();

        System.assertEquals(deleteGeoFirewallRule1.hashCode(), deleteGeoFirewallRule1.hashCode());
        System.assertEquals(deleteGeoFirewallRule2.hashCode(), deleteGeoFirewallRule2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule1 = IntServerDeleteGeoFirewallRule.getExample();
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule2 = IntServerDeleteGeoFirewallRule.getExample();
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule3 = new IntServerDeleteGeoFirewallRule();
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule4 = new IntServerDeleteGeoFirewallRule();

        System.assert(deleteGeoFirewallRule1.equals(deleteGeoFirewallRule2));
        System.assert(deleteGeoFirewallRule3.equals(deleteGeoFirewallRule4));
        System.assertEquals(deleteGeoFirewallRule1.hashCode(), deleteGeoFirewallRule2.hashCode());
        System.assertEquals(deleteGeoFirewallRule3.hashCode(), deleteGeoFirewallRule4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDeleteGeoFirewallRule deleteGeoFirewallRule = new IntServerDeleteGeoFirewallRule();
        Map<String, String> x-property-mappings = deleteGeoFirewallRule.getx-property-mappings();
        System.assertEquals('ruleId', x-property-mappings.get('rule_id'));
    }
}
