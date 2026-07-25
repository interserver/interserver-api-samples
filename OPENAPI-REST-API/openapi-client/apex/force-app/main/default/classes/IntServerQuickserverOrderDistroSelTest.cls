@isTest
private class IntServerQuickserverOrderDistroSelTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel1 = IntServerQuickserverOrderDistroSel.getExample();
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel2 = quickserverOrderDistroSel1;
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel3 = new IntServerQuickserverOrderDistroSel();
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel4 = quickserverOrderDistroSel3;

        System.assert(quickserverOrderDistroSel1.equals(quickserverOrderDistroSel2));
        System.assert(quickserverOrderDistroSel2.equals(quickserverOrderDistroSel1));
        System.assert(quickserverOrderDistroSel1.equals(quickserverOrderDistroSel1));
        System.assert(quickserverOrderDistroSel3.equals(quickserverOrderDistroSel4));
        System.assert(quickserverOrderDistroSel4.equals(quickserverOrderDistroSel3));
        System.assert(quickserverOrderDistroSel3.equals(quickserverOrderDistroSel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel1 = IntServerQuickserverOrderDistroSel.getExample();
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel2 = IntServerQuickserverOrderDistroSel.getExample();
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel3 = new IntServerQuickserverOrderDistroSel();
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel4 = new IntServerQuickserverOrderDistroSel();

        System.assert(quickserverOrderDistroSel1.equals(quickserverOrderDistroSel2));
        System.assert(quickserverOrderDistroSel2.equals(quickserverOrderDistroSel1));
        System.assert(quickserverOrderDistroSel3.equals(quickserverOrderDistroSel4));
        System.assert(quickserverOrderDistroSel4.equals(quickserverOrderDistroSel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel1 = IntServerQuickserverOrderDistroSel.getExample();
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel2 = new IntServerQuickserverOrderDistroSel();

        System.assertEquals(false, quickserverOrderDistroSel1.equals('foo'));
        System.assertEquals(false, quickserverOrderDistroSel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel1 = IntServerQuickserverOrderDistroSel.getExample();
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel2 = new IntServerQuickserverOrderDistroSel();
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel3;

        System.assertEquals(false, quickserverOrderDistroSel1.equals(quickserverOrderDistroSel3));
        System.assertEquals(false, quickserverOrderDistroSel2.equals(quickserverOrderDistroSel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel1 = IntServerQuickserverOrderDistroSel.getExample();
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel2 = new IntServerQuickserverOrderDistroSel();

        System.assertEquals(quickserverOrderDistroSel1.hashCode(), quickserverOrderDistroSel1.hashCode());
        System.assertEquals(quickserverOrderDistroSel2.hashCode(), quickserverOrderDistroSel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel1 = IntServerQuickserverOrderDistroSel.getExample();
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel2 = IntServerQuickserverOrderDistroSel.getExample();
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel3 = new IntServerQuickserverOrderDistroSel();
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel4 = new IntServerQuickserverOrderDistroSel();

        System.assert(quickserverOrderDistroSel1.equals(quickserverOrderDistroSel2));
        System.assert(quickserverOrderDistroSel3.equals(quickserverOrderDistroSel4));
        System.assertEquals(quickserverOrderDistroSel1.hashCode(), quickserverOrderDistroSel2.hashCode());
        System.assertEquals(quickserverOrderDistroSel3.hashCode(), quickserverOrderDistroSel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverOrderDistroSel quickserverOrderDistroSel = new IntServerQuickserverOrderDistroSel();
        Map<String, String> x-property-mappings = quickserverOrderDistroSel.getx-property-mappings();
        System.assertEquals('ubuntu', x-property-mappings.get('Ubuntu'));
    }
}
