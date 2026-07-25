@isTest
private class IntServerTicketPostDetailsInnerTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerTicketPostDetailsInner ticketPostDetailsInner1 = IntServerTicketPostDetailsInner.getExample();
        IntServerTicketPostDetailsInner ticketPostDetailsInner2 = ticketPostDetailsInner1;
        IntServerTicketPostDetailsInner ticketPostDetailsInner3 = new IntServerTicketPostDetailsInner();
        IntServerTicketPostDetailsInner ticketPostDetailsInner4 = ticketPostDetailsInner3;

        System.assert(ticketPostDetailsInner1.equals(ticketPostDetailsInner2));
        System.assert(ticketPostDetailsInner2.equals(ticketPostDetailsInner1));
        System.assert(ticketPostDetailsInner1.equals(ticketPostDetailsInner1));
        System.assert(ticketPostDetailsInner3.equals(ticketPostDetailsInner4));
        System.assert(ticketPostDetailsInner4.equals(ticketPostDetailsInner3));
        System.assert(ticketPostDetailsInner3.equals(ticketPostDetailsInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerTicketPostDetailsInner ticketPostDetailsInner1 = IntServerTicketPostDetailsInner.getExample();
        IntServerTicketPostDetailsInner ticketPostDetailsInner2 = IntServerTicketPostDetailsInner.getExample();
        IntServerTicketPostDetailsInner ticketPostDetailsInner3 = new IntServerTicketPostDetailsInner();
        IntServerTicketPostDetailsInner ticketPostDetailsInner4 = new IntServerTicketPostDetailsInner();

        System.assert(ticketPostDetailsInner1.equals(ticketPostDetailsInner2));
        System.assert(ticketPostDetailsInner2.equals(ticketPostDetailsInner1));
        System.assert(ticketPostDetailsInner3.equals(ticketPostDetailsInner4));
        System.assert(ticketPostDetailsInner4.equals(ticketPostDetailsInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerTicketPostDetailsInner ticketPostDetailsInner1 = IntServerTicketPostDetailsInner.getExample();
        IntServerTicketPostDetailsInner ticketPostDetailsInner2 = new IntServerTicketPostDetailsInner();

        System.assertEquals(false, ticketPostDetailsInner1.equals('foo'));
        System.assertEquals(false, ticketPostDetailsInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerTicketPostDetailsInner ticketPostDetailsInner1 = IntServerTicketPostDetailsInner.getExample();
        IntServerTicketPostDetailsInner ticketPostDetailsInner2 = new IntServerTicketPostDetailsInner();
        IntServerTicketPostDetailsInner ticketPostDetailsInner3;

        System.assertEquals(false, ticketPostDetailsInner1.equals(ticketPostDetailsInner3));
        System.assertEquals(false, ticketPostDetailsInner2.equals(ticketPostDetailsInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerTicketPostDetailsInner ticketPostDetailsInner1 = IntServerTicketPostDetailsInner.getExample();
        IntServerTicketPostDetailsInner ticketPostDetailsInner2 = new IntServerTicketPostDetailsInner();

        System.assertEquals(ticketPostDetailsInner1.hashCode(), ticketPostDetailsInner1.hashCode());
        System.assertEquals(ticketPostDetailsInner2.hashCode(), ticketPostDetailsInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerTicketPostDetailsInner ticketPostDetailsInner1 = IntServerTicketPostDetailsInner.getExample();
        IntServerTicketPostDetailsInner ticketPostDetailsInner2 = IntServerTicketPostDetailsInner.getExample();
        IntServerTicketPostDetailsInner ticketPostDetailsInner3 = new IntServerTicketPostDetailsInner();
        IntServerTicketPostDetailsInner ticketPostDetailsInner4 = new IntServerTicketPostDetailsInner();

        System.assert(ticketPostDetailsInner1.equals(ticketPostDetailsInner2));
        System.assert(ticketPostDetailsInner3.equals(ticketPostDetailsInner4));
        System.assertEquals(ticketPostDetailsInner1.hashCode(), ticketPostDetailsInner2.hashCode());
        System.assertEquals(ticketPostDetailsInner3.hashCode(), ticketPostDetailsInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerTicketPostDetailsInner ticketPostDetailsInner = new IntServerTicketPostDetailsInner();
        Map<String, String> x-property-mappings = ticketPostDetailsInner.getx-property-mappings();
        System.assertEquals('postId', x-property-mappings.get('post_id'));
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('creatorEmail', x-property-mappings.get('creator_email'));
        System.assertEquals('creatorName', x-property-mappings.get('creator_name'));
        System.assertEquals('attachmentDownload', x-property-mappings.get('attachment_download'));
    }
}
