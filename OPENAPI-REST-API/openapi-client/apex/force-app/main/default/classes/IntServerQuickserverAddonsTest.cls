@isTest
private class IntServerQuickserverAddonsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverAddons quickserverAddons1 = IntServerQuickserverAddons.getExample();
        IntServerQuickserverAddons quickserverAddons2 = quickserverAddons1;
        IntServerQuickserverAddons quickserverAddons3 = new IntServerQuickserverAddons();
        IntServerQuickserverAddons quickserverAddons4 = quickserverAddons3;

        System.assert(quickserverAddons1.equals(quickserverAddons2));
        System.assert(quickserverAddons2.equals(quickserverAddons1));
        System.assert(quickserverAddons1.equals(quickserverAddons1));
        System.assert(quickserverAddons3.equals(quickserverAddons4));
        System.assert(quickserverAddons4.equals(quickserverAddons3));
        System.assert(quickserverAddons3.equals(quickserverAddons3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverAddons quickserverAddons1 = IntServerQuickserverAddons.getExample();
        IntServerQuickserverAddons quickserverAddons2 = IntServerQuickserverAddons.getExample();
        IntServerQuickserverAddons quickserverAddons3 = new IntServerQuickserverAddons();
        IntServerQuickserverAddons quickserverAddons4 = new IntServerQuickserverAddons();

        System.assert(quickserverAddons1.equals(quickserverAddons2));
        System.assert(quickserverAddons2.equals(quickserverAddons1));
        System.assert(quickserverAddons3.equals(quickserverAddons4));
        System.assert(quickserverAddons4.equals(quickserverAddons3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverAddons quickserverAddons1 = IntServerQuickserverAddons.getExample();
        IntServerQuickserverAddons quickserverAddons2 = new IntServerQuickserverAddons();

        System.assertEquals(false, quickserverAddons1.equals('foo'));
        System.assertEquals(false, quickserverAddons2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverAddons quickserverAddons1 = IntServerQuickserverAddons.getExample();
        IntServerQuickserverAddons quickserverAddons2 = new IntServerQuickserverAddons();
        IntServerQuickserverAddons quickserverAddons3;

        System.assertEquals(false, quickserverAddons1.equals(quickserverAddons3));
        System.assertEquals(false, quickserverAddons2.equals(quickserverAddons3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverAddons quickserverAddons1 = IntServerQuickserverAddons.getExample();
        IntServerQuickserverAddons quickserverAddons2 = new IntServerQuickserverAddons();

        System.assertEquals(quickserverAddons1.hashCode(), quickserverAddons1.hashCode());
        System.assertEquals(quickserverAddons2.hashCode(), quickserverAddons2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverAddons quickserverAddons1 = IntServerQuickserverAddons.getExample();
        IntServerQuickserverAddons quickserverAddons2 = IntServerQuickserverAddons.getExample();
        IntServerQuickserverAddons quickserverAddons3 = new IntServerQuickserverAddons();
        IntServerQuickserverAddons quickserverAddons4 = new IntServerQuickserverAddons();

        System.assert(quickserverAddons1.equals(quickserverAddons2));
        System.assert(quickserverAddons3.equals(quickserverAddons4));
        System.assertEquals(quickserverAddons1.hashCode(), quickserverAddons2.hashCode());
        System.assertEquals(quickserverAddons3.hashCode(), quickserverAddons4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerQuickserverAddons quickserverAddons = new IntServerQuickserverAddons();
        System.assertEquals(new List<IntServerQuickserverAddonsRow>(), quickserverAddons.rows);
        System.assertEquals(null, quickserverAddons.title);
    }
}
