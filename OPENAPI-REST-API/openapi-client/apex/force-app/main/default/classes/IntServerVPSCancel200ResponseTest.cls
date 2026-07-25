@isTest
private class IntServerVPSCancel200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVPSCancel200Response vpSCancel200Response1 = IntServerVPSCancel200Response.getExample();
        IntServerVPSCancel200Response vpSCancel200Response2 = vpSCancel200Response1;
        IntServerVPSCancel200Response vpSCancel200Response3 = new IntServerVPSCancel200Response();
        IntServerVPSCancel200Response vpSCancel200Response4 = vpSCancel200Response3;

        System.assert(vpSCancel200Response1.equals(vpSCancel200Response2));
        System.assert(vpSCancel200Response2.equals(vpSCancel200Response1));
        System.assert(vpSCancel200Response1.equals(vpSCancel200Response1));
        System.assert(vpSCancel200Response3.equals(vpSCancel200Response4));
        System.assert(vpSCancel200Response4.equals(vpSCancel200Response3));
        System.assert(vpSCancel200Response3.equals(vpSCancel200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVPSCancel200Response vpSCancel200Response1 = IntServerVPSCancel200Response.getExample();
        IntServerVPSCancel200Response vpSCancel200Response2 = IntServerVPSCancel200Response.getExample();
        IntServerVPSCancel200Response vpSCancel200Response3 = new IntServerVPSCancel200Response();
        IntServerVPSCancel200Response vpSCancel200Response4 = new IntServerVPSCancel200Response();

        System.assert(vpSCancel200Response1.equals(vpSCancel200Response2));
        System.assert(vpSCancel200Response2.equals(vpSCancel200Response1));
        System.assert(vpSCancel200Response3.equals(vpSCancel200Response4));
        System.assert(vpSCancel200Response4.equals(vpSCancel200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVPSCancel200Response vpSCancel200Response1 = IntServerVPSCancel200Response.getExample();
        IntServerVPSCancel200Response vpSCancel200Response2 = new IntServerVPSCancel200Response();

        System.assertEquals(false, vpSCancel200Response1.equals('foo'));
        System.assertEquals(false, vpSCancel200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVPSCancel200Response vpSCancel200Response1 = IntServerVPSCancel200Response.getExample();
        IntServerVPSCancel200Response vpSCancel200Response2 = new IntServerVPSCancel200Response();
        IntServerVPSCancel200Response vpSCancel200Response3;

        System.assertEquals(false, vpSCancel200Response1.equals(vpSCancel200Response3));
        System.assertEquals(false, vpSCancel200Response2.equals(vpSCancel200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVPSCancel200Response vpSCancel200Response1 = IntServerVPSCancel200Response.getExample();
        IntServerVPSCancel200Response vpSCancel200Response2 = new IntServerVPSCancel200Response();

        System.assertEquals(vpSCancel200Response1.hashCode(), vpSCancel200Response1.hashCode());
        System.assertEquals(vpSCancel200Response2.hashCode(), vpSCancel200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVPSCancel200Response vpSCancel200Response1 = IntServerVPSCancel200Response.getExample();
        IntServerVPSCancel200Response vpSCancel200Response2 = IntServerVPSCancel200Response.getExample();
        IntServerVPSCancel200Response vpSCancel200Response3 = new IntServerVPSCancel200Response();
        IntServerVPSCancel200Response vpSCancel200Response4 = new IntServerVPSCancel200Response();

        System.assert(vpSCancel200Response1.equals(vpSCancel200Response2));
        System.assert(vpSCancel200Response3.equals(vpSCancel200Response4));
        System.assertEquals(vpSCancel200Response1.hashCode(), vpSCancel200Response2.hashCode());
        System.assertEquals(vpSCancel200Response3.hashCode(), vpSCancel200Response4.hashCode());
    }
}
