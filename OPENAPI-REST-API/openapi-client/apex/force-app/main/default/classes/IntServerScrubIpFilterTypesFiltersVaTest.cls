@isTest
private class IntServerScrubIpFilterTypesFiltersVaTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue1 = IntServerScrubIpFilterTypesFiltersVa.getExample();
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue2 = scrubIpFilterTypesFiltersValue1;
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue3 = new IntServerScrubIpFilterTypesFiltersVa();
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue4 = scrubIpFilterTypesFiltersValue3;

        System.assert(scrubIpFilterTypesFiltersValue1.equals(scrubIpFilterTypesFiltersValue2));
        System.assert(scrubIpFilterTypesFiltersValue2.equals(scrubIpFilterTypesFiltersValue1));
        System.assert(scrubIpFilterTypesFiltersValue1.equals(scrubIpFilterTypesFiltersValue1));
        System.assert(scrubIpFilterTypesFiltersValue3.equals(scrubIpFilterTypesFiltersValue4));
        System.assert(scrubIpFilterTypesFiltersValue4.equals(scrubIpFilterTypesFiltersValue3));
        System.assert(scrubIpFilterTypesFiltersValue3.equals(scrubIpFilterTypesFiltersValue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue1 = IntServerScrubIpFilterTypesFiltersVa.getExample();
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue2 = IntServerScrubIpFilterTypesFiltersVa.getExample();
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue3 = new IntServerScrubIpFilterTypesFiltersVa();
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue4 = new IntServerScrubIpFilterTypesFiltersVa();

        System.assert(scrubIpFilterTypesFiltersValue1.equals(scrubIpFilterTypesFiltersValue2));
        System.assert(scrubIpFilterTypesFiltersValue2.equals(scrubIpFilterTypesFiltersValue1));
        System.assert(scrubIpFilterTypesFiltersValue3.equals(scrubIpFilterTypesFiltersValue4));
        System.assert(scrubIpFilterTypesFiltersValue4.equals(scrubIpFilterTypesFiltersValue3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue1 = IntServerScrubIpFilterTypesFiltersVa.getExample();
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue2 = new IntServerScrubIpFilterTypesFiltersVa();

        System.assertEquals(false, scrubIpFilterTypesFiltersValue1.equals('foo'));
        System.assertEquals(false, scrubIpFilterTypesFiltersValue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue1 = IntServerScrubIpFilterTypesFiltersVa.getExample();
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue2 = new IntServerScrubIpFilterTypesFiltersVa();
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue3;

        System.assertEquals(false, scrubIpFilterTypesFiltersValue1.equals(scrubIpFilterTypesFiltersValue3));
        System.assertEquals(false, scrubIpFilterTypesFiltersValue2.equals(scrubIpFilterTypesFiltersValue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue1 = IntServerScrubIpFilterTypesFiltersVa.getExample();
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue2 = new IntServerScrubIpFilterTypesFiltersVa();

        System.assertEquals(scrubIpFilterTypesFiltersValue1.hashCode(), scrubIpFilterTypesFiltersValue1.hashCode());
        System.assertEquals(scrubIpFilterTypesFiltersValue2.hashCode(), scrubIpFilterTypesFiltersValue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue1 = IntServerScrubIpFilterTypesFiltersVa.getExample();
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue2 = IntServerScrubIpFilterTypesFiltersVa.getExample();
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue3 = new IntServerScrubIpFilterTypesFiltersVa();
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue4 = new IntServerScrubIpFilterTypesFiltersVa();

        System.assert(scrubIpFilterTypesFiltersValue1.equals(scrubIpFilterTypesFiltersValue2));
        System.assert(scrubIpFilterTypesFiltersValue3.equals(scrubIpFilterTypesFiltersValue4));
        System.assertEquals(scrubIpFilterTypesFiltersValue1.hashCode(), scrubIpFilterTypesFiltersValue2.hashCode());
        System.assertEquals(scrubIpFilterTypesFiltersValue3.hashCode(), scrubIpFilterTypesFiltersValue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerScrubIpFilterTypesFiltersVa scrubIpFilterTypesFiltersValue = new IntServerScrubIpFilterTypesFiltersVa();
        Map<String, String> x-property-mappings = scrubIpFilterTypesFiltersValue.getx-property-mappings();
        System.assertEquals('r_desc', x-property-mappings.get('desc'));
    }
}
