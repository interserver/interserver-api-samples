@isTest
private class IntServerLoginServiceCountsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLoginServiceCounts loginServiceCounts1 = IntServerLoginServiceCounts.getExample();
        IntServerLoginServiceCounts loginServiceCounts2 = loginServiceCounts1;
        IntServerLoginServiceCounts loginServiceCounts3 = new IntServerLoginServiceCounts();
        IntServerLoginServiceCounts loginServiceCounts4 = loginServiceCounts3;

        System.assert(loginServiceCounts1.equals(loginServiceCounts2));
        System.assert(loginServiceCounts2.equals(loginServiceCounts1));
        System.assert(loginServiceCounts1.equals(loginServiceCounts1));
        System.assert(loginServiceCounts3.equals(loginServiceCounts4));
        System.assert(loginServiceCounts4.equals(loginServiceCounts3));
        System.assert(loginServiceCounts3.equals(loginServiceCounts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLoginServiceCounts loginServiceCounts1 = IntServerLoginServiceCounts.getExample();
        IntServerLoginServiceCounts loginServiceCounts2 = IntServerLoginServiceCounts.getExample();
        IntServerLoginServiceCounts loginServiceCounts3 = new IntServerLoginServiceCounts();
        IntServerLoginServiceCounts loginServiceCounts4 = new IntServerLoginServiceCounts();

        System.assert(loginServiceCounts1.equals(loginServiceCounts2));
        System.assert(loginServiceCounts2.equals(loginServiceCounts1));
        System.assert(loginServiceCounts3.equals(loginServiceCounts4));
        System.assert(loginServiceCounts4.equals(loginServiceCounts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLoginServiceCounts loginServiceCounts1 = IntServerLoginServiceCounts.getExample();
        IntServerLoginServiceCounts loginServiceCounts2 = new IntServerLoginServiceCounts();

        System.assertEquals(false, loginServiceCounts1.equals('foo'));
        System.assertEquals(false, loginServiceCounts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLoginServiceCounts loginServiceCounts1 = IntServerLoginServiceCounts.getExample();
        IntServerLoginServiceCounts loginServiceCounts2 = new IntServerLoginServiceCounts();
        IntServerLoginServiceCounts loginServiceCounts3;

        System.assertEquals(false, loginServiceCounts1.equals(loginServiceCounts3));
        System.assertEquals(false, loginServiceCounts2.equals(loginServiceCounts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLoginServiceCounts loginServiceCounts1 = IntServerLoginServiceCounts.getExample();
        IntServerLoginServiceCounts loginServiceCounts2 = new IntServerLoginServiceCounts();

        System.assertEquals(loginServiceCounts1.hashCode(), loginServiceCounts1.hashCode());
        System.assertEquals(loginServiceCounts2.hashCode(), loginServiceCounts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLoginServiceCounts loginServiceCounts1 = IntServerLoginServiceCounts.getExample();
        IntServerLoginServiceCounts loginServiceCounts2 = IntServerLoginServiceCounts.getExample();
        IntServerLoginServiceCounts loginServiceCounts3 = new IntServerLoginServiceCounts();
        IntServerLoginServiceCounts loginServiceCounts4 = new IntServerLoginServiceCounts();

        System.assert(loginServiceCounts1.equals(loginServiceCounts2));
        System.assert(loginServiceCounts3.equals(loginServiceCounts4));
        System.assertEquals(loginServiceCounts1.hashCode(), loginServiceCounts2.hashCode());
        System.assertEquals(loginServiceCounts3.hashCode(), loginServiceCounts4.hashCode());
    }
}
