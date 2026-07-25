@isTest
private class IntServerQuickserverIpInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverIpInfo quickserverIpInfo1 = IntServerQuickserverIpInfo.getExample();
        IntServerQuickserverIpInfo quickserverIpInfo2 = quickserverIpInfo1;
        IntServerQuickserverIpInfo quickserverIpInfo3 = new IntServerQuickserverIpInfo();
        IntServerQuickserverIpInfo quickserverIpInfo4 = quickserverIpInfo3;

        System.assert(quickserverIpInfo1.equals(quickserverIpInfo2));
        System.assert(quickserverIpInfo2.equals(quickserverIpInfo1));
        System.assert(quickserverIpInfo1.equals(quickserverIpInfo1));
        System.assert(quickserverIpInfo3.equals(quickserverIpInfo4));
        System.assert(quickserverIpInfo4.equals(quickserverIpInfo3));
        System.assert(quickserverIpInfo3.equals(quickserverIpInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverIpInfo quickserverIpInfo1 = IntServerQuickserverIpInfo.getExample();
        IntServerQuickserverIpInfo quickserverIpInfo2 = IntServerQuickserverIpInfo.getExample();
        IntServerQuickserverIpInfo quickserverIpInfo3 = new IntServerQuickserverIpInfo();
        IntServerQuickserverIpInfo quickserverIpInfo4 = new IntServerQuickserverIpInfo();

        System.assert(quickserverIpInfo1.equals(quickserverIpInfo2));
        System.assert(quickserverIpInfo2.equals(quickserverIpInfo1));
        System.assert(quickserverIpInfo3.equals(quickserverIpInfo4));
        System.assert(quickserverIpInfo4.equals(quickserverIpInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverIpInfo quickserverIpInfo1 = IntServerQuickserverIpInfo.getExample();
        IntServerQuickserverIpInfo quickserverIpInfo2 = new IntServerQuickserverIpInfo();

        System.assertEquals(false, quickserverIpInfo1.equals('foo'));
        System.assertEquals(false, quickserverIpInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverIpInfo quickserverIpInfo1 = IntServerQuickserverIpInfo.getExample();
        IntServerQuickserverIpInfo quickserverIpInfo2 = new IntServerQuickserverIpInfo();
        IntServerQuickserverIpInfo quickserverIpInfo3;

        System.assertEquals(false, quickserverIpInfo1.equals(quickserverIpInfo3));
        System.assertEquals(false, quickserverIpInfo2.equals(quickserverIpInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverIpInfo quickserverIpInfo1 = IntServerQuickserverIpInfo.getExample();
        IntServerQuickserverIpInfo quickserverIpInfo2 = new IntServerQuickserverIpInfo();

        System.assertEquals(quickserverIpInfo1.hashCode(), quickserverIpInfo1.hashCode());
        System.assertEquals(quickserverIpInfo2.hashCode(), quickserverIpInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverIpInfo quickserverIpInfo1 = IntServerQuickserverIpInfo.getExample();
        IntServerQuickserverIpInfo quickserverIpInfo2 = IntServerQuickserverIpInfo.getExample();
        IntServerQuickserverIpInfo quickserverIpInfo3 = new IntServerQuickserverIpInfo();
        IntServerQuickserverIpInfo quickserverIpInfo4 = new IntServerQuickserverIpInfo();

        System.assert(quickserverIpInfo1.equals(quickserverIpInfo2));
        System.assert(quickserverIpInfo3.equals(quickserverIpInfo4));
        System.assertEquals(quickserverIpInfo1.hashCode(), quickserverIpInfo2.hashCode());
        System.assertEquals(quickserverIpInfo3.hashCode(), quickserverIpInfo4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerQuickserverIpInfo quickserverIpInfo = new IntServerQuickserverIpInfo();
        System.assertEquals(new List<IntServerQuickserverIpTableRow>(), quickserverIpInfo.rows);
        System.assertEquals(null, quickserverIpInfo.title);
    }
}
