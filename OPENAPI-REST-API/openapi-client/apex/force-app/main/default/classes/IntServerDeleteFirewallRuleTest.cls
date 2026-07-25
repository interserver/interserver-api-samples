@isTest
private class IntServerDeleteFirewallRuleTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDeleteFirewallRule deleteFirewallRule1 = IntServerDeleteFirewallRule.getExample();
        IntServerDeleteFirewallRule deleteFirewallRule2 = deleteFirewallRule1;
        IntServerDeleteFirewallRule deleteFirewallRule3 = new IntServerDeleteFirewallRule();
        IntServerDeleteFirewallRule deleteFirewallRule4 = deleteFirewallRule3;

        System.assert(deleteFirewallRule1.equals(deleteFirewallRule2));
        System.assert(deleteFirewallRule2.equals(deleteFirewallRule1));
        System.assert(deleteFirewallRule1.equals(deleteFirewallRule1));
        System.assert(deleteFirewallRule3.equals(deleteFirewallRule4));
        System.assert(deleteFirewallRule4.equals(deleteFirewallRule3));
        System.assert(deleteFirewallRule3.equals(deleteFirewallRule3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDeleteFirewallRule deleteFirewallRule1 = IntServerDeleteFirewallRule.getExample();
        IntServerDeleteFirewallRule deleteFirewallRule2 = IntServerDeleteFirewallRule.getExample();
        IntServerDeleteFirewallRule deleteFirewallRule3 = new IntServerDeleteFirewallRule();
        IntServerDeleteFirewallRule deleteFirewallRule4 = new IntServerDeleteFirewallRule();

        System.assert(deleteFirewallRule1.equals(deleteFirewallRule2));
        System.assert(deleteFirewallRule2.equals(deleteFirewallRule1));
        System.assert(deleteFirewallRule3.equals(deleteFirewallRule4));
        System.assert(deleteFirewallRule4.equals(deleteFirewallRule3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDeleteFirewallRule deleteFirewallRule1 = IntServerDeleteFirewallRule.getExample();
        IntServerDeleteFirewallRule deleteFirewallRule2 = new IntServerDeleteFirewallRule();

        System.assertEquals(false, deleteFirewallRule1.equals('foo'));
        System.assertEquals(false, deleteFirewallRule2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDeleteFirewallRule deleteFirewallRule1 = IntServerDeleteFirewallRule.getExample();
        IntServerDeleteFirewallRule deleteFirewallRule2 = new IntServerDeleteFirewallRule();
        IntServerDeleteFirewallRule deleteFirewallRule3;

        System.assertEquals(false, deleteFirewallRule1.equals(deleteFirewallRule3));
        System.assertEquals(false, deleteFirewallRule2.equals(deleteFirewallRule3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDeleteFirewallRule deleteFirewallRule1 = IntServerDeleteFirewallRule.getExample();
        IntServerDeleteFirewallRule deleteFirewallRule2 = new IntServerDeleteFirewallRule();

        System.assertEquals(deleteFirewallRule1.hashCode(), deleteFirewallRule1.hashCode());
        System.assertEquals(deleteFirewallRule2.hashCode(), deleteFirewallRule2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDeleteFirewallRule deleteFirewallRule1 = IntServerDeleteFirewallRule.getExample();
        IntServerDeleteFirewallRule deleteFirewallRule2 = IntServerDeleteFirewallRule.getExample();
        IntServerDeleteFirewallRule deleteFirewallRule3 = new IntServerDeleteFirewallRule();
        IntServerDeleteFirewallRule deleteFirewallRule4 = new IntServerDeleteFirewallRule();

        System.assert(deleteFirewallRule1.equals(deleteFirewallRule2));
        System.assert(deleteFirewallRule3.equals(deleteFirewallRule4));
        System.assertEquals(deleteFirewallRule1.hashCode(), deleteFirewallRule2.hashCode());
        System.assertEquals(deleteFirewallRule3.hashCode(), deleteFirewallRule4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDeleteFirewallRule deleteFirewallRule = new IntServerDeleteFirewallRule();
        Map<String, String> x-property-mappings = deleteFirewallRule.getx-property-mappings();
        System.assertEquals('ruleId', x-property-mappings.get('rule_id'));
    }
}
