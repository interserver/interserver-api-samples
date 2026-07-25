@isTest
private class IntServerLoginInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLoginInfo loginInfo1 = IntServerLoginInfo.getExample();
        IntServerLoginInfo loginInfo2 = loginInfo1;
        IntServerLoginInfo loginInfo3 = new IntServerLoginInfo();
        IntServerLoginInfo loginInfo4 = loginInfo3;

        System.assert(loginInfo1.equals(loginInfo2));
        System.assert(loginInfo2.equals(loginInfo1));
        System.assert(loginInfo1.equals(loginInfo1));
        System.assert(loginInfo3.equals(loginInfo4));
        System.assert(loginInfo4.equals(loginInfo3));
        System.assert(loginInfo3.equals(loginInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLoginInfo loginInfo1 = IntServerLoginInfo.getExample();
        IntServerLoginInfo loginInfo2 = IntServerLoginInfo.getExample();
        IntServerLoginInfo loginInfo3 = new IntServerLoginInfo();
        IntServerLoginInfo loginInfo4 = new IntServerLoginInfo();

        System.assert(loginInfo1.equals(loginInfo2));
        System.assert(loginInfo2.equals(loginInfo1));
        System.assert(loginInfo3.equals(loginInfo4));
        System.assert(loginInfo4.equals(loginInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLoginInfo loginInfo1 = IntServerLoginInfo.getExample();
        IntServerLoginInfo loginInfo2 = new IntServerLoginInfo();

        System.assertEquals(false, loginInfo1.equals('foo'));
        System.assertEquals(false, loginInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLoginInfo loginInfo1 = IntServerLoginInfo.getExample();
        IntServerLoginInfo loginInfo2 = new IntServerLoginInfo();
        IntServerLoginInfo loginInfo3;

        System.assertEquals(false, loginInfo1.equals(loginInfo3));
        System.assertEquals(false, loginInfo2.equals(loginInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLoginInfo loginInfo1 = IntServerLoginInfo.getExample();
        IntServerLoginInfo loginInfo2 = new IntServerLoginInfo();

        System.assertEquals(loginInfo1.hashCode(), loginInfo1.hashCode());
        System.assertEquals(loginInfo2.hashCode(), loginInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLoginInfo loginInfo1 = IntServerLoginInfo.getExample();
        IntServerLoginInfo loginInfo2 = IntServerLoginInfo.getExample();
        IntServerLoginInfo loginInfo3 = new IntServerLoginInfo();
        IntServerLoginInfo loginInfo4 = new IntServerLoginInfo();

        System.assert(loginInfo1.equals(loginInfo2));
        System.assert(loginInfo3.equals(loginInfo4));
        System.assertEquals(loginInfo1.hashCode(), loginInfo2.hashCode());
        System.assertEquals(loginInfo3.hashCode(), loginInfo4.hashCode());
    }
}
