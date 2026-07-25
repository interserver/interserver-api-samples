@isTest
private class IntServerScrubIpFilterTypesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerScrubIpFilterTypes scrubIpFilterTypes1 = IntServerScrubIpFilterTypes.getExample();
        IntServerScrubIpFilterTypes scrubIpFilterTypes2 = scrubIpFilterTypes1;
        IntServerScrubIpFilterTypes scrubIpFilterTypes3 = new IntServerScrubIpFilterTypes();
        IntServerScrubIpFilterTypes scrubIpFilterTypes4 = scrubIpFilterTypes3;

        System.assert(scrubIpFilterTypes1.equals(scrubIpFilterTypes2));
        System.assert(scrubIpFilterTypes2.equals(scrubIpFilterTypes1));
        System.assert(scrubIpFilterTypes1.equals(scrubIpFilterTypes1));
        System.assert(scrubIpFilterTypes3.equals(scrubIpFilterTypes4));
        System.assert(scrubIpFilterTypes4.equals(scrubIpFilterTypes3));
        System.assert(scrubIpFilterTypes3.equals(scrubIpFilterTypes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerScrubIpFilterTypes scrubIpFilterTypes1 = IntServerScrubIpFilterTypes.getExample();
        IntServerScrubIpFilterTypes scrubIpFilterTypes2 = IntServerScrubIpFilterTypes.getExample();
        IntServerScrubIpFilterTypes scrubIpFilterTypes3 = new IntServerScrubIpFilterTypes();
        IntServerScrubIpFilterTypes scrubIpFilterTypes4 = new IntServerScrubIpFilterTypes();

        System.assert(scrubIpFilterTypes1.equals(scrubIpFilterTypes2));
        System.assert(scrubIpFilterTypes2.equals(scrubIpFilterTypes1));
        System.assert(scrubIpFilterTypes3.equals(scrubIpFilterTypes4));
        System.assert(scrubIpFilterTypes4.equals(scrubIpFilterTypes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerScrubIpFilterTypes scrubIpFilterTypes1 = IntServerScrubIpFilterTypes.getExample();
        IntServerScrubIpFilterTypes scrubIpFilterTypes2 = new IntServerScrubIpFilterTypes();

        System.assertEquals(false, scrubIpFilterTypes1.equals('foo'));
        System.assertEquals(false, scrubIpFilterTypes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerScrubIpFilterTypes scrubIpFilterTypes1 = IntServerScrubIpFilterTypes.getExample();
        IntServerScrubIpFilterTypes scrubIpFilterTypes2 = new IntServerScrubIpFilterTypes();
        IntServerScrubIpFilterTypes scrubIpFilterTypes3;

        System.assertEquals(false, scrubIpFilterTypes1.equals(scrubIpFilterTypes3));
        System.assertEquals(false, scrubIpFilterTypes2.equals(scrubIpFilterTypes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerScrubIpFilterTypes scrubIpFilterTypes1 = IntServerScrubIpFilterTypes.getExample();
        IntServerScrubIpFilterTypes scrubIpFilterTypes2 = new IntServerScrubIpFilterTypes();

        System.assertEquals(scrubIpFilterTypes1.hashCode(), scrubIpFilterTypes1.hashCode());
        System.assertEquals(scrubIpFilterTypes2.hashCode(), scrubIpFilterTypes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerScrubIpFilterTypes scrubIpFilterTypes1 = IntServerScrubIpFilterTypes.getExample();
        IntServerScrubIpFilterTypes scrubIpFilterTypes2 = IntServerScrubIpFilterTypes.getExample();
        IntServerScrubIpFilterTypes scrubIpFilterTypes3 = new IntServerScrubIpFilterTypes();
        IntServerScrubIpFilterTypes scrubIpFilterTypes4 = new IntServerScrubIpFilterTypes();

        System.assert(scrubIpFilterTypes1.equals(scrubIpFilterTypes2));
        System.assert(scrubIpFilterTypes3.equals(scrubIpFilterTypes4));
        System.assertEquals(scrubIpFilterTypes1.hashCode(), scrubIpFilterTypes2.hashCode());
        System.assertEquals(scrubIpFilterTypes3.hashCode(), scrubIpFilterTypes4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerScrubIpFilterTypes scrubIpFilterTypes = new IntServerScrubIpFilterTypes();
        System.assertEquals(new Map<String, IntServerScrubIpFilterTypesFiltersVa>(), scrubIpFilterTypes.filters);
        System.assertEquals(null, scrubIpFilterTypes.success);
    }
}
