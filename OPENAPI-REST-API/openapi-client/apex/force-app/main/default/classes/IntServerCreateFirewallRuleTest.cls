@isTest
private class IntServerCreateFirewallRuleTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerCreateFirewallRule createFirewallRule1 = IntServerCreateFirewallRule.getExample();
        IntServerCreateFirewallRule createFirewallRule2 = createFirewallRule1;
        IntServerCreateFirewallRule createFirewallRule3 = new IntServerCreateFirewallRule();
        IntServerCreateFirewallRule createFirewallRule4 = createFirewallRule3;

        System.assert(createFirewallRule1.equals(createFirewallRule2));
        System.assert(createFirewallRule2.equals(createFirewallRule1));
        System.assert(createFirewallRule1.equals(createFirewallRule1));
        System.assert(createFirewallRule3.equals(createFirewallRule4));
        System.assert(createFirewallRule4.equals(createFirewallRule3));
        System.assert(createFirewallRule3.equals(createFirewallRule3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerCreateFirewallRule createFirewallRule1 = IntServerCreateFirewallRule.getExample();
        IntServerCreateFirewallRule createFirewallRule2 = IntServerCreateFirewallRule.getExample();
        IntServerCreateFirewallRule createFirewallRule3 = new IntServerCreateFirewallRule();
        IntServerCreateFirewallRule createFirewallRule4 = new IntServerCreateFirewallRule();

        System.assert(createFirewallRule1.equals(createFirewallRule2));
        System.assert(createFirewallRule2.equals(createFirewallRule1));
        System.assert(createFirewallRule3.equals(createFirewallRule4));
        System.assert(createFirewallRule4.equals(createFirewallRule3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerCreateFirewallRule createFirewallRule1 = IntServerCreateFirewallRule.getExample();
        IntServerCreateFirewallRule createFirewallRule2 = new IntServerCreateFirewallRule();

        System.assertEquals(false, createFirewallRule1.equals('foo'));
        System.assertEquals(false, createFirewallRule2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerCreateFirewallRule createFirewallRule1 = IntServerCreateFirewallRule.getExample();
        IntServerCreateFirewallRule createFirewallRule2 = new IntServerCreateFirewallRule();
        IntServerCreateFirewallRule createFirewallRule3;

        System.assertEquals(false, createFirewallRule1.equals(createFirewallRule3));
        System.assertEquals(false, createFirewallRule2.equals(createFirewallRule3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerCreateFirewallRule createFirewallRule1 = IntServerCreateFirewallRule.getExample();
        IntServerCreateFirewallRule createFirewallRule2 = new IntServerCreateFirewallRule();

        System.assertEquals(createFirewallRule1.hashCode(), createFirewallRule1.hashCode());
        System.assertEquals(createFirewallRule2.hashCode(), createFirewallRule2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerCreateFirewallRule createFirewallRule1 = IntServerCreateFirewallRule.getExample();
        IntServerCreateFirewallRule createFirewallRule2 = IntServerCreateFirewallRule.getExample();
        IntServerCreateFirewallRule createFirewallRule3 = new IntServerCreateFirewallRule();
        IntServerCreateFirewallRule createFirewallRule4 = new IntServerCreateFirewallRule();

        System.assert(createFirewallRule1.equals(createFirewallRule2));
        System.assert(createFirewallRule3.equals(createFirewallRule4));
        System.assertEquals(createFirewallRule1.hashCode(), createFirewallRule2.hashCode());
        System.assertEquals(createFirewallRule3.hashCode(), createFirewallRule4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerCreateFirewallRule createFirewallRule = new IntServerCreateFirewallRule();
        Map<String, String> x-property-mappings = createFirewallRule.getx-property-mappings();
        System.assertEquals('protocolId', x-property-mappings.get('protocol_id'));
        System.assertEquals('xdpAction', x-property-mappings.get('xdp_action'));
        System.assertEquals('destinationPort', x-property-mappings.get('destination_port'));
        System.assertEquals('sourceIp', x-property-mappings.get('source_ip'));
        System.assertEquals('sourcePort', x-property-mappings.get('source_port'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerCreateFirewallRule createFirewallRule = new IntServerCreateFirewallRule();
        System.assertEquals(80, createFirewallRule.destinationPort);
        System.assertEquals('0.0.0.0', createFirewallRule.sourceIp);
        System.assertEquals(0, createFirewallRule.sourcePort);
        System.assertEquals(null, createFirewallRule.protocolId);
        System.assertEquals(null, createFirewallRule.xdpAction);
    }
}
