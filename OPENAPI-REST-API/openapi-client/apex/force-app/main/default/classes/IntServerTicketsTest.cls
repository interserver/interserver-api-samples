@isTest
private class IntServerTicketsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerTickets tickets1 = IntServerTickets.getExample();
        IntServerTickets tickets2 = tickets1;
        IntServerTickets tickets3 = new IntServerTickets();
        IntServerTickets tickets4 = tickets3;

        System.assert(tickets1.equals(tickets2));
        System.assert(tickets2.equals(tickets1));
        System.assert(tickets1.equals(tickets1));
        System.assert(tickets3.equals(tickets4));
        System.assert(tickets4.equals(tickets3));
        System.assert(tickets3.equals(tickets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerTickets tickets1 = IntServerTickets.getExample();
        IntServerTickets tickets2 = IntServerTickets.getExample();
        IntServerTickets tickets3 = new IntServerTickets();
        IntServerTickets tickets4 = new IntServerTickets();

        System.assert(tickets1.equals(tickets2));
        System.assert(tickets2.equals(tickets1));
        System.assert(tickets3.equals(tickets4));
        System.assert(tickets4.equals(tickets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerTickets tickets1 = IntServerTickets.getExample();
        IntServerTickets tickets2 = new IntServerTickets();

        System.assertEquals(false, tickets1.equals('foo'));
        System.assertEquals(false, tickets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerTickets tickets1 = IntServerTickets.getExample();
        IntServerTickets tickets2 = new IntServerTickets();
        IntServerTickets tickets3;

        System.assertEquals(false, tickets1.equals(tickets3));
        System.assertEquals(false, tickets2.equals(tickets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerTickets tickets1 = IntServerTickets.getExample();
        IntServerTickets tickets2 = new IntServerTickets();

        System.assertEquals(tickets1.hashCode(), tickets1.hashCode());
        System.assertEquals(tickets2.hashCode(), tickets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerTickets tickets1 = IntServerTickets.getExample();
        IntServerTickets tickets2 = IntServerTickets.getExample();
        IntServerTickets tickets3 = new IntServerTickets();
        IntServerTickets tickets4 = new IntServerTickets();

        System.assert(tickets1.equals(tickets2));
        System.assert(tickets3.equals(tickets4));
        System.assertEquals(tickets1.hashCode(), tickets2.hashCode());
        System.assertEquals(tickets3.hashCode(), tickets4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerTickets tickets = new IntServerTickets();
        Map<String, String> x-property-mappings = tickets.getx-property-mappings();
        System.assertEquals('r_limit', x-property-mappings.get('limit'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerTickets tickets = new IntServerTickets();
        System.assertEquals(new List<IntServerTicketsRow>(), tickets.tickets);
        System.assertEquals(null, tickets.ima);
        System.assertEquals(null, tickets.custid);
        System.assertEquals(null, tickets.view);
        System.assertEquals(null, tickets.currentPage);
        System.assertEquals(null, tickets.r_limit);
        System.assertEquals(null, tickets.sortcol);
        System.assertEquals(null, tickets.sortdir);
        System.assertEquals(null, tickets.rowsOffset);
        System.assertEquals(null, tickets.pages);
        System.assertEquals(null, tickets.rowsTotal);
        System.assertEquals(null, tickets.inboxCount);
        System.assertEquals(null, tickets.countArray);
        System.assertEquals(null, tickets.viewText);
    }
}
