@isTest
private class IntServerVpsTrafficDataSectionResponTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse1 = IntServerVpsTrafficDataSectionRespon.getExample();
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse2 = vpsTrafficDataSectionResponse1;
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse3 = new IntServerVpsTrafficDataSectionRespon();
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse4 = vpsTrafficDataSectionResponse3;

        System.assert(vpsTrafficDataSectionResponse1.equals(vpsTrafficDataSectionResponse2));
        System.assert(vpsTrafficDataSectionResponse2.equals(vpsTrafficDataSectionResponse1));
        System.assert(vpsTrafficDataSectionResponse1.equals(vpsTrafficDataSectionResponse1));
        System.assert(vpsTrafficDataSectionResponse3.equals(vpsTrafficDataSectionResponse4));
        System.assert(vpsTrafficDataSectionResponse4.equals(vpsTrafficDataSectionResponse3));
        System.assert(vpsTrafficDataSectionResponse3.equals(vpsTrafficDataSectionResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse1 = IntServerVpsTrafficDataSectionRespon.getExample();
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse2 = IntServerVpsTrafficDataSectionRespon.getExample();
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse3 = new IntServerVpsTrafficDataSectionRespon();
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse4 = new IntServerVpsTrafficDataSectionRespon();

        System.assert(vpsTrafficDataSectionResponse1.equals(vpsTrafficDataSectionResponse2));
        System.assert(vpsTrafficDataSectionResponse2.equals(vpsTrafficDataSectionResponse1));
        System.assert(vpsTrafficDataSectionResponse3.equals(vpsTrafficDataSectionResponse4));
        System.assert(vpsTrafficDataSectionResponse4.equals(vpsTrafficDataSectionResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse1 = IntServerVpsTrafficDataSectionRespon.getExample();
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse2 = new IntServerVpsTrafficDataSectionRespon();

        System.assertEquals(false, vpsTrafficDataSectionResponse1.equals('foo'));
        System.assertEquals(false, vpsTrafficDataSectionResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse1 = IntServerVpsTrafficDataSectionRespon.getExample();
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse2 = new IntServerVpsTrafficDataSectionRespon();
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse3;

        System.assertEquals(false, vpsTrafficDataSectionResponse1.equals(vpsTrafficDataSectionResponse3));
        System.assertEquals(false, vpsTrafficDataSectionResponse2.equals(vpsTrafficDataSectionResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse1 = IntServerVpsTrafficDataSectionRespon.getExample();
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse2 = new IntServerVpsTrafficDataSectionRespon();

        System.assertEquals(vpsTrafficDataSectionResponse1.hashCode(), vpsTrafficDataSectionResponse1.hashCode());
        System.assertEquals(vpsTrafficDataSectionResponse2.hashCode(), vpsTrafficDataSectionResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse1 = IntServerVpsTrafficDataSectionRespon.getExample();
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse2 = IntServerVpsTrafficDataSectionRespon.getExample();
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse3 = new IntServerVpsTrafficDataSectionRespon();
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse4 = new IntServerVpsTrafficDataSectionRespon();

        System.assert(vpsTrafficDataSectionResponse1.equals(vpsTrafficDataSectionResponse2));
        System.assert(vpsTrafficDataSectionResponse3.equals(vpsTrafficDataSectionResponse4));
        System.assertEquals(vpsTrafficDataSectionResponse1.hashCode(), vpsTrafficDataSectionResponse2.hashCode());
        System.assertEquals(vpsTrafficDataSectionResponse3.hashCode(), vpsTrafficDataSectionResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerVpsTrafficDataSectionRespon vpsTrafficDataSectionResponse = new IntServerVpsTrafficDataSectionRespon();
        System.assertEquals(new List<IntServerVPSTrafficDataDataSectionRe>(), vpsTrafficDataSectionResponse.data);
        System.assertEquals(null, vpsTrafficDataSectionResponse.name);
    }
}
