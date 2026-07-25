@isTest
private class IntServerHomeDetailsModulesServersTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeDetailsModulesServers homeDetailsModulesServers1 = IntServerHomeDetailsModulesServers.getExample();
        IntServerHomeDetailsModulesServers homeDetailsModulesServers2 = homeDetailsModulesServers1;
        IntServerHomeDetailsModulesServers homeDetailsModulesServers3 = new IntServerHomeDetailsModulesServers();
        IntServerHomeDetailsModulesServers homeDetailsModulesServers4 = homeDetailsModulesServers3;

        System.assert(homeDetailsModulesServers1.equals(homeDetailsModulesServers2));
        System.assert(homeDetailsModulesServers2.equals(homeDetailsModulesServers1));
        System.assert(homeDetailsModulesServers1.equals(homeDetailsModulesServers1));
        System.assert(homeDetailsModulesServers3.equals(homeDetailsModulesServers4));
        System.assert(homeDetailsModulesServers4.equals(homeDetailsModulesServers3));
        System.assert(homeDetailsModulesServers3.equals(homeDetailsModulesServers3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeDetailsModulesServers homeDetailsModulesServers1 = IntServerHomeDetailsModulesServers.getExample();
        IntServerHomeDetailsModulesServers homeDetailsModulesServers2 = IntServerHomeDetailsModulesServers.getExample();
        IntServerHomeDetailsModulesServers homeDetailsModulesServers3 = new IntServerHomeDetailsModulesServers();
        IntServerHomeDetailsModulesServers homeDetailsModulesServers4 = new IntServerHomeDetailsModulesServers();

        System.assert(homeDetailsModulesServers1.equals(homeDetailsModulesServers2));
        System.assert(homeDetailsModulesServers2.equals(homeDetailsModulesServers1));
        System.assert(homeDetailsModulesServers3.equals(homeDetailsModulesServers4));
        System.assert(homeDetailsModulesServers4.equals(homeDetailsModulesServers3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeDetailsModulesServers homeDetailsModulesServers1 = IntServerHomeDetailsModulesServers.getExample();
        IntServerHomeDetailsModulesServers homeDetailsModulesServers2 = new IntServerHomeDetailsModulesServers();

        System.assertEquals(false, homeDetailsModulesServers1.equals('foo'));
        System.assertEquals(false, homeDetailsModulesServers2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeDetailsModulesServers homeDetailsModulesServers1 = IntServerHomeDetailsModulesServers.getExample();
        IntServerHomeDetailsModulesServers homeDetailsModulesServers2 = new IntServerHomeDetailsModulesServers();
        IntServerHomeDetailsModulesServers homeDetailsModulesServers3;

        System.assertEquals(false, homeDetailsModulesServers1.equals(homeDetailsModulesServers3));
        System.assertEquals(false, homeDetailsModulesServers2.equals(homeDetailsModulesServers3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeDetailsModulesServers homeDetailsModulesServers1 = IntServerHomeDetailsModulesServers.getExample();
        IntServerHomeDetailsModulesServers homeDetailsModulesServers2 = new IntServerHomeDetailsModulesServers();

        System.assertEquals(homeDetailsModulesServers1.hashCode(), homeDetailsModulesServers1.hashCode());
        System.assertEquals(homeDetailsModulesServers2.hashCode(), homeDetailsModulesServers2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeDetailsModulesServers homeDetailsModulesServers1 = IntServerHomeDetailsModulesServers.getExample();
        IntServerHomeDetailsModulesServers homeDetailsModulesServers2 = IntServerHomeDetailsModulesServers.getExample();
        IntServerHomeDetailsModulesServers homeDetailsModulesServers3 = new IntServerHomeDetailsModulesServers();
        IntServerHomeDetailsModulesServers homeDetailsModulesServers4 = new IntServerHomeDetailsModulesServers();

        System.assert(homeDetailsModulesServers1.equals(homeDetailsModulesServers2));
        System.assert(homeDetailsModulesServers3.equals(homeDetailsModulesServers4));
        System.assertEquals(homeDetailsModulesServers1.hashCode(), homeDetailsModulesServers2.hashCode());
        System.assertEquals(homeDetailsModulesServers3.hashCode(), homeDetailsModulesServers4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeDetailsModulesServers homeDetailsModulesServers = new IntServerHomeDetailsModulesServers();
        Map<String, String> x-property-mappings = homeDetailsModulesServers.getx-property-mappings();
        System.assertEquals('viewLink', x-property-mappings.get('view_link'));
        System.assertEquals('buyLink', x-property-mappings.get('buy_link'));
        System.assertEquals('listLink', x-property-mappings.get('list_link'));
    }
}
