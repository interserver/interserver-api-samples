@isTest
private class IntServerHomeServicesDomainsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeServicesDomains homeServicesDomains1 = IntServerHomeServicesDomains.getExample();
        IntServerHomeServicesDomains homeServicesDomains2 = homeServicesDomains1;
        IntServerHomeServicesDomains homeServicesDomains3 = new IntServerHomeServicesDomains();
        IntServerHomeServicesDomains homeServicesDomains4 = homeServicesDomains3;

        System.assert(homeServicesDomains1.equals(homeServicesDomains2));
        System.assert(homeServicesDomains2.equals(homeServicesDomains1));
        System.assert(homeServicesDomains1.equals(homeServicesDomains1));
        System.assert(homeServicesDomains3.equals(homeServicesDomains4));
        System.assert(homeServicesDomains4.equals(homeServicesDomains3));
        System.assert(homeServicesDomains3.equals(homeServicesDomains3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeServicesDomains homeServicesDomains1 = IntServerHomeServicesDomains.getExample();
        IntServerHomeServicesDomains homeServicesDomains2 = IntServerHomeServicesDomains.getExample();
        IntServerHomeServicesDomains homeServicesDomains3 = new IntServerHomeServicesDomains();
        IntServerHomeServicesDomains homeServicesDomains4 = new IntServerHomeServicesDomains();

        System.assert(homeServicesDomains1.equals(homeServicesDomains2));
        System.assert(homeServicesDomains2.equals(homeServicesDomains1));
        System.assert(homeServicesDomains3.equals(homeServicesDomains4));
        System.assert(homeServicesDomains4.equals(homeServicesDomains3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeServicesDomains homeServicesDomains1 = IntServerHomeServicesDomains.getExample();
        IntServerHomeServicesDomains homeServicesDomains2 = new IntServerHomeServicesDomains();

        System.assertEquals(false, homeServicesDomains1.equals('foo'));
        System.assertEquals(false, homeServicesDomains2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeServicesDomains homeServicesDomains1 = IntServerHomeServicesDomains.getExample();
        IntServerHomeServicesDomains homeServicesDomains2 = new IntServerHomeServicesDomains();
        IntServerHomeServicesDomains homeServicesDomains3;

        System.assertEquals(false, homeServicesDomains1.equals(homeServicesDomains3));
        System.assertEquals(false, homeServicesDomains2.equals(homeServicesDomains3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeServicesDomains homeServicesDomains1 = IntServerHomeServicesDomains.getExample();
        IntServerHomeServicesDomains homeServicesDomains2 = new IntServerHomeServicesDomains();

        System.assertEquals(homeServicesDomains1.hashCode(), homeServicesDomains1.hashCode());
        System.assertEquals(homeServicesDomains2.hashCode(), homeServicesDomains2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeServicesDomains homeServicesDomains1 = IntServerHomeServicesDomains.getExample();
        IntServerHomeServicesDomains homeServicesDomains2 = IntServerHomeServicesDomains.getExample();
        IntServerHomeServicesDomains homeServicesDomains3 = new IntServerHomeServicesDomains();
        IntServerHomeServicesDomains homeServicesDomains4 = new IntServerHomeServicesDomains();

        System.assert(homeServicesDomains1.equals(homeServicesDomains2));
        System.assert(homeServicesDomains3.equals(homeServicesDomains4));
        System.assertEquals(homeServicesDomains1.hashCode(), homeServicesDomains2.hashCode());
        System.assertEquals(homeServicesDomains3.hashCode(), homeServicesDomains4.hashCode());
    }
}
