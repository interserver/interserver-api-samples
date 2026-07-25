@isTest
private class IntServerQuickserverClientLinkTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverClientLink quickserverClientLink1 = IntServerQuickserverClientLink.getExample();
        IntServerQuickserverClientLink quickserverClientLink2 = quickserverClientLink1;
        IntServerQuickserverClientLink quickserverClientLink3 = new IntServerQuickserverClientLink();
        IntServerQuickserverClientLink quickserverClientLink4 = quickserverClientLink3;

        System.assert(quickserverClientLink1.equals(quickserverClientLink2));
        System.assert(quickserverClientLink2.equals(quickserverClientLink1));
        System.assert(quickserverClientLink1.equals(quickserverClientLink1));
        System.assert(quickserverClientLink3.equals(quickserverClientLink4));
        System.assert(quickserverClientLink4.equals(quickserverClientLink3));
        System.assert(quickserverClientLink3.equals(quickserverClientLink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverClientLink quickserverClientLink1 = IntServerQuickserverClientLink.getExample();
        IntServerQuickserverClientLink quickserverClientLink2 = IntServerQuickserverClientLink.getExample();
        IntServerQuickserverClientLink quickserverClientLink3 = new IntServerQuickserverClientLink();
        IntServerQuickserverClientLink quickserverClientLink4 = new IntServerQuickserverClientLink();

        System.assert(quickserverClientLink1.equals(quickserverClientLink2));
        System.assert(quickserverClientLink2.equals(quickserverClientLink1));
        System.assert(quickserverClientLink3.equals(quickserverClientLink4));
        System.assert(quickserverClientLink4.equals(quickserverClientLink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverClientLink quickserverClientLink1 = IntServerQuickserverClientLink.getExample();
        IntServerQuickserverClientLink quickserverClientLink2 = new IntServerQuickserverClientLink();

        System.assertEquals(false, quickserverClientLink1.equals('foo'));
        System.assertEquals(false, quickserverClientLink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverClientLink quickserverClientLink1 = IntServerQuickserverClientLink.getExample();
        IntServerQuickserverClientLink quickserverClientLink2 = new IntServerQuickserverClientLink();
        IntServerQuickserverClientLink quickserverClientLink3;

        System.assertEquals(false, quickserverClientLink1.equals(quickserverClientLink3));
        System.assertEquals(false, quickserverClientLink2.equals(quickserverClientLink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverClientLink quickserverClientLink1 = IntServerQuickserverClientLink.getExample();
        IntServerQuickserverClientLink quickserverClientLink2 = new IntServerQuickserverClientLink();

        System.assertEquals(quickserverClientLink1.hashCode(), quickserverClientLink1.hashCode());
        System.assertEquals(quickserverClientLink2.hashCode(), quickserverClientLink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverClientLink quickserverClientLink1 = IntServerQuickserverClientLink.getExample();
        IntServerQuickserverClientLink quickserverClientLink2 = IntServerQuickserverClientLink.getExample();
        IntServerQuickserverClientLink quickserverClientLink3 = new IntServerQuickserverClientLink();
        IntServerQuickserverClientLink quickserverClientLink4 = new IntServerQuickserverClientLink();

        System.assert(quickserverClientLink1.equals(quickserverClientLink2));
        System.assert(quickserverClientLink3.equals(quickserverClientLink4));
        System.assertEquals(quickserverClientLink1.hashCode(), quickserverClientLink2.hashCode());
        System.assertEquals(quickserverClientLink3.hashCode(), quickserverClientLink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverClientLink quickserverClientLink = new IntServerQuickserverClientLink();
        Map<String, String> x-property-mappings = quickserverClientLink.getx-property-mappings();
        System.assertEquals('iconText', x-property-mappings.get('icon_text'));
        System.assertEquals('helpText', x-property-mappings.get('help_text'));
        System.assertEquals('otherAttr', x-property-mappings.get('other_attr'));
    }
}
