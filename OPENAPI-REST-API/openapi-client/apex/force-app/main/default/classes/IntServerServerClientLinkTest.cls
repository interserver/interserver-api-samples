@isTest
private class IntServerServerClientLinkTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerClientLink serverClientLink1 = IntServerServerClientLink.getExample();
        IntServerServerClientLink serverClientLink2 = serverClientLink1;
        IntServerServerClientLink serverClientLink3 = new IntServerServerClientLink();
        IntServerServerClientLink serverClientLink4 = serverClientLink3;

        System.assert(serverClientLink1.equals(serverClientLink2));
        System.assert(serverClientLink2.equals(serverClientLink1));
        System.assert(serverClientLink1.equals(serverClientLink1));
        System.assert(serverClientLink3.equals(serverClientLink4));
        System.assert(serverClientLink4.equals(serverClientLink3));
        System.assert(serverClientLink3.equals(serverClientLink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerClientLink serverClientLink1 = IntServerServerClientLink.getExample();
        IntServerServerClientLink serverClientLink2 = IntServerServerClientLink.getExample();
        IntServerServerClientLink serverClientLink3 = new IntServerServerClientLink();
        IntServerServerClientLink serverClientLink4 = new IntServerServerClientLink();

        System.assert(serverClientLink1.equals(serverClientLink2));
        System.assert(serverClientLink2.equals(serverClientLink1));
        System.assert(serverClientLink3.equals(serverClientLink4));
        System.assert(serverClientLink4.equals(serverClientLink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerClientLink serverClientLink1 = IntServerServerClientLink.getExample();
        IntServerServerClientLink serverClientLink2 = new IntServerServerClientLink();

        System.assertEquals(false, serverClientLink1.equals('foo'));
        System.assertEquals(false, serverClientLink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerClientLink serverClientLink1 = IntServerServerClientLink.getExample();
        IntServerServerClientLink serverClientLink2 = new IntServerServerClientLink();
        IntServerServerClientLink serverClientLink3;

        System.assertEquals(false, serverClientLink1.equals(serverClientLink3));
        System.assertEquals(false, serverClientLink2.equals(serverClientLink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerClientLink serverClientLink1 = IntServerServerClientLink.getExample();
        IntServerServerClientLink serverClientLink2 = new IntServerServerClientLink();

        System.assertEquals(serverClientLink1.hashCode(), serverClientLink1.hashCode());
        System.assertEquals(serverClientLink2.hashCode(), serverClientLink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerClientLink serverClientLink1 = IntServerServerClientLink.getExample();
        IntServerServerClientLink serverClientLink2 = IntServerServerClientLink.getExample();
        IntServerServerClientLink serverClientLink3 = new IntServerServerClientLink();
        IntServerServerClientLink serverClientLink4 = new IntServerServerClientLink();

        System.assert(serverClientLink1.equals(serverClientLink2));
        System.assert(serverClientLink3.equals(serverClientLink4));
        System.assertEquals(serverClientLink1.hashCode(), serverClientLink2.hashCode());
        System.assertEquals(serverClientLink3.hashCode(), serverClientLink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerClientLink serverClientLink = new IntServerServerClientLink();
        Map<String, String> x-property-mappings = serverClientLink.getx-property-mappings();
        System.assertEquals('iconText', x-property-mappings.get('icon_text'));
        System.assertEquals('helpText', x-property-mappings.get('help_text'));
    }
}
