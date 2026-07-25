@isTest
private class IntServerPasswordRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPasswordRequest passwordRequest1 = IntServerPasswordRequest.getExample();
        IntServerPasswordRequest passwordRequest2 = passwordRequest1;
        IntServerPasswordRequest passwordRequest3 = new IntServerPasswordRequest();
        IntServerPasswordRequest passwordRequest4 = passwordRequest3;

        System.assert(passwordRequest1.equals(passwordRequest2));
        System.assert(passwordRequest2.equals(passwordRequest1));
        System.assert(passwordRequest1.equals(passwordRequest1));
        System.assert(passwordRequest3.equals(passwordRequest4));
        System.assert(passwordRequest4.equals(passwordRequest3));
        System.assert(passwordRequest3.equals(passwordRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPasswordRequest passwordRequest1 = IntServerPasswordRequest.getExample();
        IntServerPasswordRequest passwordRequest2 = IntServerPasswordRequest.getExample();
        IntServerPasswordRequest passwordRequest3 = new IntServerPasswordRequest();
        IntServerPasswordRequest passwordRequest4 = new IntServerPasswordRequest();

        System.assert(passwordRequest1.equals(passwordRequest2));
        System.assert(passwordRequest2.equals(passwordRequest1));
        System.assert(passwordRequest3.equals(passwordRequest4));
        System.assert(passwordRequest4.equals(passwordRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPasswordRequest passwordRequest1 = IntServerPasswordRequest.getExample();
        IntServerPasswordRequest passwordRequest2 = new IntServerPasswordRequest();

        System.assertEquals(false, passwordRequest1.equals('foo'));
        System.assertEquals(false, passwordRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPasswordRequest passwordRequest1 = IntServerPasswordRequest.getExample();
        IntServerPasswordRequest passwordRequest2 = new IntServerPasswordRequest();
        IntServerPasswordRequest passwordRequest3;

        System.assertEquals(false, passwordRequest1.equals(passwordRequest3));
        System.assertEquals(false, passwordRequest2.equals(passwordRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPasswordRequest passwordRequest1 = IntServerPasswordRequest.getExample();
        IntServerPasswordRequest passwordRequest2 = new IntServerPasswordRequest();

        System.assertEquals(passwordRequest1.hashCode(), passwordRequest1.hashCode());
        System.assertEquals(passwordRequest2.hashCode(), passwordRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPasswordRequest passwordRequest1 = IntServerPasswordRequest.getExample();
        IntServerPasswordRequest passwordRequest2 = IntServerPasswordRequest.getExample();
        IntServerPasswordRequest passwordRequest3 = new IntServerPasswordRequest();
        IntServerPasswordRequest passwordRequest4 = new IntServerPasswordRequest();

        System.assert(passwordRequest1.equals(passwordRequest2));
        System.assert(passwordRequest3.equals(passwordRequest4));
        System.assertEquals(passwordRequest1.hashCode(), passwordRequest2.hashCode());
        System.assertEquals(passwordRequest3.hashCode(), passwordRequest4.hashCode());
    }
}
