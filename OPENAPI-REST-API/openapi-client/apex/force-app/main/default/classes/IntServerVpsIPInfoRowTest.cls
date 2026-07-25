@isTest
private class IntServerVpsIPInfoRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsIPInfoRow vpsIPInfoRow1 = IntServerVpsIPInfoRow.getExample();
        IntServerVpsIPInfoRow vpsIPInfoRow2 = vpsIPInfoRow1;
        IntServerVpsIPInfoRow vpsIPInfoRow3 = new IntServerVpsIPInfoRow();
        IntServerVpsIPInfoRow vpsIPInfoRow4 = vpsIPInfoRow3;

        System.assert(vpsIPInfoRow1.equals(vpsIPInfoRow2));
        System.assert(vpsIPInfoRow2.equals(vpsIPInfoRow1));
        System.assert(vpsIPInfoRow1.equals(vpsIPInfoRow1));
        System.assert(vpsIPInfoRow3.equals(vpsIPInfoRow4));
        System.assert(vpsIPInfoRow4.equals(vpsIPInfoRow3));
        System.assert(vpsIPInfoRow3.equals(vpsIPInfoRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsIPInfoRow vpsIPInfoRow1 = IntServerVpsIPInfoRow.getExample();
        IntServerVpsIPInfoRow vpsIPInfoRow2 = IntServerVpsIPInfoRow.getExample();
        IntServerVpsIPInfoRow vpsIPInfoRow3 = new IntServerVpsIPInfoRow();
        IntServerVpsIPInfoRow vpsIPInfoRow4 = new IntServerVpsIPInfoRow();

        System.assert(vpsIPInfoRow1.equals(vpsIPInfoRow2));
        System.assert(vpsIPInfoRow2.equals(vpsIPInfoRow1));
        System.assert(vpsIPInfoRow3.equals(vpsIPInfoRow4));
        System.assert(vpsIPInfoRow4.equals(vpsIPInfoRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsIPInfoRow vpsIPInfoRow1 = IntServerVpsIPInfoRow.getExample();
        IntServerVpsIPInfoRow vpsIPInfoRow2 = new IntServerVpsIPInfoRow();

        System.assertEquals(false, vpsIPInfoRow1.equals('foo'));
        System.assertEquals(false, vpsIPInfoRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsIPInfoRow vpsIPInfoRow1 = IntServerVpsIPInfoRow.getExample();
        IntServerVpsIPInfoRow vpsIPInfoRow2 = new IntServerVpsIPInfoRow();
        IntServerVpsIPInfoRow vpsIPInfoRow3;

        System.assertEquals(false, vpsIPInfoRow1.equals(vpsIPInfoRow3));
        System.assertEquals(false, vpsIPInfoRow2.equals(vpsIPInfoRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsIPInfoRow vpsIPInfoRow1 = IntServerVpsIPInfoRow.getExample();
        IntServerVpsIPInfoRow vpsIPInfoRow2 = new IntServerVpsIPInfoRow();

        System.assertEquals(vpsIPInfoRow1.hashCode(), vpsIPInfoRow1.hashCode());
        System.assertEquals(vpsIPInfoRow2.hashCode(), vpsIPInfoRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsIPInfoRow vpsIPInfoRow1 = IntServerVpsIPInfoRow.getExample();
        IntServerVpsIPInfoRow vpsIPInfoRow2 = IntServerVpsIPInfoRow.getExample();
        IntServerVpsIPInfoRow vpsIPInfoRow3 = new IntServerVpsIPInfoRow();
        IntServerVpsIPInfoRow vpsIPInfoRow4 = new IntServerVpsIPInfoRow();

        System.assert(vpsIPInfoRow1.equals(vpsIPInfoRow2));
        System.assert(vpsIPInfoRow3.equals(vpsIPInfoRow4));
        System.assertEquals(vpsIPInfoRow1.hashCode(), vpsIPInfoRow2.hashCode());
        System.assertEquals(vpsIPInfoRow3.hashCode(), vpsIPInfoRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsIPInfoRow vpsIPInfoRow = new IntServerVpsIPInfoRow();
        Map<String, String> x-property-mappings = vpsIPInfoRow.getx-property-mappings();
        System.assertEquals('r_desc', x-property-mappings.get('desc'));
    }
}
