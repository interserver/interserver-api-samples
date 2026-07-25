@isTest
private class IntServerViewTicketResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerViewTicketResponse viewTicketResponse1 = IntServerViewTicketResponse.getExample();
        IntServerViewTicketResponse viewTicketResponse2 = viewTicketResponse1;
        IntServerViewTicketResponse viewTicketResponse3 = new IntServerViewTicketResponse();
        IntServerViewTicketResponse viewTicketResponse4 = viewTicketResponse3;

        System.assert(viewTicketResponse1.equals(viewTicketResponse2));
        System.assert(viewTicketResponse2.equals(viewTicketResponse1));
        System.assert(viewTicketResponse1.equals(viewTicketResponse1));
        System.assert(viewTicketResponse3.equals(viewTicketResponse4));
        System.assert(viewTicketResponse4.equals(viewTicketResponse3));
        System.assert(viewTicketResponse3.equals(viewTicketResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerViewTicketResponse viewTicketResponse1 = IntServerViewTicketResponse.getExample();
        IntServerViewTicketResponse viewTicketResponse2 = IntServerViewTicketResponse.getExample();
        IntServerViewTicketResponse viewTicketResponse3 = new IntServerViewTicketResponse();
        IntServerViewTicketResponse viewTicketResponse4 = new IntServerViewTicketResponse();

        System.assert(viewTicketResponse1.equals(viewTicketResponse2));
        System.assert(viewTicketResponse2.equals(viewTicketResponse1));
        System.assert(viewTicketResponse3.equals(viewTicketResponse4));
        System.assert(viewTicketResponse4.equals(viewTicketResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerViewTicketResponse viewTicketResponse1 = IntServerViewTicketResponse.getExample();
        IntServerViewTicketResponse viewTicketResponse2 = new IntServerViewTicketResponse();

        System.assertEquals(false, viewTicketResponse1.equals('foo'));
        System.assertEquals(false, viewTicketResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerViewTicketResponse viewTicketResponse1 = IntServerViewTicketResponse.getExample();
        IntServerViewTicketResponse viewTicketResponse2 = new IntServerViewTicketResponse();
        IntServerViewTicketResponse viewTicketResponse3;

        System.assertEquals(false, viewTicketResponse1.equals(viewTicketResponse3));
        System.assertEquals(false, viewTicketResponse2.equals(viewTicketResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerViewTicketResponse viewTicketResponse1 = IntServerViewTicketResponse.getExample();
        IntServerViewTicketResponse viewTicketResponse2 = new IntServerViewTicketResponse();

        System.assertEquals(viewTicketResponse1.hashCode(), viewTicketResponse1.hashCode());
        System.assertEquals(viewTicketResponse2.hashCode(), viewTicketResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerViewTicketResponse viewTicketResponse1 = IntServerViewTicketResponse.getExample();
        IntServerViewTicketResponse viewTicketResponse2 = IntServerViewTicketResponse.getExample();
        IntServerViewTicketResponse viewTicketResponse3 = new IntServerViewTicketResponse();
        IntServerViewTicketResponse viewTicketResponse4 = new IntServerViewTicketResponse();

        System.assert(viewTicketResponse1.equals(viewTicketResponse2));
        System.assert(viewTicketResponse3.equals(viewTicketResponse4));
        System.assertEquals(viewTicketResponse1.hashCode(), viewTicketResponse2.hashCode());
        System.assertEquals(viewTicketResponse3.hashCode(), viewTicketResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerViewTicketResponse viewTicketResponse = new IntServerViewTicketResponse();
        Map<String, String> x-property-mappings = viewTicketResponse.getx-property-mappings();
        System.assertEquals('ticketCustomFields', x-property-mappings.get('ticket_custom_fields'));
        System.assertEquals('ticketPosts', x-property-mappings.get('ticket_posts'));
    }
}
