@isTest
private class IntServerBuyItNowRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBuyItNowRow buyItNowRow1 = IntServerBuyItNowRow.getExample();
        IntServerBuyItNowRow buyItNowRow2 = buyItNowRow1;
        IntServerBuyItNowRow buyItNowRow3 = new IntServerBuyItNowRow();
        IntServerBuyItNowRow buyItNowRow4 = buyItNowRow3;

        System.assert(buyItNowRow1.equals(buyItNowRow2));
        System.assert(buyItNowRow2.equals(buyItNowRow1));
        System.assert(buyItNowRow1.equals(buyItNowRow1));
        System.assert(buyItNowRow3.equals(buyItNowRow4));
        System.assert(buyItNowRow4.equals(buyItNowRow3));
        System.assert(buyItNowRow3.equals(buyItNowRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBuyItNowRow buyItNowRow1 = IntServerBuyItNowRow.getExample();
        IntServerBuyItNowRow buyItNowRow2 = IntServerBuyItNowRow.getExample();
        IntServerBuyItNowRow buyItNowRow3 = new IntServerBuyItNowRow();
        IntServerBuyItNowRow buyItNowRow4 = new IntServerBuyItNowRow();

        System.assert(buyItNowRow1.equals(buyItNowRow2));
        System.assert(buyItNowRow2.equals(buyItNowRow1));
        System.assert(buyItNowRow3.equals(buyItNowRow4));
        System.assert(buyItNowRow4.equals(buyItNowRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBuyItNowRow buyItNowRow1 = IntServerBuyItNowRow.getExample();
        IntServerBuyItNowRow buyItNowRow2 = new IntServerBuyItNowRow();

        System.assertEquals(false, buyItNowRow1.equals('foo'));
        System.assertEquals(false, buyItNowRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBuyItNowRow buyItNowRow1 = IntServerBuyItNowRow.getExample();
        IntServerBuyItNowRow buyItNowRow2 = new IntServerBuyItNowRow();
        IntServerBuyItNowRow buyItNowRow3;

        System.assertEquals(false, buyItNowRow1.equals(buyItNowRow3));
        System.assertEquals(false, buyItNowRow2.equals(buyItNowRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBuyItNowRow buyItNowRow1 = IntServerBuyItNowRow.getExample();
        IntServerBuyItNowRow buyItNowRow2 = new IntServerBuyItNowRow();

        System.assertEquals(buyItNowRow1.hashCode(), buyItNowRow1.hashCode());
        System.assertEquals(buyItNowRow2.hashCode(), buyItNowRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBuyItNowRow buyItNowRow1 = IntServerBuyItNowRow.getExample();
        IntServerBuyItNowRow buyItNowRow2 = IntServerBuyItNowRow.getExample();
        IntServerBuyItNowRow buyItNowRow3 = new IntServerBuyItNowRow();
        IntServerBuyItNowRow buyItNowRow4 = new IntServerBuyItNowRow();

        System.assert(buyItNowRow1.equals(buyItNowRow2));
        System.assert(buyItNowRow3.equals(buyItNowRow4));
        System.assertEquals(buyItNowRow1.hashCode(), buyItNowRow2.hashCode());
        System.assertEquals(buyItNowRow3.hashCode(), buyItNowRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBuyItNowRow buyItNowRow = new IntServerBuyItNowRow();
        Map<String, String> x-property-mappings = buyItNowRow.getx-property-mappings();
        System.assertEquals('serverId', x-property-mappings.get('server_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerBuyItNowRow buyItNowRow = new IntServerBuyItNowRow();
        System.assertEquals(new List<IntServerBuyItNowRowCpuInner>(), buyItNowRow.cpu);
        System.assertEquals(new Map<String, String>(), buyItNowRow.disk);
        System.assertEquals(null, buyItNowRow.serverId);
        System.assertEquals(null, buyItNowRow.memory);
        System.assertEquals(null, buyItNowRow.bandwidth);
        System.assertEquals(null, buyItNowRow.ips);
        System.assertEquals(null, buyItNowRow.location);
        System.assertEquals(null, buyItNowRow.price);
    }
}
