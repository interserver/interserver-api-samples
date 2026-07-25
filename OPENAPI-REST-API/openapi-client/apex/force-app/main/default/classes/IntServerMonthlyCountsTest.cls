@isTest
private class IntServerMonthlyCountsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMonthlyCounts monthlyCounts1 = IntServerMonthlyCounts.getExample();
        IntServerMonthlyCounts monthlyCounts2 = monthlyCounts1;
        IntServerMonthlyCounts monthlyCounts3 = new IntServerMonthlyCounts();
        IntServerMonthlyCounts monthlyCounts4 = monthlyCounts3;

        System.assert(monthlyCounts1.equals(monthlyCounts2));
        System.assert(monthlyCounts2.equals(monthlyCounts1));
        System.assert(monthlyCounts1.equals(monthlyCounts1));
        System.assert(monthlyCounts3.equals(monthlyCounts4));
        System.assert(monthlyCounts4.equals(monthlyCounts3));
        System.assert(monthlyCounts3.equals(monthlyCounts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMonthlyCounts monthlyCounts1 = IntServerMonthlyCounts.getExample();
        IntServerMonthlyCounts monthlyCounts2 = IntServerMonthlyCounts.getExample();
        IntServerMonthlyCounts monthlyCounts3 = new IntServerMonthlyCounts();
        IntServerMonthlyCounts monthlyCounts4 = new IntServerMonthlyCounts();

        System.assert(monthlyCounts1.equals(monthlyCounts2));
        System.assert(monthlyCounts2.equals(monthlyCounts1));
        System.assert(monthlyCounts3.equals(monthlyCounts4));
        System.assert(monthlyCounts4.equals(monthlyCounts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMonthlyCounts monthlyCounts1 = IntServerMonthlyCounts.getExample();
        IntServerMonthlyCounts monthlyCounts2 = new IntServerMonthlyCounts();

        System.assertEquals(false, monthlyCounts1.equals('foo'));
        System.assertEquals(false, monthlyCounts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMonthlyCounts monthlyCounts1 = IntServerMonthlyCounts.getExample();
        IntServerMonthlyCounts monthlyCounts2 = new IntServerMonthlyCounts();
        IntServerMonthlyCounts monthlyCounts3;

        System.assertEquals(false, monthlyCounts1.equals(monthlyCounts3));
        System.assertEquals(false, monthlyCounts2.equals(monthlyCounts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMonthlyCounts monthlyCounts1 = IntServerMonthlyCounts.getExample();
        IntServerMonthlyCounts monthlyCounts2 = new IntServerMonthlyCounts();

        System.assertEquals(monthlyCounts1.hashCode(), monthlyCounts1.hashCode());
        System.assertEquals(monthlyCounts2.hashCode(), monthlyCounts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMonthlyCounts monthlyCounts1 = IntServerMonthlyCounts.getExample();
        IntServerMonthlyCounts monthlyCounts2 = IntServerMonthlyCounts.getExample();
        IntServerMonthlyCounts monthlyCounts3 = new IntServerMonthlyCounts();
        IntServerMonthlyCounts monthlyCounts4 = new IntServerMonthlyCounts();

        System.assert(monthlyCounts1.equals(monthlyCounts2));
        System.assert(monthlyCounts3.equals(monthlyCounts4));
        System.assertEquals(monthlyCounts1.hashCode(), monthlyCounts2.hashCode());
        System.assertEquals(monthlyCounts3.hashCode(), monthlyCounts4.hashCode());
    }
}
