@isTest
private class IntServerVpsTrafficResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsTrafficResponse vpsTrafficResponse1 = IntServerVpsTrafficResponse.getExample();
        IntServerVpsTrafficResponse vpsTrafficResponse2 = vpsTrafficResponse1;
        IntServerVpsTrafficResponse vpsTrafficResponse3 = new IntServerVpsTrafficResponse();
        IntServerVpsTrafficResponse vpsTrafficResponse4 = vpsTrafficResponse3;

        System.assert(vpsTrafficResponse1.equals(vpsTrafficResponse2));
        System.assert(vpsTrafficResponse2.equals(vpsTrafficResponse1));
        System.assert(vpsTrafficResponse1.equals(vpsTrafficResponse1));
        System.assert(vpsTrafficResponse3.equals(vpsTrafficResponse4));
        System.assert(vpsTrafficResponse4.equals(vpsTrafficResponse3));
        System.assert(vpsTrafficResponse3.equals(vpsTrafficResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsTrafficResponse vpsTrafficResponse1 = IntServerVpsTrafficResponse.getExample();
        IntServerVpsTrafficResponse vpsTrafficResponse2 = IntServerVpsTrafficResponse.getExample();
        IntServerVpsTrafficResponse vpsTrafficResponse3 = new IntServerVpsTrafficResponse();
        IntServerVpsTrafficResponse vpsTrafficResponse4 = new IntServerVpsTrafficResponse();

        System.assert(vpsTrafficResponse1.equals(vpsTrafficResponse2));
        System.assert(vpsTrafficResponse2.equals(vpsTrafficResponse1));
        System.assert(vpsTrafficResponse3.equals(vpsTrafficResponse4));
        System.assert(vpsTrafficResponse4.equals(vpsTrafficResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsTrafficResponse vpsTrafficResponse1 = IntServerVpsTrafficResponse.getExample();
        IntServerVpsTrafficResponse vpsTrafficResponse2 = new IntServerVpsTrafficResponse();

        System.assertEquals(false, vpsTrafficResponse1.equals('foo'));
        System.assertEquals(false, vpsTrafficResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsTrafficResponse vpsTrafficResponse1 = IntServerVpsTrafficResponse.getExample();
        IntServerVpsTrafficResponse vpsTrafficResponse2 = new IntServerVpsTrafficResponse();
        IntServerVpsTrafficResponse vpsTrafficResponse3;

        System.assertEquals(false, vpsTrafficResponse1.equals(vpsTrafficResponse3));
        System.assertEquals(false, vpsTrafficResponse2.equals(vpsTrafficResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsTrafficResponse vpsTrafficResponse1 = IntServerVpsTrafficResponse.getExample();
        IntServerVpsTrafficResponse vpsTrafficResponse2 = new IntServerVpsTrafficResponse();

        System.assertEquals(vpsTrafficResponse1.hashCode(), vpsTrafficResponse1.hashCode());
        System.assertEquals(vpsTrafficResponse2.hashCode(), vpsTrafficResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsTrafficResponse vpsTrafficResponse1 = IntServerVpsTrafficResponse.getExample();
        IntServerVpsTrafficResponse vpsTrafficResponse2 = IntServerVpsTrafficResponse.getExample();
        IntServerVpsTrafficResponse vpsTrafficResponse3 = new IntServerVpsTrafficResponse();
        IntServerVpsTrafficResponse vpsTrafficResponse4 = new IntServerVpsTrafficResponse();

        System.assert(vpsTrafficResponse1.equals(vpsTrafficResponse2));
        System.assert(vpsTrafficResponse3.equals(vpsTrafficResponse4));
        System.assertEquals(vpsTrafficResponse1.hashCode(), vpsTrafficResponse2.hashCode());
        System.assertEquals(vpsTrafficResponse3.hashCode(), vpsTrafficResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerVpsTrafficResponse vpsTrafficResponse = new IntServerVpsTrafficResponse();
        System.assertEquals(new List<Datetime>(), vpsTrafficResponse.times);
        System.assertEquals(new List<IntServerVpsTrafficDataSectionRespon>(), vpsTrafficResponse.data);
        System.assertEquals(null, vpsTrafficResponse.name);
        System.assertEquals(null, vpsTrafficResponse.target);
        System.assertEquals(null, vpsTrafficResponse.interval);
        System.assertEquals(null, vpsTrafficResponse.history);
        System.assertEquals(null, vpsTrafficResponse.last);
        System.assertEquals(null, vpsTrafficResponse.totals);
        System.assertEquals(null, vpsTrafficResponse.usage);
    }
}
