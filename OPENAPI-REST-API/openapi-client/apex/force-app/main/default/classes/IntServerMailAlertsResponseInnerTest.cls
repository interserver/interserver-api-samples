@isTest
private class IntServerMailAlertsResponseInnerTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailAlertsResponseInner mailAlertsResponseInner1 = IntServerMailAlertsResponseInner.getExample();
        IntServerMailAlertsResponseInner mailAlertsResponseInner2 = mailAlertsResponseInner1;
        IntServerMailAlertsResponseInner mailAlertsResponseInner3 = new IntServerMailAlertsResponseInner();
        IntServerMailAlertsResponseInner mailAlertsResponseInner4 = mailAlertsResponseInner3;

        System.assert(mailAlertsResponseInner1.equals(mailAlertsResponseInner2));
        System.assert(mailAlertsResponseInner2.equals(mailAlertsResponseInner1));
        System.assert(mailAlertsResponseInner1.equals(mailAlertsResponseInner1));
        System.assert(mailAlertsResponseInner3.equals(mailAlertsResponseInner4));
        System.assert(mailAlertsResponseInner4.equals(mailAlertsResponseInner3));
        System.assert(mailAlertsResponseInner3.equals(mailAlertsResponseInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailAlertsResponseInner mailAlertsResponseInner1 = IntServerMailAlertsResponseInner.getExample();
        IntServerMailAlertsResponseInner mailAlertsResponseInner2 = IntServerMailAlertsResponseInner.getExample();
        IntServerMailAlertsResponseInner mailAlertsResponseInner3 = new IntServerMailAlertsResponseInner();
        IntServerMailAlertsResponseInner mailAlertsResponseInner4 = new IntServerMailAlertsResponseInner();

        System.assert(mailAlertsResponseInner1.equals(mailAlertsResponseInner2));
        System.assert(mailAlertsResponseInner2.equals(mailAlertsResponseInner1));
        System.assert(mailAlertsResponseInner3.equals(mailAlertsResponseInner4));
        System.assert(mailAlertsResponseInner4.equals(mailAlertsResponseInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailAlertsResponseInner mailAlertsResponseInner1 = IntServerMailAlertsResponseInner.getExample();
        IntServerMailAlertsResponseInner mailAlertsResponseInner2 = new IntServerMailAlertsResponseInner();

        System.assertEquals(false, mailAlertsResponseInner1.equals('foo'));
        System.assertEquals(false, mailAlertsResponseInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailAlertsResponseInner mailAlertsResponseInner1 = IntServerMailAlertsResponseInner.getExample();
        IntServerMailAlertsResponseInner mailAlertsResponseInner2 = new IntServerMailAlertsResponseInner();
        IntServerMailAlertsResponseInner mailAlertsResponseInner3;

        System.assertEquals(false, mailAlertsResponseInner1.equals(mailAlertsResponseInner3));
        System.assertEquals(false, mailAlertsResponseInner2.equals(mailAlertsResponseInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailAlertsResponseInner mailAlertsResponseInner1 = IntServerMailAlertsResponseInner.getExample();
        IntServerMailAlertsResponseInner mailAlertsResponseInner2 = new IntServerMailAlertsResponseInner();

        System.assertEquals(mailAlertsResponseInner1.hashCode(), mailAlertsResponseInner1.hashCode());
        System.assertEquals(mailAlertsResponseInner2.hashCode(), mailAlertsResponseInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailAlertsResponseInner mailAlertsResponseInner1 = IntServerMailAlertsResponseInner.getExample();
        IntServerMailAlertsResponseInner mailAlertsResponseInner2 = IntServerMailAlertsResponseInner.getExample();
        IntServerMailAlertsResponseInner mailAlertsResponseInner3 = new IntServerMailAlertsResponseInner();
        IntServerMailAlertsResponseInner mailAlertsResponseInner4 = new IntServerMailAlertsResponseInner();

        System.assert(mailAlertsResponseInner1.equals(mailAlertsResponseInner2));
        System.assert(mailAlertsResponseInner3.equals(mailAlertsResponseInner4));
        System.assertEquals(mailAlertsResponseInner1.hashCode(), mailAlertsResponseInner2.hashCode());
        System.assertEquals(mailAlertsResponseInner3.hashCode(), mailAlertsResponseInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailAlertsResponseInner mailAlertsResponseInner = new IntServerMailAlertsResponseInner();
        Map<String, String> x-property-mappings = mailAlertsResponseInner.getx-property-mappings();
        System.assertEquals('alertId', x-property-mappings.get('alert_id'));
        System.assertEquals('alertType', x-property-mappings.get('alert_type'));
        System.assertEquals('alertValue', x-property-mappings.get('alert_value'));
        System.assertEquals('alertTo', x-property-mappings.get('alert_to'));
        System.assertEquals('alertEnabled', x-property-mappings.get('alert_enabled'));
    }
}
