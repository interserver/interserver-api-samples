@isTest
private class IntServerRestoreRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerRestoreRequest restoreRequest1 = IntServerRestoreRequest.getExample();
        IntServerRestoreRequest restoreRequest2 = restoreRequest1;
        IntServerRestoreRequest restoreRequest3 = new IntServerRestoreRequest();
        IntServerRestoreRequest restoreRequest4 = restoreRequest3;

        System.assert(restoreRequest1.equals(restoreRequest2));
        System.assert(restoreRequest2.equals(restoreRequest1));
        System.assert(restoreRequest1.equals(restoreRequest1));
        System.assert(restoreRequest3.equals(restoreRequest4));
        System.assert(restoreRequest4.equals(restoreRequest3));
        System.assert(restoreRequest3.equals(restoreRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerRestoreRequest restoreRequest1 = IntServerRestoreRequest.getExample();
        IntServerRestoreRequest restoreRequest2 = IntServerRestoreRequest.getExample();
        IntServerRestoreRequest restoreRequest3 = new IntServerRestoreRequest();
        IntServerRestoreRequest restoreRequest4 = new IntServerRestoreRequest();

        System.assert(restoreRequest1.equals(restoreRequest2));
        System.assert(restoreRequest2.equals(restoreRequest1));
        System.assert(restoreRequest3.equals(restoreRequest4));
        System.assert(restoreRequest4.equals(restoreRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerRestoreRequest restoreRequest1 = IntServerRestoreRequest.getExample();
        IntServerRestoreRequest restoreRequest2 = new IntServerRestoreRequest();

        System.assertEquals(false, restoreRequest1.equals('foo'));
        System.assertEquals(false, restoreRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerRestoreRequest restoreRequest1 = IntServerRestoreRequest.getExample();
        IntServerRestoreRequest restoreRequest2 = new IntServerRestoreRequest();
        IntServerRestoreRequest restoreRequest3;

        System.assertEquals(false, restoreRequest1.equals(restoreRequest3));
        System.assertEquals(false, restoreRequest2.equals(restoreRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerRestoreRequest restoreRequest1 = IntServerRestoreRequest.getExample();
        IntServerRestoreRequest restoreRequest2 = new IntServerRestoreRequest();

        System.assertEquals(restoreRequest1.hashCode(), restoreRequest1.hashCode());
        System.assertEquals(restoreRequest2.hashCode(), restoreRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerRestoreRequest restoreRequest1 = IntServerRestoreRequest.getExample();
        IntServerRestoreRequest restoreRequest2 = IntServerRestoreRequest.getExample();
        IntServerRestoreRequest restoreRequest3 = new IntServerRestoreRequest();
        IntServerRestoreRequest restoreRequest4 = new IntServerRestoreRequest();

        System.assert(restoreRequest1.equals(restoreRequest2));
        System.assert(restoreRequest3.equals(restoreRequest4));
        System.assertEquals(restoreRequest1.hashCode(), restoreRequest2.hashCode());
        System.assertEquals(restoreRequest3.hashCode(), restoreRequest4.hashCode());
    }
}
