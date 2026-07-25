@isTest
private class IntServerStatusMonthlyBreakdownTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown1 = IntServerStatusMonthlyBreakdown.getExample();
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown2 = statusMonthlyBreakdown1;
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown3 = new IntServerStatusMonthlyBreakdown();
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown4 = statusMonthlyBreakdown3;

        System.assert(statusMonthlyBreakdown1.equals(statusMonthlyBreakdown2));
        System.assert(statusMonthlyBreakdown2.equals(statusMonthlyBreakdown1));
        System.assert(statusMonthlyBreakdown1.equals(statusMonthlyBreakdown1));
        System.assert(statusMonthlyBreakdown3.equals(statusMonthlyBreakdown4));
        System.assert(statusMonthlyBreakdown4.equals(statusMonthlyBreakdown3));
        System.assert(statusMonthlyBreakdown3.equals(statusMonthlyBreakdown3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown1 = IntServerStatusMonthlyBreakdown.getExample();
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown2 = IntServerStatusMonthlyBreakdown.getExample();
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown3 = new IntServerStatusMonthlyBreakdown();
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown4 = new IntServerStatusMonthlyBreakdown();

        System.assert(statusMonthlyBreakdown1.equals(statusMonthlyBreakdown2));
        System.assert(statusMonthlyBreakdown2.equals(statusMonthlyBreakdown1));
        System.assert(statusMonthlyBreakdown3.equals(statusMonthlyBreakdown4));
        System.assert(statusMonthlyBreakdown4.equals(statusMonthlyBreakdown3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown1 = IntServerStatusMonthlyBreakdown.getExample();
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown2 = new IntServerStatusMonthlyBreakdown();

        System.assertEquals(false, statusMonthlyBreakdown1.equals('foo'));
        System.assertEquals(false, statusMonthlyBreakdown2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown1 = IntServerStatusMonthlyBreakdown.getExample();
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown2 = new IntServerStatusMonthlyBreakdown();
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown3;

        System.assertEquals(false, statusMonthlyBreakdown1.equals(statusMonthlyBreakdown3));
        System.assertEquals(false, statusMonthlyBreakdown2.equals(statusMonthlyBreakdown3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown1 = IntServerStatusMonthlyBreakdown.getExample();
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown2 = new IntServerStatusMonthlyBreakdown();

        System.assertEquals(statusMonthlyBreakdown1.hashCode(), statusMonthlyBreakdown1.hashCode());
        System.assertEquals(statusMonthlyBreakdown2.hashCode(), statusMonthlyBreakdown2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown1 = IntServerStatusMonthlyBreakdown.getExample();
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown2 = IntServerStatusMonthlyBreakdown.getExample();
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown3 = new IntServerStatusMonthlyBreakdown();
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown4 = new IntServerStatusMonthlyBreakdown();

        System.assert(statusMonthlyBreakdown1.equals(statusMonthlyBreakdown2));
        System.assert(statusMonthlyBreakdown3.equals(statusMonthlyBreakdown4));
        System.assertEquals(statusMonthlyBreakdown1.hashCode(), statusMonthlyBreakdown2.hashCode());
        System.assertEquals(statusMonthlyBreakdown3.hashCode(), statusMonthlyBreakdown4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerStatusMonthlyBreakdown statusMonthlyBreakdown = new IntServerStatusMonthlyBreakdown();
        Map<String, String> x-property-mappings = statusMonthlyBreakdown.getx-property-mappings();
        System.assertEquals('r_default', x-property-mappings.get('default'));
    }
}
