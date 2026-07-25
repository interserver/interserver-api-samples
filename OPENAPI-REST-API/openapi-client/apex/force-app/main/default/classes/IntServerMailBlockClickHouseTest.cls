@isTest
private class IntServerMailBlockClickHouseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailBlockClickHouse mailBlockClickHouse1 = IntServerMailBlockClickHouse.getExample();
        IntServerMailBlockClickHouse mailBlockClickHouse2 = mailBlockClickHouse1;
        IntServerMailBlockClickHouse mailBlockClickHouse3 = new IntServerMailBlockClickHouse();
        IntServerMailBlockClickHouse mailBlockClickHouse4 = mailBlockClickHouse3;

        System.assert(mailBlockClickHouse1.equals(mailBlockClickHouse2));
        System.assert(mailBlockClickHouse2.equals(mailBlockClickHouse1));
        System.assert(mailBlockClickHouse1.equals(mailBlockClickHouse1));
        System.assert(mailBlockClickHouse3.equals(mailBlockClickHouse4));
        System.assert(mailBlockClickHouse4.equals(mailBlockClickHouse3));
        System.assert(mailBlockClickHouse3.equals(mailBlockClickHouse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailBlockClickHouse mailBlockClickHouse1 = IntServerMailBlockClickHouse.getExample();
        IntServerMailBlockClickHouse mailBlockClickHouse2 = IntServerMailBlockClickHouse.getExample();
        IntServerMailBlockClickHouse mailBlockClickHouse3 = new IntServerMailBlockClickHouse();
        IntServerMailBlockClickHouse mailBlockClickHouse4 = new IntServerMailBlockClickHouse();

        System.assert(mailBlockClickHouse1.equals(mailBlockClickHouse2));
        System.assert(mailBlockClickHouse2.equals(mailBlockClickHouse1));
        System.assert(mailBlockClickHouse3.equals(mailBlockClickHouse4));
        System.assert(mailBlockClickHouse4.equals(mailBlockClickHouse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailBlockClickHouse mailBlockClickHouse1 = IntServerMailBlockClickHouse.getExample();
        IntServerMailBlockClickHouse mailBlockClickHouse2 = new IntServerMailBlockClickHouse();

        System.assertEquals(false, mailBlockClickHouse1.equals('foo'));
        System.assertEquals(false, mailBlockClickHouse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailBlockClickHouse mailBlockClickHouse1 = IntServerMailBlockClickHouse.getExample();
        IntServerMailBlockClickHouse mailBlockClickHouse2 = new IntServerMailBlockClickHouse();
        IntServerMailBlockClickHouse mailBlockClickHouse3;

        System.assertEquals(false, mailBlockClickHouse1.equals(mailBlockClickHouse3));
        System.assertEquals(false, mailBlockClickHouse2.equals(mailBlockClickHouse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailBlockClickHouse mailBlockClickHouse1 = IntServerMailBlockClickHouse.getExample();
        IntServerMailBlockClickHouse mailBlockClickHouse2 = new IntServerMailBlockClickHouse();

        System.assertEquals(mailBlockClickHouse1.hashCode(), mailBlockClickHouse1.hashCode());
        System.assertEquals(mailBlockClickHouse2.hashCode(), mailBlockClickHouse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailBlockClickHouse mailBlockClickHouse1 = IntServerMailBlockClickHouse.getExample();
        IntServerMailBlockClickHouse mailBlockClickHouse2 = IntServerMailBlockClickHouse.getExample();
        IntServerMailBlockClickHouse mailBlockClickHouse3 = new IntServerMailBlockClickHouse();
        IntServerMailBlockClickHouse mailBlockClickHouse4 = new IntServerMailBlockClickHouse();

        System.assert(mailBlockClickHouse1.equals(mailBlockClickHouse2));
        System.assert(mailBlockClickHouse3.equals(mailBlockClickHouse4));
        System.assertEquals(mailBlockClickHouse1.hashCode(), mailBlockClickHouse2.hashCode());
        System.assertEquals(mailBlockClickHouse3.hashCode(), mailBlockClickHouse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailBlockClickHouse mailBlockClickHouse = new IntServerMailBlockClickHouse();
        Map<String, String> x-property-mappings = mailBlockClickHouse.getx-property-mappings();
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('r_from', x-property-mappings.get('from'));
    }
}
