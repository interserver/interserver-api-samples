@isTest
private class IntServerVpsTrafficTotalsSectionRespTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse1 = IntServerVpsTrafficTotalsSectionResp.getExample();
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse2 = vpsTrafficTotalsSectionResponse1;
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse3 = new IntServerVpsTrafficTotalsSectionResp();
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse4 = vpsTrafficTotalsSectionResponse3;

        System.assert(vpsTrafficTotalsSectionResponse1.equals(vpsTrafficTotalsSectionResponse2));
        System.assert(vpsTrafficTotalsSectionResponse2.equals(vpsTrafficTotalsSectionResponse1));
        System.assert(vpsTrafficTotalsSectionResponse1.equals(vpsTrafficTotalsSectionResponse1));
        System.assert(vpsTrafficTotalsSectionResponse3.equals(vpsTrafficTotalsSectionResponse4));
        System.assert(vpsTrafficTotalsSectionResponse4.equals(vpsTrafficTotalsSectionResponse3));
        System.assert(vpsTrafficTotalsSectionResponse3.equals(vpsTrafficTotalsSectionResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse1 = IntServerVpsTrafficTotalsSectionResp.getExample();
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse2 = IntServerVpsTrafficTotalsSectionResp.getExample();
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse3 = new IntServerVpsTrafficTotalsSectionResp();
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse4 = new IntServerVpsTrafficTotalsSectionResp();

        System.assert(vpsTrafficTotalsSectionResponse1.equals(vpsTrafficTotalsSectionResponse2));
        System.assert(vpsTrafficTotalsSectionResponse2.equals(vpsTrafficTotalsSectionResponse1));
        System.assert(vpsTrafficTotalsSectionResponse3.equals(vpsTrafficTotalsSectionResponse4));
        System.assert(vpsTrafficTotalsSectionResponse4.equals(vpsTrafficTotalsSectionResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse1 = IntServerVpsTrafficTotalsSectionResp.getExample();
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse2 = new IntServerVpsTrafficTotalsSectionResp();

        System.assertEquals(false, vpsTrafficTotalsSectionResponse1.equals('foo'));
        System.assertEquals(false, vpsTrafficTotalsSectionResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse1 = IntServerVpsTrafficTotalsSectionResp.getExample();
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse2 = new IntServerVpsTrafficTotalsSectionResp();
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse3;

        System.assertEquals(false, vpsTrafficTotalsSectionResponse1.equals(vpsTrafficTotalsSectionResponse3));
        System.assertEquals(false, vpsTrafficTotalsSectionResponse2.equals(vpsTrafficTotalsSectionResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse1 = IntServerVpsTrafficTotalsSectionResp.getExample();
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse2 = new IntServerVpsTrafficTotalsSectionResp();

        System.assertEquals(vpsTrafficTotalsSectionResponse1.hashCode(), vpsTrafficTotalsSectionResponse1.hashCode());
        System.assertEquals(vpsTrafficTotalsSectionResponse2.hashCode(), vpsTrafficTotalsSectionResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse1 = IntServerVpsTrafficTotalsSectionResp.getExample();
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse2 = IntServerVpsTrafficTotalsSectionResp.getExample();
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse3 = new IntServerVpsTrafficTotalsSectionResp();
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse4 = new IntServerVpsTrafficTotalsSectionResp();

        System.assert(vpsTrafficTotalsSectionResponse1.equals(vpsTrafficTotalsSectionResponse2));
        System.assert(vpsTrafficTotalsSectionResponse3.equals(vpsTrafficTotalsSectionResponse4));
        System.assertEquals(vpsTrafficTotalsSectionResponse1.hashCode(), vpsTrafficTotalsSectionResponse2.hashCode());
        System.assertEquals(vpsTrafficTotalsSectionResponse3.hashCode(), vpsTrafficTotalsSectionResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsTrafficTotalsSectionResp vpsTrafficTotalsSectionResponse = new IntServerVpsTrafficTotalsSectionResp();
        Map<String, String> x-property-mappings = vpsTrafficTotalsSectionResponse.getx-property-mappings();
        System.assertEquals('r_in', x-property-mappings.get('in'));
    }
}
