@isTest
private class IntServerDownloadQsBackup200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDownloadQsBackup200Response downloadQsBackup200Response1 = IntServerDownloadQsBackup200Response.getExample();
        IntServerDownloadQsBackup200Response downloadQsBackup200Response2 = downloadQsBackup200Response1;
        IntServerDownloadQsBackup200Response downloadQsBackup200Response3 = new IntServerDownloadQsBackup200Response();
        IntServerDownloadQsBackup200Response downloadQsBackup200Response4 = downloadQsBackup200Response3;

        System.assert(downloadQsBackup200Response1.equals(downloadQsBackup200Response2));
        System.assert(downloadQsBackup200Response2.equals(downloadQsBackup200Response1));
        System.assert(downloadQsBackup200Response1.equals(downloadQsBackup200Response1));
        System.assert(downloadQsBackup200Response3.equals(downloadQsBackup200Response4));
        System.assert(downloadQsBackup200Response4.equals(downloadQsBackup200Response3));
        System.assert(downloadQsBackup200Response3.equals(downloadQsBackup200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDownloadQsBackup200Response downloadQsBackup200Response1 = IntServerDownloadQsBackup200Response.getExample();
        IntServerDownloadQsBackup200Response downloadQsBackup200Response2 = IntServerDownloadQsBackup200Response.getExample();
        IntServerDownloadQsBackup200Response downloadQsBackup200Response3 = new IntServerDownloadQsBackup200Response();
        IntServerDownloadQsBackup200Response downloadQsBackup200Response4 = new IntServerDownloadQsBackup200Response();

        System.assert(downloadQsBackup200Response1.equals(downloadQsBackup200Response2));
        System.assert(downloadQsBackup200Response2.equals(downloadQsBackup200Response1));
        System.assert(downloadQsBackup200Response3.equals(downloadQsBackup200Response4));
        System.assert(downloadQsBackup200Response4.equals(downloadQsBackup200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDownloadQsBackup200Response downloadQsBackup200Response1 = IntServerDownloadQsBackup200Response.getExample();
        IntServerDownloadQsBackup200Response downloadQsBackup200Response2 = new IntServerDownloadQsBackup200Response();

        System.assertEquals(false, downloadQsBackup200Response1.equals('foo'));
        System.assertEquals(false, downloadQsBackup200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDownloadQsBackup200Response downloadQsBackup200Response1 = IntServerDownloadQsBackup200Response.getExample();
        IntServerDownloadQsBackup200Response downloadQsBackup200Response2 = new IntServerDownloadQsBackup200Response();
        IntServerDownloadQsBackup200Response downloadQsBackup200Response3;

        System.assertEquals(false, downloadQsBackup200Response1.equals(downloadQsBackup200Response3));
        System.assertEquals(false, downloadQsBackup200Response2.equals(downloadQsBackup200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDownloadQsBackup200Response downloadQsBackup200Response1 = IntServerDownloadQsBackup200Response.getExample();
        IntServerDownloadQsBackup200Response downloadQsBackup200Response2 = new IntServerDownloadQsBackup200Response();

        System.assertEquals(downloadQsBackup200Response1.hashCode(), downloadQsBackup200Response1.hashCode());
        System.assertEquals(downloadQsBackup200Response2.hashCode(), downloadQsBackup200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDownloadQsBackup200Response downloadQsBackup200Response1 = IntServerDownloadQsBackup200Response.getExample();
        IntServerDownloadQsBackup200Response downloadQsBackup200Response2 = IntServerDownloadQsBackup200Response.getExample();
        IntServerDownloadQsBackup200Response downloadQsBackup200Response3 = new IntServerDownloadQsBackup200Response();
        IntServerDownloadQsBackup200Response downloadQsBackup200Response4 = new IntServerDownloadQsBackup200Response();

        System.assert(downloadQsBackup200Response1.equals(downloadQsBackup200Response2));
        System.assert(downloadQsBackup200Response3.equals(downloadQsBackup200Response4));
        System.assertEquals(downloadQsBackup200Response1.hashCode(), downloadQsBackup200Response2.hashCode());
        System.assertEquals(downloadQsBackup200Response3.hashCode(), downloadQsBackup200Response4.hashCode());
    }
}
