@isTest
private class IntServerBuyItNowRowCpuInnerOneOfTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf1 = IntServerBuyItNowRowCpuInnerOneOf.getExample();
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf2 = buyItNowRowCpuInnerOneOf1;
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf3 = new IntServerBuyItNowRowCpuInnerOneOf();
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf4 = buyItNowRowCpuInnerOneOf3;

        System.assert(buyItNowRowCpuInnerOneOf1.equals(buyItNowRowCpuInnerOneOf2));
        System.assert(buyItNowRowCpuInnerOneOf2.equals(buyItNowRowCpuInnerOneOf1));
        System.assert(buyItNowRowCpuInnerOneOf1.equals(buyItNowRowCpuInnerOneOf1));
        System.assert(buyItNowRowCpuInnerOneOf3.equals(buyItNowRowCpuInnerOneOf4));
        System.assert(buyItNowRowCpuInnerOneOf4.equals(buyItNowRowCpuInnerOneOf3));
        System.assert(buyItNowRowCpuInnerOneOf3.equals(buyItNowRowCpuInnerOneOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf1 = IntServerBuyItNowRowCpuInnerOneOf.getExample();
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf2 = IntServerBuyItNowRowCpuInnerOneOf.getExample();
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf3 = new IntServerBuyItNowRowCpuInnerOneOf();
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf4 = new IntServerBuyItNowRowCpuInnerOneOf();

        System.assert(buyItNowRowCpuInnerOneOf1.equals(buyItNowRowCpuInnerOneOf2));
        System.assert(buyItNowRowCpuInnerOneOf2.equals(buyItNowRowCpuInnerOneOf1));
        System.assert(buyItNowRowCpuInnerOneOf3.equals(buyItNowRowCpuInnerOneOf4));
        System.assert(buyItNowRowCpuInnerOneOf4.equals(buyItNowRowCpuInnerOneOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf1 = IntServerBuyItNowRowCpuInnerOneOf.getExample();
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf2 = new IntServerBuyItNowRowCpuInnerOneOf();

        System.assertEquals(false, buyItNowRowCpuInnerOneOf1.equals('foo'));
        System.assertEquals(false, buyItNowRowCpuInnerOneOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf1 = IntServerBuyItNowRowCpuInnerOneOf.getExample();
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf2 = new IntServerBuyItNowRowCpuInnerOneOf();
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf3;

        System.assertEquals(false, buyItNowRowCpuInnerOneOf1.equals(buyItNowRowCpuInnerOneOf3));
        System.assertEquals(false, buyItNowRowCpuInnerOneOf2.equals(buyItNowRowCpuInnerOneOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf1 = IntServerBuyItNowRowCpuInnerOneOf.getExample();
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf2 = new IntServerBuyItNowRowCpuInnerOneOf();

        System.assertEquals(buyItNowRowCpuInnerOneOf1.hashCode(), buyItNowRowCpuInnerOneOf1.hashCode());
        System.assertEquals(buyItNowRowCpuInnerOneOf2.hashCode(), buyItNowRowCpuInnerOneOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf1 = IntServerBuyItNowRowCpuInnerOneOf.getExample();
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf2 = IntServerBuyItNowRowCpuInnerOneOf.getExample();
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf3 = new IntServerBuyItNowRowCpuInnerOneOf();
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf4 = new IntServerBuyItNowRowCpuInnerOneOf();

        System.assert(buyItNowRowCpuInnerOneOf1.equals(buyItNowRowCpuInnerOneOf2));
        System.assert(buyItNowRowCpuInnerOneOf3.equals(buyItNowRowCpuInnerOneOf4));
        System.assertEquals(buyItNowRowCpuInnerOneOf1.hashCode(), buyItNowRowCpuInnerOneOf2.hashCode());
        System.assertEquals(buyItNowRowCpuInnerOneOf3.hashCode(), buyItNowRowCpuInnerOneOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBuyItNowRowCpuInnerOneOf buyItNowRowCpuInnerOneOf = new IntServerBuyItNowRowCpuInnerOneOf();
        Map<String, String> x-property-mappings = buyItNowRowCpuInnerOneOf.getx-property-mappings();
        System.assertEquals('numCpus', x-property-mappings.get('num_cpus'));
        System.assertEquals('numCores', x-property-mappings.get('num_cores'));
    }
}
