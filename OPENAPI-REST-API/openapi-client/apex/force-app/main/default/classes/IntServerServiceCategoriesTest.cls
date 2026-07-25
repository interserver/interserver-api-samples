@isTest
private class IntServerServiceCategoriesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServiceCategories serviceCategories1 = IntServerServiceCategories.getExample();
        IntServerServiceCategories serviceCategories2 = serviceCategories1;
        IntServerServiceCategories serviceCategories3 = new IntServerServiceCategories();
        IntServerServiceCategories serviceCategories4 = serviceCategories3;

        System.assert(serviceCategories1.equals(serviceCategories2));
        System.assert(serviceCategories2.equals(serviceCategories1));
        System.assert(serviceCategories1.equals(serviceCategories1));
        System.assert(serviceCategories3.equals(serviceCategories4));
        System.assert(serviceCategories4.equals(serviceCategories3));
        System.assert(serviceCategories3.equals(serviceCategories3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServiceCategories serviceCategories1 = IntServerServiceCategories.getExample();
        IntServerServiceCategories serviceCategories2 = IntServerServiceCategories.getExample();
        IntServerServiceCategories serviceCategories3 = new IntServerServiceCategories();
        IntServerServiceCategories serviceCategories4 = new IntServerServiceCategories();

        System.assert(serviceCategories1.equals(serviceCategories2));
        System.assert(serviceCategories2.equals(serviceCategories1));
        System.assert(serviceCategories3.equals(serviceCategories4));
        System.assert(serviceCategories4.equals(serviceCategories3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServiceCategories serviceCategories1 = IntServerServiceCategories.getExample();
        IntServerServiceCategories serviceCategories2 = new IntServerServiceCategories();

        System.assertEquals(false, serviceCategories1.equals('foo'));
        System.assertEquals(false, serviceCategories2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServiceCategories serviceCategories1 = IntServerServiceCategories.getExample();
        IntServerServiceCategories serviceCategories2 = new IntServerServiceCategories();
        IntServerServiceCategories serviceCategories3;

        System.assertEquals(false, serviceCategories1.equals(serviceCategories3));
        System.assertEquals(false, serviceCategories2.equals(serviceCategories3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServiceCategories serviceCategories1 = IntServerServiceCategories.getExample();
        IntServerServiceCategories serviceCategories2 = new IntServerServiceCategories();

        System.assertEquals(serviceCategories1.hashCode(), serviceCategories1.hashCode());
        System.assertEquals(serviceCategories2.hashCode(), serviceCategories2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServiceCategories serviceCategories1 = IntServerServiceCategories.getExample();
        IntServerServiceCategories serviceCategories2 = IntServerServiceCategories.getExample();
        IntServerServiceCategories serviceCategories3 = new IntServerServiceCategories();
        IntServerServiceCategories serviceCategories4 = new IntServerServiceCategories();

        System.assert(serviceCategories1.equals(serviceCategories2));
        System.assert(serviceCategories3.equals(serviceCategories4));
        System.assertEquals(serviceCategories1.hashCode(), serviceCategories2.hashCode());
        System.assertEquals(serviceCategories3.hashCode(), serviceCategories4.hashCode());
    }
}
