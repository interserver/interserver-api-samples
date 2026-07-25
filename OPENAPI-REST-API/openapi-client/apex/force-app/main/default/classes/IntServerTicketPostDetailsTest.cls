@isTest
private class IntServerTicketPostDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerTicketPostDetails ticketPostDetails1 = IntServerTicketPostDetails.getExample();
        IntServerTicketPostDetails ticketPostDetails2 = ticketPostDetails1;
        IntServerTicketPostDetails ticketPostDetails3 = new IntServerTicketPostDetails();
        IntServerTicketPostDetails ticketPostDetails4 = ticketPostDetails3;

        System.assert(ticketPostDetails1.equals(ticketPostDetails2));
        System.assert(ticketPostDetails2.equals(ticketPostDetails1));
        System.assert(ticketPostDetails1.equals(ticketPostDetails1));
        System.assert(ticketPostDetails3.equals(ticketPostDetails4));
        System.assert(ticketPostDetails4.equals(ticketPostDetails3));
        System.assert(ticketPostDetails3.equals(ticketPostDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerTicketPostDetails ticketPostDetails1 = IntServerTicketPostDetails.getExample();
        IntServerTicketPostDetails ticketPostDetails2 = IntServerTicketPostDetails.getExample();
        IntServerTicketPostDetails ticketPostDetails3 = new IntServerTicketPostDetails();
        IntServerTicketPostDetails ticketPostDetails4 = new IntServerTicketPostDetails();

        System.assert(ticketPostDetails1.equals(ticketPostDetails2));
        System.assert(ticketPostDetails2.equals(ticketPostDetails1));
        System.assert(ticketPostDetails3.equals(ticketPostDetails4));
        System.assert(ticketPostDetails4.equals(ticketPostDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerTicketPostDetails ticketPostDetails1 = IntServerTicketPostDetails.getExample();
        IntServerTicketPostDetails ticketPostDetails2 = new IntServerTicketPostDetails();

        System.assertEquals(false, ticketPostDetails1.equals('foo'));
        System.assertEquals(false, ticketPostDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerTicketPostDetails ticketPostDetails1 = IntServerTicketPostDetails.getExample();
        IntServerTicketPostDetails ticketPostDetails2 = new IntServerTicketPostDetails();
        IntServerTicketPostDetails ticketPostDetails3;

        System.assertEquals(false, ticketPostDetails1.equals(ticketPostDetails3));
        System.assertEquals(false, ticketPostDetails2.equals(ticketPostDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerTicketPostDetails ticketPostDetails1 = IntServerTicketPostDetails.getExample();
        IntServerTicketPostDetails ticketPostDetails2 = new IntServerTicketPostDetails();

        System.assertEquals(ticketPostDetails1.hashCode(), ticketPostDetails1.hashCode());
        System.assertEquals(ticketPostDetails2.hashCode(), ticketPostDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerTicketPostDetails ticketPostDetails1 = IntServerTicketPostDetails.getExample();
        IntServerTicketPostDetails ticketPostDetails2 = IntServerTicketPostDetails.getExample();
        IntServerTicketPostDetails ticketPostDetails3 = new IntServerTicketPostDetails();
        IntServerTicketPostDetails ticketPostDetails4 = new IntServerTicketPostDetails();

        System.assert(ticketPostDetails1.equals(ticketPostDetails2));
        System.assert(ticketPostDetails3.equals(ticketPostDetails4));
        System.assertEquals(ticketPostDetails1.hashCode(), ticketPostDetails2.hashCode());
        System.assertEquals(ticketPostDetails3.hashCode(), ticketPostDetails4.hashCode());
    }
}
