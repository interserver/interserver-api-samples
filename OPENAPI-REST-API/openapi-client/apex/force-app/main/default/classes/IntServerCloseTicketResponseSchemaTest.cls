@isTest
private class IntServerCloseTicketResponseSchemaTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerCloseTicketResponseSchema closeTicketResponseSchema1 = IntServerCloseTicketResponseSchema.getExample();
        IntServerCloseTicketResponseSchema closeTicketResponseSchema2 = closeTicketResponseSchema1;
        IntServerCloseTicketResponseSchema closeTicketResponseSchema3 = new IntServerCloseTicketResponseSchema();
        IntServerCloseTicketResponseSchema closeTicketResponseSchema4 = closeTicketResponseSchema3;

        System.assert(closeTicketResponseSchema1.equals(closeTicketResponseSchema2));
        System.assert(closeTicketResponseSchema2.equals(closeTicketResponseSchema1));
        System.assert(closeTicketResponseSchema1.equals(closeTicketResponseSchema1));
        System.assert(closeTicketResponseSchema3.equals(closeTicketResponseSchema4));
        System.assert(closeTicketResponseSchema4.equals(closeTicketResponseSchema3));
        System.assert(closeTicketResponseSchema3.equals(closeTicketResponseSchema3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerCloseTicketResponseSchema closeTicketResponseSchema1 = IntServerCloseTicketResponseSchema.getExample();
        IntServerCloseTicketResponseSchema closeTicketResponseSchema2 = IntServerCloseTicketResponseSchema.getExample();
        IntServerCloseTicketResponseSchema closeTicketResponseSchema3 = new IntServerCloseTicketResponseSchema();
        IntServerCloseTicketResponseSchema closeTicketResponseSchema4 = new IntServerCloseTicketResponseSchema();

        System.assert(closeTicketResponseSchema1.equals(closeTicketResponseSchema2));
        System.assert(closeTicketResponseSchema2.equals(closeTicketResponseSchema1));
        System.assert(closeTicketResponseSchema3.equals(closeTicketResponseSchema4));
        System.assert(closeTicketResponseSchema4.equals(closeTicketResponseSchema3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerCloseTicketResponseSchema closeTicketResponseSchema1 = IntServerCloseTicketResponseSchema.getExample();
        IntServerCloseTicketResponseSchema closeTicketResponseSchema2 = new IntServerCloseTicketResponseSchema();

        System.assertEquals(false, closeTicketResponseSchema1.equals('foo'));
        System.assertEquals(false, closeTicketResponseSchema2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerCloseTicketResponseSchema closeTicketResponseSchema1 = IntServerCloseTicketResponseSchema.getExample();
        IntServerCloseTicketResponseSchema closeTicketResponseSchema2 = new IntServerCloseTicketResponseSchema();
        IntServerCloseTicketResponseSchema closeTicketResponseSchema3;

        System.assertEquals(false, closeTicketResponseSchema1.equals(closeTicketResponseSchema3));
        System.assertEquals(false, closeTicketResponseSchema2.equals(closeTicketResponseSchema3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerCloseTicketResponseSchema closeTicketResponseSchema1 = IntServerCloseTicketResponseSchema.getExample();
        IntServerCloseTicketResponseSchema closeTicketResponseSchema2 = new IntServerCloseTicketResponseSchema();

        System.assertEquals(closeTicketResponseSchema1.hashCode(), closeTicketResponseSchema1.hashCode());
        System.assertEquals(closeTicketResponseSchema2.hashCode(), closeTicketResponseSchema2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerCloseTicketResponseSchema closeTicketResponseSchema1 = IntServerCloseTicketResponseSchema.getExample();
        IntServerCloseTicketResponseSchema closeTicketResponseSchema2 = IntServerCloseTicketResponseSchema.getExample();
        IntServerCloseTicketResponseSchema closeTicketResponseSchema3 = new IntServerCloseTicketResponseSchema();
        IntServerCloseTicketResponseSchema closeTicketResponseSchema4 = new IntServerCloseTicketResponseSchema();

        System.assert(closeTicketResponseSchema1.equals(closeTicketResponseSchema2));
        System.assert(closeTicketResponseSchema3.equals(closeTicketResponseSchema4));
        System.assertEquals(closeTicketResponseSchema1.hashCode(), closeTicketResponseSchema2.hashCode());
        System.assertEquals(closeTicketResponseSchema3.hashCode(), closeTicketResponseSchema4.hashCode());
    }
}
