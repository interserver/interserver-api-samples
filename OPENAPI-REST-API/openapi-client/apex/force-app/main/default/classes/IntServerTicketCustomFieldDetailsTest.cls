@isTest
private class IntServerTicketCustomFieldDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails1 = IntServerTicketCustomFieldDetails.getExample();
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails2 = ticketCustomFieldDetails1;
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails3 = new IntServerTicketCustomFieldDetails();
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails4 = ticketCustomFieldDetails3;

        System.assert(ticketCustomFieldDetails1.equals(ticketCustomFieldDetails2));
        System.assert(ticketCustomFieldDetails2.equals(ticketCustomFieldDetails1));
        System.assert(ticketCustomFieldDetails1.equals(ticketCustomFieldDetails1));
        System.assert(ticketCustomFieldDetails3.equals(ticketCustomFieldDetails4));
        System.assert(ticketCustomFieldDetails4.equals(ticketCustomFieldDetails3));
        System.assert(ticketCustomFieldDetails3.equals(ticketCustomFieldDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails1 = IntServerTicketCustomFieldDetails.getExample();
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails2 = IntServerTicketCustomFieldDetails.getExample();
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails3 = new IntServerTicketCustomFieldDetails();
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails4 = new IntServerTicketCustomFieldDetails();

        System.assert(ticketCustomFieldDetails1.equals(ticketCustomFieldDetails2));
        System.assert(ticketCustomFieldDetails2.equals(ticketCustomFieldDetails1));
        System.assert(ticketCustomFieldDetails3.equals(ticketCustomFieldDetails4));
        System.assert(ticketCustomFieldDetails4.equals(ticketCustomFieldDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails1 = IntServerTicketCustomFieldDetails.getExample();
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails2 = new IntServerTicketCustomFieldDetails();

        System.assertEquals(false, ticketCustomFieldDetails1.equals('foo'));
        System.assertEquals(false, ticketCustomFieldDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails1 = IntServerTicketCustomFieldDetails.getExample();
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails2 = new IntServerTicketCustomFieldDetails();
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails3;

        System.assertEquals(false, ticketCustomFieldDetails1.equals(ticketCustomFieldDetails3));
        System.assertEquals(false, ticketCustomFieldDetails2.equals(ticketCustomFieldDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails1 = IntServerTicketCustomFieldDetails.getExample();
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails2 = new IntServerTicketCustomFieldDetails();

        System.assertEquals(ticketCustomFieldDetails1.hashCode(), ticketCustomFieldDetails1.hashCode());
        System.assertEquals(ticketCustomFieldDetails2.hashCode(), ticketCustomFieldDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails1 = IntServerTicketCustomFieldDetails.getExample();
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails2 = IntServerTicketCustomFieldDetails.getExample();
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails3 = new IntServerTicketCustomFieldDetails();
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails4 = new IntServerTicketCustomFieldDetails();

        System.assert(ticketCustomFieldDetails1.equals(ticketCustomFieldDetails2));
        System.assert(ticketCustomFieldDetails3.equals(ticketCustomFieldDetails4));
        System.assertEquals(ticketCustomFieldDetails1.hashCode(), ticketCustomFieldDetails2.hashCode());
        System.assertEquals(ticketCustomFieldDetails3.hashCode(), ticketCustomFieldDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerTicketCustomFieldDetails ticketCustomFieldDetails = new IntServerTicketCustomFieldDetails();
        Map<String, String> x-property-mappings = ticketCustomFieldDetails.getx-property-mappings();
        System.assertEquals('customerServerAccess', x-property-mappings.get('Customer Server Access'));
        System.assertEquals('ipAddress', x-property-mappings.get('Ip Address'));
        System.assertEquals('rootPassword', x-property-mappings.get('Root Password'));
        System.assertEquals('sudoUser', x-property-mappings.get('Sudo User'));
        System.assertEquals('sudoPassword', x-property-mappings.get('Sudo Password'));
        System.assertEquals('port', x-property-mappings.get('Port'));
    }
}
