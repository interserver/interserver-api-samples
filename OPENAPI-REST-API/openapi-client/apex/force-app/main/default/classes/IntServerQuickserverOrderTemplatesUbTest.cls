@isTest
private class IntServerQuickserverOrderTemplatesUbTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu641 = IntServerQuickserverOrderTemplatesUb.getExample();
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu642 = quickserverOrderTemplatesUbuntu641;
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu643 = new IntServerQuickserverOrderTemplatesUb();
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu644 = quickserverOrderTemplatesUbuntu643;

        System.assert(quickserverOrderTemplatesUbuntu641.equals(quickserverOrderTemplatesUbuntu642));
        System.assert(quickserverOrderTemplatesUbuntu642.equals(quickserverOrderTemplatesUbuntu641));
        System.assert(quickserverOrderTemplatesUbuntu641.equals(quickserverOrderTemplatesUbuntu641));
        System.assert(quickserverOrderTemplatesUbuntu643.equals(quickserverOrderTemplatesUbuntu644));
        System.assert(quickserverOrderTemplatesUbuntu644.equals(quickserverOrderTemplatesUbuntu643));
        System.assert(quickserverOrderTemplatesUbuntu643.equals(quickserverOrderTemplatesUbuntu643));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu641 = IntServerQuickserverOrderTemplatesUb.getExample();
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu642 = IntServerQuickserverOrderTemplatesUb.getExample();
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu643 = new IntServerQuickserverOrderTemplatesUb();
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu644 = new IntServerQuickserverOrderTemplatesUb();

        System.assert(quickserverOrderTemplatesUbuntu641.equals(quickserverOrderTemplatesUbuntu642));
        System.assert(quickserverOrderTemplatesUbuntu642.equals(quickserverOrderTemplatesUbuntu641));
        System.assert(quickserverOrderTemplatesUbuntu643.equals(quickserverOrderTemplatesUbuntu644));
        System.assert(quickserverOrderTemplatesUbuntu644.equals(quickserverOrderTemplatesUbuntu643));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu641 = IntServerQuickserverOrderTemplatesUb.getExample();
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu642 = new IntServerQuickserverOrderTemplatesUb();

        System.assertEquals(false, quickserverOrderTemplatesUbuntu641.equals('foo'));
        System.assertEquals(false, quickserverOrderTemplatesUbuntu642.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu641 = IntServerQuickserverOrderTemplatesUb.getExample();
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu642 = new IntServerQuickserverOrderTemplatesUb();
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu643;

        System.assertEquals(false, quickserverOrderTemplatesUbuntu641.equals(quickserverOrderTemplatesUbuntu643));
        System.assertEquals(false, quickserverOrderTemplatesUbuntu642.equals(quickserverOrderTemplatesUbuntu643));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu641 = IntServerQuickserverOrderTemplatesUb.getExample();
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu642 = new IntServerQuickserverOrderTemplatesUb();

        System.assertEquals(quickserverOrderTemplatesUbuntu641.hashCode(), quickserverOrderTemplatesUbuntu641.hashCode());
        System.assertEquals(quickserverOrderTemplatesUbuntu642.hashCode(), quickserverOrderTemplatesUbuntu642.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu641 = IntServerQuickserverOrderTemplatesUb.getExample();
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu642 = IntServerQuickserverOrderTemplatesUb.getExample();
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu643 = new IntServerQuickserverOrderTemplatesUb();
        IntServerQuickserverOrderTemplatesUb quickserverOrderTemplatesUbuntu644 = new IntServerQuickserverOrderTemplatesUb();

        System.assert(quickserverOrderTemplatesUbuntu641.equals(quickserverOrderTemplatesUbuntu642));
        System.assert(quickserverOrderTemplatesUbuntu643.equals(quickserverOrderTemplatesUbuntu644));
        System.assertEquals(quickserverOrderTemplatesUbuntu641.hashCode(), quickserverOrderTemplatesUbuntu642.hashCode());
        System.assertEquals(quickserverOrderTemplatesUbuntu643.hashCode(), quickserverOrderTemplatesUbuntu644.hashCode());
    }
}
