@isTest
private class IntServerQuickserverOrderVersionCentTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream81 = IntServerQuickserverOrderVersionCent.getExample();
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream82 = quickserverOrderVersionCentosstream81;
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream83 = new IntServerQuickserverOrderVersionCent();
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream84 = quickserverOrderVersionCentosstream83;

        System.assert(quickserverOrderVersionCentosstream81.equals(quickserverOrderVersionCentosstream82));
        System.assert(quickserverOrderVersionCentosstream82.equals(quickserverOrderVersionCentosstream81));
        System.assert(quickserverOrderVersionCentosstream81.equals(quickserverOrderVersionCentosstream81));
        System.assert(quickserverOrderVersionCentosstream83.equals(quickserverOrderVersionCentosstream84));
        System.assert(quickserverOrderVersionCentosstream84.equals(quickserverOrderVersionCentosstream83));
        System.assert(quickserverOrderVersionCentosstream83.equals(quickserverOrderVersionCentosstream83));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream81 = IntServerQuickserverOrderVersionCent.getExample();
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream82 = IntServerQuickserverOrderVersionCent.getExample();
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream83 = new IntServerQuickserverOrderVersionCent();
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream84 = new IntServerQuickserverOrderVersionCent();

        System.assert(quickserverOrderVersionCentosstream81.equals(quickserverOrderVersionCentosstream82));
        System.assert(quickserverOrderVersionCentosstream82.equals(quickserverOrderVersionCentosstream81));
        System.assert(quickserverOrderVersionCentosstream83.equals(quickserverOrderVersionCentosstream84));
        System.assert(quickserverOrderVersionCentosstream84.equals(quickserverOrderVersionCentosstream83));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream81 = IntServerQuickserverOrderVersionCent.getExample();
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream82 = new IntServerQuickserverOrderVersionCent();

        System.assertEquals(false, quickserverOrderVersionCentosstream81.equals('foo'));
        System.assertEquals(false, quickserverOrderVersionCentosstream82.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream81 = IntServerQuickserverOrderVersionCent.getExample();
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream82 = new IntServerQuickserverOrderVersionCent();
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream83;

        System.assertEquals(false, quickserverOrderVersionCentosstream81.equals(quickserverOrderVersionCentosstream83));
        System.assertEquals(false, quickserverOrderVersionCentosstream82.equals(quickserverOrderVersionCentosstream83));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream81 = IntServerQuickserverOrderVersionCent.getExample();
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream82 = new IntServerQuickserverOrderVersionCent();

        System.assertEquals(quickserverOrderVersionCentosstream81.hashCode(), quickserverOrderVersionCentosstream81.hashCode());
        System.assertEquals(quickserverOrderVersionCentosstream82.hashCode(), quickserverOrderVersionCentosstream82.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream81 = IntServerQuickserverOrderVersionCent.getExample();
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream82 = IntServerQuickserverOrderVersionCent.getExample();
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream83 = new IntServerQuickserverOrderVersionCent();
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream84 = new IntServerQuickserverOrderVersionCent();

        System.assert(quickserverOrderVersionCentosstream81.equals(quickserverOrderVersionCentosstream82));
        System.assert(quickserverOrderVersionCentosstream83.equals(quickserverOrderVersionCentosstream84));
        System.assertEquals(quickserverOrderVersionCentosstream81.hashCode(), quickserverOrderVersionCentosstream82.hashCode());
        System.assertEquals(quickserverOrderVersionCentosstream83.hashCode(), quickserverOrderVersionCentosstream84.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverOrderVersionCent quickserverOrderVersionCentosstream8 = new IntServerQuickserverOrderVersionCent();
        Map<String, String> x-property-mappings = quickserverOrderVersionCentosstream8.getx-property-mappings();
        System.assertEquals('centosstream8', x-property-mappings.get('centosstream-8'));
    }
}
