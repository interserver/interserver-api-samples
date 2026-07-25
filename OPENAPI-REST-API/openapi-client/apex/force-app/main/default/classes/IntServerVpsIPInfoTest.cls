@isTest
private class IntServerVpsIPInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsIPInfo vpsIPInfo1 = IntServerVpsIPInfo.getExample();
        IntServerVpsIPInfo vpsIPInfo2 = vpsIPInfo1;
        IntServerVpsIPInfo vpsIPInfo3 = new IntServerVpsIPInfo();
        IntServerVpsIPInfo vpsIPInfo4 = vpsIPInfo3;

        System.assert(vpsIPInfo1.equals(vpsIPInfo2));
        System.assert(vpsIPInfo2.equals(vpsIPInfo1));
        System.assert(vpsIPInfo1.equals(vpsIPInfo1));
        System.assert(vpsIPInfo3.equals(vpsIPInfo4));
        System.assert(vpsIPInfo4.equals(vpsIPInfo3));
        System.assert(vpsIPInfo3.equals(vpsIPInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsIPInfo vpsIPInfo1 = IntServerVpsIPInfo.getExample();
        IntServerVpsIPInfo vpsIPInfo2 = IntServerVpsIPInfo.getExample();
        IntServerVpsIPInfo vpsIPInfo3 = new IntServerVpsIPInfo();
        IntServerVpsIPInfo vpsIPInfo4 = new IntServerVpsIPInfo();

        System.assert(vpsIPInfo1.equals(vpsIPInfo2));
        System.assert(vpsIPInfo2.equals(vpsIPInfo1));
        System.assert(vpsIPInfo3.equals(vpsIPInfo4));
        System.assert(vpsIPInfo4.equals(vpsIPInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsIPInfo vpsIPInfo1 = IntServerVpsIPInfo.getExample();
        IntServerVpsIPInfo vpsIPInfo2 = new IntServerVpsIPInfo();

        System.assertEquals(false, vpsIPInfo1.equals('foo'));
        System.assertEquals(false, vpsIPInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsIPInfo vpsIPInfo1 = IntServerVpsIPInfo.getExample();
        IntServerVpsIPInfo vpsIPInfo2 = new IntServerVpsIPInfo();
        IntServerVpsIPInfo vpsIPInfo3;

        System.assertEquals(false, vpsIPInfo1.equals(vpsIPInfo3));
        System.assertEquals(false, vpsIPInfo2.equals(vpsIPInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsIPInfo vpsIPInfo1 = IntServerVpsIPInfo.getExample();
        IntServerVpsIPInfo vpsIPInfo2 = new IntServerVpsIPInfo();

        System.assertEquals(vpsIPInfo1.hashCode(), vpsIPInfo1.hashCode());
        System.assertEquals(vpsIPInfo2.hashCode(), vpsIPInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsIPInfo vpsIPInfo1 = IntServerVpsIPInfo.getExample();
        IntServerVpsIPInfo vpsIPInfo2 = IntServerVpsIPInfo.getExample();
        IntServerVpsIPInfo vpsIPInfo3 = new IntServerVpsIPInfo();
        IntServerVpsIPInfo vpsIPInfo4 = new IntServerVpsIPInfo();

        System.assert(vpsIPInfo1.equals(vpsIPInfo2));
        System.assert(vpsIPInfo3.equals(vpsIPInfo4));
        System.assertEquals(vpsIPInfo1.hashCode(), vpsIPInfo2.hashCode());
        System.assertEquals(vpsIPInfo3.hashCode(), vpsIPInfo4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerVpsIPInfo vpsIPInfo = new IntServerVpsIPInfo();
        System.assertEquals(new List<IntServerVpsIPInfoRow>(), vpsIPInfo.rows);
        System.assertEquals(null, vpsIPInfo.title);
    }
}
