@isTest
private class IntServerVpsTrafficUsageAverageSectiTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse1 = IntServerVpsTrafficUsageAverageSecti.getExample();
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse2 = vpsTrafficUsageAverageSectionResponse1;
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse3 = new IntServerVpsTrafficUsageAverageSecti();
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse4 = vpsTrafficUsageAverageSectionResponse3;

        System.assert(vpsTrafficUsageAverageSectionResponse1.equals(vpsTrafficUsageAverageSectionResponse2));
        System.assert(vpsTrafficUsageAverageSectionResponse2.equals(vpsTrafficUsageAverageSectionResponse1));
        System.assert(vpsTrafficUsageAverageSectionResponse1.equals(vpsTrafficUsageAverageSectionResponse1));
        System.assert(vpsTrafficUsageAverageSectionResponse3.equals(vpsTrafficUsageAverageSectionResponse4));
        System.assert(vpsTrafficUsageAverageSectionResponse4.equals(vpsTrafficUsageAverageSectionResponse3));
        System.assert(vpsTrafficUsageAverageSectionResponse3.equals(vpsTrafficUsageAverageSectionResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse1 = IntServerVpsTrafficUsageAverageSecti.getExample();
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse2 = IntServerVpsTrafficUsageAverageSecti.getExample();
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse3 = new IntServerVpsTrafficUsageAverageSecti();
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse4 = new IntServerVpsTrafficUsageAverageSecti();

        System.assert(vpsTrafficUsageAverageSectionResponse1.equals(vpsTrafficUsageAverageSectionResponse2));
        System.assert(vpsTrafficUsageAverageSectionResponse2.equals(vpsTrafficUsageAverageSectionResponse1));
        System.assert(vpsTrafficUsageAverageSectionResponse3.equals(vpsTrafficUsageAverageSectionResponse4));
        System.assert(vpsTrafficUsageAverageSectionResponse4.equals(vpsTrafficUsageAverageSectionResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse1 = IntServerVpsTrafficUsageAverageSecti.getExample();
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse2 = new IntServerVpsTrafficUsageAverageSecti();

        System.assertEquals(false, vpsTrafficUsageAverageSectionResponse1.equals('foo'));
        System.assertEquals(false, vpsTrafficUsageAverageSectionResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse1 = IntServerVpsTrafficUsageAverageSecti.getExample();
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse2 = new IntServerVpsTrafficUsageAverageSecti();
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse3;

        System.assertEquals(false, vpsTrafficUsageAverageSectionResponse1.equals(vpsTrafficUsageAverageSectionResponse3));
        System.assertEquals(false, vpsTrafficUsageAverageSectionResponse2.equals(vpsTrafficUsageAverageSectionResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse1 = IntServerVpsTrafficUsageAverageSecti.getExample();
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse2 = new IntServerVpsTrafficUsageAverageSecti();

        System.assertEquals(vpsTrafficUsageAverageSectionResponse1.hashCode(), vpsTrafficUsageAverageSectionResponse1.hashCode());
        System.assertEquals(vpsTrafficUsageAverageSectionResponse2.hashCode(), vpsTrafficUsageAverageSectionResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse1 = IntServerVpsTrafficUsageAverageSecti.getExample();
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse2 = IntServerVpsTrafficUsageAverageSecti.getExample();
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse3 = new IntServerVpsTrafficUsageAverageSecti();
        IntServerVpsTrafficUsageAverageSecti vpsTrafficUsageAverageSectionResponse4 = new IntServerVpsTrafficUsageAverageSecti();

        System.assert(vpsTrafficUsageAverageSectionResponse1.equals(vpsTrafficUsageAverageSectionResponse2));
        System.assert(vpsTrafficUsageAverageSectionResponse3.equals(vpsTrafficUsageAverageSectionResponse4));
        System.assertEquals(vpsTrafficUsageAverageSectionResponse1.hashCode(), vpsTrafficUsageAverageSectionResponse2.hashCode());
        System.assertEquals(vpsTrafficUsageAverageSectionResponse3.hashCode(), vpsTrafficUsageAverageSectionResponse4.hashCode());
    }
}
