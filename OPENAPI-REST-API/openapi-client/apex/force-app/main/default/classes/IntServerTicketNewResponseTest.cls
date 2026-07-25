@isTest
private class IntServerTicketNewResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerTicketNewResponse ticketNewResponse1 = IntServerTicketNewResponse.getExample();
        IntServerTicketNewResponse ticketNewResponse2 = ticketNewResponse1;
        IntServerTicketNewResponse ticketNewResponse3 = new IntServerTicketNewResponse();
        IntServerTicketNewResponse ticketNewResponse4 = ticketNewResponse3;

        System.assert(ticketNewResponse1.equals(ticketNewResponse2));
        System.assert(ticketNewResponse2.equals(ticketNewResponse1));
        System.assert(ticketNewResponse1.equals(ticketNewResponse1));
        System.assert(ticketNewResponse3.equals(ticketNewResponse4));
        System.assert(ticketNewResponse4.equals(ticketNewResponse3));
        System.assert(ticketNewResponse3.equals(ticketNewResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerTicketNewResponse ticketNewResponse1 = IntServerTicketNewResponse.getExample();
        IntServerTicketNewResponse ticketNewResponse2 = IntServerTicketNewResponse.getExample();
        IntServerTicketNewResponse ticketNewResponse3 = new IntServerTicketNewResponse();
        IntServerTicketNewResponse ticketNewResponse4 = new IntServerTicketNewResponse();

        System.assert(ticketNewResponse1.equals(ticketNewResponse2));
        System.assert(ticketNewResponse2.equals(ticketNewResponse1));
        System.assert(ticketNewResponse3.equals(ticketNewResponse4));
        System.assert(ticketNewResponse4.equals(ticketNewResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerTicketNewResponse ticketNewResponse1 = IntServerTicketNewResponse.getExample();
        IntServerTicketNewResponse ticketNewResponse2 = new IntServerTicketNewResponse();

        System.assertEquals(false, ticketNewResponse1.equals('foo'));
        System.assertEquals(false, ticketNewResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerTicketNewResponse ticketNewResponse1 = IntServerTicketNewResponse.getExample();
        IntServerTicketNewResponse ticketNewResponse2 = new IntServerTicketNewResponse();
        IntServerTicketNewResponse ticketNewResponse3;

        System.assertEquals(false, ticketNewResponse1.equals(ticketNewResponse3));
        System.assertEquals(false, ticketNewResponse2.equals(ticketNewResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerTicketNewResponse ticketNewResponse1 = IntServerTicketNewResponse.getExample();
        IntServerTicketNewResponse ticketNewResponse2 = new IntServerTicketNewResponse();

        System.assertEquals(ticketNewResponse1.hashCode(), ticketNewResponse1.hashCode());
        System.assertEquals(ticketNewResponse2.hashCode(), ticketNewResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerTicketNewResponse ticketNewResponse1 = IntServerTicketNewResponse.getExample();
        IntServerTicketNewResponse ticketNewResponse2 = IntServerTicketNewResponse.getExample();
        IntServerTicketNewResponse ticketNewResponse3 = new IntServerTicketNewResponse();
        IntServerTicketNewResponse ticketNewResponse4 = new IntServerTicketNewResponse();

        System.assert(ticketNewResponse1.equals(ticketNewResponse2));
        System.assert(ticketNewResponse3.equals(ticketNewResponse4));
        System.assertEquals(ticketNewResponse1.hashCode(), ticketNewResponse2.hashCode());
        System.assertEquals(ticketNewResponse3.hashCode(), ticketNewResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerTicketNewResponse ticketNewResponse = new IntServerTicketNewResponse();
        Map<String, String> x-property-mappings = ticketNewResponse.getx-property-mappings();
        System.assertEquals('ticketId', x-property-mappings.get('ticket_id'));
    }
}
