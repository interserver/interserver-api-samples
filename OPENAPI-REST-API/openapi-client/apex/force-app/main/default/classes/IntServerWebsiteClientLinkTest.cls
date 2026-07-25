@isTest
private class IntServerWebsiteClientLinkTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsiteClientLink websiteClientLink1 = IntServerWebsiteClientLink.getExample();
        IntServerWebsiteClientLink websiteClientLink2 = websiteClientLink1;
        IntServerWebsiteClientLink websiteClientLink3 = new IntServerWebsiteClientLink();
        IntServerWebsiteClientLink websiteClientLink4 = websiteClientLink3;

        System.assert(websiteClientLink1.equals(websiteClientLink2));
        System.assert(websiteClientLink2.equals(websiteClientLink1));
        System.assert(websiteClientLink1.equals(websiteClientLink1));
        System.assert(websiteClientLink3.equals(websiteClientLink4));
        System.assert(websiteClientLink4.equals(websiteClientLink3));
        System.assert(websiteClientLink3.equals(websiteClientLink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsiteClientLink websiteClientLink1 = IntServerWebsiteClientLink.getExample();
        IntServerWebsiteClientLink websiteClientLink2 = IntServerWebsiteClientLink.getExample();
        IntServerWebsiteClientLink websiteClientLink3 = new IntServerWebsiteClientLink();
        IntServerWebsiteClientLink websiteClientLink4 = new IntServerWebsiteClientLink();

        System.assert(websiteClientLink1.equals(websiteClientLink2));
        System.assert(websiteClientLink2.equals(websiteClientLink1));
        System.assert(websiteClientLink3.equals(websiteClientLink4));
        System.assert(websiteClientLink4.equals(websiteClientLink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsiteClientLink websiteClientLink1 = IntServerWebsiteClientLink.getExample();
        IntServerWebsiteClientLink websiteClientLink2 = new IntServerWebsiteClientLink();

        System.assertEquals(false, websiteClientLink1.equals('foo'));
        System.assertEquals(false, websiteClientLink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsiteClientLink websiteClientLink1 = IntServerWebsiteClientLink.getExample();
        IntServerWebsiteClientLink websiteClientLink2 = new IntServerWebsiteClientLink();
        IntServerWebsiteClientLink websiteClientLink3;

        System.assertEquals(false, websiteClientLink1.equals(websiteClientLink3));
        System.assertEquals(false, websiteClientLink2.equals(websiteClientLink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsiteClientLink websiteClientLink1 = IntServerWebsiteClientLink.getExample();
        IntServerWebsiteClientLink websiteClientLink2 = new IntServerWebsiteClientLink();

        System.assertEquals(websiteClientLink1.hashCode(), websiteClientLink1.hashCode());
        System.assertEquals(websiteClientLink2.hashCode(), websiteClientLink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsiteClientLink websiteClientLink1 = IntServerWebsiteClientLink.getExample();
        IntServerWebsiteClientLink websiteClientLink2 = IntServerWebsiteClientLink.getExample();
        IntServerWebsiteClientLink websiteClientLink3 = new IntServerWebsiteClientLink();
        IntServerWebsiteClientLink websiteClientLink4 = new IntServerWebsiteClientLink();

        System.assert(websiteClientLink1.equals(websiteClientLink2));
        System.assert(websiteClientLink3.equals(websiteClientLink4));
        System.assertEquals(websiteClientLink1.hashCode(), websiteClientLink2.hashCode());
        System.assertEquals(websiteClientLink3.hashCode(), websiteClientLink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsiteClientLink websiteClientLink = new IntServerWebsiteClientLink();
        Map<String, String> x-property-mappings = websiteClientLink.getx-property-mappings();
        System.assertEquals('iconText', x-property-mappings.get('icon_text'));
        System.assertEquals('helpText', x-property-mappings.get('help_text'));
        System.assertEquals('otherAttr', x-property-mappings.get('other_attr'));
    }
}
