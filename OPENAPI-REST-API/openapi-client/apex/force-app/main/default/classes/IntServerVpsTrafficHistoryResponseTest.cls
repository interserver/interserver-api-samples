@isTest
private class IntServerVpsTrafficHistoryResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse1 = IntServerVpsTrafficHistoryResponse.getExample();
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse2 = vpsTrafficHistoryResponse1;
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse3 = new IntServerVpsTrafficHistoryResponse();
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse4 = vpsTrafficHistoryResponse3;

        System.assert(vpsTrafficHistoryResponse1.equals(vpsTrafficHistoryResponse2));
        System.assert(vpsTrafficHistoryResponse2.equals(vpsTrafficHistoryResponse1));
        System.assert(vpsTrafficHistoryResponse1.equals(vpsTrafficHistoryResponse1));
        System.assert(vpsTrafficHistoryResponse3.equals(vpsTrafficHistoryResponse4));
        System.assert(vpsTrafficHistoryResponse4.equals(vpsTrafficHistoryResponse3));
        System.assert(vpsTrafficHistoryResponse3.equals(vpsTrafficHistoryResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse1 = IntServerVpsTrafficHistoryResponse.getExample();
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse2 = IntServerVpsTrafficHistoryResponse.getExample();
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse3 = new IntServerVpsTrafficHistoryResponse();
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse4 = new IntServerVpsTrafficHistoryResponse();

        System.assert(vpsTrafficHistoryResponse1.equals(vpsTrafficHistoryResponse2));
        System.assert(vpsTrafficHistoryResponse2.equals(vpsTrafficHistoryResponse1));
        System.assert(vpsTrafficHistoryResponse3.equals(vpsTrafficHistoryResponse4));
        System.assert(vpsTrafficHistoryResponse4.equals(vpsTrafficHistoryResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse1 = IntServerVpsTrafficHistoryResponse.getExample();
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse2 = new IntServerVpsTrafficHistoryResponse();

        System.assertEquals(false, vpsTrafficHistoryResponse1.equals('foo'));
        System.assertEquals(false, vpsTrafficHistoryResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse1 = IntServerVpsTrafficHistoryResponse.getExample();
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse2 = new IntServerVpsTrafficHistoryResponse();
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse3;

        System.assertEquals(false, vpsTrafficHistoryResponse1.equals(vpsTrafficHistoryResponse3));
        System.assertEquals(false, vpsTrafficHistoryResponse2.equals(vpsTrafficHistoryResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse1 = IntServerVpsTrafficHistoryResponse.getExample();
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse2 = new IntServerVpsTrafficHistoryResponse();

        System.assertEquals(vpsTrafficHistoryResponse1.hashCode(), vpsTrafficHistoryResponse1.hashCode());
        System.assertEquals(vpsTrafficHistoryResponse2.hashCode(), vpsTrafficHistoryResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse1 = IntServerVpsTrafficHistoryResponse.getExample();
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse2 = IntServerVpsTrafficHistoryResponse.getExample();
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse3 = new IntServerVpsTrafficHistoryResponse();
        IntServerVpsTrafficHistoryResponse vpsTrafficHistoryResponse4 = new IntServerVpsTrafficHistoryResponse();

        System.assert(vpsTrafficHistoryResponse1.equals(vpsTrafficHistoryResponse2));
        System.assert(vpsTrafficHistoryResponse3.equals(vpsTrafficHistoryResponse4));
        System.assertEquals(vpsTrafficHistoryResponse1.hashCode(), vpsTrafficHistoryResponse2.hashCode());
        System.assertEquals(vpsTrafficHistoryResponse3.hashCode(), vpsTrafficHistoryResponse4.hashCode());
    }
}
