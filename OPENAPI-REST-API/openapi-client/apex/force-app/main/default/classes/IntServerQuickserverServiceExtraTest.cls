@isTest
private class IntServerQuickserverServiceExtraTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverServiceExtra quickserverServiceExtra1 = IntServerQuickserverServiceExtra.getExample();
        IntServerQuickserverServiceExtra quickserverServiceExtra2 = quickserverServiceExtra1;
        IntServerQuickserverServiceExtra quickserverServiceExtra3 = new IntServerQuickserverServiceExtra();
        IntServerQuickserverServiceExtra quickserverServiceExtra4 = quickserverServiceExtra3;

        System.assert(quickserverServiceExtra1.equals(quickserverServiceExtra2));
        System.assert(quickserverServiceExtra2.equals(quickserverServiceExtra1));
        System.assert(quickserverServiceExtra1.equals(quickserverServiceExtra1));
        System.assert(quickserverServiceExtra3.equals(quickserverServiceExtra4));
        System.assert(quickserverServiceExtra4.equals(quickserverServiceExtra3));
        System.assert(quickserverServiceExtra3.equals(quickserverServiceExtra3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverServiceExtra quickserverServiceExtra1 = IntServerQuickserverServiceExtra.getExample();
        IntServerQuickserverServiceExtra quickserverServiceExtra2 = IntServerQuickserverServiceExtra.getExample();
        IntServerQuickserverServiceExtra quickserverServiceExtra3 = new IntServerQuickserverServiceExtra();
        IntServerQuickserverServiceExtra quickserverServiceExtra4 = new IntServerQuickserverServiceExtra();

        System.assert(quickserverServiceExtra1.equals(quickserverServiceExtra2));
        System.assert(quickserverServiceExtra2.equals(quickserverServiceExtra1));
        System.assert(quickserverServiceExtra3.equals(quickserverServiceExtra4));
        System.assert(quickserverServiceExtra4.equals(quickserverServiceExtra3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverServiceExtra quickserverServiceExtra1 = IntServerQuickserverServiceExtra.getExample();
        IntServerQuickserverServiceExtra quickserverServiceExtra2 = new IntServerQuickserverServiceExtra();

        System.assertEquals(false, quickserverServiceExtra1.equals('foo'));
        System.assertEquals(false, quickserverServiceExtra2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverServiceExtra quickserverServiceExtra1 = IntServerQuickserverServiceExtra.getExample();
        IntServerQuickserverServiceExtra quickserverServiceExtra2 = new IntServerQuickserverServiceExtra();
        IntServerQuickserverServiceExtra quickserverServiceExtra3;

        System.assertEquals(false, quickserverServiceExtra1.equals(quickserverServiceExtra3));
        System.assertEquals(false, quickserverServiceExtra2.equals(quickserverServiceExtra3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverServiceExtra quickserverServiceExtra1 = IntServerQuickserverServiceExtra.getExample();
        IntServerQuickserverServiceExtra quickserverServiceExtra2 = new IntServerQuickserverServiceExtra();

        System.assertEquals(quickserverServiceExtra1.hashCode(), quickserverServiceExtra1.hashCode());
        System.assertEquals(quickserverServiceExtra2.hashCode(), quickserverServiceExtra2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverServiceExtra quickserverServiceExtra1 = IntServerQuickserverServiceExtra.getExample();
        IntServerQuickserverServiceExtra quickserverServiceExtra2 = IntServerQuickserverServiceExtra.getExample();
        IntServerQuickserverServiceExtra quickserverServiceExtra3 = new IntServerQuickserverServiceExtra();
        IntServerQuickserverServiceExtra quickserverServiceExtra4 = new IntServerQuickserverServiceExtra();

        System.assert(quickserverServiceExtra1.equals(quickserverServiceExtra2));
        System.assert(quickserverServiceExtra3.equals(quickserverServiceExtra4));
        System.assertEquals(quickserverServiceExtra1.hashCode(), quickserverServiceExtra2.hashCode());
        System.assertEquals(quickserverServiceExtra3.hashCode(), quickserverServiceExtra4.hashCode());
    }
}
