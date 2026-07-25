@isTest
private class IntServerBackupOrderPutResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupOrderPutResponse backupOrderPutResponse1 = IntServerBackupOrderPutResponse.getExample();
        IntServerBackupOrderPutResponse backupOrderPutResponse2 = backupOrderPutResponse1;
        IntServerBackupOrderPutResponse backupOrderPutResponse3 = new IntServerBackupOrderPutResponse();
        IntServerBackupOrderPutResponse backupOrderPutResponse4 = backupOrderPutResponse3;

        System.assert(backupOrderPutResponse1.equals(backupOrderPutResponse2));
        System.assert(backupOrderPutResponse2.equals(backupOrderPutResponse1));
        System.assert(backupOrderPutResponse1.equals(backupOrderPutResponse1));
        System.assert(backupOrderPutResponse3.equals(backupOrderPutResponse4));
        System.assert(backupOrderPutResponse4.equals(backupOrderPutResponse3));
        System.assert(backupOrderPutResponse3.equals(backupOrderPutResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupOrderPutResponse backupOrderPutResponse1 = IntServerBackupOrderPutResponse.getExample();
        IntServerBackupOrderPutResponse backupOrderPutResponse2 = IntServerBackupOrderPutResponse.getExample();
        IntServerBackupOrderPutResponse backupOrderPutResponse3 = new IntServerBackupOrderPutResponse();
        IntServerBackupOrderPutResponse backupOrderPutResponse4 = new IntServerBackupOrderPutResponse();

        System.assert(backupOrderPutResponse1.equals(backupOrderPutResponse2));
        System.assert(backupOrderPutResponse2.equals(backupOrderPutResponse1));
        System.assert(backupOrderPutResponse3.equals(backupOrderPutResponse4));
        System.assert(backupOrderPutResponse4.equals(backupOrderPutResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupOrderPutResponse backupOrderPutResponse1 = IntServerBackupOrderPutResponse.getExample();
        IntServerBackupOrderPutResponse backupOrderPutResponse2 = new IntServerBackupOrderPutResponse();

        System.assertEquals(false, backupOrderPutResponse1.equals('foo'));
        System.assertEquals(false, backupOrderPutResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupOrderPutResponse backupOrderPutResponse1 = IntServerBackupOrderPutResponse.getExample();
        IntServerBackupOrderPutResponse backupOrderPutResponse2 = new IntServerBackupOrderPutResponse();
        IntServerBackupOrderPutResponse backupOrderPutResponse3;

        System.assertEquals(false, backupOrderPutResponse1.equals(backupOrderPutResponse3));
        System.assertEquals(false, backupOrderPutResponse2.equals(backupOrderPutResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupOrderPutResponse backupOrderPutResponse1 = IntServerBackupOrderPutResponse.getExample();
        IntServerBackupOrderPutResponse backupOrderPutResponse2 = new IntServerBackupOrderPutResponse();

        System.assertEquals(backupOrderPutResponse1.hashCode(), backupOrderPutResponse1.hashCode());
        System.assertEquals(backupOrderPutResponse2.hashCode(), backupOrderPutResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupOrderPutResponse backupOrderPutResponse1 = IntServerBackupOrderPutResponse.getExample();
        IntServerBackupOrderPutResponse backupOrderPutResponse2 = IntServerBackupOrderPutResponse.getExample();
        IntServerBackupOrderPutResponse backupOrderPutResponse3 = new IntServerBackupOrderPutResponse();
        IntServerBackupOrderPutResponse backupOrderPutResponse4 = new IntServerBackupOrderPutResponse();

        System.assert(backupOrderPutResponse1.equals(backupOrderPutResponse2));
        System.assert(backupOrderPutResponse3.equals(backupOrderPutResponse4));
        System.assertEquals(backupOrderPutResponse1.hashCode(), backupOrderPutResponse2.hashCode());
        System.assertEquals(backupOrderPutResponse3.hashCode(), backupOrderPutResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBackupOrderPutResponse backupOrderPutResponse = new IntServerBackupOrderPutResponse();
        Map<String, String> x-property-mappings = backupOrderPutResponse.getx-property-mappings();
        System.assertEquals('r_continue', x-property-mappings.get('continue'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerBackupOrderPutResponse backupOrderPutResponse = new IntServerBackupOrderPutResponse();
        System.assertEquals(new List<String>(), backupOrderPutResponse.errors);
        System.assertEquals(null, backupOrderPutResponse.r_continue);
        System.assertEquals(null, backupOrderPutResponse.serviceType);
        System.assertEquals(null, backupOrderPutResponse.serviceCost);
        System.assertEquals(null, backupOrderPutResponse.originalCost);
        System.assertEquals(null, backupOrderPutResponse.repeatServiceCost);
        System.assertEquals(null, backupOrderPutResponse.hostname);
        System.assertEquals(null, backupOrderPutResponse.password);
        System.assertEquals(null, backupOrderPutResponse.coupon);
        System.assertEquals(null, backupOrderPutResponse.couponCode);
    }
}
