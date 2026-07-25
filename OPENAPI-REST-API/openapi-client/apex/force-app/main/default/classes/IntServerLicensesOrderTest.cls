@isTest
private class IntServerLicensesOrderTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicensesOrder licensesOrder1 = IntServerLicensesOrder.getExample();
        IntServerLicensesOrder licensesOrder2 = licensesOrder1;
        IntServerLicensesOrder licensesOrder3 = new IntServerLicensesOrder();
        IntServerLicensesOrder licensesOrder4 = licensesOrder3;

        System.assert(licensesOrder1.equals(licensesOrder2));
        System.assert(licensesOrder2.equals(licensesOrder1));
        System.assert(licensesOrder1.equals(licensesOrder1));
        System.assert(licensesOrder3.equals(licensesOrder4));
        System.assert(licensesOrder4.equals(licensesOrder3));
        System.assert(licensesOrder3.equals(licensesOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicensesOrder licensesOrder1 = IntServerLicensesOrder.getExample();
        IntServerLicensesOrder licensesOrder2 = IntServerLicensesOrder.getExample();
        IntServerLicensesOrder licensesOrder3 = new IntServerLicensesOrder();
        IntServerLicensesOrder licensesOrder4 = new IntServerLicensesOrder();

        System.assert(licensesOrder1.equals(licensesOrder2));
        System.assert(licensesOrder2.equals(licensesOrder1));
        System.assert(licensesOrder3.equals(licensesOrder4));
        System.assert(licensesOrder4.equals(licensesOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicensesOrder licensesOrder1 = IntServerLicensesOrder.getExample();
        IntServerLicensesOrder licensesOrder2 = new IntServerLicensesOrder();

        System.assertEquals(false, licensesOrder1.equals('foo'));
        System.assertEquals(false, licensesOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicensesOrder licensesOrder1 = IntServerLicensesOrder.getExample();
        IntServerLicensesOrder licensesOrder2 = new IntServerLicensesOrder();
        IntServerLicensesOrder licensesOrder3;

        System.assertEquals(false, licensesOrder1.equals(licensesOrder3));
        System.assertEquals(false, licensesOrder2.equals(licensesOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicensesOrder licensesOrder1 = IntServerLicensesOrder.getExample();
        IntServerLicensesOrder licensesOrder2 = new IntServerLicensesOrder();

        System.assertEquals(licensesOrder1.hashCode(), licensesOrder1.hashCode());
        System.assertEquals(licensesOrder2.hashCode(), licensesOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicensesOrder licensesOrder1 = IntServerLicensesOrder.getExample();
        IntServerLicensesOrder licensesOrder2 = IntServerLicensesOrder.getExample();
        IntServerLicensesOrder licensesOrder3 = new IntServerLicensesOrder();
        IntServerLicensesOrder licensesOrder4 = new IntServerLicensesOrder();

        System.assert(licensesOrder1.equals(licensesOrder2));
        System.assert(licensesOrder3.equals(licensesOrder4));
        System.assertEquals(licensesOrder1.hashCode(), licensesOrder2.hashCode());
        System.assertEquals(licensesOrder3.hashCode(), licensesOrder4.hashCode());
    }
}
