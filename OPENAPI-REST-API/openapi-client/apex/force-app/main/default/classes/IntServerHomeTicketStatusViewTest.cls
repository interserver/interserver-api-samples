@isTest
private class IntServerHomeTicketStatusViewTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeTicketStatusView homeTicketStatusView1 = IntServerHomeTicketStatusView.getExample();
        IntServerHomeTicketStatusView homeTicketStatusView2 = homeTicketStatusView1;
        IntServerHomeTicketStatusView homeTicketStatusView3 = new IntServerHomeTicketStatusView();
        IntServerHomeTicketStatusView homeTicketStatusView4 = homeTicketStatusView3;

        System.assert(homeTicketStatusView1.equals(homeTicketStatusView2));
        System.assert(homeTicketStatusView2.equals(homeTicketStatusView1));
        System.assert(homeTicketStatusView1.equals(homeTicketStatusView1));
        System.assert(homeTicketStatusView3.equals(homeTicketStatusView4));
        System.assert(homeTicketStatusView4.equals(homeTicketStatusView3));
        System.assert(homeTicketStatusView3.equals(homeTicketStatusView3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeTicketStatusView homeTicketStatusView1 = IntServerHomeTicketStatusView.getExample();
        IntServerHomeTicketStatusView homeTicketStatusView2 = IntServerHomeTicketStatusView.getExample();
        IntServerHomeTicketStatusView homeTicketStatusView3 = new IntServerHomeTicketStatusView();
        IntServerHomeTicketStatusView homeTicketStatusView4 = new IntServerHomeTicketStatusView();

        System.assert(homeTicketStatusView1.equals(homeTicketStatusView2));
        System.assert(homeTicketStatusView2.equals(homeTicketStatusView1));
        System.assert(homeTicketStatusView3.equals(homeTicketStatusView4));
        System.assert(homeTicketStatusView4.equals(homeTicketStatusView3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeTicketStatusView homeTicketStatusView1 = IntServerHomeTicketStatusView.getExample();
        IntServerHomeTicketStatusView homeTicketStatusView2 = new IntServerHomeTicketStatusView();

        System.assertEquals(false, homeTicketStatusView1.equals('foo'));
        System.assertEquals(false, homeTicketStatusView2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeTicketStatusView homeTicketStatusView1 = IntServerHomeTicketStatusView.getExample();
        IntServerHomeTicketStatusView homeTicketStatusView2 = new IntServerHomeTicketStatusView();
        IntServerHomeTicketStatusView homeTicketStatusView3;

        System.assertEquals(false, homeTicketStatusView1.equals(homeTicketStatusView3));
        System.assertEquals(false, homeTicketStatusView2.equals(homeTicketStatusView3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeTicketStatusView homeTicketStatusView1 = IntServerHomeTicketStatusView.getExample();
        IntServerHomeTicketStatusView homeTicketStatusView2 = new IntServerHomeTicketStatusView();

        System.assertEquals(homeTicketStatusView1.hashCode(), homeTicketStatusView1.hashCode());
        System.assertEquals(homeTicketStatusView2.hashCode(), homeTicketStatusView2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeTicketStatusView homeTicketStatusView1 = IntServerHomeTicketStatusView.getExample();
        IntServerHomeTicketStatusView homeTicketStatusView2 = IntServerHomeTicketStatusView.getExample();
        IntServerHomeTicketStatusView homeTicketStatusView3 = new IntServerHomeTicketStatusView();
        IntServerHomeTicketStatusView homeTicketStatusView4 = new IntServerHomeTicketStatusView();

        System.assert(homeTicketStatusView1.equals(homeTicketStatusView2));
        System.assert(homeTicketStatusView3.equals(homeTicketStatusView4));
        System.assertEquals(homeTicketStatusView1.hashCode(), homeTicketStatusView2.hashCode());
        System.assertEquals(homeTicketStatusView3.hashCode(), homeTicketStatusView4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeTicketStatusView homeTicketStatusView = new IntServerHomeTicketStatusView();
        Map<String, String> x-property-mappings = homeTicketStatusView.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('4'));
        System.assertEquals('', x-property-mappings.get('5'));
        System.assertEquals('', x-property-mappings.get('6'));
    }
}
