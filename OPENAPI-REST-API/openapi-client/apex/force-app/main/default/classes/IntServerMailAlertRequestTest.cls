@isTest
private class IntServerMailAlertRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailAlertRequest mailAlertRequest1 = IntServerMailAlertRequest.getExample();
        IntServerMailAlertRequest mailAlertRequest2 = mailAlertRequest1;
        IntServerMailAlertRequest mailAlertRequest3 = new IntServerMailAlertRequest();
        IntServerMailAlertRequest mailAlertRequest4 = mailAlertRequest3;

        System.assert(mailAlertRequest1.equals(mailAlertRequest2));
        System.assert(mailAlertRequest2.equals(mailAlertRequest1));
        System.assert(mailAlertRequest1.equals(mailAlertRequest1));
        System.assert(mailAlertRequest3.equals(mailAlertRequest4));
        System.assert(mailAlertRequest4.equals(mailAlertRequest3));
        System.assert(mailAlertRequest3.equals(mailAlertRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailAlertRequest mailAlertRequest1 = IntServerMailAlertRequest.getExample();
        IntServerMailAlertRequest mailAlertRequest2 = IntServerMailAlertRequest.getExample();
        IntServerMailAlertRequest mailAlertRequest3 = new IntServerMailAlertRequest();
        IntServerMailAlertRequest mailAlertRequest4 = new IntServerMailAlertRequest();

        System.assert(mailAlertRequest1.equals(mailAlertRequest2));
        System.assert(mailAlertRequest2.equals(mailAlertRequest1));
        System.assert(mailAlertRequest3.equals(mailAlertRequest4));
        System.assert(mailAlertRequest4.equals(mailAlertRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailAlertRequest mailAlertRequest1 = IntServerMailAlertRequest.getExample();
        IntServerMailAlertRequest mailAlertRequest2 = new IntServerMailAlertRequest();

        System.assertEquals(false, mailAlertRequest1.equals('foo'));
        System.assertEquals(false, mailAlertRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailAlertRequest mailAlertRequest1 = IntServerMailAlertRequest.getExample();
        IntServerMailAlertRequest mailAlertRequest2 = new IntServerMailAlertRequest();
        IntServerMailAlertRequest mailAlertRequest3;

        System.assertEquals(false, mailAlertRequest1.equals(mailAlertRequest3));
        System.assertEquals(false, mailAlertRequest2.equals(mailAlertRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailAlertRequest mailAlertRequest1 = IntServerMailAlertRequest.getExample();
        IntServerMailAlertRequest mailAlertRequest2 = new IntServerMailAlertRequest();

        System.assertEquals(mailAlertRequest1.hashCode(), mailAlertRequest1.hashCode());
        System.assertEquals(mailAlertRequest2.hashCode(), mailAlertRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailAlertRequest mailAlertRequest1 = IntServerMailAlertRequest.getExample();
        IntServerMailAlertRequest mailAlertRequest2 = IntServerMailAlertRequest.getExample();
        IntServerMailAlertRequest mailAlertRequest3 = new IntServerMailAlertRequest();
        IntServerMailAlertRequest mailAlertRequest4 = new IntServerMailAlertRequest();

        System.assert(mailAlertRequest1.equals(mailAlertRequest2));
        System.assert(mailAlertRequest3.equals(mailAlertRequest4));
        System.assertEquals(mailAlertRequest1.hashCode(), mailAlertRequest2.hashCode());
        System.assertEquals(mailAlertRequest3.hashCode(), mailAlertRequest4.hashCode());
    }
}
