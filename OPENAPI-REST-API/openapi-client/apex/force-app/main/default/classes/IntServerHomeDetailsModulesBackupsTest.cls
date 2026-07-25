@isTest
private class IntServerHomeDetailsModulesBackupsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups1 = IntServerHomeDetailsModulesBackups.getExample();
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups2 = homeDetailsModulesBackups1;
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups3 = new IntServerHomeDetailsModulesBackups();
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups4 = homeDetailsModulesBackups3;

        System.assert(homeDetailsModulesBackups1.equals(homeDetailsModulesBackups2));
        System.assert(homeDetailsModulesBackups2.equals(homeDetailsModulesBackups1));
        System.assert(homeDetailsModulesBackups1.equals(homeDetailsModulesBackups1));
        System.assert(homeDetailsModulesBackups3.equals(homeDetailsModulesBackups4));
        System.assert(homeDetailsModulesBackups4.equals(homeDetailsModulesBackups3));
        System.assert(homeDetailsModulesBackups3.equals(homeDetailsModulesBackups3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups1 = IntServerHomeDetailsModulesBackups.getExample();
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups2 = IntServerHomeDetailsModulesBackups.getExample();
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups3 = new IntServerHomeDetailsModulesBackups();
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups4 = new IntServerHomeDetailsModulesBackups();

        System.assert(homeDetailsModulesBackups1.equals(homeDetailsModulesBackups2));
        System.assert(homeDetailsModulesBackups2.equals(homeDetailsModulesBackups1));
        System.assert(homeDetailsModulesBackups3.equals(homeDetailsModulesBackups4));
        System.assert(homeDetailsModulesBackups4.equals(homeDetailsModulesBackups3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups1 = IntServerHomeDetailsModulesBackups.getExample();
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups2 = new IntServerHomeDetailsModulesBackups();

        System.assertEquals(false, homeDetailsModulesBackups1.equals('foo'));
        System.assertEquals(false, homeDetailsModulesBackups2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups1 = IntServerHomeDetailsModulesBackups.getExample();
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups2 = new IntServerHomeDetailsModulesBackups();
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups3;

        System.assertEquals(false, homeDetailsModulesBackups1.equals(homeDetailsModulesBackups3));
        System.assertEquals(false, homeDetailsModulesBackups2.equals(homeDetailsModulesBackups3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups1 = IntServerHomeDetailsModulesBackups.getExample();
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups2 = new IntServerHomeDetailsModulesBackups();

        System.assertEquals(homeDetailsModulesBackups1.hashCode(), homeDetailsModulesBackups1.hashCode());
        System.assertEquals(homeDetailsModulesBackups2.hashCode(), homeDetailsModulesBackups2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups1 = IntServerHomeDetailsModulesBackups.getExample();
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups2 = IntServerHomeDetailsModulesBackups.getExample();
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups3 = new IntServerHomeDetailsModulesBackups();
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups4 = new IntServerHomeDetailsModulesBackups();

        System.assert(homeDetailsModulesBackups1.equals(homeDetailsModulesBackups2));
        System.assert(homeDetailsModulesBackups3.equals(homeDetailsModulesBackups4));
        System.assertEquals(homeDetailsModulesBackups1.hashCode(), homeDetailsModulesBackups2.hashCode());
        System.assertEquals(homeDetailsModulesBackups3.hashCode(), homeDetailsModulesBackups4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerHomeDetailsModulesBackups homeDetailsModulesBackups = new IntServerHomeDetailsModulesBackups();
        Map<String, String> x-property-mappings = homeDetailsModulesBackups.getx-property-mappings();
        System.assertEquals('viewLink', x-property-mappings.get('view_link'));
        System.assertEquals('buyLink', x-property-mappings.get('buy_link'));
        System.assertEquals('listLink', x-property-mappings.get('list_link'));
    }
}
