@isTest
private class IntServerDeleteMailAlertRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDeleteMailAlertRequest deleteMailAlertRequest1 = IntServerDeleteMailAlertRequest.getExample();
        IntServerDeleteMailAlertRequest deleteMailAlertRequest2 = deleteMailAlertRequest1;
        IntServerDeleteMailAlertRequest deleteMailAlertRequest3 = new IntServerDeleteMailAlertRequest();
        IntServerDeleteMailAlertRequest deleteMailAlertRequest4 = deleteMailAlertRequest3;

        System.assert(deleteMailAlertRequest1.equals(deleteMailAlertRequest2));
        System.assert(deleteMailAlertRequest2.equals(deleteMailAlertRequest1));
        System.assert(deleteMailAlertRequest1.equals(deleteMailAlertRequest1));
        System.assert(deleteMailAlertRequest3.equals(deleteMailAlertRequest4));
        System.assert(deleteMailAlertRequest4.equals(deleteMailAlertRequest3));
        System.assert(deleteMailAlertRequest3.equals(deleteMailAlertRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDeleteMailAlertRequest deleteMailAlertRequest1 = IntServerDeleteMailAlertRequest.getExample();
        IntServerDeleteMailAlertRequest deleteMailAlertRequest2 = IntServerDeleteMailAlertRequest.getExample();
        IntServerDeleteMailAlertRequest deleteMailAlertRequest3 = new IntServerDeleteMailAlertRequest();
        IntServerDeleteMailAlertRequest deleteMailAlertRequest4 = new IntServerDeleteMailAlertRequest();

        System.assert(deleteMailAlertRequest1.equals(deleteMailAlertRequest2));
        System.assert(deleteMailAlertRequest2.equals(deleteMailAlertRequest1));
        System.assert(deleteMailAlertRequest3.equals(deleteMailAlertRequest4));
        System.assert(deleteMailAlertRequest4.equals(deleteMailAlertRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDeleteMailAlertRequest deleteMailAlertRequest1 = IntServerDeleteMailAlertRequest.getExample();
        IntServerDeleteMailAlertRequest deleteMailAlertRequest2 = new IntServerDeleteMailAlertRequest();

        System.assertEquals(false, deleteMailAlertRequest1.equals('foo'));
        System.assertEquals(false, deleteMailAlertRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDeleteMailAlertRequest deleteMailAlertRequest1 = IntServerDeleteMailAlertRequest.getExample();
        IntServerDeleteMailAlertRequest deleteMailAlertRequest2 = new IntServerDeleteMailAlertRequest();
        IntServerDeleteMailAlertRequest deleteMailAlertRequest3;

        System.assertEquals(false, deleteMailAlertRequest1.equals(deleteMailAlertRequest3));
        System.assertEquals(false, deleteMailAlertRequest2.equals(deleteMailAlertRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDeleteMailAlertRequest deleteMailAlertRequest1 = IntServerDeleteMailAlertRequest.getExample();
        IntServerDeleteMailAlertRequest deleteMailAlertRequest2 = new IntServerDeleteMailAlertRequest();

        System.assertEquals(deleteMailAlertRequest1.hashCode(), deleteMailAlertRequest1.hashCode());
        System.assertEquals(deleteMailAlertRequest2.hashCode(), deleteMailAlertRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDeleteMailAlertRequest deleteMailAlertRequest1 = IntServerDeleteMailAlertRequest.getExample();
        IntServerDeleteMailAlertRequest deleteMailAlertRequest2 = IntServerDeleteMailAlertRequest.getExample();
        IntServerDeleteMailAlertRequest deleteMailAlertRequest3 = new IntServerDeleteMailAlertRequest();
        IntServerDeleteMailAlertRequest deleteMailAlertRequest4 = new IntServerDeleteMailAlertRequest();

        System.assert(deleteMailAlertRequest1.equals(deleteMailAlertRequest2));
        System.assert(deleteMailAlertRequest3.equals(deleteMailAlertRequest4));
        System.assertEquals(deleteMailAlertRequest1.hashCode(), deleteMailAlertRequest2.hashCode());
        System.assertEquals(deleteMailAlertRequest3.hashCode(), deleteMailAlertRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDeleteMailAlertRequest deleteMailAlertRequest = new IntServerDeleteMailAlertRequest();
        Map<String, String> x-property-mappings = deleteMailAlertRequest.getx-property-mappings();
        System.assertEquals('alertId', x-property-mappings.get('alert_id'));
    }
}
