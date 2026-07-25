@isTest
private class IntServerMailLogEntryTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailLogEntry mailLogEntry1 = IntServerMailLogEntry.getExample();
        IntServerMailLogEntry mailLogEntry2 = mailLogEntry1;
        IntServerMailLogEntry mailLogEntry3 = new IntServerMailLogEntry();
        IntServerMailLogEntry mailLogEntry4 = mailLogEntry3;

        System.assert(mailLogEntry1.equals(mailLogEntry2));
        System.assert(mailLogEntry2.equals(mailLogEntry1));
        System.assert(mailLogEntry1.equals(mailLogEntry1));
        System.assert(mailLogEntry3.equals(mailLogEntry4));
        System.assert(mailLogEntry4.equals(mailLogEntry3));
        System.assert(mailLogEntry3.equals(mailLogEntry3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailLogEntry mailLogEntry1 = IntServerMailLogEntry.getExample();
        IntServerMailLogEntry mailLogEntry2 = IntServerMailLogEntry.getExample();
        IntServerMailLogEntry mailLogEntry3 = new IntServerMailLogEntry();
        IntServerMailLogEntry mailLogEntry4 = new IntServerMailLogEntry();

        System.assert(mailLogEntry1.equals(mailLogEntry2));
        System.assert(mailLogEntry2.equals(mailLogEntry1));
        System.assert(mailLogEntry3.equals(mailLogEntry4));
        System.assert(mailLogEntry4.equals(mailLogEntry3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailLogEntry mailLogEntry1 = IntServerMailLogEntry.getExample();
        IntServerMailLogEntry mailLogEntry2 = new IntServerMailLogEntry();

        System.assertEquals(false, mailLogEntry1.equals('foo'));
        System.assertEquals(false, mailLogEntry2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailLogEntry mailLogEntry1 = IntServerMailLogEntry.getExample();
        IntServerMailLogEntry mailLogEntry2 = new IntServerMailLogEntry();
        IntServerMailLogEntry mailLogEntry3;

        System.assertEquals(false, mailLogEntry1.equals(mailLogEntry3));
        System.assertEquals(false, mailLogEntry2.equals(mailLogEntry3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailLogEntry mailLogEntry1 = IntServerMailLogEntry.getExample();
        IntServerMailLogEntry mailLogEntry2 = new IntServerMailLogEntry();

        System.assertEquals(mailLogEntry1.hashCode(), mailLogEntry1.hashCode());
        System.assertEquals(mailLogEntry2.hashCode(), mailLogEntry2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailLogEntry mailLogEntry1 = IntServerMailLogEntry.getExample();
        IntServerMailLogEntry mailLogEntry2 = IntServerMailLogEntry.getExample();
        IntServerMailLogEntry mailLogEntry3 = new IntServerMailLogEntry();
        IntServerMailLogEntry mailLogEntry4 = new IntServerMailLogEntry();

        System.assert(mailLogEntry1.equals(mailLogEntry2));
        System.assert(mailLogEntry3.equals(mailLogEntry4));
        System.assertEquals(mailLogEntry1.hashCode(), mailLogEntry2.hashCode());
        System.assertEquals(mailLogEntry3.hashCode(), mailLogEntry4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailLogEntry mailLogEntry = new IntServerMailLogEntry();
        Map<String, String> x-property-mappings = mailLogEntry.getx-property-mappings();
        System.assertEquals('id', x-property-mappings.get('_id'));
        System.assertEquals('r_from', x-property-mappings.get('from'));
        System.assertEquals('r_time', x-property-mappings.get('time'));
        System.assertEquals('r_interface', x-property-mappings.get('interface'));
    }
}
