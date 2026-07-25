@isTest
private class IntServerReverseDnsEntriesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerReverseDnsEntries reverseDnsEntries1 = IntServerReverseDnsEntries.getExample();
        IntServerReverseDnsEntries reverseDnsEntries2 = reverseDnsEntries1;
        IntServerReverseDnsEntries reverseDnsEntries3 = new IntServerReverseDnsEntries();
        IntServerReverseDnsEntries reverseDnsEntries4 = reverseDnsEntries3;

        System.assert(reverseDnsEntries1.equals(reverseDnsEntries2));
        System.assert(reverseDnsEntries2.equals(reverseDnsEntries1));
        System.assert(reverseDnsEntries1.equals(reverseDnsEntries1));
        System.assert(reverseDnsEntries3.equals(reverseDnsEntries4));
        System.assert(reverseDnsEntries4.equals(reverseDnsEntries3));
        System.assert(reverseDnsEntries3.equals(reverseDnsEntries3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerReverseDnsEntries reverseDnsEntries1 = IntServerReverseDnsEntries.getExample();
        IntServerReverseDnsEntries reverseDnsEntries2 = IntServerReverseDnsEntries.getExample();
        IntServerReverseDnsEntries reverseDnsEntries3 = new IntServerReverseDnsEntries();
        IntServerReverseDnsEntries reverseDnsEntries4 = new IntServerReverseDnsEntries();

        System.assert(reverseDnsEntries1.equals(reverseDnsEntries2));
        System.assert(reverseDnsEntries2.equals(reverseDnsEntries1));
        System.assert(reverseDnsEntries3.equals(reverseDnsEntries4));
        System.assert(reverseDnsEntries4.equals(reverseDnsEntries3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerReverseDnsEntries reverseDnsEntries1 = IntServerReverseDnsEntries.getExample();
        IntServerReverseDnsEntries reverseDnsEntries2 = new IntServerReverseDnsEntries();

        System.assertEquals(false, reverseDnsEntries1.equals('foo'));
        System.assertEquals(false, reverseDnsEntries2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerReverseDnsEntries reverseDnsEntries1 = IntServerReverseDnsEntries.getExample();
        IntServerReverseDnsEntries reverseDnsEntries2 = new IntServerReverseDnsEntries();
        IntServerReverseDnsEntries reverseDnsEntries3;

        System.assertEquals(false, reverseDnsEntries1.equals(reverseDnsEntries3));
        System.assertEquals(false, reverseDnsEntries2.equals(reverseDnsEntries3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerReverseDnsEntries reverseDnsEntries1 = IntServerReverseDnsEntries.getExample();
        IntServerReverseDnsEntries reverseDnsEntries2 = new IntServerReverseDnsEntries();

        System.assertEquals(reverseDnsEntries1.hashCode(), reverseDnsEntries1.hashCode());
        System.assertEquals(reverseDnsEntries2.hashCode(), reverseDnsEntries2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerReverseDnsEntries reverseDnsEntries1 = IntServerReverseDnsEntries.getExample();
        IntServerReverseDnsEntries reverseDnsEntries2 = IntServerReverseDnsEntries.getExample();
        IntServerReverseDnsEntries reverseDnsEntries3 = new IntServerReverseDnsEntries();
        IntServerReverseDnsEntries reverseDnsEntries4 = new IntServerReverseDnsEntries();

        System.assert(reverseDnsEntries1.equals(reverseDnsEntries2));
        System.assert(reverseDnsEntries3.equals(reverseDnsEntries4));
        System.assertEquals(reverseDnsEntries1.hashCode(), reverseDnsEntries2.hashCode());
        System.assertEquals(reverseDnsEntries3.hashCode(), reverseDnsEntries4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerReverseDnsEntries reverseDnsEntries = new IntServerReverseDnsEntries();
        System.assertEquals(new Map<String, oas_any_type_not_mapped>(), reverseDnsEntries.ips);
    }
}
