@isTest
private class IntServerTicketDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerTicketDetails ticketDetails1 = IntServerTicketDetails.getExample();
        IntServerTicketDetails ticketDetails2 = ticketDetails1;
        IntServerTicketDetails ticketDetails3 = new IntServerTicketDetails();
        IntServerTicketDetails ticketDetails4 = ticketDetails3;

        System.assert(ticketDetails1.equals(ticketDetails2));
        System.assert(ticketDetails2.equals(ticketDetails1));
        System.assert(ticketDetails1.equals(ticketDetails1));
        System.assert(ticketDetails3.equals(ticketDetails4));
        System.assert(ticketDetails4.equals(ticketDetails3));
        System.assert(ticketDetails3.equals(ticketDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerTicketDetails ticketDetails1 = IntServerTicketDetails.getExample();
        IntServerTicketDetails ticketDetails2 = IntServerTicketDetails.getExample();
        IntServerTicketDetails ticketDetails3 = new IntServerTicketDetails();
        IntServerTicketDetails ticketDetails4 = new IntServerTicketDetails();

        System.assert(ticketDetails1.equals(ticketDetails2));
        System.assert(ticketDetails2.equals(ticketDetails1));
        System.assert(ticketDetails3.equals(ticketDetails4));
        System.assert(ticketDetails4.equals(ticketDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerTicketDetails ticketDetails1 = IntServerTicketDetails.getExample();
        IntServerTicketDetails ticketDetails2 = new IntServerTicketDetails();

        System.assertEquals(false, ticketDetails1.equals('foo'));
        System.assertEquals(false, ticketDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerTicketDetails ticketDetails1 = IntServerTicketDetails.getExample();
        IntServerTicketDetails ticketDetails2 = new IntServerTicketDetails();
        IntServerTicketDetails ticketDetails3;

        System.assertEquals(false, ticketDetails1.equals(ticketDetails3));
        System.assertEquals(false, ticketDetails2.equals(ticketDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerTicketDetails ticketDetails1 = IntServerTicketDetails.getExample();
        IntServerTicketDetails ticketDetails2 = new IntServerTicketDetails();

        System.assertEquals(ticketDetails1.hashCode(), ticketDetails1.hashCode());
        System.assertEquals(ticketDetails2.hashCode(), ticketDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerTicketDetails ticketDetails1 = IntServerTicketDetails.getExample();
        IntServerTicketDetails ticketDetails2 = IntServerTicketDetails.getExample();
        IntServerTicketDetails ticketDetails3 = new IntServerTicketDetails();
        IntServerTicketDetails ticketDetails4 = new IntServerTicketDetails();

        System.assert(ticketDetails1.equals(ticketDetails2));
        System.assert(ticketDetails3.equals(ticketDetails4));
        System.assertEquals(ticketDetails1.hashCode(), ticketDetails2.hashCode());
        System.assertEquals(ticketDetails3.hashCode(), ticketDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerTicketDetails ticketDetails = new IntServerTicketDetails();
        Map<String, String> x-property-mappings = ticketDetails.getx-property-mappings();
        System.assertEquals('createdOn', x-property-mappings.get('created_on'));
        System.assertEquals('updatedOn', x-property-mappings.get('updated_on'));
    }
}
