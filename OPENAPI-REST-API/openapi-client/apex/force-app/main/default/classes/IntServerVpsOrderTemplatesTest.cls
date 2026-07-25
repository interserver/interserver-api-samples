@isTest
private class IntServerVpsOrderTemplatesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderTemplates vpsOrderTemplates1 = IntServerVpsOrderTemplates.getExample();
        IntServerVpsOrderTemplates vpsOrderTemplates2 = vpsOrderTemplates1;
        IntServerVpsOrderTemplates vpsOrderTemplates3 = new IntServerVpsOrderTemplates();
        IntServerVpsOrderTemplates vpsOrderTemplates4 = vpsOrderTemplates3;

        System.assert(vpsOrderTemplates1.equals(vpsOrderTemplates2));
        System.assert(vpsOrderTemplates2.equals(vpsOrderTemplates1));
        System.assert(vpsOrderTemplates1.equals(vpsOrderTemplates1));
        System.assert(vpsOrderTemplates3.equals(vpsOrderTemplates4));
        System.assert(vpsOrderTemplates4.equals(vpsOrderTemplates3));
        System.assert(vpsOrderTemplates3.equals(vpsOrderTemplates3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderTemplates vpsOrderTemplates1 = IntServerVpsOrderTemplates.getExample();
        IntServerVpsOrderTemplates vpsOrderTemplates2 = IntServerVpsOrderTemplates.getExample();
        IntServerVpsOrderTemplates vpsOrderTemplates3 = new IntServerVpsOrderTemplates();
        IntServerVpsOrderTemplates vpsOrderTemplates4 = new IntServerVpsOrderTemplates();

        System.assert(vpsOrderTemplates1.equals(vpsOrderTemplates2));
        System.assert(vpsOrderTemplates2.equals(vpsOrderTemplates1));
        System.assert(vpsOrderTemplates3.equals(vpsOrderTemplates4));
        System.assert(vpsOrderTemplates4.equals(vpsOrderTemplates3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderTemplates vpsOrderTemplates1 = IntServerVpsOrderTemplates.getExample();
        IntServerVpsOrderTemplates vpsOrderTemplates2 = new IntServerVpsOrderTemplates();

        System.assertEquals(false, vpsOrderTemplates1.equals('foo'));
        System.assertEquals(false, vpsOrderTemplates2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderTemplates vpsOrderTemplates1 = IntServerVpsOrderTemplates.getExample();
        IntServerVpsOrderTemplates vpsOrderTemplates2 = new IntServerVpsOrderTemplates();
        IntServerVpsOrderTemplates vpsOrderTemplates3;

        System.assertEquals(false, vpsOrderTemplates1.equals(vpsOrderTemplates3));
        System.assertEquals(false, vpsOrderTemplates2.equals(vpsOrderTemplates3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderTemplates vpsOrderTemplates1 = IntServerVpsOrderTemplates.getExample();
        IntServerVpsOrderTemplates vpsOrderTemplates2 = new IntServerVpsOrderTemplates();

        System.assertEquals(vpsOrderTemplates1.hashCode(), vpsOrderTemplates1.hashCode());
        System.assertEquals(vpsOrderTemplates2.hashCode(), vpsOrderTemplates2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderTemplates vpsOrderTemplates1 = IntServerVpsOrderTemplates.getExample();
        IntServerVpsOrderTemplates vpsOrderTemplates2 = IntServerVpsOrderTemplates.getExample();
        IntServerVpsOrderTemplates vpsOrderTemplates3 = new IntServerVpsOrderTemplates();
        IntServerVpsOrderTemplates vpsOrderTemplates4 = new IntServerVpsOrderTemplates();

        System.assert(vpsOrderTemplates1.equals(vpsOrderTemplates2));
        System.assert(vpsOrderTemplates3.equals(vpsOrderTemplates4));
        System.assertEquals(vpsOrderTemplates1.hashCode(), vpsOrderTemplates2.hashCode());
        System.assertEquals(vpsOrderTemplates3.hashCode(), vpsOrderTemplates4.hashCode());
    }
}
