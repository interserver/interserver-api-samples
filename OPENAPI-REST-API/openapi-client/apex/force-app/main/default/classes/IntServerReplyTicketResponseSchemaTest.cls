@isTest
private class IntServerReplyTicketResponseSchemaTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerReplyTicketResponseSchema replyTicketResponseSchema1 = IntServerReplyTicketResponseSchema.getExample();
        IntServerReplyTicketResponseSchema replyTicketResponseSchema2 = replyTicketResponseSchema1;
        IntServerReplyTicketResponseSchema replyTicketResponseSchema3 = new IntServerReplyTicketResponseSchema();
        IntServerReplyTicketResponseSchema replyTicketResponseSchema4 = replyTicketResponseSchema3;

        System.assert(replyTicketResponseSchema1.equals(replyTicketResponseSchema2));
        System.assert(replyTicketResponseSchema2.equals(replyTicketResponseSchema1));
        System.assert(replyTicketResponseSchema1.equals(replyTicketResponseSchema1));
        System.assert(replyTicketResponseSchema3.equals(replyTicketResponseSchema4));
        System.assert(replyTicketResponseSchema4.equals(replyTicketResponseSchema3));
        System.assert(replyTicketResponseSchema3.equals(replyTicketResponseSchema3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerReplyTicketResponseSchema replyTicketResponseSchema1 = IntServerReplyTicketResponseSchema.getExample();
        IntServerReplyTicketResponseSchema replyTicketResponseSchema2 = IntServerReplyTicketResponseSchema.getExample();
        IntServerReplyTicketResponseSchema replyTicketResponseSchema3 = new IntServerReplyTicketResponseSchema();
        IntServerReplyTicketResponseSchema replyTicketResponseSchema4 = new IntServerReplyTicketResponseSchema();

        System.assert(replyTicketResponseSchema1.equals(replyTicketResponseSchema2));
        System.assert(replyTicketResponseSchema2.equals(replyTicketResponseSchema1));
        System.assert(replyTicketResponseSchema3.equals(replyTicketResponseSchema4));
        System.assert(replyTicketResponseSchema4.equals(replyTicketResponseSchema3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerReplyTicketResponseSchema replyTicketResponseSchema1 = IntServerReplyTicketResponseSchema.getExample();
        IntServerReplyTicketResponseSchema replyTicketResponseSchema2 = new IntServerReplyTicketResponseSchema();

        System.assertEquals(false, replyTicketResponseSchema1.equals('foo'));
        System.assertEquals(false, replyTicketResponseSchema2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerReplyTicketResponseSchema replyTicketResponseSchema1 = IntServerReplyTicketResponseSchema.getExample();
        IntServerReplyTicketResponseSchema replyTicketResponseSchema2 = new IntServerReplyTicketResponseSchema();
        IntServerReplyTicketResponseSchema replyTicketResponseSchema3;

        System.assertEquals(false, replyTicketResponseSchema1.equals(replyTicketResponseSchema3));
        System.assertEquals(false, replyTicketResponseSchema2.equals(replyTicketResponseSchema3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerReplyTicketResponseSchema replyTicketResponseSchema1 = IntServerReplyTicketResponseSchema.getExample();
        IntServerReplyTicketResponseSchema replyTicketResponseSchema2 = new IntServerReplyTicketResponseSchema();

        System.assertEquals(replyTicketResponseSchema1.hashCode(), replyTicketResponseSchema1.hashCode());
        System.assertEquals(replyTicketResponseSchema2.hashCode(), replyTicketResponseSchema2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerReplyTicketResponseSchema replyTicketResponseSchema1 = IntServerReplyTicketResponseSchema.getExample();
        IntServerReplyTicketResponseSchema replyTicketResponseSchema2 = IntServerReplyTicketResponseSchema.getExample();
        IntServerReplyTicketResponseSchema replyTicketResponseSchema3 = new IntServerReplyTicketResponseSchema();
        IntServerReplyTicketResponseSchema replyTicketResponseSchema4 = new IntServerReplyTicketResponseSchema();

        System.assert(replyTicketResponseSchema1.equals(replyTicketResponseSchema2));
        System.assert(replyTicketResponseSchema3.equals(replyTicketResponseSchema4));
        System.assertEquals(replyTicketResponseSchema1.hashCode(), replyTicketResponseSchema2.hashCode());
        System.assertEquals(replyTicketResponseSchema3.hashCode(), replyTicketResponseSchema4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerReplyTicketResponseSchema replyTicketResponseSchema = new IntServerReplyTicketResponseSchema();
        Map<String, String> x-property-mappings = replyTicketResponseSchema.getx-property-mappings();
        System.assertEquals('postId', x-property-mappings.get('post_id'));
    }
}
