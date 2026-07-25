@isTest
private class IntServerBackupLoginResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBackupLoginResponse backupLoginResponse1 = IntServerBackupLoginResponse.getExample();
        IntServerBackupLoginResponse backupLoginResponse2 = backupLoginResponse1;
        IntServerBackupLoginResponse backupLoginResponse3 = new IntServerBackupLoginResponse();
        IntServerBackupLoginResponse backupLoginResponse4 = backupLoginResponse3;

        System.assert(backupLoginResponse1.equals(backupLoginResponse2));
        System.assert(backupLoginResponse2.equals(backupLoginResponse1));
        System.assert(backupLoginResponse1.equals(backupLoginResponse1));
        System.assert(backupLoginResponse3.equals(backupLoginResponse4));
        System.assert(backupLoginResponse4.equals(backupLoginResponse3));
        System.assert(backupLoginResponse3.equals(backupLoginResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBackupLoginResponse backupLoginResponse1 = IntServerBackupLoginResponse.getExample();
        IntServerBackupLoginResponse backupLoginResponse2 = IntServerBackupLoginResponse.getExample();
        IntServerBackupLoginResponse backupLoginResponse3 = new IntServerBackupLoginResponse();
        IntServerBackupLoginResponse backupLoginResponse4 = new IntServerBackupLoginResponse();

        System.assert(backupLoginResponse1.equals(backupLoginResponse2));
        System.assert(backupLoginResponse2.equals(backupLoginResponse1));
        System.assert(backupLoginResponse3.equals(backupLoginResponse4));
        System.assert(backupLoginResponse4.equals(backupLoginResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBackupLoginResponse backupLoginResponse1 = IntServerBackupLoginResponse.getExample();
        IntServerBackupLoginResponse backupLoginResponse2 = new IntServerBackupLoginResponse();

        System.assertEquals(false, backupLoginResponse1.equals('foo'));
        System.assertEquals(false, backupLoginResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBackupLoginResponse backupLoginResponse1 = IntServerBackupLoginResponse.getExample();
        IntServerBackupLoginResponse backupLoginResponse2 = new IntServerBackupLoginResponse();
        IntServerBackupLoginResponse backupLoginResponse3;

        System.assertEquals(false, backupLoginResponse1.equals(backupLoginResponse3));
        System.assertEquals(false, backupLoginResponse2.equals(backupLoginResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBackupLoginResponse backupLoginResponse1 = IntServerBackupLoginResponse.getExample();
        IntServerBackupLoginResponse backupLoginResponse2 = new IntServerBackupLoginResponse();

        System.assertEquals(backupLoginResponse1.hashCode(), backupLoginResponse1.hashCode());
        System.assertEquals(backupLoginResponse2.hashCode(), backupLoginResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBackupLoginResponse backupLoginResponse1 = IntServerBackupLoginResponse.getExample();
        IntServerBackupLoginResponse backupLoginResponse2 = IntServerBackupLoginResponse.getExample();
        IntServerBackupLoginResponse backupLoginResponse3 = new IntServerBackupLoginResponse();
        IntServerBackupLoginResponse backupLoginResponse4 = new IntServerBackupLoginResponse();

        System.assert(backupLoginResponse1.equals(backupLoginResponse2));
        System.assert(backupLoginResponse3.equals(backupLoginResponse4));
        System.assertEquals(backupLoginResponse1.hashCode(), backupLoginResponse2.hashCode());
        System.assertEquals(backupLoginResponse3.hashCode(), backupLoginResponse4.hashCode());
    }
}
