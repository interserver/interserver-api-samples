@isTest
private class IntServerVpsCPDataTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsCPData vpsCPData1 = IntServerVpsCPData.getExample();
        IntServerVpsCPData vpsCPData2 = vpsCPData1;
        IntServerVpsCPData vpsCPData3 = new IntServerVpsCPData();
        IntServerVpsCPData vpsCPData4 = vpsCPData3;

        System.assert(vpsCPData1.equals(vpsCPData2));
        System.assert(vpsCPData2.equals(vpsCPData1));
        System.assert(vpsCPData1.equals(vpsCPData1));
        System.assert(vpsCPData3.equals(vpsCPData4));
        System.assert(vpsCPData4.equals(vpsCPData3));
        System.assert(vpsCPData3.equals(vpsCPData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsCPData vpsCPData1 = IntServerVpsCPData.getExample();
        IntServerVpsCPData vpsCPData2 = IntServerVpsCPData.getExample();
        IntServerVpsCPData vpsCPData3 = new IntServerVpsCPData();
        IntServerVpsCPData vpsCPData4 = new IntServerVpsCPData();

        System.assert(vpsCPData1.equals(vpsCPData2));
        System.assert(vpsCPData2.equals(vpsCPData1));
        System.assert(vpsCPData3.equals(vpsCPData4));
        System.assert(vpsCPData4.equals(vpsCPData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsCPData vpsCPData1 = IntServerVpsCPData.getExample();
        IntServerVpsCPData vpsCPData2 = new IntServerVpsCPData();

        System.assertEquals(false, vpsCPData1.equals('foo'));
        System.assertEquals(false, vpsCPData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsCPData vpsCPData1 = IntServerVpsCPData.getExample();
        IntServerVpsCPData vpsCPData2 = new IntServerVpsCPData();
        IntServerVpsCPData vpsCPData3;

        System.assertEquals(false, vpsCPData1.equals(vpsCPData3));
        System.assertEquals(false, vpsCPData2.equals(vpsCPData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsCPData vpsCPData1 = IntServerVpsCPData.getExample();
        IntServerVpsCPData vpsCPData2 = new IntServerVpsCPData();

        System.assertEquals(vpsCPData1.hashCode(), vpsCPData1.hashCode());
        System.assertEquals(vpsCPData2.hashCode(), vpsCPData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsCPData vpsCPData1 = IntServerVpsCPData.getExample();
        IntServerVpsCPData vpsCPData2 = IntServerVpsCPData.getExample();
        IntServerVpsCPData vpsCPData3 = new IntServerVpsCPData();
        IntServerVpsCPData vpsCPData4 = new IntServerVpsCPData();

        System.assert(vpsCPData1.equals(vpsCPData2));
        System.assert(vpsCPData3.equals(vpsCPData4));
        System.assertEquals(vpsCPData1.hashCode(), vpsCPData2.hashCode());
        System.assertEquals(vpsCPData3.hashCode(), vpsCPData4.hashCode());
    }
}
