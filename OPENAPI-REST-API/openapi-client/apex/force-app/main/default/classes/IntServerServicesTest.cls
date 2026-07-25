@isTest
private class IntServerServicesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServices services1 = IntServerServices.getExample();
        IntServerServices services2 = services1;
        IntServerServices services3 = new IntServerServices();
        IntServerServices services4 = services3;

        System.assert(services1.equals(services2));
        System.assert(services2.equals(services1));
        System.assert(services1.equals(services1));
        System.assert(services3.equals(services4));
        System.assert(services4.equals(services3));
        System.assert(services3.equals(services3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServices services1 = IntServerServices.getExample();
        IntServerServices services2 = IntServerServices.getExample();
        IntServerServices services3 = new IntServerServices();
        IntServerServices services4 = new IntServerServices();

        System.assert(services1.equals(services2));
        System.assert(services2.equals(services1));
        System.assert(services3.equals(services4));
        System.assert(services4.equals(services3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServices services1 = IntServerServices.getExample();
        IntServerServices services2 = new IntServerServices();

        System.assertEquals(false, services1.equals('foo'));
        System.assertEquals(false, services2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServices services1 = IntServerServices.getExample();
        IntServerServices services2 = new IntServerServices();
        IntServerServices services3;

        System.assertEquals(false, services1.equals(services3));
        System.assertEquals(false, services2.equals(services3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServices services1 = IntServerServices.getExample();
        IntServerServices services2 = new IntServerServices();

        System.assertEquals(services1.hashCode(), services1.hashCode());
        System.assertEquals(services2.hashCode(), services2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServices services1 = IntServerServices.getExample();
        IntServerServices services2 = IntServerServices.getExample();
        IntServerServices services3 = new IntServerServices();
        IntServerServices services4 = new IntServerServices();

        System.assert(services1.equals(services2));
        System.assert(services3.equals(services4));
        System.assertEquals(services1.hashCode(), services2.hashCode());
        System.assertEquals(services3.hashCode(), services4.hashCode());
    }
}
