@isTest
private class IntServerUpdateAccountTfaRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest1 = IntServerUpdateAccountTfaRequest.getExample();
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest2 = updateAccountTfaRequest1;
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest3 = new IntServerUpdateAccountTfaRequest();
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest4 = updateAccountTfaRequest3;

        System.assert(updateAccountTfaRequest1.equals(updateAccountTfaRequest2));
        System.assert(updateAccountTfaRequest2.equals(updateAccountTfaRequest1));
        System.assert(updateAccountTfaRequest1.equals(updateAccountTfaRequest1));
        System.assert(updateAccountTfaRequest3.equals(updateAccountTfaRequest4));
        System.assert(updateAccountTfaRequest4.equals(updateAccountTfaRequest3));
        System.assert(updateAccountTfaRequest3.equals(updateAccountTfaRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest1 = IntServerUpdateAccountTfaRequest.getExample();
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest2 = IntServerUpdateAccountTfaRequest.getExample();
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest3 = new IntServerUpdateAccountTfaRequest();
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest4 = new IntServerUpdateAccountTfaRequest();

        System.assert(updateAccountTfaRequest1.equals(updateAccountTfaRequest2));
        System.assert(updateAccountTfaRequest2.equals(updateAccountTfaRequest1));
        System.assert(updateAccountTfaRequest3.equals(updateAccountTfaRequest4));
        System.assert(updateAccountTfaRequest4.equals(updateAccountTfaRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest1 = IntServerUpdateAccountTfaRequest.getExample();
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest2 = new IntServerUpdateAccountTfaRequest();

        System.assertEquals(false, updateAccountTfaRequest1.equals('foo'));
        System.assertEquals(false, updateAccountTfaRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest1 = IntServerUpdateAccountTfaRequest.getExample();
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest2 = new IntServerUpdateAccountTfaRequest();
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest3;

        System.assertEquals(false, updateAccountTfaRequest1.equals(updateAccountTfaRequest3));
        System.assertEquals(false, updateAccountTfaRequest2.equals(updateAccountTfaRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest1 = IntServerUpdateAccountTfaRequest.getExample();
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest2 = new IntServerUpdateAccountTfaRequest();

        System.assertEquals(updateAccountTfaRequest1.hashCode(), updateAccountTfaRequest1.hashCode());
        System.assertEquals(updateAccountTfaRequest2.hashCode(), updateAccountTfaRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest1 = IntServerUpdateAccountTfaRequest.getExample();
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest2 = IntServerUpdateAccountTfaRequest.getExample();
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest3 = new IntServerUpdateAccountTfaRequest();
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest4 = new IntServerUpdateAccountTfaRequest();

        System.assert(updateAccountTfaRequest1.equals(updateAccountTfaRequest2));
        System.assert(updateAccountTfaRequest3.equals(updateAccountTfaRequest4));
        System.assertEquals(updateAccountTfaRequest1.hashCode(), updateAccountTfaRequest2.hashCode());
        System.assertEquals(updateAccountTfaRequest3.hashCode(), updateAccountTfaRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerUpdateAccountTfaRequest updateAccountTfaRequest = new IntServerUpdateAccountTfaRequest();
        Map<String, String> x-property-mappings = updateAccountTfaRequest.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('2fa_google_code'));
    }
}
