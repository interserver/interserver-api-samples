@isTest
private class IntServerVpsTrafficUsageResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse1 = IntServerVpsTrafficUsageResponse.getExample();
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse2 = vpsTrafficUsageResponse1;
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse3 = new IntServerVpsTrafficUsageResponse();
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse4 = vpsTrafficUsageResponse3;

        System.assert(vpsTrafficUsageResponse1.equals(vpsTrafficUsageResponse2));
        System.assert(vpsTrafficUsageResponse2.equals(vpsTrafficUsageResponse1));
        System.assert(vpsTrafficUsageResponse1.equals(vpsTrafficUsageResponse1));
        System.assert(vpsTrafficUsageResponse3.equals(vpsTrafficUsageResponse4));
        System.assert(vpsTrafficUsageResponse4.equals(vpsTrafficUsageResponse3));
        System.assert(vpsTrafficUsageResponse3.equals(vpsTrafficUsageResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse1 = IntServerVpsTrafficUsageResponse.getExample();
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse2 = IntServerVpsTrafficUsageResponse.getExample();
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse3 = new IntServerVpsTrafficUsageResponse();
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse4 = new IntServerVpsTrafficUsageResponse();

        System.assert(vpsTrafficUsageResponse1.equals(vpsTrafficUsageResponse2));
        System.assert(vpsTrafficUsageResponse2.equals(vpsTrafficUsageResponse1));
        System.assert(vpsTrafficUsageResponse3.equals(vpsTrafficUsageResponse4));
        System.assert(vpsTrafficUsageResponse4.equals(vpsTrafficUsageResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse1 = IntServerVpsTrafficUsageResponse.getExample();
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse2 = new IntServerVpsTrafficUsageResponse();

        System.assertEquals(false, vpsTrafficUsageResponse1.equals('foo'));
        System.assertEquals(false, vpsTrafficUsageResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse1 = IntServerVpsTrafficUsageResponse.getExample();
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse2 = new IntServerVpsTrafficUsageResponse();
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse3;

        System.assertEquals(false, vpsTrafficUsageResponse1.equals(vpsTrafficUsageResponse3));
        System.assertEquals(false, vpsTrafficUsageResponse2.equals(vpsTrafficUsageResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse1 = IntServerVpsTrafficUsageResponse.getExample();
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse2 = new IntServerVpsTrafficUsageResponse();

        System.assertEquals(vpsTrafficUsageResponse1.hashCode(), vpsTrafficUsageResponse1.hashCode());
        System.assertEquals(vpsTrafficUsageResponse2.hashCode(), vpsTrafficUsageResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse1 = IntServerVpsTrafficUsageResponse.getExample();
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse2 = IntServerVpsTrafficUsageResponse.getExample();
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse3 = new IntServerVpsTrafficUsageResponse();
        IntServerVpsTrafficUsageResponse vpsTrafficUsageResponse4 = new IntServerVpsTrafficUsageResponse();

        System.assert(vpsTrafficUsageResponse1.equals(vpsTrafficUsageResponse2));
        System.assert(vpsTrafficUsageResponse3.equals(vpsTrafficUsageResponse4));
        System.assertEquals(vpsTrafficUsageResponse1.hashCode(), vpsTrafficUsageResponse2.hashCode());
        System.assertEquals(vpsTrafficUsageResponse3.hashCode(), vpsTrafficUsageResponse4.hashCode());
    }
}
