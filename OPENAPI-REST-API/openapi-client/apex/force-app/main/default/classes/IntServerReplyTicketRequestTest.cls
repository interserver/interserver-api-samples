@isTest
private class IntServerReplyTicketRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerReplyTicketRequest replyTicketRequest1 = IntServerReplyTicketRequest.getExample();
        IntServerReplyTicketRequest replyTicketRequest2 = replyTicketRequest1;
        IntServerReplyTicketRequest replyTicketRequest3 = new IntServerReplyTicketRequest();
        IntServerReplyTicketRequest replyTicketRequest4 = replyTicketRequest3;

        System.assert(replyTicketRequest1.equals(replyTicketRequest2));
        System.assert(replyTicketRequest2.equals(replyTicketRequest1));
        System.assert(replyTicketRequest1.equals(replyTicketRequest1));
        System.assert(replyTicketRequest3.equals(replyTicketRequest4));
        System.assert(replyTicketRequest4.equals(replyTicketRequest3));
        System.assert(replyTicketRequest3.equals(replyTicketRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerReplyTicketRequest replyTicketRequest1 = IntServerReplyTicketRequest.getExample();
        IntServerReplyTicketRequest replyTicketRequest2 = IntServerReplyTicketRequest.getExample();
        IntServerReplyTicketRequest replyTicketRequest3 = new IntServerReplyTicketRequest();
        IntServerReplyTicketRequest replyTicketRequest4 = new IntServerReplyTicketRequest();

        System.assert(replyTicketRequest1.equals(replyTicketRequest2));
        System.assert(replyTicketRequest2.equals(replyTicketRequest1));
        System.assert(replyTicketRequest3.equals(replyTicketRequest4));
        System.assert(replyTicketRequest4.equals(replyTicketRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerReplyTicketRequest replyTicketRequest1 = IntServerReplyTicketRequest.getExample();
        IntServerReplyTicketRequest replyTicketRequest2 = new IntServerReplyTicketRequest();

        System.assertEquals(false, replyTicketRequest1.equals('foo'));
        System.assertEquals(false, replyTicketRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerReplyTicketRequest replyTicketRequest1 = IntServerReplyTicketRequest.getExample();
        IntServerReplyTicketRequest replyTicketRequest2 = new IntServerReplyTicketRequest();
        IntServerReplyTicketRequest replyTicketRequest3;

        System.assertEquals(false, replyTicketRequest1.equals(replyTicketRequest3));
        System.assertEquals(false, replyTicketRequest2.equals(replyTicketRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerReplyTicketRequest replyTicketRequest1 = IntServerReplyTicketRequest.getExample();
        IntServerReplyTicketRequest replyTicketRequest2 = new IntServerReplyTicketRequest();

        System.assertEquals(replyTicketRequest1.hashCode(), replyTicketRequest1.hashCode());
        System.assertEquals(replyTicketRequest2.hashCode(), replyTicketRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerReplyTicketRequest replyTicketRequest1 = IntServerReplyTicketRequest.getExample();
        IntServerReplyTicketRequest replyTicketRequest2 = IntServerReplyTicketRequest.getExample();
        IntServerReplyTicketRequest replyTicketRequest3 = new IntServerReplyTicketRequest();
        IntServerReplyTicketRequest replyTicketRequest4 = new IntServerReplyTicketRequest();

        System.assert(replyTicketRequest1.equals(replyTicketRequest2));
        System.assert(replyTicketRequest3.equals(replyTicketRequest4));
        System.assertEquals(replyTicketRequest1.hashCode(), replyTicketRequest2.hashCode());
        System.assertEquals(replyTicketRequest3.hashCode(), replyTicketRequest4.hashCode());
    }
}
