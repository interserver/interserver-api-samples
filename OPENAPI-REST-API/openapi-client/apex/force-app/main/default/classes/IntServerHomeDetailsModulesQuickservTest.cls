@isTest
private class IntServerHomeDetailsModulesQuickservTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers1 = IntServerHomeDetailsModulesQuickserv.getExample();
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers2 = homeDetailsModulesQuickservers1;
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers3 = new IntServerHomeDetailsModulesQuickserv();
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers4 = homeDetailsModulesQuickservers3;

        System.assert(homeDetailsModulesQuickservers1.equals(homeDetailsModulesQuickservers2));
        System.assert(homeDetailsModulesQuickservers2.equals(homeDetailsModulesQuickservers1));
        System.assert(homeDetailsModulesQuickservers1.equals(homeDetailsModulesQuickservers1));
        System.assert(homeDetailsModulesQuickservers3.equals(homeDetailsModulesQuickservers4));
        System.assert(homeDetailsModulesQuickservers4.equals(homeDetailsModulesQuickservers3));
        System.assert(homeDetailsModulesQuickservers3.equals(homeDetailsModulesQuickservers3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers1 = IntServerHomeDetailsModulesQuickserv.getExample();
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers2 = IntServerHomeDetailsModulesQuickserv.getExample();
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers3 = new IntServerHomeDetailsModulesQuickserv();
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers4 = new IntServerHomeDetailsModulesQuickserv();

        System.assert(homeDetailsModulesQuickservers1.equals(homeDetailsModulesQuickservers2));
        System.assert(homeDetailsModulesQuickservers2.equals(homeDetailsModulesQuickservers1));
        System.assert(homeDetailsModulesQuickservers3.equals(homeDetailsModulesQuickservers4));
        System.assert(homeDetailsModulesQuickservers4.equals(homeDetailsModulesQuickservers3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers1 = IntServerHomeDetailsModulesQuickserv.getExample();
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers2 = new IntServerHomeDetailsModulesQuickserv();

        System.assertEquals(false, homeDetailsModulesQuickservers1.equals('foo'));
        System.assertEquals(false, homeDetailsModulesQuickservers2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers1 = IntServerHomeDetailsModulesQuickserv.getExample();
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers2 = new IntServerHomeDetailsModulesQuickserv();
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers3;

        System.assertEquals(false, homeDetailsModulesQuickservers1.equals(homeDetailsModulesQuickservers3));
        System.assertEquals(false, homeDetailsModulesQuickservers2.equals(homeDetailsModulesQuickservers3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers1 = IntServerHomeDetailsModulesQuickserv.getExample();
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers2 = new IntServerHomeDetailsModulesQuickserv();

        System.assertEquals(homeDetailsModulesQuickservers1.hashCode(), homeDetailsModulesQuickservers1.hashCode());
        System.assertEquals(homeDetailsModulesQuickservers2.hashCode(), homeDetailsModulesQuickservers2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers1 = IntServerHomeDetailsModulesQuickserv.getExample();
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers2 = IntServerHomeDetailsModulesQuickserv.getExample();
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers3 = new IntServerHomeDetailsModulesQuickserv();
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers4 = new IntServerHomeDetailsModulesQuickserv();

        System.assert(homeDetailsModulesQuickservers1.equals(homeDetailsModulesQuickservers2));
        System.assert(homeDetailsModulesQuickservers3.equals(homeDetailsModulesQuickservers4));
        System.assertEquals(homeDetailsModulesQuickservers1.hashCode(), homeDetailsModulesQuickservers2.hashCode());
        System.assertEquals(homeDetailsModulesQuickservers3.hashCode(), homeDetailsModulesQuickservers4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeDetailsModulesQuickserv homeDetailsModulesQuickservers = new IntServerHomeDetailsModulesQuickserv();
        Map<String, String> x-property-mappings = homeDetailsModulesQuickservers.getx-property-mappings();
        System.assertEquals('viewLink', x-property-mappings.get('view_link'));
        System.assertEquals('buyLink', x-property-mappings.get('buy_link'));
        System.assertEquals('listLink', x-property-mappings.get('list_link'));
    }
}
