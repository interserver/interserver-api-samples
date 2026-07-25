@isTest
private class IntServerVpsTrafficHistorySectionDatTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse1 = IntServerVpsTrafficHistorySectionDat.getExample();
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse2 = vpsTrafficHistorySectionDataResponse1;
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse3 = new IntServerVpsTrafficHistorySectionDat();
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse4 = vpsTrafficHistorySectionDataResponse3;

        System.assert(vpsTrafficHistorySectionDataResponse1.equals(vpsTrafficHistorySectionDataResponse2));
        System.assert(vpsTrafficHistorySectionDataResponse2.equals(vpsTrafficHistorySectionDataResponse1));
        System.assert(vpsTrafficHistorySectionDataResponse1.equals(vpsTrafficHistorySectionDataResponse1));
        System.assert(vpsTrafficHistorySectionDataResponse3.equals(vpsTrafficHistorySectionDataResponse4));
        System.assert(vpsTrafficHistorySectionDataResponse4.equals(vpsTrafficHistorySectionDataResponse3));
        System.assert(vpsTrafficHistorySectionDataResponse3.equals(vpsTrafficHistorySectionDataResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse1 = IntServerVpsTrafficHistorySectionDat.getExample();
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse2 = IntServerVpsTrafficHistorySectionDat.getExample();
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse3 = new IntServerVpsTrafficHistorySectionDat();
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse4 = new IntServerVpsTrafficHistorySectionDat();

        System.assert(vpsTrafficHistorySectionDataResponse1.equals(vpsTrafficHistorySectionDataResponse2));
        System.assert(vpsTrafficHistorySectionDataResponse2.equals(vpsTrafficHistorySectionDataResponse1));
        System.assert(vpsTrafficHistorySectionDataResponse3.equals(vpsTrafficHistorySectionDataResponse4));
        System.assert(vpsTrafficHistorySectionDataResponse4.equals(vpsTrafficHistorySectionDataResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse1 = IntServerVpsTrafficHistorySectionDat.getExample();
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse2 = new IntServerVpsTrafficHistorySectionDat();

        System.assertEquals(false, vpsTrafficHistorySectionDataResponse1.equals('foo'));
        System.assertEquals(false, vpsTrafficHistorySectionDataResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse1 = IntServerVpsTrafficHistorySectionDat.getExample();
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse2 = new IntServerVpsTrafficHistorySectionDat();
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse3;

        System.assertEquals(false, vpsTrafficHistorySectionDataResponse1.equals(vpsTrafficHistorySectionDataResponse3));
        System.assertEquals(false, vpsTrafficHistorySectionDataResponse2.equals(vpsTrafficHistorySectionDataResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse1 = IntServerVpsTrafficHistorySectionDat.getExample();
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse2 = new IntServerVpsTrafficHistorySectionDat();

        System.assertEquals(vpsTrafficHistorySectionDataResponse1.hashCode(), vpsTrafficHistorySectionDataResponse1.hashCode());
        System.assertEquals(vpsTrafficHistorySectionDataResponse2.hashCode(), vpsTrafficHistorySectionDataResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse1 = IntServerVpsTrafficHistorySectionDat.getExample();
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse2 = IntServerVpsTrafficHistorySectionDat.getExample();
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse3 = new IntServerVpsTrafficHistorySectionDat();
        IntServerVpsTrafficHistorySectionDat vpsTrafficHistorySectionDataResponse4 = new IntServerVpsTrafficHistorySectionDat();

        System.assert(vpsTrafficHistorySectionDataResponse1.equals(vpsTrafficHistorySectionDataResponse2));
        System.assert(vpsTrafficHistorySectionDataResponse3.equals(vpsTrafficHistorySectionDataResponse4));
        System.assertEquals(vpsTrafficHistorySectionDataResponse1.hashCode(), vpsTrafficHistorySectionDataResponse2.hashCode());
        System.assertEquals(vpsTrafficHistorySectionDataResponse3.hashCode(), vpsTrafficHistorySectionDataResponse4.hashCode());
    }
}
