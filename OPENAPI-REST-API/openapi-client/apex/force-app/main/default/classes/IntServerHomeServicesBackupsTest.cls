@isTest
private class IntServerHomeServicesBackupsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeServicesBackups homeServicesBackups1 = IntServerHomeServicesBackups.getExample();
        IntServerHomeServicesBackups homeServicesBackups2 = homeServicesBackups1;
        IntServerHomeServicesBackups homeServicesBackups3 = new IntServerHomeServicesBackups();
        IntServerHomeServicesBackups homeServicesBackups4 = homeServicesBackups3;

        System.assert(homeServicesBackups1.equals(homeServicesBackups2));
        System.assert(homeServicesBackups2.equals(homeServicesBackups1));
        System.assert(homeServicesBackups1.equals(homeServicesBackups1));
        System.assert(homeServicesBackups3.equals(homeServicesBackups4));
        System.assert(homeServicesBackups4.equals(homeServicesBackups3));
        System.assert(homeServicesBackups3.equals(homeServicesBackups3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeServicesBackups homeServicesBackups1 = IntServerHomeServicesBackups.getExample();
        IntServerHomeServicesBackups homeServicesBackups2 = IntServerHomeServicesBackups.getExample();
        IntServerHomeServicesBackups homeServicesBackups3 = new IntServerHomeServicesBackups();
        IntServerHomeServicesBackups homeServicesBackups4 = new IntServerHomeServicesBackups();

        System.assert(homeServicesBackups1.equals(homeServicesBackups2));
        System.assert(homeServicesBackups2.equals(homeServicesBackups1));
        System.assert(homeServicesBackups3.equals(homeServicesBackups4));
        System.assert(homeServicesBackups4.equals(homeServicesBackups3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeServicesBackups homeServicesBackups1 = IntServerHomeServicesBackups.getExample();
        IntServerHomeServicesBackups homeServicesBackups2 = new IntServerHomeServicesBackups();

        System.assertEquals(false, homeServicesBackups1.equals('foo'));
        System.assertEquals(false, homeServicesBackups2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeServicesBackups homeServicesBackups1 = IntServerHomeServicesBackups.getExample();
        IntServerHomeServicesBackups homeServicesBackups2 = new IntServerHomeServicesBackups();
        IntServerHomeServicesBackups homeServicesBackups3;

        System.assertEquals(false, homeServicesBackups1.equals(homeServicesBackups3));
        System.assertEquals(false, homeServicesBackups2.equals(homeServicesBackups3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeServicesBackups homeServicesBackups1 = IntServerHomeServicesBackups.getExample();
        IntServerHomeServicesBackups homeServicesBackups2 = new IntServerHomeServicesBackups();

        System.assertEquals(homeServicesBackups1.hashCode(), homeServicesBackups1.hashCode());
        System.assertEquals(homeServicesBackups2.hashCode(), homeServicesBackups2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeServicesBackups homeServicesBackups1 = IntServerHomeServicesBackups.getExample();
        IntServerHomeServicesBackups homeServicesBackups2 = IntServerHomeServicesBackups.getExample();
        IntServerHomeServicesBackups homeServicesBackups3 = new IntServerHomeServicesBackups();
        IntServerHomeServicesBackups homeServicesBackups4 = new IntServerHomeServicesBackups();

        System.assert(homeServicesBackups1.equals(homeServicesBackups2));
        System.assert(homeServicesBackups3.equals(homeServicesBackups4));
        System.assertEquals(homeServicesBackups1.hashCode(), homeServicesBackups2.hashCode());
        System.assertEquals(homeServicesBackups3.hashCode(), homeServicesBackups4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerHomeServicesBackups homeServicesBackups = new IntServerHomeServicesBackups();
        System.assertEquals(new List<String>(), homeServicesBackups.links);
        System.assertEquals(null, homeServicesBackups.count);
    }
}
