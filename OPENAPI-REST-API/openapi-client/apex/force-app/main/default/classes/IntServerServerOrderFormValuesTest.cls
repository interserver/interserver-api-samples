@isTest
private class IntServerServerOrderFormValuesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderFormValues serverOrderFormValues1 = IntServerServerOrderFormValues.getExample();
        IntServerServerOrderFormValues serverOrderFormValues2 = serverOrderFormValues1;
        IntServerServerOrderFormValues serverOrderFormValues3 = new IntServerServerOrderFormValues();
        IntServerServerOrderFormValues serverOrderFormValues4 = serverOrderFormValues3;

        System.assert(serverOrderFormValues1.equals(serverOrderFormValues2));
        System.assert(serverOrderFormValues2.equals(serverOrderFormValues1));
        System.assert(serverOrderFormValues1.equals(serverOrderFormValues1));
        System.assert(serverOrderFormValues3.equals(serverOrderFormValues4));
        System.assert(serverOrderFormValues4.equals(serverOrderFormValues3));
        System.assert(serverOrderFormValues3.equals(serverOrderFormValues3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderFormValues serverOrderFormValues1 = IntServerServerOrderFormValues.getExample();
        IntServerServerOrderFormValues serverOrderFormValues2 = IntServerServerOrderFormValues.getExample();
        IntServerServerOrderFormValues serverOrderFormValues3 = new IntServerServerOrderFormValues();
        IntServerServerOrderFormValues serverOrderFormValues4 = new IntServerServerOrderFormValues();

        System.assert(serverOrderFormValues1.equals(serverOrderFormValues2));
        System.assert(serverOrderFormValues2.equals(serverOrderFormValues1));
        System.assert(serverOrderFormValues3.equals(serverOrderFormValues4));
        System.assert(serverOrderFormValues4.equals(serverOrderFormValues3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderFormValues serverOrderFormValues1 = IntServerServerOrderFormValues.getExample();
        IntServerServerOrderFormValues serverOrderFormValues2 = new IntServerServerOrderFormValues();

        System.assertEquals(false, serverOrderFormValues1.equals('foo'));
        System.assertEquals(false, serverOrderFormValues2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderFormValues serverOrderFormValues1 = IntServerServerOrderFormValues.getExample();
        IntServerServerOrderFormValues serverOrderFormValues2 = new IntServerServerOrderFormValues();
        IntServerServerOrderFormValues serverOrderFormValues3;

        System.assertEquals(false, serverOrderFormValues1.equals(serverOrderFormValues3));
        System.assertEquals(false, serverOrderFormValues2.equals(serverOrderFormValues3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderFormValues serverOrderFormValues1 = IntServerServerOrderFormValues.getExample();
        IntServerServerOrderFormValues serverOrderFormValues2 = new IntServerServerOrderFormValues();

        System.assertEquals(serverOrderFormValues1.hashCode(), serverOrderFormValues1.hashCode());
        System.assertEquals(serverOrderFormValues2.hashCode(), serverOrderFormValues2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderFormValues serverOrderFormValues1 = IntServerServerOrderFormValues.getExample();
        IntServerServerOrderFormValues serverOrderFormValues2 = IntServerServerOrderFormValues.getExample();
        IntServerServerOrderFormValues serverOrderFormValues3 = new IntServerServerOrderFormValues();
        IntServerServerOrderFormValues serverOrderFormValues4 = new IntServerServerOrderFormValues();

        System.assert(serverOrderFormValues1.equals(serverOrderFormValues2));
        System.assert(serverOrderFormValues3.equals(serverOrderFormValues4));
        System.assertEquals(serverOrderFormValues1.hashCode(), serverOrderFormValues2.hashCode());
        System.assertEquals(serverOrderFormValues3.hashCode(), serverOrderFormValues4.hashCode());
    }
}
