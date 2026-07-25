@isTest
private class IntServerHomeTicketStatusTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeTicketStatus homeTicketStatus1 = IntServerHomeTicketStatus.getExample();
        IntServerHomeTicketStatus homeTicketStatus2 = homeTicketStatus1;
        IntServerHomeTicketStatus homeTicketStatus3 = new IntServerHomeTicketStatus();
        IntServerHomeTicketStatus homeTicketStatus4 = homeTicketStatus3;

        System.assert(homeTicketStatus1.equals(homeTicketStatus2));
        System.assert(homeTicketStatus2.equals(homeTicketStatus1));
        System.assert(homeTicketStatus1.equals(homeTicketStatus1));
        System.assert(homeTicketStatus3.equals(homeTicketStatus4));
        System.assert(homeTicketStatus4.equals(homeTicketStatus3));
        System.assert(homeTicketStatus3.equals(homeTicketStatus3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeTicketStatus homeTicketStatus1 = IntServerHomeTicketStatus.getExample();
        IntServerHomeTicketStatus homeTicketStatus2 = IntServerHomeTicketStatus.getExample();
        IntServerHomeTicketStatus homeTicketStatus3 = new IntServerHomeTicketStatus();
        IntServerHomeTicketStatus homeTicketStatus4 = new IntServerHomeTicketStatus();

        System.assert(homeTicketStatus1.equals(homeTicketStatus2));
        System.assert(homeTicketStatus2.equals(homeTicketStatus1));
        System.assert(homeTicketStatus3.equals(homeTicketStatus4));
        System.assert(homeTicketStatus4.equals(homeTicketStatus3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeTicketStatus homeTicketStatus1 = IntServerHomeTicketStatus.getExample();
        IntServerHomeTicketStatus homeTicketStatus2 = new IntServerHomeTicketStatus();

        System.assertEquals(false, homeTicketStatus1.equals('foo'));
        System.assertEquals(false, homeTicketStatus2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeTicketStatus homeTicketStatus1 = IntServerHomeTicketStatus.getExample();
        IntServerHomeTicketStatus homeTicketStatus2 = new IntServerHomeTicketStatus();
        IntServerHomeTicketStatus homeTicketStatus3;

        System.assertEquals(false, homeTicketStatus1.equals(homeTicketStatus3));
        System.assertEquals(false, homeTicketStatus2.equals(homeTicketStatus3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeTicketStatus homeTicketStatus1 = IntServerHomeTicketStatus.getExample();
        IntServerHomeTicketStatus homeTicketStatus2 = new IntServerHomeTicketStatus();

        System.assertEquals(homeTicketStatus1.hashCode(), homeTicketStatus1.hashCode());
        System.assertEquals(homeTicketStatus2.hashCode(), homeTicketStatus2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeTicketStatus homeTicketStatus1 = IntServerHomeTicketStatus.getExample();
        IntServerHomeTicketStatus homeTicketStatus2 = IntServerHomeTicketStatus.getExample();
        IntServerHomeTicketStatus homeTicketStatus3 = new IntServerHomeTicketStatus();
        IntServerHomeTicketStatus homeTicketStatus4 = new IntServerHomeTicketStatus();

        System.assert(homeTicketStatus1.equals(homeTicketStatus2));
        System.assert(homeTicketStatus3.equals(homeTicketStatus4));
        System.assertEquals(homeTicketStatus1.hashCode(), homeTicketStatus2.hashCode());
        System.assertEquals(homeTicketStatus3.hashCode(), homeTicketStatus4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeTicketStatus homeTicketStatus = new IntServerHomeTicketStatus();
        Map<String, String> x-property-mappings = homeTicketStatus.getx-property-mappings();
        System.assertEquals('open', x-property-mappings.get('Open'));
        System.assertEquals('onHold', x-property-mappings.get('On Hold'));
    }
}
