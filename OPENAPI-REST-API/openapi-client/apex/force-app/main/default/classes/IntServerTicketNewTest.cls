@isTest
private class IntServerTicketNewTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerTicketNew ticketNew1 = IntServerTicketNew.getExample();
        IntServerTicketNew ticketNew2 = ticketNew1;
        IntServerTicketNew ticketNew3 = new IntServerTicketNew();
        IntServerTicketNew ticketNew4 = ticketNew3;

        System.assert(ticketNew1.equals(ticketNew2));
        System.assert(ticketNew2.equals(ticketNew1));
        System.assert(ticketNew1.equals(ticketNew1));
        System.assert(ticketNew3.equals(ticketNew4));
        System.assert(ticketNew4.equals(ticketNew3));
        System.assert(ticketNew3.equals(ticketNew3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerTicketNew ticketNew1 = IntServerTicketNew.getExample();
        IntServerTicketNew ticketNew2 = IntServerTicketNew.getExample();
        IntServerTicketNew ticketNew3 = new IntServerTicketNew();
        IntServerTicketNew ticketNew4 = new IntServerTicketNew();

        System.assert(ticketNew1.equals(ticketNew2));
        System.assert(ticketNew2.equals(ticketNew1));
        System.assert(ticketNew3.equals(ticketNew4));
        System.assert(ticketNew4.equals(ticketNew3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerTicketNew ticketNew1 = IntServerTicketNew.getExample();
        IntServerTicketNew ticketNew2 = new IntServerTicketNew();

        System.assertEquals(false, ticketNew1.equals('foo'));
        System.assertEquals(false, ticketNew2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerTicketNew ticketNew1 = IntServerTicketNew.getExample();
        IntServerTicketNew ticketNew2 = new IntServerTicketNew();
        IntServerTicketNew ticketNew3;

        System.assertEquals(false, ticketNew1.equals(ticketNew3));
        System.assertEquals(false, ticketNew2.equals(ticketNew3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerTicketNew ticketNew1 = IntServerTicketNew.getExample();
        IntServerTicketNew ticketNew2 = new IntServerTicketNew();

        System.assertEquals(ticketNew1.hashCode(), ticketNew1.hashCode());
        System.assertEquals(ticketNew2.hashCode(), ticketNew2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerTicketNew ticketNew1 = IntServerTicketNew.getExample();
        IntServerTicketNew ticketNew2 = IntServerTicketNew.getExample();
        IntServerTicketNew ticketNew3 = new IntServerTicketNew();
        IntServerTicketNew ticketNew4 = new IntServerTicketNew();

        System.assert(ticketNew1.equals(ticketNew2));
        System.assert(ticketNew3.equals(ticketNew4));
        System.assertEquals(ticketNew1.hashCode(), ticketNew2.hashCode());
        System.assertEquals(ticketNew3.hashCode(), ticketNew4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerTicketNew ticketNew = new IntServerTicketNew();
        Map<String, String> x-property-mappings = ticketNew.getx-property-mappings();
        System.assertEquals('serviceId', x-property-mappings.get('service_id'));
        System.assertEquals('serviceModule', x-property-mappings.get('service_module'));
    }
}
