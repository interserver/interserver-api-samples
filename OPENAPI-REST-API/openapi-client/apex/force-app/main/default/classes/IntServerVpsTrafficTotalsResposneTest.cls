@isTest
private class IntServerVpsTrafficTotalsResposneTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne1 = IntServerVpsTrafficTotalsResposne.getExample();
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne2 = vpsTrafficTotalsResposne1;
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne3 = new IntServerVpsTrafficTotalsResposne();
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne4 = vpsTrafficTotalsResposne3;

        System.assert(vpsTrafficTotalsResposne1.equals(vpsTrafficTotalsResposne2));
        System.assert(vpsTrafficTotalsResposne2.equals(vpsTrafficTotalsResposne1));
        System.assert(vpsTrafficTotalsResposne1.equals(vpsTrafficTotalsResposne1));
        System.assert(vpsTrafficTotalsResposne3.equals(vpsTrafficTotalsResposne4));
        System.assert(vpsTrafficTotalsResposne4.equals(vpsTrafficTotalsResposne3));
        System.assert(vpsTrafficTotalsResposne3.equals(vpsTrafficTotalsResposne3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne1 = IntServerVpsTrafficTotalsResposne.getExample();
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne2 = IntServerVpsTrafficTotalsResposne.getExample();
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne3 = new IntServerVpsTrafficTotalsResposne();
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne4 = new IntServerVpsTrafficTotalsResposne();

        System.assert(vpsTrafficTotalsResposne1.equals(vpsTrafficTotalsResposne2));
        System.assert(vpsTrafficTotalsResposne2.equals(vpsTrafficTotalsResposne1));
        System.assert(vpsTrafficTotalsResposne3.equals(vpsTrafficTotalsResposne4));
        System.assert(vpsTrafficTotalsResposne4.equals(vpsTrafficTotalsResposne3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne1 = IntServerVpsTrafficTotalsResposne.getExample();
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne2 = new IntServerVpsTrafficTotalsResposne();

        System.assertEquals(false, vpsTrafficTotalsResposne1.equals('foo'));
        System.assertEquals(false, vpsTrafficTotalsResposne2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne1 = IntServerVpsTrafficTotalsResposne.getExample();
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne2 = new IntServerVpsTrafficTotalsResposne();
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne3;

        System.assertEquals(false, vpsTrafficTotalsResposne1.equals(vpsTrafficTotalsResposne3));
        System.assertEquals(false, vpsTrafficTotalsResposne2.equals(vpsTrafficTotalsResposne3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne1 = IntServerVpsTrafficTotalsResposne.getExample();
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne2 = new IntServerVpsTrafficTotalsResposne();

        System.assertEquals(vpsTrafficTotalsResposne1.hashCode(), vpsTrafficTotalsResposne1.hashCode());
        System.assertEquals(vpsTrafficTotalsResposne2.hashCode(), vpsTrafficTotalsResposne2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne1 = IntServerVpsTrafficTotalsResposne.getExample();
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne2 = IntServerVpsTrafficTotalsResposne.getExample();
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne3 = new IntServerVpsTrafficTotalsResposne();
        IntServerVpsTrafficTotalsResposne vpsTrafficTotalsResposne4 = new IntServerVpsTrafficTotalsResposne();

        System.assert(vpsTrafficTotalsResposne1.equals(vpsTrafficTotalsResposne2));
        System.assert(vpsTrafficTotalsResposne3.equals(vpsTrafficTotalsResposne4));
        System.assertEquals(vpsTrafficTotalsResposne1.hashCode(), vpsTrafficTotalsResposne2.hashCode());
        System.assertEquals(vpsTrafficTotalsResposne3.hashCode(), vpsTrafficTotalsResposne4.hashCode());
    }
}
