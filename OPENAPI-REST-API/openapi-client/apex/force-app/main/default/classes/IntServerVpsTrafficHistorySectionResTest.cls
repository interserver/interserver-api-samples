@isTest
private class IntServerVpsTrafficHistorySectionResTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse1 = IntServerVpsTrafficHistorySectionRes.getExample();
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse2 = vpsTrafficHistorySectionResponse1;
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse3 = new IntServerVpsTrafficHistorySectionRes();
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse4 = vpsTrafficHistorySectionResponse3;

        System.assert(vpsTrafficHistorySectionResponse1.equals(vpsTrafficHistorySectionResponse2));
        System.assert(vpsTrafficHistorySectionResponse2.equals(vpsTrafficHistorySectionResponse1));
        System.assert(vpsTrafficHistorySectionResponse1.equals(vpsTrafficHistorySectionResponse1));
        System.assert(vpsTrafficHistorySectionResponse3.equals(vpsTrafficHistorySectionResponse4));
        System.assert(vpsTrafficHistorySectionResponse4.equals(vpsTrafficHistorySectionResponse3));
        System.assert(vpsTrafficHistorySectionResponse3.equals(vpsTrafficHistorySectionResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse1 = IntServerVpsTrafficHistorySectionRes.getExample();
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse2 = IntServerVpsTrafficHistorySectionRes.getExample();
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse3 = new IntServerVpsTrafficHistorySectionRes();
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse4 = new IntServerVpsTrafficHistorySectionRes();

        System.assert(vpsTrafficHistorySectionResponse1.equals(vpsTrafficHistorySectionResponse2));
        System.assert(vpsTrafficHistorySectionResponse2.equals(vpsTrafficHistorySectionResponse1));
        System.assert(vpsTrafficHistorySectionResponse3.equals(vpsTrafficHistorySectionResponse4));
        System.assert(vpsTrafficHistorySectionResponse4.equals(vpsTrafficHistorySectionResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse1 = IntServerVpsTrafficHistorySectionRes.getExample();
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse2 = new IntServerVpsTrafficHistorySectionRes();

        System.assertEquals(false, vpsTrafficHistorySectionResponse1.equals('foo'));
        System.assertEquals(false, vpsTrafficHistorySectionResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse1 = IntServerVpsTrafficHistorySectionRes.getExample();
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse2 = new IntServerVpsTrafficHistorySectionRes();
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse3;

        System.assertEquals(false, vpsTrafficHistorySectionResponse1.equals(vpsTrafficHistorySectionResponse3));
        System.assertEquals(false, vpsTrafficHistorySectionResponse2.equals(vpsTrafficHistorySectionResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse1 = IntServerVpsTrafficHistorySectionRes.getExample();
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse2 = new IntServerVpsTrafficHistorySectionRes();

        System.assertEquals(vpsTrafficHistorySectionResponse1.hashCode(), vpsTrafficHistorySectionResponse1.hashCode());
        System.assertEquals(vpsTrafficHistorySectionResponse2.hashCode(), vpsTrafficHistorySectionResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse1 = IntServerVpsTrafficHistorySectionRes.getExample();
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse2 = IntServerVpsTrafficHistorySectionRes.getExample();
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse3 = new IntServerVpsTrafficHistorySectionRes();
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse4 = new IntServerVpsTrafficHistorySectionRes();

        System.assert(vpsTrafficHistorySectionResponse1.equals(vpsTrafficHistorySectionResponse2));
        System.assert(vpsTrafficHistorySectionResponse3.equals(vpsTrafficHistorySectionResponse4));
        System.assertEquals(vpsTrafficHistorySectionResponse1.hashCode(), vpsTrafficHistorySectionResponse2.hashCode());
        System.assertEquals(vpsTrafficHistorySectionResponse3.hashCode(), vpsTrafficHistorySectionResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerVpsTrafficHistorySectionRes vpsTrafficHistorySectionResponse = new IntServerVpsTrafficHistorySectionRes();
        System.assertEquals(new List<IntServerVpsTrafficHistorySectionDat>(), vpsTrafficHistorySectionResponse.data);
        System.assertEquals(new List<Datetime>(), vpsTrafficHistorySectionResponse.times);
    }
}
