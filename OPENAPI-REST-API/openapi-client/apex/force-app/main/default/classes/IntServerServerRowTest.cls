@isTest
private class IntServerServerRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerRow serverRow1 = IntServerServerRow.getExample();
        IntServerServerRow serverRow2 = serverRow1;
        IntServerServerRow serverRow3 = new IntServerServerRow();
        IntServerServerRow serverRow4 = serverRow3;

        System.assert(serverRow1.equals(serverRow2));
        System.assert(serverRow2.equals(serverRow1));
        System.assert(serverRow1.equals(serverRow1));
        System.assert(serverRow3.equals(serverRow4));
        System.assert(serverRow4.equals(serverRow3));
        System.assert(serverRow3.equals(serverRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerRow serverRow1 = IntServerServerRow.getExample();
        IntServerServerRow serverRow2 = IntServerServerRow.getExample();
        IntServerServerRow serverRow3 = new IntServerServerRow();
        IntServerServerRow serverRow4 = new IntServerServerRow();

        System.assert(serverRow1.equals(serverRow2));
        System.assert(serverRow2.equals(serverRow1));
        System.assert(serverRow3.equals(serverRow4));
        System.assert(serverRow4.equals(serverRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerRow serverRow1 = IntServerServerRow.getExample();
        IntServerServerRow serverRow2 = new IntServerServerRow();

        System.assertEquals(false, serverRow1.equals('foo'));
        System.assertEquals(false, serverRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerRow serverRow1 = IntServerServerRow.getExample();
        IntServerServerRow serverRow2 = new IntServerServerRow();
        IntServerServerRow serverRow3;

        System.assertEquals(false, serverRow1.equals(serverRow3));
        System.assertEquals(false, serverRow2.equals(serverRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerRow serverRow1 = IntServerServerRow.getExample();
        IntServerServerRow serverRow2 = new IntServerServerRow();

        System.assertEquals(serverRow1.hashCode(), serverRow1.hashCode());
        System.assertEquals(serverRow2.hashCode(), serverRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerRow serverRow1 = IntServerServerRow.getExample();
        IntServerServerRow serverRow2 = IntServerServerRow.getExample();
        IntServerServerRow serverRow3 = new IntServerServerRow();
        IntServerServerRow serverRow4 = new IntServerServerRow();

        System.assert(serverRow1.equals(serverRow2));
        System.assert(serverRow3.equals(serverRow4));
        System.assertEquals(serverRow1.hashCode(), serverRow2.hashCode());
        System.assertEquals(serverRow3.hashCode(), serverRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerRow serverRow = new IntServerServerRow();
        Map<String, String> x-property-mappings = serverRow.getx-property-mappings();
        System.assertEquals('serverId', x-property-mappings.get('server_id'));
        System.assertEquals('accountLid', x-property-mappings.get('account_lid'));
        System.assertEquals('serverHostname', x-property-mappings.get('server_hostname'));
        System.assertEquals('serverStatus', x-property-mappings.get('server_status'));
    }
}
