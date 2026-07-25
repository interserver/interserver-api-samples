@isTest
private class IntServerAccountSshKeyTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountSshKey accountSshKey1 = IntServerAccountSshKey.getExample();
        IntServerAccountSshKey accountSshKey2 = accountSshKey1;
        IntServerAccountSshKey accountSshKey3 = new IntServerAccountSshKey();
        IntServerAccountSshKey accountSshKey4 = accountSshKey3;

        System.assert(accountSshKey1.equals(accountSshKey2));
        System.assert(accountSshKey2.equals(accountSshKey1));
        System.assert(accountSshKey1.equals(accountSshKey1));
        System.assert(accountSshKey3.equals(accountSshKey4));
        System.assert(accountSshKey4.equals(accountSshKey3));
        System.assert(accountSshKey3.equals(accountSshKey3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountSshKey accountSshKey1 = IntServerAccountSshKey.getExample();
        IntServerAccountSshKey accountSshKey2 = IntServerAccountSshKey.getExample();
        IntServerAccountSshKey accountSshKey3 = new IntServerAccountSshKey();
        IntServerAccountSshKey accountSshKey4 = new IntServerAccountSshKey();

        System.assert(accountSshKey1.equals(accountSshKey2));
        System.assert(accountSshKey2.equals(accountSshKey1));
        System.assert(accountSshKey3.equals(accountSshKey4));
        System.assert(accountSshKey4.equals(accountSshKey3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountSshKey accountSshKey1 = IntServerAccountSshKey.getExample();
        IntServerAccountSshKey accountSshKey2 = new IntServerAccountSshKey();

        System.assertEquals(false, accountSshKey1.equals('foo'));
        System.assertEquals(false, accountSshKey2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountSshKey accountSshKey1 = IntServerAccountSshKey.getExample();
        IntServerAccountSshKey accountSshKey2 = new IntServerAccountSshKey();
        IntServerAccountSshKey accountSshKey3;

        System.assertEquals(false, accountSshKey1.equals(accountSshKey3));
        System.assertEquals(false, accountSshKey2.equals(accountSshKey3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountSshKey accountSshKey1 = IntServerAccountSshKey.getExample();
        IntServerAccountSshKey accountSshKey2 = new IntServerAccountSshKey();

        System.assertEquals(accountSshKey1.hashCode(), accountSshKey1.hashCode());
        System.assertEquals(accountSshKey2.hashCode(), accountSshKey2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountSshKey accountSshKey1 = IntServerAccountSshKey.getExample();
        IntServerAccountSshKey accountSshKey2 = IntServerAccountSshKey.getExample();
        IntServerAccountSshKey accountSshKey3 = new IntServerAccountSshKey();
        IntServerAccountSshKey accountSshKey4 = new IntServerAccountSshKey();

        System.assert(accountSshKey1.equals(accountSshKey2));
        System.assert(accountSshKey3.equals(accountSshKey4));
        System.assertEquals(accountSshKey1.hashCode(), accountSshKey2.hashCode());
        System.assertEquals(accountSshKey3.hashCode(), accountSshKey4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerAccountSshKey accountSshKey = new IntServerAccountSshKey();
        Map<String, String> x-property-mappings = accountSshKey.getx-property-mappings();
        System.assertEquals('sshKey', x-property-mappings.get('ssh_key'));
    }
}
