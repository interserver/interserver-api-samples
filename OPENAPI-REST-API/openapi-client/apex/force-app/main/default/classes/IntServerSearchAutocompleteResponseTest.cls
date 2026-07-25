@isTest
private class IntServerSearchAutocompleteResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerSearchAutocompleteResponse searchAutocompleteResponse1 = IntServerSearchAutocompleteResponse.getExample();
        IntServerSearchAutocompleteResponse searchAutocompleteResponse2 = searchAutocompleteResponse1;
        IntServerSearchAutocompleteResponse searchAutocompleteResponse3 = new IntServerSearchAutocompleteResponse();
        IntServerSearchAutocompleteResponse searchAutocompleteResponse4 = searchAutocompleteResponse3;

        System.assert(searchAutocompleteResponse1.equals(searchAutocompleteResponse2));
        System.assert(searchAutocompleteResponse2.equals(searchAutocompleteResponse1));
        System.assert(searchAutocompleteResponse1.equals(searchAutocompleteResponse1));
        System.assert(searchAutocompleteResponse3.equals(searchAutocompleteResponse4));
        System.assert(searchAutocompleteResponse4.equals(searchAutocompleteResponse3));
        System.assert(searchAutocompleteResponse3.equals(searchAutocompleteResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerSearchAutocompleteResponse searchAutocompleteResponse1 = IntServerSearchAutocompleteResponse.getExample();
        IntServerSearchAutocompleteResponse searchAutocompleteResponse2 = IntServerSearchAutocompleteResponse.getExample();
        IntServerSearchAutocompleteResponse searchAutocompleteResponse3 = new IntServerSearchAutocompleteResponse();
        IntServerSearchAutocompleteResponse searchAutocompleteResponse4 = new IntServerSearchAutocompleteResponse();

        System.assert(searchAutocompleteResponse1.equals(searchAutocompleteResponse2));
        System.assert(searchAutocompleteResponse2.equals(searchAutocompleteResponse1));
        System.assert(searchAutocompleteResponse3.equals(searchAutocompleteResponse4));
        System.assert(searchAutocompleteResponse4.equals(searchAutocompleteResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerSearchAutocompleteResponse searchAutocompleteResponse1 = IntServerSearchAutocompleteResponse.getExample();
        IntServerSearchAutocompleteResponse searchAutocompleteResponse2 = new IntServerSearchAutocompleteResponse();

        System.assertEquals(false, searchAutocompleteResponse1.equals('foo'));
        System.assertEquals(false, searchAutocompleteResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerSearchAutocompleteResponse searchAutocompleteResponse1 = IntServerSearchAutocompleteResponse.getExample();
        IntServerSearchAutocompleteResponse searchAutocompleteResponse2 = new IntServerSearchAutocompleteResponse();
        IntServerSearchAutocompleteResponse searchAutocompleteResponse3;

        System.assertEquals(false, searchAutocompleteResponse1.equals(searchAutocompleteResponse3));
        System.assertEquals(false, searchAutocompleteResponse2.equals(searchAutocompleteResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerSearchAutocompleteResponse searchAutocompleteResponse1 = IntServerSearchAutocompleteResponse.getExample();
        IntServerSearchAutocompleteResponse searchAutocompleteResponse2 = new IntServerSearchAutocompleteResponse();

        System.assertEquals(searchAutocompleteResponse1.hashCode(), searchAutocompleteResponse1.hashCode());
        System.assertEquals(searchAutocompleteResponse2.hashCode(), searchAutocompleteResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerSearchAutocompleteResponse searchAutocompleteResponse1 = IntServerSearchAutocompleteResponse.getExample();
        IntServerSearchAutocompleteResponse searchAutocompleteResponse2 = IntServerSearchAutocompleteResponse.getExample();
        IntServerSearchAutocompleteResponse searchAutocompleteResponse3 = new IntServerSearchAutocompleteResponse();
        IntServerSearchAutocompleteResponse searchAutocompleteResponse4 = new IntServerSearchAutocompleteResponse();

        System.assert(searchAutocompleteResponse1.equals(searchAutocompleteResponse2));
        System.assert(searchAutocompleteResponse3.equals(searchAutocompleteResponse4));
        System.assertEquals(searchAutocompleteResponse1.hashCode(), searchAutocompleteResponse2.hashCode());
        System.assertEquals(searchAutocompleteResponse3.hashCode(), searchAutocompleteResponse4.hashCode());
    }
}
