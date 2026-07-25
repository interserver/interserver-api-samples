@isTest
private class IntServerGetAccountLocales200ResponsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue1 = IntServerGetAccountLocales200Respons.getExample();
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue2 = getAccountLocales200ResponseValue1;
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue3 = new IntServerGetAccountLocales200Respons();
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue4 = getAccountLocales200ResponseValue3;

        System.assert(getAccountLocales200ResponseValue1.equals(getAccountLocales200ResponseValue2));
        System.assert(getAccountLocales200ResponseValue2.equals(getAccountLocales200ResponseValue1));
        System.assert(getAccountLocales200ResponseValue1.equals(getAccountLocales200ResponseValue1));
        System.assert(getAccountLocales200ResponseValue3.equals(getAccountLocales200ResponseValue4));
        System.assert(getAccountLocales200ResponseValue4.equals(getAccountLocales200ResponseValue3));
        System.assert(getAccountLocales200ResponseValue3.equals(getAccountLocales200ResponseValue3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue1 = IntServerGetAccountLocales200Respons.getExample();
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue2 = IntServerGetAccountLocales200Respons.getExample();
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue3 = new IntServerGetAccountLocales200Respons();
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue4 = new IntServerGetAccountLocales200Respons();

        System.assert(getAccountLocales200ResponseValue1.equals(getAccountLocales200ResponseValue2));
        System.assert(getAccountLocales200ResponseValue2.equals(getAccountLocales200ResponseValue1));
        System.assert(getAccountLocales200ResponseValue3.equals(getAccountLocales200ResponseValue4));
        System.assert(getAccountLocales200ResponseValue4.equals(getAccountLocales200ResponseValue3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue1 = IntServerGetAccountLocales200Respons.getExample();
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue2 = new IntServerGetAccountLocales200Respons();

        System.assertEquals(false, getAccountLocales200ResponseValue1.equals('foo'));
        System.assertEquals(false, getAccountLocales200ResponseValue2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue1 = IntServerGetAccountLocales200Respons.getExample();
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue2 = new IntServerGetAccountLocales200Respons();
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue3;

        System.assertEquals(false, getAccountLocales200ResponseValue1.equals(getAccountLocales200ResponseValue3));
        System.assertEquals(false, getAccountLocales200ResponseValue2.equals(getAccountLocales200ResponseValue3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue1 = IntServerGetAccountLocales200Respons.getExample();
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue2 = new IntServerGetAccountLocales200Respons();

        System.assertEquals(getAccountLocales200ResponseValue1.hashCode(), getAccountLocales200ResponseValue1.hashCode());
        System.assertEquals(getAccountLocales200ResponseValue2.hashCode(), getAccountLocales200ResponseValue2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue1 = IntServerGetAccountLocales200Respons.getExample();
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue2 = IntServerGetAccountLocales200Respons.getExample();
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue3 = new IntServerGetAccountLocales200Respons();
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue4 = new IntServerGetAccountLocales200Respons();

        System.assert(getAccountLocales200ResponseValue1.equals(getAccountLocales200ResponseValue2));
        System.assert(getAccountLocales200ResponseValue3.equals(getAccountLocales200ResponseValue4));
        System.assertEquals(getAccountLocales200ResponseValue1.hashCode(), getAccountLocales200ResponseValue2.hashCode());
        System.assertEquals(getAccountLocales200ResponseValue3.hashCode(), getAccountLocales200ResponseValue4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerGetAccountLocales200Respons getAccountLocales200ResponseValue = new IntServerGetAccountLocales200Respons();
        Map<String, String> x-property-mappings = getAccountLocales200ResponseValue.getx-property-mappings();
        System.assertEquals('localName', x-property-mappings.get('local_name'));
    }
}
