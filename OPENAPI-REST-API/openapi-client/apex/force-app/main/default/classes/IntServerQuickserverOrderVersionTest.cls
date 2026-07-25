@isTest
private class IntServerQuickserverOrderVersionTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverOrderVersion quickserverOrderVersion1 = IntServerQuickserverOrderVersion.getExample();
        IntServerQuickserverOrderVersion quickserverOrderVersion2 = quickserverOrderVersion1;
        IntServerQuickserverOrderVersion quickserverOrderVersion3 = new IntServerQuickserverOrderVersion();
        IntServerQuickserverOrderVersion quickserverOrderVersion4 = quickserverOrderVersion3;

        System.assert(quickserverOrderVersion1.equals(quickserverOrderVersion2));
        System.assert(quickserverOrderVersion2.equals(quickserverOrderVersion1));
        System.assert(quickserverOrderVersion1.equals(quickserverOrderVersion1));
        System.assert(quickserverOrderVersion3.equals(quickserverOrderVersion4));
        System.assert(quickserverOrderVersion4.equals(quickserverOrderVersion3));
        System.assert(quickserverOrderVersion3.equals(quickserverOrderVersion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverOrderVersion quickserverOrderVersion1 = IntServerQuickserverOrderVersion.getExample();
        IntServerQuickserverOrderVersion quickserverOrderVersion2 = IntServerQuickserverOrderVersion.getExample();
        IntServerQuickserverOrderVersion quickserverOrderVersion3 = new IntServerQuickserverOrderVersion();
        IntServerQuickserverOrderVersion quickserverOrderVersion4 = new IntServerQuickserverOrderVersion();

        System.assert(quickserverOrderVersion1.equals(quickserverOrderVersion2));
        System.assert(quickserverOrderVersion2.equals(quickserverOrderVersion1));
        System.assert(quickserverOrderVersion3.equals(quickserverOrderVersion4));
        System.assert(quickserverOrderVersion4.equals(quickserverOrderVersion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverOrderVersion quickserverOrderVersion1 = IntServerQuickserverOrderVersion.getExample();
        IntServerQuickserverOrderVersion quickserverOrderVersion2 = new IntServerQuickserverOrderVersion();

        System.assertEquals(false, quickserverOrderVersion1.equals('foo'));
        System.assertEquals(false, quickserverOrderVersion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverOrderVersion quickserverOrderVersion1 = IntServerQuickserverOrderVersion.getExample();
        IntServerQuickserverOrderVersion quickserverOrderVersion2 = new IntServerQuickserverOrderVersion();
        IntServerQuickserverOrderVersion quickserverOrderVersion3;

        System.assertEquals(false, quickserverOrderVersion1.equals(quickserverOrderVersion3));
        System.assertEquals(false, quickserverOrderVersion2.equals(quickserverOrderVersion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverOrderVersion quickserverOrderVersion1 = IntServerQuickserverOrderVersion.getExample();
        IntServerQuickserverOrderVersion quickserverOrderVersion2 = new IntServerQuickserverOrderVersion();

        System.assertEquals(quickserverOrderVersion1.hashCode(), quickserverOrderVersion1.hashCode());
        System.assertEquals(quickserverOrderVersion2.hashCode(), quickserverOrderVersion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverOrderVersion quickserverOrderVersion1 = IntServerQuickserverOrderVersion.getExample();
        IntServerQuickserverOrderVersion quickserverOrderVersion2 = IntServerQuickserverOrderVersion.getExample();
        IntServerQuickserverOrderVersion quickserverOrderVersion3 = new IntServerQuickserverOrderVersion();
        IntServerQuickserverOrderVersion quickserverOrderVersion4 = new IntServerQuickserverOrderVersion();

        System.assert(quickserverOrderVersion1.equals(quickserverOrderVersion2));
        System.assert(quickserverOrderVersion3.equals(quickserverOrderVersion4));
        System.assertEquals(quickserverOrderVersion1.hashCode(), quickserverOrderVersion2.hashCode());
        System.assertEquals(quickserverOrderVersion3.hashCode(), quickserverOrderVersion4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverOrderVersion quickserverOrderVersion = new IntServerQuickserverOrderVersion();
        Map<String, String> x-property-mappings = quickserverOrderVersion.getx-property-mappings();
        System.assertEquals('centosstream8', x-property-mappings.get('centosstream-8'));
    }
}
