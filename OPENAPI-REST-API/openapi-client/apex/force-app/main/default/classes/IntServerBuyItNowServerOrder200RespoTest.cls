@isTest
private class IntServerBuyItNowServerOrder200RespoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response1 = IntServerBuyItNowServerOrder200Respo.getExample();
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response2 = buyItNowServerOrder200Response1;
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response3 = new IntServerBuyItNowServerOrder200Respo();
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response4 = buyItNowServerOrder200Response3;

        System.assert(buyItNowServerOrder200Response1.equals(buyItNowServerOrder200Response2));
        System.assert(buyItNowServerOrder200Response2.equals(buyItNowServerOrder200Response1));
        System.assert(buyItNowServerOrder200Response1.equals(buyItNowServerOrder200Response1));
        System.assert(buyItNowServerOrder200Response3.equals(buyItNowServerOrder200Response4));
        System.assert(buyItNowServerOrder200Response4.equals(buyItNowServerOrder200Response3));
        System.assert(buyItNowServerOrder200Response3.equals(buyItNowServerOrder200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response1 = IntServerBuyItNowServerOrder200Respo.getExample();
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response2 = IntServerBuyItNowServerOrder200Respo.getExample();
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response3 = new IntServerBuyItNowServerOrder200Respo();
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response4 = new IntServerBuyItNowServerOrder200Respo();

        System.assert(buyItNowServerOrder200Response1.equals(buyItNowServerOrder200Response2));
        System.assert(buyItNowServerOrder200Response2.equals(buyItNowServerOrder200Response1));
        System.assert(buyItNowServerOrder200Response3.equals(buyItNowServerOrder200Response4));
        System.assert(buyItNowServerOrder200Response4.equals(buyItNowServerOrder200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response1 = IntServerBuyItNowServerOrder200Respo.getExample();
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response2 = new IntServerBuyItNowServerOrder200Respo();

        System.assertEquals(false, buyItNowServerOrder200Response1.equals('foo'));
        System.assertEquals(false, buyItNowServerOrder200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response1 = IntServerBuyItNowServerOrder200Respo.getExample();
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response2 = new IntServerBuyItNowServerOrder200Respo();
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response3;

        System.assertEquals(false, buyItNowServerOrder200Response1.equals(buyItNowServerOrder200Response3));
        System.assertEquals(false, buyItNowServerOrder200Response2.equals(buyItNowServerOrder200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response1 = IntServerBuyItNowServerOrder200Respo.getExample();
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response2 = new IntServerBuyItNowServerOrder200Respo();

        System.assertEquals(buyItNowServerOrder200Response1.hashCode(), buyItNowServerOrder200Response1.hashCode());
        System.assertEquals(buyItNowServerOrder200Response2.hashCode(), buyItNowServerOrder200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response1 = IntServerBuyItNowServerOrder200Respo.getExample();
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response2 = IntServerBuyItNowServerOrder200Respo.getExample();
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response3 = new IntServerBuyItNowServerOrder200Respo();
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response4 = new IntServerBuyItNowServerOrder200Respo();

        System.assert(buyItNowServerOrder200Response1.equals(buyItNowServerOrder200Response2));
        System.assert(buyItNowServerOrder200Response3.equals(buyItNowServerOrder200Response4));
        System.assertEquals(buyItNowServerOrder200Response1.hashCode(), buyItNowServerOrder200Response2.hashCode());
        System.assertEquals(buyItNowServerOrder200Response3.hashCode(), buyItNowServerOrder200Response4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerBuyItNowServerOrder200Respo buyItNowServerOrder200Response = new IntServerBuyItNowServerOrder200Respo();
        System.assertEquals(new List<IntServerBuyItNowServerOrder200Respo>(), buyItNowServerOrder200Response.bandwidth);
        System.assertEquals(new List<IntServerBuyItNowServerOrder200Respo>(), buyItNowServerOrder200Response.ips);
        System.assertEquals(new List<IntServerBuyItNowServerOrder200Respo>(), buyItNowServerOrder200Response.os);
        System.assertEquals(new List<IntServerBuyItNowServerOrder200Respo>(), buyItNowServerOrder200Response.cp);
        System.assertEquals(new List<IntServerBuyItNowServerOrder200Respo>(), buyItNowServerOrder200Response.raid);
    }
}
