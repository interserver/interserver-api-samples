@isTest
private class IntServerTicketsRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerTicketsRow ticketsRow1 = IntServerTicketsRow.getExample();
        IntServerTicketsRow ticketsRow2 = ticketsRow1;
        IntServerTicketsRow ticketsRow3 = new IntServerTicketsRow();
        IntServerTicketsRow ticketsRow4 = ticketsRow3;

        System.assert(ticketsRow1.equals(ticketsRow2));
        System.assert(ticketsRow2.equals(ticketsRow1));
        System.assert(ticketsRow1.equals(ticketsRow1));
        System.assert(ticketsRow3.equals(ticketsRow4));
        System.assert(ticketsRow4.equals(ticketsRow3));
        System.assert(ticketsRow3.equals(ticketsRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerTicketsRow ticketsRow1 = IntServerTicketsRow.getExample();
        IntServerTicketsRow ticketsRow2 = IntServerTicketsRow.getExample();
        IntServerTicketsRow ticketsRow3 = new IntServerTicketsRow();
        IntServerTicketsRow ticketsRow4 = new IntServerTicketsRow();

        System.assert(ticketsRow1.equals(ticketsRow2));
        System.assert(ticketsRow2.equals(ticketsRow1));
        System.assert(ticketsRow3.equals(ticketsRow4));
        System.assert(ticketsRow4.equals(ticketsRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerTicketsRow ticketsRow1 = IntServerTicketsRow.getExample();
        IntServerTicketsRow ticketsRow2 = new IntServerTicketsRow();

        System.assertEquals(false, ticketsRow1.equals('foo'));
        System.assertEquals(false, ticketsRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerTicketsRow ticketsRow1 = IntServerTicketsRow.getExample();
        IntServerTicketsRow ticketsRow2 = new IntServerTicketsRow();
        IntServerTicketsRow ticketsRow3;

        System.assertEquals(false, ticketsRow1.equals(ticketsRow3));
        System.assertEquals(false, ticketsRow2.equals(ticketsRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerTicketsRow ticketsRow1 = IntServerTicketsRow.getExample();
        IntServerTicketsRow ticketsRow2 = new IntServerTicketsRow();

        System.assertEquals(ticketsRow1.hashCode(), ticketsRow1.hashCode());
        System.assertEquals(ticketsRow2.hashCode(), ticketsRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerTicketsRow ticketsRow1 = IntServerTicketsRow.getExample();
        IntServerTicketsRow ticketsRow2 = IntServerTicketsRow.getExample();
        IntServerTicketsRow ticketsRow3 = new IntServerTicketsRow();
        IntServerTicketsRow ticketsRow4 = new IntServerTicketsRow();

        System.assert(ticketsRow1.equals(ticketsRow2));
        System.assert(ticketsRow3.equals(ticketsRow4));
        System.assertEquals(ticketsRow1.hashCode(), ticketsRow2.hashCode());
        System.assertEquals(ticketsRow3.hashCode(), ticketsRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerTicketsRow ticketsRow = new IntServerTicketsRow();
        Map<String, String> x-property-mappings = ticketsRow.getx-property-mappings();
        System.assertEquals('totalReplies', x-property-mappings.get('total_replies'));
        System.assertEquals('canClose', x-property-mappings.get('can_close'));
        System.assertEquals('statusText', x-property-mappings.get('status_text'));
    }
}
