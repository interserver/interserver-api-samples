@isTest
private class IntServerHomeDetailsModulesDomainsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains1 = IntServerHomeDetailsModulesDomains.getExample();
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains2 = homeDetailsModulesDomains1;
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains3 = new IntServerHomeDetailsModulesDomains();
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains4 = homeDetailsModulesDomains3;

        System.assert(homeDetailsModulesDomains1.equals(homeDetailsModulesDomains2));
        System.assert(homeDetailsModulesDomains2.equals(homeDetailsModulesDomains1));
        System.assert(homeDetailsModulesDomains1.equals(homeDetailsModulesDomains1));
        System.assert(homeDetailsModulesDomains3.equals(homeDetailsModulesDomains4));
        System.assert(homeDetailsModulesDomains4.equals(homeDetailsModulesDomains3));
        System.assert(homeDetailsModulesDomains3.equals(homeDetailsModulesDomains3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains1 = IntServerHomeDetailsModulesDomains.getExample();
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains2 = IntServerHomeDetailsModulesDomains.getExample();
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains3 = new IntServerHomeDetailsModulesDomains();
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains4 = new IntServerHomeDetailsModulesDomains();

        System.assert(homeDetailsModulesDomains1.equals(homeDetailsModulesDomains2));
        System.assert(homeDetailsModulesDomains2.equals(homeDetailsModulesDomains1));
        System.assert(homeDetailsModulesDomains3.equals(homeDetailsModulesDomains4));
        System.assert(homeDetailsModulesDomains4.equals(homeDetailsModulesDomains3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains1 = IntServerHomeDetailsModulesDomains.getExample();
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains2 = new IntServerHomeDetailsModulesDomains();

        System.assertEquals(false, homeDetailsModulesDomains1.equals('foo'));
        System.assertEquals(false, homeDetailsModulesDomains2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains1 = IntServerHomeDetailsModulesDomains.getExample();
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains2 = new IntServerHomeDetailsModulesDomains();
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains3;

        System.assertEquals(false, homeDetailsModulesDomains1.equals(homeDetailsModulesDomains3));
        System.assertEquals(false, homeDetailsModulesDomains2.equals(homeDetailsModulesDomains3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains1 = IntServerHomeDetailsModulesDomains.getExample();
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains2 = new IntServerHomeDetailsModulesDomains();

        System.assertEquals(homeDetailsModulesDomains1.hashCode(), homeDetailsModulesDomains1.hashCode());
        System.assertEquals(homeDetailsModulesDomains2.hashCode(), homeDetailsModulesDomains2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains1 = IntServerHomeDetailsModulesDomains.getExample();
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains2 = IntServerHomeDetailsModulesDomains.getExample();
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains3 = new IntServerHomeDetailsModulesDomains();
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains4 = new IntServerHomeDetailsModulesDomains();

        System.assert(homeDetailsModulesDomains1.equals(homeDetailsModulesDomains2));
        System.assert(homeDetailsModulesDomains3.equals(homeDetailsModulesDomains4));
        System.assertEquals(homeDetailsModulesDomains1.hashCode(), homeDetailsModulesDomains2.hashCode());
        System.assertEquals(homeDetailsModulesDomains3.hashCode(), homeDetailsModulesDomains4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeDetailsModulesDomains homeDetailsModulesDomains = new IntServerHomeDetailsModulesDomains();
        Map<String, String> x-property-mappings = homeDetailsModulesDomains.getx-property-mappings();
        System.assertEquals('viewLink', x-property-mappings.get('view_link'));
        System.assertEquals('buyLink', x-property-mappings.get('buy_link'));
        System.assertEquals('listLink', x-property-mappings.get('list_link'));
    }
}
