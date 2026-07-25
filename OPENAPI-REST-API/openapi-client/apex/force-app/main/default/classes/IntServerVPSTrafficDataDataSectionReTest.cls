@isTest
private class IntServerVPSTrafficDataDataSectionReTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner1 = IntServerVPSTrafficDataDataSectionRe.getExample();
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner2 = vpSTrafficDataDataSectionResponseInner1;
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner3 = new IntServerVPSTrafficDataDataSectionRe();
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner4 = vpSTrafficDataDataSectionResponseInner3;

        System.assert(vpSTrafficDataDataSectionResponseInner1.equals(vpSTrafficDataDataSectionResponseInner2));
        System.assert(vpSTrafficDataDataSectionResponseInner2.equals(vpSTrafficDataDataSectionResponseInner1));
        System.assert(vpSTrafficDataDataSectionResponseInner1.equals(vpSTrafficDataDataSectionResponseInner1));
        System.assert(vpSTrafficDataDataSectionResponseInner3.equals(vpSTrafficDataDataSectionResponseInner4));
        System.assert(vpSTrafficDataDataSectionResponseInner4.equals(vpSTrafficDataDataSectionResponseInner3));
        System.assert(vpSTrafficDataDataSectionResponseInner3.equals(vpSTrafficDataDataSectionResponseInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner1 = IntServerVPSTrafficDataDataSectionRe.getExample();
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner2 = IntServerVPSTrafficDataDataSectionRe.getExample();
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner3 = new IntServerVPSTrafficDataDataSectionRe();
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner4 = new IntServerVPSTrafficDataDataSectionRe();

        System.assert(vpSTrafficDataDataSectionResponseInner1.equals(vpSTrafficDataDataSectionResponseInner2));
        System.assert(vpSTrafficDataDataSectionResponseInner2.equals(vpSTrafficDataDataSectionResponseInner1));
        System.assert(vpSTrafficDataDataSectionResponseInner3.equals(vpSTrafficDataDataSectionResponseInner4));
        System.assert(vpSTrafficDataDataSectionResponseInner4.equals(vpSTrafficDataDataSectionResponseInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner1 = IntServerVPSTrafficDataDataSectionRe.getExample();
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner2 = new IntServerVPSTrafficDataDataSectionRe();

        System.assertEquals(false, vpSTrafficDataDataSectionResponseInner1.equals('foo'));
        System.assertEquals(false, vpSTrafficDataDataSectionResponseInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner1 = IntServerVPSTrafficDataDataSectionRe.getExample();
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner2 = new IntServerVPSTrafficDataDataSectionRe();
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner3;

        System.assertEquals(false, vpSTrafficDataDataSectionResponseInner1.equals(vpSTrafficDataDataSectionResponseInner3));
        System.assertEquals(false, vpSTrafficDataDataSectionResponseInner2.equals(vpSTrafficDataDataSectionResponseInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner1 = IntServerVPSTrafficDataDataSectionRe.getExample();
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner2 = new IntServerVPSTrafficDataDataSectionRe();

        System.assertEquals(vpSTrafficDataDataSectionResponseInner1.hashCode(), vpSTrafficDataDataSectionResponseInner1.hashCode());
        System.assertEquals(vpSTrafficDataDataSectionResponseInner2.hashCode(), vpSTrafficDataDataSectionResponseInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner1 = IntServerVPSTrafficDataDataSectionRe.getExample();
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner2 = IntServerVPSTrafficDataDataSectionRe.getExample();
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner3 = new IntServerVPSTrafficDataDataSectionRe();
        IntServerVPSTrafficDataDataSectionRe vpSTrafficDataDataSectionResponseInner4 = new IntServerVPSTrafficDataDataSectionRe();

        System.assert(vpSTrafficDataDataSectionResponseInner1.equals(vpSTrafficDataDataSectionResponseInner2));
        System.assert(vpSTrafficDataDataSectionResponseInner3.equals(vpSTrafficDataDataSectionResponseInner4));
        System.assertEquals(vpSTrafficDataDataSectionResponseInner1.hashCode(), vpSTrafficDataDataSectionResponseInner2.hashCode());
        System.assertEquals(vpSTrafficDataDataSectionResponseInner3.hashCode(), vpSTrafficDataDataSectionResponseInner4.hashCode());
    }
}
