@isTest
private class IntServerMailAlertUpdateRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest1 = IntServerMailAlertUpdateRequest.getExample();
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest2 = mailAlertUpdateRequest1;
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest3 = new IntServerMailAlertUpdateRequest();
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest4 = mailAlertUpdateRequest3;

        System.assert(mailAlertUpdateRequest1.equals(mailAlertUpdateRequest2));
        System.assert(mailAlertUpdateRequest2.equals(mailAlertUpdateRequest1));
        System.assert(mailAlertUpdateRequest1.equals(mailAlertUpdateRequest1));
        System.assert(mailAlertUpdateRequest3.equals(mailAlertUpdateRequest4));
        System.assert(mailAlertUpdateRequest4.equals(mailAlertUpdateRequest3));
        System.assert(mailAlertUpdateRequest3.equals(mailAlertUpdateRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest1 = IntServerMailAlertUpdateRequest.getExample();
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest2 = IntServerMailAlertUpdateRequest.getExample();
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest3 = new IntServerMailAlertUpdateRequest();
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest4 = new IntServerMailAlertUpdateRequest();

        System.assert(mailAlertUpdateRequest1.equals(mailAlertUpdateRequest2));
        System.assert(mailAlertUpdateRequest2.equals(mailAlertUpdateRequest1));
        System.assert(mailAlertUpdateRequest3.equals(mailAlertUpdateRequest4));
        System.assert(mailAlertUpdateRequest4.equals(mailAlertUpdateRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest1 = IntServerMailAlertUpdateRequest.getExample();
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest2 = new IntServerMailAlertUpdateRequest();

        System.assertEquals(false, mailAlertUpdateRequest1.equals('foo'));
        System.assertEquals(false, mailAlertUpdateRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest1 = IntServerMailAlertUpdateRequest.getExample();
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest2 = new IntServerMailAlertUpdateRequest();
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest3;

        System.assertEquals(false, mailAlertUpdateRequest1.equals(mailAlertUpdateRequest3));
        System.assertEquals(false, mailAlertUpdateRequest2.equals(mailAlertUpdateRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest1 = IntServerMailAlertUpdateRequest.getExample();
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest2 = new IntServerMailAlertUpdateRequest();

        System.assertEquals(mailAlertUpdateRequest1.hashCode(), mailAlertUpdateRequest1.hashCode());
        System.assertEquals(mailAlertUpdateRequest2.hashCode(), mailAlertUpdateRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest1 = IntServerMailAlertUpdateRequest.getExample();
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest2 = IntServerMailAlertUpdateRequest.getExample();
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest3 = new IntServerMailAlertUpdateRequest();
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest4 = new IntServerMailAlertUpdateRequest();

        System.assert(mailAlertUpdateRequest1.equals(mailAlertUpdateRequest2));
        System.assert(mailAlertUpdateRequest3.equals(mailAlertUpdateRequest4));
        System.assertEquals(mailAlertUpdateRequest1.hashCode(), mailAlertUpdateRequest2.hashCode());
        System.assertEquals(mailAlertUpdateRequest3.hashCode(), mailAlertUpdateRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailAlertUpdateRequest mailAlertUpdateRequest = new IntServerMailAlertUpdateRequest();
        Map<String, String> x-property-mappings = mailAlertUpdateRequest.getx-property-mappings();
        System.assertEquals('alertId', x-property-mappings.get('alert_id'));
    }
}
