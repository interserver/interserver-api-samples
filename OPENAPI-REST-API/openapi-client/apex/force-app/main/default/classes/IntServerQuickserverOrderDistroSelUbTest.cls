@isTest
private class IntServerQuickserverOrderDistroSelUbTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu1 = IntServerQuickserverOrderDistroSelUb.getExample();
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu2 = quickserverOrderDistroSelUbuntu1;
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu3 = new IntServerQuickserverOrderDistroSelUb();
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu4 = quickserverOrderDistroSelUbuntu3;

        System.assert(quickserverOrderDistroSelUbuntu1.equals(quickserverOrderDistroSelUbuntu2));
        System.assert(quickserverOrderDistroSelUbuntu2.equals(quickserverOrderDistroSelUbuntu1));
        System.assert(quickserverOrderDistroSelUbuntu1.equals(quickserverOrderDistroSelUbuntu1));
        System.assert(quickserverOrderDistroSelUbuntu3.equals(quickserverOrderDistroSelUbuntu4));
        System.assert(quickserverOrderDistroSelUbuntu4.equals(quickserverOrderDistroSelUbuntu3));
        System.assert(quickserverOrderDistroSelUbuntu3.equals(quickserverOrderDistroSelUbuntu3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu1 = IntServerQuickserverOrderDistroSelUb.getExample();
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu2 = IntServerQuickserverOrderDistroSelUb.getExample();
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu3 = new IntServerQuickserverOrderDistroSelUb();
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu4 = new IntServerQuickserverOrderDistroSelUb();

        System.assert(quickserverOrderDistroSelUbuntu1.equals(quickserverOrderDistroSelUbuntu2));
        System.assert(quickserverOrderDistroSelUbuntu2.equals(quickserverOrderDistroSelUbuntu1));
        System.assert(quickserverOrderDistroSelUbuntu3.equals(quickserverOrderDistroSelUbuntu4));
        System.assert(quickserverOrderDistroSelUbuntu4.equals(quickserverOrderDistroSelUbuntu3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu1 = IntServerQuickserverOrderDistroSelUb.getExample();
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu2 = new IntServerQuickserverOrderDistroSelUb();

        System.assertEquals(false, quickserverOrderDistroSelUbuntu1.equals('foo'));
        System.assertEquals(false, quickserverOrderDistroSelUbuntu2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu1 = IntServerQuickserverOrderDistroSelUb.getExample();
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu2 = new IntServerQuickserverOrderDistroSelUb();
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu3;

        System.assertEquals(false, quickserverOrderDistroSelUbuntu1.equals(quickserverOrderDistroSelUbuntu3));
        System.assertEquals(false, quickserverOrderDistroSelUbuntu2.equals(quickserverOrderDistroSelUbuntu3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu1 = IntServerQuickserverOrderDistroSelUb.getExample();
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu2 = new IntServerQuickserverOrderDistroSelUb();

        System.assertEquals(quickserverOrderDistroSelUbuntu1.hashCode(), quickserverOrderDistroSelUbuntu1.hashCode());
        System.assertEquals(quickserverOrderDistroSelUbuntu2.hashCode(), quickserverOrderDistroSelUbuntu2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu1 = IntServerQuickserverOrderDistroSelUb.getExample();
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu2 = IntServerQuickserverOrderDistroSelUb.getExample();
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu3 = new IntServerQuickserverOrderDistroSelUb();
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu4 = new IntServerQuickserverOrderDistroSelUb();

        System.assert(quickserverOrderDistroSelUbuntu1.equals(quickserverOrderDistroSelUbuntu2));
        System.assert(quickserverOrderDistroSelUbuntu3.equals(quickserverOrderDistroSelUbuntu4));
        System.assertEquals(quickserverOrderDistroSelUbuntu1.hashCode(), quickserverOrderDistroSelUbuntu2.hashCode());
        System.assertEquals(quickserverOrderDistroSelUbuntu3.hashCode(), quickserverOrderDistroSelUbuntu4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverOrderDistroSelUb quickserverOrderDistroSelUbuntu = new IntServerQuickserverOrderDistroSelUb();
        Map<String, String> x-property-mappings = quickserverOrderDistroSelUbuntu.getx-property-mappings();
        System.assertEquals('ubuntu', x-property-mappings.get('Ubuntu'));
    }
}
