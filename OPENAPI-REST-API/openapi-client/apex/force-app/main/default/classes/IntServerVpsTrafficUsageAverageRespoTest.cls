@isTest
private class IntServerVpsTrafficUsageAverageRespoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse1 = IntServerVpsTrafficUsageAverageRespo.getExample();
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse2 = vpsTrafficUsageAverageResponse1;
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse3 = new IntServerVpsTrafficUsageAverageRespo();
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse4 = vpsTrafficUsageAverageResponse3;

        System.assert(vpsTrafficUsageAverageResponse1.equals(vpsTrafficUsageAverageResponse2));
        System.assert(vpsTrafficUsageAverageResponse2.equals(vpsTrafficUsageAverageResponse1));
        System.assert(vpsTrafficUsageAverageResponse1.equals(vpsTrafficUsageAverageResponse1));
        System.assert(vpsTrafficUsageAverageResponse3.equals(vpsTrafficUsageAverageResponse4));
        System.assert(vpsTrafficUsageAverageResponse4.equals(vpsTrafficUsageAverageResponse3));
        System.assert(vpsTrafficUsageAverageResponse3.equals(vpsTrafficUsageAverageResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse1 = IntServerVpsTrafficUsageAverageRespo.getExample();
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse2 = IntServerVpsTrafficUsageAverageRespo.getExample();
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse3 = new IntServerVpsTrafficUsageAverageRespo();
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse4 = new IntServerVpsTrafficUsageAverageRespo();

        System.assert(vpsTrafficUsageAverageResponse1.equals(vpsTrafficUsageAverageResponse2));
        System.assert(vpsTrafficUsageAverageResponse2.equals(vpsTrafficUsageAverageResponse1));
        System.assert(vpsTrafficUsageAverageResponse3.equals(vpsTrafficUsageAverageResponse4));
        System.assert(vpsTrafficUsageAverageResponse4.equals(vpsTrafficUsageAverageResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse1 = IntServerVpsTrafficUsageAverageRespo.getExample();
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse2 = new IntServerVpsTrafficUsageAverageRespo();

        System.assertEquals(false, vpsTrafficUsageAverageResponse1.equals('foo'));
        System.assertEquals(false, vpsTrafficUsageAverageResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse1 = IntServerVpsTrafficUsageAverageRespo.getExample();
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse2 = new IntServerVpsTrafficUsageAverageRespo();
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse3;

        System.assertEquals(false, vpsTrafficUsageAverageResponse1.equals(vpsTrafficUsageAverageResponse3));
        System.assertEquals(false, vpsTrafficUsageAverageResponse2.equals(vpsTrafficUsageAverageResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse1 = IntServerVpsTrafficUsageAverageRespo.getExample();
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse2 = new IntServerVpsTrafficUsageAverageRespo();

        System.assertEquals(vpsTrafficUsageAverageResponse1.hashCode(), vpsTrafficUsageAverageResponse1.hashCode());
        System.assertEquals(vpsTrafficUsageAverageResponse2.hashCode(), vpsTrafficUsageAverageResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse1 = IntServerVpsTrafficUsageAverageRespo.getExample();
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse2 = IntServerVpsTrafficUsageAverageRespo.getExample();
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse3 = new IntServerVpsTrafficUsageAverageRespo();
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse4 = new IntServerVpsTrafficUsageAverageRespo();

        System.assert(vpsTrafficUsageAverageResponse1.equals(vpsTrafficUsageAverageResponse2));
        System.assert(vpsTrafficUsageAverageResponse3.equals(vpsTrafficUsageAverageResponse4));
        System.assertEquals(vpsTrafficUsageAverageResponse1.hashCode(), vpsTrafficUsageAverageResponse2.hashCode());
        System.assertEquals(vpsTrafficUsageAverageResponse3.hashCode(), vpsTrafficUsageAverageResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsTrafficUsageAverageRespo vpsTrafficUsageAverageResponse = new IntServerVpsTrafficUsageAverageRespo();
        Map<String, String> x-property-mappings = vpsTrafficUsageAverageResponse.getx-property-mappings();
        System.assertEquals('r_in', x-property-mappings.get('in'));
    }
}
