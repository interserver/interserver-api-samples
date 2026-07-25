@isTest
private class IntServerMailClientLinkTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailClientLink mailClientLink1 = IntServerMailClientLink.getExample();
        IntServerMailClientLink mailClientLink2 = mailClientLink1;
        IntServerMailClientLink mailClientLink3 = new IntServerMailClientLink();
        IntServerMailClientLink mailClientLink4 = mailClientLink3;

        System.assert(mailClientLink1.equals(mailClientLink2));
        System.assert(mailClientLink2.equals(mailClientLink1));
        System.assert(mailClientLink1.equals(mailClientLink1));
        System.assert(mailClientLink3.equals(mailClientLink4));
        System.assert(mailClientLink4.equals(mailClientLink3));
        System.assert(mailClientLink3.equals(mailClientLink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailClientLink mailClientLink1 = IntServerMailClientLink.getExample();
        IntServerMailClientLink mailClientLink2 = IntServerMailClientLink.getExample();
        IntServerMailClientLink mailClientLink3 = new IntServerMailClientLink();
        IntServerMailClientLink mailClientLink4 = new IntServerMailClientLink();

        System.assert(mailClientLink1.equals(mailClientLink2));
        System.assert(mailClientLink2.equals(mailClientLink1));
        System.assert(mailClientLink3.equals(mailClientLink4));
        System.assert(mailClientLink4.equals(mailClientLink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailClientLink mailClientLink1 = IntServerMailClientLink.getExample();
        IntServerMailClientLink mailClientLink2 = new IntServerMailClientLink();

        System.assertEquals(false, mailClientLink1.equals('foo'));
        System.assertEquals(false, mailClientLink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailClientLink mailClientLink1 = IntServerMailClientLink.getExample();
        IntServerMailClientLink mailClientLink2 = new IntServerMailClientLink();
        IntServerMailClientLink mailClientLink3;

        System.assertEquals(false, mailClientLink1.equals(mailClientLink3));
        System.assertEquals(false, mailClientLink2.equals(mailClientLink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailClientLink mailClientLink1 = IntServerMailClientLink.getExample();
        IntServerMailClientLink mailClientLink2 = new IntServerMailClientLink();

        System.assertEquals(mailClientLink1.hashCode(), mailClientLink1.hashCode());
        System.assertEquals(mailClientLink2.hashCode(), mailClientLink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailClientLink mailClientLink1 = IntServerMailClientLink.getExample();
        IntServerMailClientLink mailClientLink2 = IntServerMailClientLink.getExample();
        IntServerMailClientLink mailClientLink3 = new IntServerMailClientLink();
        IntServerMailClientLink mailClientLink4 = new IntServerMailClientLink();

        System.assert(mailClientLink1.equals(mailClientLink2));
        System.assert(mailClientLink3.equals(mailClientLink4));
        System.assertEquals(mailClientLink1.hashCode(), mailClientLink2.hashCode());
        System.assertEquals(mailClientLink3.hashCode(), mailClientLink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailClientLink mailClientLink = new IntServerMailClientLink();
        Map<String, String> x-property-mappings = mailClientLink.getx-property-mappings();
        System.assertEquals('iconText', x-property-mappings.get('icon_text'));
        System.assertEquals('helpText', x-property-mappings.get('help_text'));
        System.assertEquals('otherAttr', x-property-mappings.get('other_attr'));
    }
}
