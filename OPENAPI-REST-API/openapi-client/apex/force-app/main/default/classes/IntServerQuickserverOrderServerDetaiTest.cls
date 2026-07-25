@isTest
private class IntServerQuickserverOrderServerDetaiTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails1 = IntServerQuickserverOrderServerDetai.getExample();
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails2 = quickserverOrderServerDetails1;
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails3 = new IntServerQuickserverOrderServerDetai();
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails4 = quickserverOrderServerDetails3;

        System.assert(quickserverOrderServerDetails1.equals(quickserverOrderServerDetails2));
        System.assert(quickserverOrderServerDetails2.equals(quickserverOrderServerDetails1));
        System.assert(quickserverOrderServerDetails1.equals(quickserverOrderServerDetails1));
        System.assert(quickserverOrderServerDetails3.equals(quickserverOrderServerDetails4));
        System.assert(quickserverOrderServerDetails4.equals(quickserverOrderServerDetails3));
        System.assert(quickserverOrderServerDetails3.equals(quickserverOrderServerDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails1 = IntServerQuickserverOrderServerDetai.getExample();
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails2 = IntServerQuickserverOrderServerDetai.getExample();
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails3 = new IntServerQuickserverOrderServerDetai();
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails4 = new IntServerQuickserverOrderServerDetai();

        System.assert(quickserverOrderServerDetails1.equals(quickserverOrderServerDetails2));
        System.assert(quickserverOrderServerDetails2.equals(quickserverOrderServerDetails1));
        System.assert(quickserverOrderServerDetails3.equals(quickserverOrderServerDetails4));
        System.assert(quickserverOrderServerDetails4.equals(quickserverOrderServerDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails1 = IntServerQuickserverOrderServerDetai.getExample();
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails2 = new IntServerQuickserverOrderServerDetai();

        System.assertEquals(false, quickserverOrderServerDetails1.equals('foo'));
        System.assertEquals(false, quickserverOrderServerDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails1 = IntServerQuickserverOrderServerDetai.getExample();
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails2 = new IntServerQuickserverOrderServerDetai();
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails3;

        System.assertEquals(false, quickserverOrderServerDetails1.equals(quickserverOrderServerDetails3));
        System.assertEquals(false, quickserverOrderServerDetails2.equals(quickserverOrderServerDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails1 = IntServerQuickserverOrderServerDetai.getExample();
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails2 = new IntServerQuickserverOrderServerDetai();

        System.assertEquals(quickserverOrderServerDetails1.hashCode(), quickserverOrderServerDetails1.hashCode());
        System.assertEquals(quickserverOrderServerDetails2.hashCode(), quickserverOrderServerDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails1 = IntServerQuickserverOrderServerDetai.getExample();
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails2 = IntServerQuickserverOrderServerDetai.getExample();
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails3 = new IntServerQuickserverOrderServerDetai();
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails4 = new IntServerQuickserverOrderServerDetai();

        System.assert(quickserverOrderServerDetails1.equals(quickserverOrderServerDetails2));
        System.assert(quickserverOrderServerDetails3.equals(quickserverOrderServerDetails4));
        System.assertEquals(quickserverOrderServerDetails1.hashCode(), quickserverOrderServerDetails2.hashCode());
        System.assertEquals(quickserverOrderServerDetails3.hashCode(), quickserverOrderServerDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverOrderServerDetai quickserverOrderServerDetails = new IntServerQuickserverOrderServerDetai();
        Map<String, String> x-property-mappings = quickserverOrderServerDetails.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('381'));
    }
}
