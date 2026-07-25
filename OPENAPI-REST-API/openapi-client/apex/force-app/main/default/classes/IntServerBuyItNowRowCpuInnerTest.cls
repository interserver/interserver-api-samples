@isTest
private class IntServerBuyItNowRowCpuInnerTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner1 = IntServerBuyItNowRowCpuInner.getExample();
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner2 = buyItNowRowCpuInner1;
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner3 = new IntServerBuyItNowRowCpuInner();
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner4 = buyItNowRowCpuInner3;

        System.assert(buyItNowRowCpuInner1.equals(buyItNowRowCpuInner2));
        System.assert(buyItNowRowCpuInner2.equals(buyItNowRowCpuInner1));
        System.assert(buyItNowRowCpuInner1.equals(buyItNowRowCpuInner1));
        System.assert(buyItNowRowCpuInner3.equals(buyItNowRowCpuInner4));
        System.assert(buyItNowRowCpuInner4.equals(buyItNowRowCpuInner3));
        System.assert(buyItNowRowCpuInner3.equals(buyItNowRowCpuInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner1 = IntServerBuyItNowRowCpuInner.getExample();
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner2 = IntServerBuyItNowRowCpuInner.getExample();
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner3 = new IntServerBuyItNowRowCpuInner();
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner4 = new IntServerBuyItNowRowCpuInner();

        System.assert(buyItNowRowCpuInner1.equals(buyItNowRowCpuInner2));
        System.assert(buyItNowRowCpuInner2.equals(buyItNowRowCpuInner1));
        System.assert(buyItNowRowCpuInner3.equals(buyItNowRowCpuInner4));
        System.assert(buyItNowRowCpuInner4.equals(buyItNowRowCpuInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner1 = IntServerBuyItNowRowCpuInner.getExample();
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner2 = new IntServerBuyItNowRowCpuInner();

        System.assertEquals(false, buyItNowRowCpuInner1.equals('foo'));
        System.assertEquals(false, buyItNowRowCpuInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner1 = IntServerBuyItNowRowCpuInner.getExample();
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner2 = new IntServerBuyItNowRowCpuInner();
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner3;

        System.assertEquals(false, buyItNowRowCpuInner1.equals(buyItNowRowCpuInner3));
        System.assertEquals(false, buyItNowRowCpuInner2.equals(buyItNowRowCpuInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner1 = IntServerBuyItNowRowCpuInner.getExample();
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner2 = new IntServerBuyItNowRowCpuInner();

        System.assertEquals(buyItNowRowCpuInner1.hashCode(), buyItNowRowCpuInner1.hashCode());
        System.assertEquals(buyItNowRowCpuInner2.hashCode(), buyItNowRowCpuInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner1 = IntServerBuyItNowRowCpuInner.getExample();
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner2 = IntServerBuyItNowRowCpuInner.getExample();
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner3 = new IntServerBuyItNowRowCpuInner();
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner4 = new IntServerBuyItNowRowCpuInner();

        System.assert(buyItNowRowCpuInner1.equals(buyItNowRowCpuInner2));
        System.assert(buyItNowRowCpuInner3.equals(buyItNowRowCpuInner4));
        System.assertEquals(buyItNowRowCpuInner1.hashCode(), buyItNowRowCpuInner2.hashCode());
        System.assertEquals(buyItNowRowCpuInner3.hashCode(), buyItNowRowCpuInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBuyItNowRowCpuInner buyItNowRowCpuInner = new IntServerBuyItNowRowCpuInner();
        Map<String, String> x-property-mappings = buyItNowRowCpuInner.getx-property-mappings();
        System.assertEquals('numCpus', x-property-mappings.get('num_cpus'));
        System.assertEquals('numCores', x-property-mappings.get('num_cores'));
    }
}
