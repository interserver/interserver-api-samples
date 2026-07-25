@isTest
private class IntServerHomeDetailsModulesVpsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeDetailsModulesVps homeDetailsModulesVps1 = IntServerHomeDetailsModulesVps.getExample();
        IntServerHomeDetailsModulesVps homeDetailsModulesVps2 = homeDetailsModulesVps1;
        IntServerHomeDetailsModulesVps homeDetailsModulesVps3 = new IntServerHomeDetailsModulesVps();
        IntServerHomeDetailsModulesVps homeDetailsModulesVps4 = homeDetailsModulesVps3;

        System.assert(homeDetailsModulesVps1.equals(homeDetailsModulesVps2));
        System.assert(homeDetailsModulesVps2.equals(homeDetailsModulesVps1));
        System.assert(homeDetailsModulesVps1.equals(homeDetailsModulesVps1));
        System.assert(homeDetailsModulesVps3.equals(homeDetailsModulesVps4));
        System.assert(homeDetailsModulesVps4.equals(homeDetailsModulesVps3));
        System.assert(homeDetailsModulesVps3.equals(homeDetailsModulesVps3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeDetailsModulesVps homeDetailsModulesVps1 = IntServerHomeDetailsModulesVps.getExample();
        IntServerHomeDetailsModulesVps homeDetailsModulesVps2 = IntServerHomeDetailsModulesVps.getExample();
        IntServerHomeDetailsModulesVps homeDetailsModulesVps3 = new IntServerHomeDetailsModulesVps();
        IntServerHomeDetailsModulesVps homeDetailsModulesVps4 = new IntServerHomeDetailsModulesVps();

        System.assert(homeDetailsModulesVps1.equals(homeDetailsModulesVps2));
        System.assert(homeDetailsModulesVps2.equals(homeDetailsModulesVps1));
        System.assert(homeDetailsModulesVps3.equals(homeDetailsModulesVps4));
        System.assert(homeDetailsModulesVps4.equals(homeDetailsModulesVps3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeDetailsModulesVps homeDetailsModulesVps1 = IntServerHomeDetailsModulesVps.getExample();
        IntServerHomeDetailsModulesVps homeDetailsModulesVps2 = new IntServerHomeDetailsModulesVps();

        System.assertEquals(false, homeDetailsModulesVps1.equals('foo'));
        System.assertEquals(false, homeDetailsModulesVps2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeDetailsModulesVps homeDetailsModulesVps1 = IntServerHomeDetailsModulesVps.getExample();
        IntServerHomeDetailsModulesVps homeDetailsModulesVps2 = new IntServerHomeDetailsModulesVps();
        IntServerHomeDetailsModulesVps homeDetailsModulesVps3;

        System.assertEquals(false, homeDetailsModulesVps1.equals(homeDetailsModulesVps3));
        System.assertEquals(false, homeDetailsModulesVps2.equals(homeDetailsModulesVps3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeDetailsModulesVps homeDetailsModulesVps1 = IntServerHomeDetailsModulesVps.getExample();
        IntServerHomeDetailsModulesVps homeDetailsModulesVps2 = new IntServerHomeDetailsModulesVps();

        System.assertEquals(homeDetailsModulesVps1.hashCode(), homeDetailsModulesVps1.hashCode());
        System.assertEquals(homeDetailsModulesVps2.hashCode(), homeDetailsModulesVps2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeDetailsModulesVps homeDetailsModulesVps1 = IntServerHomeDetailsModulesVps.getExample();
        IntServerHomeDetailsModulesVps homeDetailsModulesVps2 = IntServerHomeDetailsModulesVps.getExample();
        IntServerHomeDetailsModulesVps homeDetailsModulesVps3 = new IntServerHomeDetailsModulesVps();
        IntServerHomeDetailsModulesVps homeDetailsModulesVps4 = new IntServerHomeDetailsModulesVps();

        System.assert(homeDetailsModulesVps1.equals(homeDetailsModulesVps2));
        System.assert(homeDetailsModulesVps3.equals(homeDetailsModulesVps4));
        System.assertEquals(homeDetailsModulesVps1.hashCode(), homeDetailsModulesVps2.hashCode());
        System.assertEquals(homeDetailsModulesVps3.hashCode(), homeDetailsModulesVps4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeDetailsModulesVps homeDetailsModulesVps = new IntServerHomeDetailsModulesVps();
        Map<String, String> x-property-mappings = homeDetailsModulesVps.getx-property-mappings();
        System.assertEquals('viewLink', x-property-mappings.get('view_link'));
        System.assertEquals('buyLink', x-property-mappings.get('buy_link'));
        System.assertEquals('listLink', x-property-mappings.get('list_link'));
    }
}
