@isTest
private class IntServerVpsClientLinkTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsClientLink vpsClientLink1 = IntServerVpsClientLink.getExample();
        IntServerVpsClientLink vpsClientLink2 = vpsClientLink1;
        IntServerVpsClientLink vpsClientLink3 = new IntServerVpsClientLink();
        IntServerVpsClientLink vpsClientLink4 = vpsClientLink3;

        System.assert(vpsClientLink1.equals(vpsClientLink2));
        System.assert(vpsClientLink2.equals(vpsClientLink1));
        System.assert(vpsClientLink1.equals(vpsClientLink1));
        System.assert(vpsClientLink3.equals(vpsClientLink4));
        System.assert(vpsClientLink4.equals(vpsClientLink3));
        System.assert(vpsClientLink3.equals(vpsClientLink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsClientLink vpsClientLink1 = IntServerVpsClientLink.getExample();
        IntServerVpsClientLink vpsClientLink2 = IntServerVpsClientLink.getExample();
        IntServerVpsClientLink vpsClientLink3 = new IntServerVpsClientLink();
        IntServerVpsClientLink vpsClientLink4 = new IntServerVpsClientLink();

        System.assert(vpsClientLink1.equals(vpsClientLink2));
        System.assert(vpsClientLink2.equals(vpsClientLink1));
        System.assert(vpsClientLink3.equals(vpsClientLink4));
        System.assert(vpsClientLink4.equals(vpsClientLink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsClientLink vpsClientLink1 = IntServerVpsClientLink.getExample();
        IntServerVpsClientLink vpsClientLink2 = new IntServerVpsClientLink();

        System.assertEquals(false, vpsClientLink1.equals('foo'));
        System.assertEquals(false, vpsClientLink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsClientLink vpsClientLink1 = IntServerVpsClientLink.getExample();
        IntServerVpsClientLink vpsClientLink2 = new IntServerVpsClientLink();
        IntServerVpsClientLink vpsClientLink3;

        System.assertEquals(false, vpsClientLink1.equals(vpsClientLink3));
        System.assertEquals(false, vpsClientLink2.equals(vpsClientLink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsClientLink vpsClientLink1 = IntServerVpsClientLink.getExample();
        IntServerVpsClientLink vpsClientLink2 = new IntServerVpsClientLink();

        System.assertEquals(vpsClientLink1.hashCode(), vpsClientLink1.hashCode());
        System.assertEquals(vpsClientLink2.hashCode(), vpsClientLink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsClientLink vpsClientLink1 = IntServerVpsClientLink.getExample();
        IntServerVpsClientLink vpsClientLink2 = IntServerVpsClientLink.getExample();
        IntServerVpsClientLink vpsClientLink3 = new IntServerVpsClientLink();
        IntServerVpsClientLink vpsClientLink4 = new IntServerVpsClientLink();

        System.assert(vpsClientLink1.equals(vpsClientLink2));
        System.assert(vpsClientLink3.equals(vpsClientLink4));
        System.assertEquals(vpsClientLink1.hashCode(), vpsClientLink2.hashCode());
        System.assertEquals(vpsClientLink3.hashCode(), vpsClientLink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsClientLink vpsClientLink = new IntServerVpsClientLink();
        Map<String, String> x-property-mappings = vpsClientLink.getx-property-mappings();
        System.assertEquals('iconText', x-property-mappings.get('icon_text'));
        System.assertEquals('helpText', x-property-mappings.get('help_text'));
    }
}
