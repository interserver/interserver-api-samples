@isTest
private class IntServerLoginErrorResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLoginErrorResponse loginErrorResponse1 = IntServerLoginErrorResponse.getExample();
        IntServerLoginErrorResponse loginErrorResponse2 = loginErrorResponse1;
        IntServerLoginErrorResponse loginErrorResponse3 = new IntServerLoginErrorResponse();
        IntServerLoginErrorResponse loginErrorResponse4 = loginErrorResponse3;

        System.assert(loginErrorResponse1.equals(loginErrorResponse2));
        System.assert(loginErrorResponse2.equals(loginErrorResponse1));
        System.assert(loginErrorResponse1.equals(loginErrorResponse1));
        System.assert(loginErrorResponse3.equals(loginErrorResponse4));
        System.assert(loginErrorResponse4.equals(loginErrorResponse3));
        System.assert(loginErrorResponse3.equals(loginErrorResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLoginErrorResponse loginErrorResponse1 = IntServerLoginErrorResponse.getExample();
        IntServerLoginErrorResponse loginErrorResponse2 = IntServerLoginErrorResponse.getExample();
        IntServerLoginErrorResponse loginErrorResponse3 = new IntServerLoginErrorResponse();
        IntServerLoginErrorResponse loginErrorResponse4 = new IntServerLoginErrorResponse();

        System.assert(loginErrorResponse1.equals(loginErrorResponse2));
        System.assert(loginErrorResponse2.equals(loginErrorResponse1));
        System.assert(loginErrorResponse3.equals(loginErrorResponse4));
        System.assert(loginErrorResponse4.equals(loginErrorResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLoginErrorResponse loginErrorResponse1 = IntServerLoginErrorResponse.getExample();
        IntServerLoginErrorResponse loginErrorResponse2 = new IntServerLoginErrorResponse();

        System.assertEquals(false, loginErrorResponse1.equals('foo'));
        System.assertEquals(false, loginErrorResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLoginErrorResponse loginErrorResponse1 = IntServerLoginErrorResponse.getExample();
        IntServerLoginErrorResponse loginErrorResponse2 = new IntServerLoginErrorResponse();
        IntServerLoginErrorResponse loginErrorResponse3;

        System.assertEquals(false, loginErrorResponse1.equals(loginErrorResponse3));
        System.assertEquals(false, loginErrorResponse2.equals(loginErrorResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLoginErrorResponse loginErrorResponse1 = IntServerLoginErrorResponse.getExample();
        IntServerLoginErrorResponse loginErrorResponse2 = new IntServerLoginErrorResponse();

        System.assertEquals(loginErrorResponse1.hashCode(), loginErrorResponse1.hashCode());
        System.assertEquals(loginErrorResponse2.hashCode(), loginErrorResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLoginErrorResponse loginErrorResponse1 = IntServerLoginErrorResponse.getExample();
        IntServerLoginErrorResponse loginErrorResponse2 = IntServerLoginErrorResponse.getExample();
        IntServerLoginErrorResponse loginErrorResponse3 = new IntServerLoginErrorResponse();
        IntServerLoginErrorResponse loginErrorResponse4 = new IntServerLoginErrorResponse();

        System.assert(loginErrorResponse1.equals(loginErrorResponse2));
        System.assert(loginErrorResponse3.equals(loginErrorResponse4));
        System.assertEquals(loginErrorResponse1.hashCode(), loginErrorResponse2.hashCode());
        System.assertEquals(loginErrorResponse3.hashCode(), loginErrorResponse4.hashCode());
    }
}
