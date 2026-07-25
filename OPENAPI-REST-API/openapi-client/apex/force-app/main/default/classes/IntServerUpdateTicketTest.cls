@isTest
private class IntServerUpdateTicketTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerUpdateTicket updateTicket1 = IntServerUpdateTicket.getExample();
        IntServerUpdateTicket updateTicket2 = updateTicket1;
        IntServerUpdateTicket updateTicket3 = new IntServerUpdateTicket();
        IntServerUpdateTicket updateTicket4 = updateTicket3;

        System.assert(updateTicket1.equals(updateTicket2));
        System.assert(updateTicket2.equals(updateTicket1));
        System.assert(updateTicket1.equals(updateTicket1));
        System.assert(updateTicket3.equals(updateTicket4));
        System.assert(updateTicket4.equals(updateTicket3));
        System.assert(updateTicket3.equals(updateTicket3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerUpdateTicket updateTicket1 = IntServerUpdateTicket.getExample();
        IntServerUpdateTicket updateTicket2 = IntServerUpdateTicket.getExample();
        IntServerUpdateTicket updateTicket3 = new IntServerUpdateTicket();
        IntServerUpdateTicket updateTicket4 = new IntServerUpdateTicket();

        System.assert(updateTicket1.equals(updateTicket2));
        System.assert(updateTicket2.equals(updateTicket1));
        System.assert(updateTicket3.equals(updateTicket4));
        System.assert(updateTicket4.equals(updateTicket3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerUpdateTicket updateTicket1 = IntServerUpdateTicket.getExample();
        IntServerUpdateTicket updateTicket2 = new IntServerUpdateTicket();

        System.assertEquals(false, updateTicket1.equals('foo'));
        System.assertEquals(false, updateTicket2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerUpdateTicket updateTicket1 = IntServerUpdateTicket.getExample();
        IntServerUpdateTicket updateTicket2 = new IntServerUpdateTicket();
        IntServerUpdateTicket updateTicket3;

        System.assertEquals(false, updateTicket1.equals(updateTicket3));
        System.assertEquals(false, updateTicket2.equals(updateTicket3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerUpdateTicket updateTicket1 = IntServerUpdateTicket.getExample();
        IntServerUpdateTicket updateTicket2 = new IntServerUpdateTicket();

        System.assertEquals(updateTicket1.hashCode(), updateTicket1.hashCode());
        System.assertEquals(updateTicket2.hashCode(), updateTicket2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerUpdateTicket updateTicket1 = IntServerUpdateTicket.getExample();
        IntServerUpdateTicket updateTicket2 = IntServerUpdateTicket.getExample();
        IntServerUpdateTicket updateTicket3 = new IntServerUpdateTicket();
        IntServerUpdateTicket updateTicket4 = new IntServerUpdateTicket();

        System.assert(updateTicket1.equals(updateTicket2));
        System.assert(updateTicket3.equals(updateTicket4));
        System.assertEquals(updateTicket1.hashCode(), updateTicket2.hashCode());
        System.assertEquals(updateTicket3.hashCode(), updateTicket4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerUpdateTicket updateTicket = new IntServerUpdateTicket();
        Map<String, String> x-property-mappings = updateTicket.getx-property-mappings();
        System.assertEquals('ipAddress', x-property-mappings.get('ip_address'));
        System.assertEquals('customerServerAccess', x-property-mappings.get('customer_server_access'));
        System.assertEquals('rootPassword', x-property-mappings.get('root_password'));
        System.assertEquals('sudoUsername', x-property-mappings.get('sudo_username'));
        System.assertEquals('sudoPassword', x-property-mappings.get('sudo_password'));
    }
}
