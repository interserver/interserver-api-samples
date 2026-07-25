@isTest
private class IntServerVpsOrderTemplatesHypervTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv1 = IntServerVpsOrderTemplatesHyperv.getExample();
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv2 = vpsOrderTemplatesHyperv1;
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv3 = new IntServerVpsOrderTemplatesHyperv();
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv4 = vpsOrderTemplatesHyperv3;

        System.assert(vpsOrderTemplatesHyperv1.equals(vpsOrderTemplatesHyperv2));
        System.assert(vpsOrderTemplatesHyperv2.equals(vpsOrderTemplatesHyperv1));
        System.assert(vpsOrderTemplatesHyperv1.equals(vpsOrderTemplatesHyperv1));
        System.assert(vpsOrderTemplatesHyperv3.equals(vpsOrderTemplatesHyperv4));
        System.assert(vpsOrderTemplatesHyperv4.equals(vpsOrderTemplatesHyperv3));
        System.assert(vpsOrderTemplatesHyperv3.equals(vpsOrderTemplatesHyperv3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv1 = IntServerVpsOrderTemplatesHyperv.getExample();
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv2 = IntServerVpsOrderTemplatesHyperv.getExample();
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv3 = new IntServerVpsOrderTemplatesHyperv();
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv4 = new IntServerVpsOrderTemplatesHyperv();

        System.assert(vpsOrderTemplatesHyperv1.equals(vpsOrderTemplatesHyperv2));
        System.assert(vpsOrderTemplatesHyperv2.equals(vpsOrderTemplatesHyperv1));
        System.assert(vpsOrderTemplatesHyperv3.equals(vpsOrderTemplatesHyperv4));
        System.assert(vpsOrderTemplatesHyperv4.equals(vpsOrderTemplatesHyperv3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv1 = IntServerVpsOrderTemplatesHyperv.getExample();
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv2 = new IntServerVpsOrderTemplatesHyperv();

        System.assertEquals(false, vpsOrderTemplatesHyperv1.equals('foo'));
        System.assertEquals(false, vpsOrderTemplatesHyperv2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv1 = IntServerVpsOrderTemplatesHyperv.getExample();
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv2 = new IntServerVpsOrderTemplatesHyperv();
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv3;

        System.assertEquals(false, vpsOrderTemplatesHyperv1.equals(vpsOrderTemplatesHyperv3));
        System.assertEquals(false, vpsOrderTemplatesHyperv2.equals(vpsOrderTemplatesHyperv3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv1 = IntServerVpsOrderTemplatesHyperv.getExample();
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv2 = new IntServerVpsOrderTemplatesHyperv();

        System.assertEquals(vpsOrderTemplatesHyperv1.hashCode(), vpsOrderTemplatesHyperv1.hashCode());
        System.assertEquals(vpsOrderTemplatesHyperv2.hashCode(), vpsOrderTemplatesHyperv2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv1 = IntServerVpsOrderTemplatesHyperv.getExample();
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv2 = IntServerVpsOrderTemplatesHyperv.getExample();
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv3 = new IntServerVpsOrderTemplatesHyperv();
        IntServerVpsOrderTemplatesHyperv vpsOrderTemplatesHyperv4 = new IntServerVpsOrderTemplatesHyperv();

        System.assert(vpsOrderTemplatesHyperv1.equals(vpsOrderTemplatesHyperv2));
        System.assert(vpsOrderTemplatesHyperv3.equals(vpsOrderTemplatesHyperv4));
        System.assertEquals(vpsOrderTemplatesHyperv1.hashCode(), vpsOrderTemplatesHyperv2.hashCode());
        System.assertEquals(vpsOrderTemplatesHyperv3.hashCode(), vpsOrderTemplatesHyperv4.hashCode());
    }
}
