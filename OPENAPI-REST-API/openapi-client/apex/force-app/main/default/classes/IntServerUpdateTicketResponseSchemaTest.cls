@isTest
private class IntServerUpdateTicketResponseSchemaTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema1 = IntServerUpdateTicketResponseSchema.getExample();
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema2 = updateTicketResponseSchema1;
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema3 = new IntServerUpdateTicketResponseSchema();
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema4 = updateTicketResponseSchema3;

        System.assert(updateTicketResponseSchema1.equals(updateTicketResponseSchema2));
        System.assert(updateTicketResponseSchema2.equals(updateTicketResponseSchema1));
        System.assert(updateTicketResponseSchema1.equals(updateTicketResponseSchema1));
        System.assert(updateTicketResponseSchema3.equals(updateTicketResponseSchema4));
        System.assert(updateTicketResponseSchema4.equals(updateTicketResponseSchema3));
        System.assert(updateTicketResponseSchema3.equals(updateTicketResponseSchema3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema1 = IntServerUpdateTicketResponseSchema.getExample();
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema2 = IntServerUpdateTicketResponseSchema.getExample();
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema3 = new IntServerUpdateTicketResponseSchema();
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema4 = new IntServerUpdateTicketResponseSchema();

        System.assert(updateTicketResponseSchema1.equals(updateTicketResponseSchema2));
        System.assert(updateTicketResponseSchema2.equals(updateTicketResponseSchema1));
        System.assert(updateTicketResponseSchema3.equals(updateTicketResponseSchema4));
        System.assert(updateTicketResponseSchema4.equals(updateTicketResponseSchema3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema1 = IntServerUpdateTicketResponseSchema.getExample();
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema2 = new IntServerUpdateTicketResponseSchema();

        System.assertEquals(false, updateTicketResponseSchema1.equals('foo'));
        System.assertEquals(false, updateTicketResponseSchema2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema1 = IntServerUpdateTicketResponseSchema.getExample();
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema2 = new IntServerUpdateTicketResponseSchema();
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema3;

        System.assertEquals(false, updateTicketResponseSchema1.equals(updateTicketResponseSchema3));
        System.assertEquals(false, updateTicketResponseSchema2.equals(updateTicketResponseSchema3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema1 = IntServerUpdateTicketResponseSchema.getExample();
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema2 = new IntServerUpdateTicketResponseSchema();

        System.assertEquals(updateTicketResponseSchema1.hashCode(), updateTicketResponseSchema1.hashCode());
        System.assertEquals(updateTicketResponseSchema2.hashCode(), updateTicketResponseSchema2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema1 = IntServerUpdateTicketResponseSchema.getExample();
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema2 = IntServerUpdateTicketResponseSchema.getExample();
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema3 = new IntServerUpdateTicketResponseSchema();
        IntServerUpdateTicketResponseSchema updateTicketResponseSchema4 = new IntServerUpdateTicketResponseSchema();

        System.assert(updateTicketResponseSchema1.equals(updateTicketResponseSchema2));
        System.assert(updateTicketResponseSchema3.equals(updateTicketResponseSchema4));
        System.assertEquals(updateTicketResponseSchema1.hashCode(), updateTicketResponseSchema2.hashCode());
        System.assertEquals(updateTicketResponseSchema3.hashCode(), updateTicketResponseSchema4.hashCode());
    }
}
