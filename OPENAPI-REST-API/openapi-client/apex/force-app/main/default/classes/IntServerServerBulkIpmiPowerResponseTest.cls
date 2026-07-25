@isTest
private class IntServerServerBulkIpmiPowerResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner1 = IntServerServerBulkIpmiPowerResponse.getExample();
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner2 = serverBulkIpmiPowerResponseResultsInner1;
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner3 = new IntServerServerBulkIpmiPowerResponse();
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner4 = serverBulkIpmiPowerResponseResultsInner3;

        System.assert(serverBulkIpmiPowerResponseResultsInner1.equals(serverBulkIpmiPowerResponseResultsInner2));
        System.assert(serverBulkIpmiPowerResponseResultsInner2.equals(serverBulkIpmiPowerResponseResultsInner1));
        System.assert(serverBulkIpmiPowerResponseResultsInner1.equals(serverBulkIpmiPowerResponseResultsInner1));
        System.assert(serverBulkIpmiPowerResponseResultsInner3.equals(serverBulkIpmiPowerResponseResultsInner4));
        System.assert(serverBulkIpmiPowerResponseResultsInner4.equals(serverBulkIpmiPowerResponseResultsInner3));
        System.assert(serverBulkIpmiPowerResponseResultsInner3.equals(serverBulkIpmiPowerResponseResultsInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner1 = IntServerServerBulkIpmiPowerResponse.getExample();
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner2 = IntServerServerBulkIpmiPowerResponse.getExample();
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner3 = new IntServerServerBulkIpmiPowerResponse();
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner4 = new IntServerServerBulkIpmiPowerResponse();

        System.assert(serverBulkIpmiPowerResponseResultsInner1.equals(serverBulkIpmiPowerResponseResultsInner2));
        System.assert(serverBulkIpmiPowerResponseResultsInner2.equals(serverBulkIpmiPowerResponseResultsInner1));
        System.assert(serverBulkIpmiPowerResponseResultsInner3.equals(serverBulkIpmiPowerResponseResultsInner4));
        System.assert(serverBulkIpmiPowerResponseResultsInner4.equals(serverBulkIpmiPowerResponseResultsInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner1 = IntServerServerBulkIpmiPowerResponse.getExample();
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner2 = new IntServerServerBulkIpmiPowerResponse();

        System.assertEquals(false, serverBulkIpmiPowerResponseResultsInner1.equals('foo'));
        System.assertEquals(false, serverBulkIpmiPowerResponseResultsInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner1 = IntServerServerBulkIpmiPowerResponse.getExample();
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner2 = new IntServerServerBulkIpmiPowerResponse();
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner3;

        System.assertEquals(false, serverBulkIpmiPowerResponseResultsInner1.equals(serverBulkIpmiPowerResponseResultsInner3));
        System.assertEquals(false, serverBulkIpmiPowerResponseResultsInner2.equals(serverBulkIpmiPowerResponseResultsInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner1 = IntServerServerBulkIpmiPowerResponse.getExample();
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner2 = new IntServerServerBulkIpmiPowerResponse();

        System.assertEquals(serverBulkIpmiPowerResponseResultsInner1.hashCode(), serverBulkIpmiPowerResponseResultsInner1.hashCode());
        System.assertEquals(serverBulkIpmiPowerResponseResultsInner2.hashCode(), serverBulkIpmiPowerResponseResultsInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner1 = IntServerServerBulkIpmiPowerResponse.getExample();
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner2 = IntServerServerBulkIpmiPowerResponse.getExample();
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner3 = new IntServerServerBulkIpmiPowerResponse();
        IntServerServerBulkIpmiPowerResponse serverBulkIpmiPowerResponseResultsInner4 = new IntServerServerBulkIpmiPowerResponse();

        System.assert(serverBulkIpmiPowerResponseResultsInner1.equals(serverBulkIpmiPowerResponseResultsInner2));
        System.assert(serverBulkIpmiPowerResponseResultsInner3.equals(serverBulkIpmiPowerResponseResultsInner4));
        System.assertEquals(serverBulkIpmiPowerResponseResultsInner1.hashCode(), serverBulkIpmiPowerResponseResultsInner2.hashCode());
        System.assertEquals(serverBulkIpmiPowerResponseResultsInner3.hashCode(), serverBulkIpmiPowerResponseResultsInner4.hashCode());
    }
}
