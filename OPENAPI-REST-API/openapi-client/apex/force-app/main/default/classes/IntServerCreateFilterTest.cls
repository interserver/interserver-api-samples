@isTest
private class IntServerCreateFilterTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerCreateFilter createFilter1 = IntServerCreateFilter.getExample();
        IntServerCreateFilter createFilter2 = createFilter1;
        IntServerCreateFilter createFilter3 = new IntServerCreateFilter();
        IntServerCreateFilter createFilter4 = createFilter3;

        System.assert(createFilter1.equals(createFilter2));
        System.assert(createFilter2.equals(createFilter1));
        System.assert(createFilter1.equals(createFilter1));
        System.assert(createFilter3.equals(createFilter4));
        System.assert(createFilter4.equals(createFilter3));
        System.assert(createFilter3.equals(createFilter3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerCreateFilter createFilter1 = IntServerCreateFilter.getExample();
        IntServerCreateFilter createFilter2 = IntServerCreateFilter.getExample();
        IntServerCreateFilter createFilter3 = new IntServerCreateFilter();
        IntServerCreateFilter createFilter4 = new IntServerCreateFilter();

        System.assert(createFilter1.equals(createFilter2));
        System.assert(createFilter2.equals(createFilter1));
        System.assert(createFilter3.equals(createFilter4));
        System.assert(createFilter4.equals(createFilter3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerCreateFilter createFilter1 = IntServerCreateFilter.getExample();
        IntServerCreateFilter createFilter2 = new IntServerCreateFilter();

        System.assertEquals(false, createFilter1.equals('foo'));
        System.assertEquals(false, createFilter2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerCreateFilter createFilter1 = IntServerCreateFilter.getExample();
        IntServerCreateFilter createFilter2 = new IntServerCreateFilter();
        IntServerCreateFilter createFilter3;

        System.assertEquals(false, createFilter1.equals(createFilter3));
        System.assertEquals(false, createFilter2.equals(createFilter3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerCreateFilter createFilter1 = IntServerCreateFilter.getExample();
        IntServerCreateFilter createFilter2 = new IntServerCreateFilter();

        System.assertEquals(createFilter1.hashCode(), createFilter1.hashCode());
        System.assertEquals(createFilter2.hashCode(), createFilter2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerCreateFilter createFilter1 = IntServerCreateFilter.getExample();
        IntServerCreateFilter createFilter2 = IntServerCreateFilter.getExample();
        IntServerCreateFilter createFilter3 = new IntServerCreateFilter();
        IntServerCreateFilter createFilter4 = new IntServerCreateFilter();

        System.assert(createFilter1.equals(createFilter2));
        System.assert(createFilter3.equals(createFilter4));
        System.assertEquals(createFilter1.hashCode(), createFilter2.hashCode());
        System.assertEquals(createFilter3.hashCode(), createFilter4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerCreateFilter createFilter = new IntServerCreateFilter();
        Map<String, String> x-property-mappings = createFilter.getx-property-mappings();
        System.assertEquals('filterType', x-property-mappings.get('filter_type'));
    }
}
