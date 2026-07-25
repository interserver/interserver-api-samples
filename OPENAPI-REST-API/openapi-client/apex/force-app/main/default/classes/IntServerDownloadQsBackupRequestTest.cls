@isTest
private class IntServerDownloadQsBackupRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDownloadQsBackupRequest downloadQsBackupRequest1 = IntServerDownloadQsBackupRequest.getExample();
        IntServerDownloadQsBackupRequest downloadQsBackupRequest2 = downloadQsBackupRequest1;
        IntServerDownloadQsBackupRequest downloadQsBackupRequest3 = new IntServerDownloadQsBackupRequest();
        IntServerDownloadQsBackupRequest downloadQsBackupRequest4 = downloadQsBackupRequest3;

        System.assert(downloadQsBackupRequest1.equals(downloadQsBackupRequest2));
        System.assert(downloadQsBackupRequest2.equals(downloadQsBackupRequest1));
        System.assert(downloadQsBackupRequest1.equals(downloadQsBackupRequest1));
        System.assert(downloadQsBackupRequest3.equals(downloadQsBackupRequest4));
        System.assert(downloadQsBackupRequest4.equals(downloadQsBackupRequest3));
        System.assert(downloadQsBackupRequest3.equals(downloadQsBackupRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDownloadQsBackupRequest downloadQsBackupRequest1 = IntServerDownloadQsBackupRequest.getExample();
        IntServerDownloadQsBackupRequest downloadQsBackupRequest2 = IntServerDownloadQsBackupRequest.getExample();
        IntServerDownloadQsBackupRequest downloadQsBackupRequest3 = new IntServerDownloadQsBackupRequest();
        IntServerDownloadQsBackupRequest downloadQsBackupRequest4 = new IntServerDownloadQsBackupRequest();

        System.assert(downloadQsBackupRequest1.equals(downloadQsBackupRequest2));
        System.assert(downloadQsBackupRequest2.equals(downloadQsBackupRequest1));
        System.assert(downloadQsBackupRequest3.equals(downloadQsBackupRequest4));
        System.assert(downloadQsBackupRequest4.equals(downloadQsBackupRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDownloadQsBackupRequest downloadQsBackupRequest1 = IntServerDownloadQsBackupRequest.getExample();
        IntServerDownloadQsBackupRequest downloadQsBackupRequest2 = new IntServerDownloadQsBackupRequest();

        System.assertEquals(false, downloadQsBackupRequest1.equals('foo'));
        System.assertEquals(false, downloadQsBackupRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDownloadQsBackupRequest downloadQsBackupRequest1 = IntServerDownloadQsBackupRequest.getExample();
        IntServerDownloadQsBackupRequest downloadQsBackupRequest2 = new IntServerDownloadQsBackupRequest();
        IntServerDownloadQsBackupRequest downloadQsBackupRequest3;

        System.assertEquals(false, downloadQsBackupRequest1.equals(downloadQsBackupRequest3));
        System.assertEquals(false, downloadQsBackupRequest2.equals(downloadQsBackupRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDownloadQsBackupRequest downloadQsBackupRequest1 = IntServerDownloadQsBackupRequest.getExample();
        IntServerDownloadQsBackupRequest downloadQsBackupRequest2 = new IntServerDownloadQsBackupRequest();

        System.assertEquals(downloadQsBackupRequest1.hashCode(), downloadQsBackupRequest1.hashCode());
        System.assertEquals(downloadQsBackupRequest2.hashCode(), downloadQsBackupRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDownloadQsBackupRequest downloadQsBackupRequest1 = IntServerDownloadQsBackupRequest.getExample();
        IntServerDownloadQsBackupRequest downloadQsBackupRequest2 = IntServerDownloadQsBackupRequest.getExample();
        IntServerDownloadQsBackupRequest downloadQsBackupRequest3 = new IntServerDownloadQsBackupRequest();
        IntServerDownloadQsBackupRequest downloadQsBackupRequest4 = new IntServerDownloadQsBackupRequest();

        System.assert(downloadQsBackupRequest1.equals(downloadQsBackupRequest2));
        System.assert(downloadQsBackupRequest3.equals(downloadQsBackupRequest4));
        System.assertEquals(downloadQsBackupRequest1.hashCode(), downloadQsBackupRequest2.hashCode());
        System.assertEquals(downloadQsBackupRequest3.hashCode(), downloadQsBackupRequest4.hashCode());
    }
}
