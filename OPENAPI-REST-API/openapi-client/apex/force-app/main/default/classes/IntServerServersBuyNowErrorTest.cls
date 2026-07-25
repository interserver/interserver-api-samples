@isTest
private class IntServerServersBuyNowErrorTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServersBuyNowError serversBuyNowError1 = IntServerServersBuyNowError.getExample();
        IntServerServersBuyNowError serversBuyNowError2 = serversBuyNowError1;
        IntServerServersBuyNowError serversBuyNowError3 = new IntServerServersBuyNowError();
        IntServerServersBuyNowError serversBuyNowError4 = serversBuyNowError3;

        System.assert(serversBuyNowError1.equals(serversBuyNowError2));
        System.assert(serversBuyNowError2.equals(serversBuyNowError1));
        System.assert(serversBuyNowError1.equals(serversBuyNowError1));
        System.assert(serversBuyNowError3.equals(serversBuyNowError4));
        System.assert(serversBuyNowError4.equals(serversBuyNowError3));
        System.assert(serversBuyNowError3.equals(serversBuyNowError3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServersBuyNowError serversBuyNowError1 = IntServerServersBuyNowError.getExample();
        IntServerServersBuyNowError serversBuyNowError2 = IntServerServersBuyNowError.getExample();
        IntServerServersBuyNowError serversBuyNowError3 = new IntServerServersBuyNowError();
        IntServerServersBuyNowError serversBuyNowError4 = new IntServerServersBuyNowError();

        System.assert(serversBuyNowError1.equals(serversBuyNowError2));
        System.assert(serversBuyNowError2.equals(serversBuyNowError1));
        System.assert(serversBuyNowError3.equals(serversBuyNowError4));
        System.assert(serversBuyNowError4.equals(serversBuyNowError3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServersBuyNowError serversBuyNowError1 = IntServerServersBuyNowError.getExample();
        IntServerServersBuyNowError serversBuyNowError2 = new IntServerServersBuyNowError();

        System.assertEquals(false, serversBuyNowError1.equals('foo'));
        System.assertEquals(false, serversBuyNowError2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServersBuyNowError serversBuyNowError1 = IntServerServersBuyNowError.getExample();
        IntServerServersBuyNowError serversBuyNowError2 = new IntServerServersBuyNowError();
        IntServerServersBuyNowError serversBuyNowError3;

        System.assertEquals(false, serversBuyNowError1.equals(serversBuyNowError3));
        System.assertEquals(false, serversBuyNowError2.equals(serversBuyNowError3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServersBuyNowError serversBuyNowError1 = IntServerServersBuyNowError.getExample();
        IntServerServersBuyNowError serversBuyNowError2 = new IntServerServersBuyNowError();

        System.assertEquals(serversBuyNowError1.hashCode(), serversBuyNowError1.hashCode());
        System.assertEquals(serversBuyNowError2.hashCode(), serversBuyNowError2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServersBuyNowError serversBuyNowError1 = IntServerServersBuyNowError.getExample();
        IntServerServersBuyNowError serversBuyNowError2 = IntServerServersBuyNowError.getExample();
        IntServerServersBuyNowError serversBuyNowError3 = new IntServerServersBuyNowError();
        IntServerServersBuyNowError serversBuyNowError4 = new IntServerServersBuyNowError();

        System.assert(serversBuyNowError1.equals(serversBuyNowError2));
        System.assert(serversBuyNowError3.equals(serversBuyNowError4));
        System.assertEquals(serversBuyNowError1.hashCode(), serversBuyNowError2.hashCode());
        System.assertEquals(serversBuyNowError3.hashCode(), serversBuyNowError4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerServersBuyNowError serversBuyNowError = new IntServerServersBuyNowError();
        System.assertEquals(new List<String>(), serversBuyNowError.errors);
        System.assertEquals(null, serversBuyNowError.success);
        System.assertEquals(null, serversBuyNowError.text);
    }
}
