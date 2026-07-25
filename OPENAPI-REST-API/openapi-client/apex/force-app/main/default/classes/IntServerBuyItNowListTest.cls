@isTest
private class IntServerBuyItNowListTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBuyItNowList buyItNowList1 = IntServerBuyItNowList.getExample();
        IntServerBuyItNowList buyItNowList2 = buyItNowList1;
        IntServerBuyItNowList buyItNowList3 = new IntServerBuyItNowList();
        IntServerBuyItNowList buyItNowList4 = buyItNowList3;

        System.assert(buyItNowList1.equals(buyItNowList2));
        System.assert(buyItNowList2.equals(buyItNowList1));
        System.assert(buyItNowList1.equals(buyItNowList1));
        System.assert(buyItNowList3.equals(buyItNowList4));
        System.assert(buyItNowList4.equals(buyItNowList3));
        System.assert(buyItNowList3.equals(buyItNowList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBuyItNowList buyItNowList1 = IntServerBuyItNowList.getExample();
        IntServerBuyItNowList buyItNowList2 = IntServerBuyItNowList.getExample();
        IntServerBuyItNowList buyItNowList3 = new IntServerBuyItNowList();
        IntServerBuyItNowList buyItNowList4 = new IntServerBuyItNowList();

        System.assert(buyItNowList1.equals(buyItNowList2));
        System.assert(buyItNowList2.equals(buyItNowList1));
        System.assert(buyItNowList3.equals(buyItNowList4));
        System.assert(buyItNowList4.equals(buyItNowList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBuyItNowList buyItNowList1 = IntServerBuyItNowList.getExample();
        IntServerBuyItNowList buyItNowList2 = new IntServerBuyItNowList();

        System.assertEquals(false, buyItNowList1.equals('foo'));
        System.assertEquals(false, buyItNowList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBuyItNowList buyItNowList1 = IntServerBuyItNowList.getExample();
        IntServerBuyItNowList buyItNowList2 = new IntServerBuyItNowList();
        IntServerBuyItNowList buyItNowList3;

        System.assertEquals(false, buyItNowList1.equals(buyItNowList3));
        System.assertEquals(false, buyItNowList2.equals(buyItNowList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBuyItNowList buyItNowList1 = IntServerBuyItNowList.getExample();
        IntServerBuyItNowList buyItNowList2 = new IntServerBuyItNowList();

        System.assertEquals(buyItNowList1.hashCode(), buyItNowList1.hashCode());
        System.assertEquals(buyItNowList2.hashCode(), buyItNowList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBuyItNowList buyItNowList1 = IntServerBuyItNowList.getExample();
        IntServerBuyItNowList buyItNowList2 = IntServerBuyItNowList.getExample();
        IntServerBuyItNowList buyItNowList3 = new IntServerBuyItNowList();
        IntServerBuyItNowList buyItNowList4 = new IntServerBuyItNowList();

        System.assert(buyItNowList1.equals(buyItNowList2));
        System.assert(buyItNowList3.equals(buyItNowList4));
        System.assertEquals(buyItNowList1.hashCode(), buyItNowList2.hashCode());
        System.assertEquals(buyItNowList3.hashCode(), buyItNowList4.hashCode());
    }
}
