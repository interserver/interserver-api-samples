@isTest
private class IntServerServicesInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServicesInfo servicesInfo1 = IntServerServicesInfo.getExample();
        IntServerServicesInfo servicesInfo2 = servicesInfo1;
        IntServerServicesInfo servicesInfo3 = new IntServerServicesInfo();
        IntServerServicesInfo servicesInfo4 = servicesInfo3;

        System.assert(servicesInfo1.equals(servicesInfo2));
        System.assert(servicesInfo2.equals(servicesInfo1));
        System.assert(servicesInfo1.equals(servicesInfo1));
        System.assert(servicesInfo3.equals(servicesInfo4));
        System.assert(servicesInfo4.equals(servicesInfo3));
        System.assert(servicesInfo3.equals(servicesInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServicesInfo servicesInfo1 = IntServerServicesInfo.getExample();
        IntServerServicesInfo servicesInfo2 = IntServerServicesInfo.getExample();
        IntServerServicesInfo servicesInfo3 = new IntServerServicesInfo();
        IntServerServicesInfo servicesInfo4 = new IntServerServicesInfo();

        System.assert(servicesInfo1.equals(servicesInfo2));
        System.assert(servicesInfo2.equals(servicesInfo1));
        System.assert(servicesInfo3.equals(servicesInfo4));
        System.assert(servicesInfo4.equals(servicesInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServicesInfo servicesInfo1 = IntServerServicesInfo.getExample();
        IntServerServicesInfo servicesInfo2 = new IntServerServicesInfo();

        System.assertEquals(false, servicesInfo1.equals('foo'));
        System.assertEquals(false, servicesInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServicesInfo servicesInfo1 = IntServerServicesInfo.getExample();
        IntServerServicesInfo servicesInfo2 = new IntServerServicesInfo();
        IntServerServicesInfo servicesInfo3;

        System.assertEquals(false, servicesInfo1.equals(servicesInfo3));
        System.assertEquals(false, servicesInfo2.equals(servicesInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServicesInfo servicesInfo1 = IntServerServicesInfo.getExample();
        IntServerServicesInfo servicesInfo2 = new IntServerServicesInfo();

        System.assertEquals(servicesInfo1.hashCode(), servicesInfo1.hashCode());
        System.assertEquals(servicesInfo2.hashCode(), servicesInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServicesInfo servicesInfo1 = IntServerServicesInfo.getExample();
        IntServerServicesInfo servicesInfo2 = IntServerServicesInfo.getExample();
        IntServerServicesInfo servicesInfo3 = new IntServerServicesInfo();
        IntServerServicesInfo servicesInfo4 = new IntServerServicesInfo();

        System.assert(servicesInfo1.equals(servicesInfo2));
        System.assert(servicesInfo3.equals(servicesInfo4));
        System.assertEquals(servicesInfo1.hashCode(), servicesInfo2.hashCode());
        System.assertEquals(servicesInfo3.hashCode(), servicesInfo4.hashCode());
    }
}
