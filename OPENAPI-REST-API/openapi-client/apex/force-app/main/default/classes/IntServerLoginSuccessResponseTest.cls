@isTest
private class IntServerLoginSuccessResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLoginSuccessResponse loginSuccessResponse1 = IntServerLoginSuccessResponse.getExample();
        IntServerLoginSuccessResponse loginSuccessResponse2 = loginSuccessResponse1;
        IntServerLoginSuccessResponse loginSuccessResponse3 = new IntServerLoginSuccessResponse();
        IntServerLoginSuccessResponse loginSuccessResponse4 = loginSuccessResponse3;

        System.assert(loginSuccessResponse1.equals(loginSuccessResponse2));
        System.assert(loginSuccessResponse2.equals(loginSuccessResponse1));
        System.assert(loginSuccessResponse1.equals(loginSuccessResponse1));
        System.assert(loginSuccessResponse3.equals(loginSuccessResponse4));
        System.assert(loginSuccessResponse4.equals(loginSuccessResponse3));
        System.assert(loginSuccessResponse3.equals(loginSuccessResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLoginSuccessResponse loginSuccessResponse1 = IntServerLoginSuccessResponse.getExample();
        IntServerLoginSuccessResponse loginSuccessResponse2 = IntServerLoginSuccessResponse.getExample();
        IntServerLoginSuccessResponse loginSuccessResponse3 = new IntServerLoginSuccessResponse();
        IntServerLoginSuccessResponse loginSuccessResponse4 = new IntServerLoginSuccessResponse();

        System.assert(loginSuccessResponse1.equals(loginSuccessResponse2));
        System.assert(loginSuccessResponse2.equals(loginSuccessResponse1));
        System.assert(loginSuccessResponse3.equals(loginSuccessResponse4));
        System.assert(loginSuccessResponse4.equals(loginSuccessResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLoginSuccessResponse loginSuccessResponse1 = IntServerLoginSuccessResponse.getExample();
        IntServerLoginSuccessResponse loginSuccessResponse2 = new IntServerLoginSuccessResponse();

        System.assertEquals(false, loginSuccessResponse1.equals('foo'));
        System.assertEquals(false, loginSuccessResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLoginSuccessResponse loginSuccessResponse1 = IntServerLoginSuccessResponse.getExample();
        IntServerLoginSuccessResponse loginSuccessResponse2 = new IntServerLoginSuccessResponse();
        IntServerLoginSuccessResponse loginSuccessResponse3;

        System.assertEquals(false, loginSuccessResponse1.equals(loginSuccessResponse3));
        System.assertEquals(false, loginSuccessResponse2.equals(loginSuccessResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLoginSuccessResponse loginSuccessResponse1 = IntServerLoginSuccessResponse.getExample();
        IntServerLoginSuccessResponse loginSuccessResponse2 = new IntServerLoginSuccessResponse();

        System.assertEquals(loginSuccessResponse1.hashCode(), loginSuccessResponse1.hashCode());
        System.assertEquals(loginSuccessResponse2.hashCode(), loginSuccessResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLoginSuccessResponse loginSuccessResponse1 = IntServerLoginSuccessResponse.getExample();
        IntServerLoginSuccessResponse loginSuccessResponse2 = IntServerLoginSuccessResponse.getExample();
        IntServerLoginSuccessResponse loginSuccessResponse3 = new IntServerLoginSuccessResponse();
        IntServerLoginSuccessResponse loginSuccessResponse4 = new IntServerLoginSuccessResponse();

        System.assert(loginSuccessResponse1.equals(loginSuccessResponse2));
        System.assert(loginSuccessResponse3.equals(loginSuccessResponse4));
        System.assertEquals(loginSuccessResponse1.hashCode(), loginSuccessResponse2.hashCode());
        System.assertEquals(loginSuccessResponse3.hashCode(), loginSuccessResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLoginSuccessResponse loginSuccessResponse = new IntServerLoginSuccessResponse();
        Map<String, String> x-property-mappings = loginSuccessResponse.getx-property-mappings();
        System.assertEquals('accountId', x-property-mappings.get('account_id'));
        System.assertEquals('accountLid', x-property-mappings.get('account_lid'));
    }
}
