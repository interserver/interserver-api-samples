@isTest
private class IntServerQuickserversCancel200ResponTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserversCancel200Respon quickserversCancel200Response1 = IntServerQuickserversCancel200Respon.getExample();
        IntServerQuickserversCancel200Respon quickserversCancel200Response2 = quickserversCancel200Response1;
        IntServerQuickserversCancel200Respon quickserversCancel200Response3 = new IntServerQuickserversCancel200Respon();
        IntServerQuickserversCancel200Respon quickserversCancel200Response4 = quickserversCancel200Response3;

        System.assert(quickserversCancel200Response1.equals(quickserversCancel200Response2));
        System.assert(quickserversCancel200Response2.equals(quickserversCancel200Response1));
        System.assert(quickserversCancel200Response1.equals(quickserversCancel200Response1));
        System.assert(quickserversCancel200Response3.equals(quickserversCancel200Response4));
        System.assert(quickserversCancel200Response4.equals(quickserversCancel200Response3));
        System.assert(quickserversCancel200Response3.equals(quickserversCancel200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserversCancel200Respon quickserversCancel200Response1 = IntServerQuickserversCancel200Respon.getExample();
        IntServerQuickserversCancel200Respon quickserversCancel200Response2 = IntServerQuickserversCancel200Respon.getExample();
        IntServerQuickserversCancel200Respon quickserversCancel200Response3 = new IntServerQuickserversCancel200Respon();
        IntServerQuickserversCancel200Respon quickserversCancel200Response4 = new IntServerQuickserversCancel200Respon();

        System.assert(quickserversCancel200Response1.equals(quickserversCancel200Response2));
        System.assert(quickserversCancel200Response2.equals(quickserversCancel200Response1));
        System.assert(quickserversCancel200Response3.equals(quickserversCancel200Response4));
        System.assert(quickserversCancel200Response4.equals(quickserversCancel200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserversCancel200Respon quickserversCancel200Response1 = IntServerQuickserversCancel200Respon.getExample();
        IntServerQuickserversCancel200Respon quickserversCancel200Response2 = new IntServerQuickserversCancel200Respon();

        System.assertEquals(false, quickserversCancel200Response1.equals('foo'));
        System.assertEquals(false, quickserversCancel200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserversCancel200Respon quickserversCancel200Response1 = IntServerQuickserversCancel200Respon.getExample();
        IntServerQuickserversCancel200Respon quickserversCancel200Response2 = new IntServerQuickserversCancel200Respon();
        IntServerQuickserversCancel200Respon quickserversCancel200Response3;

        System.assertEquals(false, quickserversCancel200Response1.equals(quickserversCancel200Response3));
        System.assertEquals(false, quickserversCancel200Response2.equals(quickserversCancel200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserversCancel200Respon quickserversCancel200Response1 = IntServerQuickserversCancel200Respon.getExample();
        IntServerQuickserversCancel200Respon quickserversCancel200Response2 = new IntServerQuickserversCancel200Respon();

        System.assertEquals(quickserversCancel200Response1.hashCode(), quickserversCancel200Response1.hashCode());
        System.assertEquals(quickserversCancel200Response2.hashCode(), quickserversCancel200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserversCancel200Respon quickserversCancel200Response1 = IntServerQuickserversCancel200Respon.getExample();
        IntServerQuickserversCancel200Respon quickserversCancel200Response2 = IntServerQuickserversCancel200Respon.getExample();
        IntServerQuickserversCancel200Respon quickserversCancel200Response3 = new IntServerQuickserversCancel200Respon();
        IntServerQuickserversCancel200Respon quickserversCancel200Response4 = new IntServerQuickserversCancel200Respon();

        System.assert(quickserversCancel200Response1.equals(quickserversCancel200Response2));
        System.assert(quickserversCancel200Response3.equals(quickserversCancel200Response4));
        System.assertEquals(quickserversCancel200Response1.hashCode(), quickserversCancel200Response2.hashCode());
        System.assertEquals(quickserversCancel200Response3.hashCode(), quickserversCancel200Response4.hashCode());
    }
}
