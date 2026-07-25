@isTest
private class IntServerVpsDADataTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsDAData vpsDAData1 = IntServerVpsDAData.getExample();
        IntServerVpsDAData vpsDAData2 = vpsDAData1;
        IntServerVpsDAData vpsDAData3 = new IntServerVpsDAData();
        IntServerVpsDAData vpsDAData4 = vpsDAData3;

        System.assert(vpsDAData1.equals(vpsDAData2));
        System.assert(vpsDAData2.equals(vpsDAData1));
        System.assert(vpsDAData1.equals(vpsDAData1));
        System.assert(vpsDAData3.equals(vpsDAData4));
        System.assert(vpsDAData4.equals(vpsDAData3));
        System.assert(vpsDAData3.equals(vpsDAData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsDAData vpsDAData1 = IntServerVpsDAData.getExample();
        IntServerVpsDAData vpsDAData2 = IntServerVpsDAData.getExample();
        IntServerVpsDAData vpsDAData3 = new IntServerVpsDAData();
        IntServerVpsDAData vpsDAData4 = new IntServerVpsDAData();

        System.assert(vpsDAData1.equals(vpsDAData2));
        System.assert(vpsDAData2.equals(vpsDAData1));
        System.assert(vpsDAData3.equals(vpsDAData4));
        System.assert(vpsDAData4.equals(vpsDAData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsDAData vpsDAData1 = IntServerVpsDAData.getExample();
        IntServerVpsDAData vpsDAData2 = new IntServerVpsDAData();

        System.assertEquals(false, vpsDAData1.equals('foo'));
        System.assertEquals(false, vpsDAData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsDAData vpsDAData1 = IntServerVpsDAData.getExample();
        IntServerVpsDAData vpsDAData2 = new IntServerVpsDAData();
        IntServerVpsDAData vpsDAData3;

        System.assertEquals(false, vpsDAData1.equals(vpsDAData3));
        System.assertEquals(false, vpsDAData2.equals(vpsDAData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsDAData vpsDAData1 = IntServerVpsDAData.getExample();
        IntServerVpsDAData vpsDAData2 = new IntServerVpsDAData();

        System.assertEquals(vpsDAData1.hashCode(), vpsDAData1.hashCode());
        System.assertEquals(vpsDAData2.hashCode(), vpsDAData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsDAData vpsDAData1 = IntServerVpsDAData.getExample();
        IntServerVpsDAData vpsDAData2 = IntServerVpsDAData.getExample();
        IntServerVpsDAData vpsDAData3 = new IntServerVpsDAData();
        IntServerVpsDAData vpsDAData4 = new IntServerVpsDAData();

        System.assert(vpsDAData1.equals(vpsDAData2));
        System.assert(vpsDAData3.equals(vpsDAData4));
        System.assertEquals(vpsDAData1.hashCode(), vpsDAData2.hashCode());
        System.assertEquals(vpsDAData3.hashCode(), vpsDAData4.hashCode());
    }
}
