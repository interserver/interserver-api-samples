@isTest
private class IntServerQuickserverOrderTemplatesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverOrderTemplates quickserverOrderTemplates1 = IntServerQuickserverOrderTemplates.getExample();
        IntServerQuickserverOrderTemplates quickserverOrderTemplates2 = quickserverOrderTemplates1;
        IntServerQuickserverOrderTemplates quickserverOrderTemplates3 = new IntServerQuickserverOrderTemplates();
        IntServerQuickserverOrderTemplates quickserverOrderTemplates4 = quickserverOrderTemplates3;

        System.assert(quickserverOrderTemplates1.equals(quickserverOrderTemplates2));
        System.assert(quickserverOrderTemplates2.equals(quickserverOrderTemplates1));
        System.assert(quickserverOrderTemplates1.equals(quickserverOrderTemplates1));
        System.assert(quickserverOrderTemplates3.equals(quickserverOrderTemplates4));
        System.assert(quickserverOrderTemplates4.equals(quickserverOrderTemplates3));
        System.assert(quickserverOrderTemplates3.equals(quickserverOrderTemplates3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverOrderTemplates quickserverOrderTemplates1 = IntServerQuickserverOrderTemplates.getExample();
        IntServerQuickserverOrderTemplates quickserverOrderTemplates2 = IntServerQuickserverOrderTemplates.getExample();
        IntServerQuickserverOrderTemplates quickserverOrderTemplates3 = new IntServerQuickserverOrderTemplates();
        IntServerQuickserverOrderTemplates quickserverOrderTemplates4 = new IntServerQuickserverOrderTemplates();

        System.assert(quickserverOrderTemplates1.equals(quickserverOrderTemplates2));
        System.assert(quickserverOrderTemplates2.equals(quickserverOrderTemplates1));
        System.assert(quickserverOrderTemplates3.equals(quickserverOrderTemplates4));
        System.assert(quickserverOrderTemplates4.equals(quickserverOrderTemplates3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverOrderTemplates quickserverOrderTemplates1 = IntServerQuickserverOrderTemplates.getExample();
        IntServerQuickserverOrderTemplates quickserverOrderTemplates2 = new IntServerQuickserverOrderTemplates();

        System.assertEquals(false, quickserverOrderTemplates1.equals('foo'));
        System.assertEquals(false, quickserverOrderTemplates2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverOrderTemplates quickserverOrderTemplates1 = IntServerQuickserverOrderTemplates.getExample();
        IntServerQuickserverOrderTemplates quickserverOrderTemplates2 = new IntServerQuickserverOrderTemplates();
        IntServerQuickserverOrderTemplates quickserverOrderTemplates3;

        System.assertEquals(false, quickserverOrderTemplates1.equals(quickserverOrderTemplates3));
        System.assertEquals(false, quickserverOrderTemplates2.equals(quickserverOrderTemplates3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverOrderTemplates quickserverOrderTemplates1 = IntServerQuickserverOrderTemplates.getExample();
        IntServerQuickserverOrderTemplates quickserverOrderTemplates2 = new IntServerQuickserverOrderTemplates();

        System.assertEquals(quickserverOrderTemplates1.hashCode(), quickserverOrderTemplates1.hashCode());
        System.assertEquals(quickserverOrderTemplates2.hashCode(), quickserverOrderTemplates2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverOrderTemplates quickserverOrderTemplates1 = IntServerQuickserverOrderTemplates.getExample();
        IntServerQuickserverOrderTemplates quickserverOrderTemplates2 = IntServerQuickserverOrderTemplates.getExample();
        IntServerQuickserverOrderTemplates quickserverOrderTemplates3 = new IntServerQuickserverOrderTemplates();
        IntServerQuickserverOrderTemplates quickserverOrderTemplates4 = new IntServerQuickserverOrderTemplates();

        System.assert(quickserverOrderTemplates1.equals(quickserverOrderTemplates2));
        System.assert(quickserverOrderTemplates3.equals(quickserverOrderTemplates4));
        System.assertEquals(quickserverOrderTemplates1.hashCode(), quickserverOrderTemplates2.hashCode());
        System.assertEquals(quickserverOrderTemplates3.hashCode(), quickserverOrderTemplates4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverOrderTemplates quickserverOrderTemplates = new IntServerQuickserverOrderTemplates();
        Map<String, String> x-property-mappings = quickserverOrderTemplates.getx-property-mappings();
        System.assertEquals('ubuntu', x-property-mappings.get('Ubuntu'));
    }
}
