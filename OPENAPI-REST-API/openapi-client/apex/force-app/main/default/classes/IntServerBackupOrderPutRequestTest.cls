@isTest
private class IntServerBackupOrderPutRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupOrderPutRequest backupOrderPutRequest1 = IntServerBackupOrderPutRequest.getExample();
        IntServerBackupOrderPutRequest backupOrderPutRequest2 = backupOrderPutRequest1;
        IntServerBackupOrderPutRequest backupOrderPutRequest3 = new IntServerBackupOrderPutRequest();
        IntServerBackupOrderPutRequest backupOrderPutRequest4 = backupOrderPutRequest3;

        System.assert(backupOrderPutRequest1.equals(backupOrderPutRequest2));
        System.assert(backupOrderPutRequest2.equals(backupOrderPutRequest1));
        System.assert(backupOrderPutRequest1.equals(backupOrderPutRequest1));
        System.assert(backupOrderPutRequest3.equals(backupOrderPutRequest4));
        System.assert(backupOrderPutRequest4.equals(backupOrderPutRequest3));
        System.assert(backupOrderPutRequest3.equals(backupOrderPutRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupOrderPutRequest backupOrderPutRequest1 = IntServerBackupOrderPutRequest.getExample();
        IntServerBackupOrderPutRequest backupOrderPutRequest2 = IntServerBackupOrderPutRequest.getExample();
        IntServerBackupOrderPutRequest backupOrderPutRequest3 = new IntServerBackupOrderPutRequest();
        IntServerBackupOrderPutRequest backupOrderPutRequest4 = new IntServerBackupOrderPutRequest();

        System.assert(backupOrderPutRequest1.equals(backupOrderPutRequest2));
        System.assert(backupOrderPutRequest2.equals(backupOrderPutRequest1));
        System.assert(backupOrderPutRequest3.equals(backupOrderPutRequest4));
        System.assert(backupOrderPutRequest4.equals(backupOrderPutRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupOrderPutRequest backupOrderPutRequest1 = IntServerBackupOrderPutRequest.getExample();
        IntServerBackupOrderPutRequest backupOrderPutRequest2 = new IntServerBackupOrderPutRequest();

        System.assertEquals(false, backupOrderPutRequest1.equals('foo'));
        System.assertEquals(false, backupOrderPutRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupOrderPutRequest backupOrderPutRequest1 = IntServerBackupOrderPutRequest.getExample();
        IntServerBackupOrderPutRequest backupOrderPutRequest2 = new IntServerBackupOrderPutRequest();
        IntServerBackupOrderPutRequest backupOrderPutRequest3;

        System.assertEquals(false, backupOrderPutRequest1.equals(backupOrderPutRequest3));
        System.assertEquals(false, backupOrderPutRequest2.equals(backupOrderPutRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupOrderPutRequest backupOrderPutRequest1 = IntServerBackupOrderPutRequest.getExample();
        IntServerBackupOrderPutRequest backupOrderPutRequest2 = new IntServerBackupOrderPutRequest();

        System.assertEquals(backupOrderPutRequest1.hashCode(), backupOrderPutRequest1.hashCode());
        System.assertEquals(backupOrderPutRequest2.hashCode(), backupOrderPutRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupOrderPutRequest backupOrderPutRequest1 = IntServerBackupOrderPutRequest.getExample();
        IntServerBackupOrderPutRequest backupOrderPutRequest2 = IntServerBackupOrderPutRequest.getExample();
        IntServerBackupOrderPutRequest backupOrderPutRequest3 = new IntServerBackupOrderPutRequest();
        IntServerBackupOrderPutRequest backupOrderPutRequest4 = new IntServerBackupOrderPutRequest();

        System.assert(backupOrderPutRequest1.equals(backupOrderPutRequest2));
        System.assert(backupOrderPutRequest3.equals(backupOrderPutRequest4));
        System.assertEquals(backupOrderPutRequest1.hashCode(), backupOrderPutRequest2.hashCode());
        System.assertEquals(backupOrderPutRequest3.hashCode(), backupOrderPutRequest4.hashCode());
    }
}
