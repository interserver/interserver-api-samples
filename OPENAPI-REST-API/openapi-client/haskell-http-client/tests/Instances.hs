{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import Interserver.Api.Model
import Interserver.Api.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V
import Data.String (fromString)

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

#if MIN_VERSION_aeson(2,0,0)
#else
-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = arbitraryValue
#endif

arbitraryValue :: Gen A.Value
arbitraryValue =
  frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (fromString k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays

-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models

instance Arbitrary AccountFeatures where
  arbitrary = sized genAccountFeatures

genAccountFeatures :: Int -> Gen AccountFeatures
genAccountFeatures n =
  AccountFeatures
    <$> arbitraryReducedMaybe n -- accountFeaturesDisableReset :: Maybe Int
    <*> arbitraryReducedMaybe n -- accountFeaturesDisableReinstall :: Maybe Int
  
instance Arbitrary AccountInfo where
  arbitrary = sized genAccountInfo

genAccountInfo :: Int -> Gen AccountInfo
genAccountInfo n =
  AccountInfo
    <$> arbitraryReducedMaybe n -- accountInfoCustid :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoIma :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoData :: Maybe AccountInfoData
    <*> arbitraryReducedMaybe n -- accountInfoIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoOauthproviders :: Maybe AccountInfoOauthproviders
    <*> arbitraryReducedMaybe n -- accountInfoOauthconfig :: Maybe AccountInfoOauthConfig
    <*> arbitraryReducedMaybe n -- accountInfoOauthadapters :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- accountInfoLimits :: Maybe AccountInfoLimits
    <*> arbitraryReducedMaybe n -- accountInfoLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoCountryCurrencies :: Maybe AccountInfoCountryCurrencies
    <*> arbitraryReducedMaybe n -- accountInfoEnableLocales :: Maybe Bool
    <*> arbitraryReducedMaybe n -- accountInfoEnableCurrencies :: Maybe Bool
    <*> arbitraryReducedMaybe n -- accountInfoGravatar :: Maybe Text
  
instance Arbitrary AccountInfoCountryCurrencies where
  arbitrary = sized genAccountInfoCountryCurrencies

genAccountInfoCountryCurrencies :: Int -> Gen AccountInfoCountryCurrencies
genAccountInfoCountryCurrencies n =
  
  pure AccountInfoCountryCurrencies
   
instance Arbitrary AccountInfoData where
  arbitrary = sized genAccountInfoData

genAccountInfoData :: Int -> Gen AccountInfoData
genAccountInfoData n =
  AccountInfoData
    <$> arbitraryReducedMaybe n -- accountInfoDataGroup :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataDisableCc :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataFraudrecordScore :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataIma :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataName :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataPaymentMethod :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataPhone :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataPin :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataState :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataZip :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataAccountId :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataAccountLid :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataAddress2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataAffiliateDockDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataAffiliateDockTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataAffiliatePaymentMethod :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataAffiliatePaypal :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCc :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcAuto :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcExp :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcType :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcWhitelist :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcs :: Maybe AccountInfoDataCcs
    <*> arbitraryReducedMaybe n -- accountInfoDataCcsAdded :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCompany :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataDisableReinstall :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataDisableReset :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataEmailAbuse :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataEmailSettings :: Maybe AccountInfoDataEmailSettings
    <*> arbitraryReducedMaybe n -- accountInfoDataExtra :: Maybe AccountInfoDataExtra
    <*> arbitraryReducedMaybe n -- accountInfoDataFacebookId :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataFacebookUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataFirstname :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataFraudrecord :: Maybe AccountInfoDataFraudrecord
    <*> arbitraryReducedMaybe n -- accountInfoDataGithubId :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataGithubUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataGoogleId :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataGoogleUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataInnertellId :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataLastname :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataLocale :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataMaxmind :: Maybe AccountInfoMaxMindResponse
    <*> arbitraryReducedMaybe n -- accountInfoDataMaxmindScore :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataMbId :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataModernbillId :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataPicture :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataReferrerCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataResellerMarkup :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataSshKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataSshKeyWrapped :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataApiKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataApiKeyWrapped :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoData2faGoogleKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoData2faGoogleEnabled :: Maybe Bool
    <*> arbitraryReducedMaybe n -- accountInfoData2faGoogle :: Maybe Int
    <*> arbitraryReducedMaybe n -- accountInfoData2faGoogleSplit :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoData2faGoogleQr :: Maybe Text
  
instance Arbitrary AccountInfoDataCc where
  arbitrary = sized genAccountInfoDataCc

genAccountInfoDataCc :: Int -> Gen AccountInfoDataCc
genAccountInfoDataCc n =
  AccountInfoDataCc
    <$> arbitraryReducedMaybe n -- accountInfoDataCcCc :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcCcExp :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcName :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcState :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcZip :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcMaxmindRiskscore :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataCcMaxmind :: Maybe AccountInfoMaxMindResponse
    <*> arbitraryReducedMaybe n -- accountInfoDataCcVerified :: Maybe Bool
  
instance Arbitrary AccountInfoDataCcs where
  arbitrary = sized genAccountInfoDataCcs

genAccountInfoDataCcs :: Int -> Gen AccountInfoDataCcs
genAccountInfoDataCcs n =
  
  pure AccountInfoDataCcs
   
instance Arbitrary AccountInfoDataEmailSettings where
  arbitrary = sized genAccountInfoDataEmailSettings

genAccountInfoDataEmailSettings :: Int -> Gen AccountInfoDataEmailSettings
genAccountInfoDataEmailSettings n =
  AccountInfoDataEmailSettings
    <$> arbitraryReducedMaybe n -- accountInfoDataEmailSettingsAdminCcBadResponse :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataEmailSettingsAdminMassCommunicationsTpl :: Maybe Text
  
instance Arbitrary AccountInfoDataExtra where
  arbitrary = sized genAccountInfoDataExtra

genAccountInfoDataExtra :: Int -> Gen AccountInfoDataExtra
genAccountInfoDataExtra n =
  AccountInfoDataExtra
    <$> arbitraryReducedMaybe n -- accountInfoDataExtraPrivateWhois :: Maybe Text
  
instance Arbitrary AccountInfoDataFraudrecord where
  arbitrary = sized genAccountInfoDataFraudrecord

genAccountInfoDataFraudrecord :: Int -> Gen AccountInfoDataFraudrecord
genAccountInfoDataFraudrecord n =
  AccountInfoDataFraudrecord
    <$> arbitraryReducedMaybe n -- accountInfoDataFraudrecordScore :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataFraudrecordCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataFraudrecordReliability :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoDataFraudrecordCode :: Maybe Text
  
instance Arbitrary AccountInfoLimits where
  arbitrary = sized genAccountInfoLimits

genAccountInfoLimits :: Int -> Gen AccountInfoLimits
genAccountInfoLimits n =
  
  pure AccountInfoLimits
   
instance Arbitrary AccountInfoLimitsInner where
  arbitrary = sized genAccountInfoLimitsInner

genAccountInfoLimitsInner :: Int -> Gen AccountInfoLimitsInner
genAccountInfoLimitsInner n =
  AccountInfoLimitsInner
    <$> arbitraryReducedMaybe n -- accountInfoLimitsInnerStart :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoLimitsInnerEnd :: Maybe Text
  
instance Arbitrary AccountInfoMaxMindResponse where
  arbitrary = sized genAccountInfoMaxMindResponse

genAccountInfoMaxMindResponse :: Int -> Gen AccountInfoMaxMindResponse
genAccountInfoMaxMindResponse n =
  AccountInfoMaxMindResponse
    <$> arbitraryReducedMaybe n -- accountInfoMaxMindResponseDistance :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseCountryMatch :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseCountryCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseFreeMail :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseAnonymousProxy :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseScore :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseBinMatch :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseBinCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseErr :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseProxyScore :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpRegion :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpLatitude :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpLongitude :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseBinName :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpIsp :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpOrg :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseBinNameMatch :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseBinPhoneMatch :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseBinPhone :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseCustPhoneInBillingLoc :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseHighRiskCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseQueriesRemaining :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseCityPostalMatch :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseShipCityPostalMatch :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseMaxmindId :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpAsnum :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpUserType :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpCountryConf :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpRegionConf :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpCityConf :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpPostalCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpPostalConf :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpAccuracyRadius :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpNetSpeedCell :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpMetroCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpAreaCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpTimeZone :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpRegionName :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpCountryName :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpContinentCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIpCorporateProxy :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseCarderEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseHighRiskUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseHighRiskPassword :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseRiskScore :: Maybe AccountInfoMaxMindResponseRiskScore
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseIsTransProxy :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponsePrepaid :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseMinfraudVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseServiceLevel :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseExplanation :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoMaxMindResponseFemaleName :: Maybe Text
  
instance Arbitrary AccountInfoMaxMindResponseRiskScore where
  arbitrary = sized genAccountInfoMaxMindResponseRiskScore

genAccountInfoMaxMindResponseRiskScore :: Int -> Gen AccountInfoMaxMindResponseRiskScore
genAccountInfoMaxMindResponseRiskScore n =
  
  pure AccountInfoMaxMindResponseRiskScore
   
instance Arbitrary AccountInfoOauthConfig where
  arbitrary = sized genAccountInfoOauthConfig

genAccountInfoOauthConfig :: Int -> Gen AccountInfoOauthConfig
genAccountInfoOauthConfig n =
  AccountInfoOauthConfig
    <$> arbitrary -- accountInfoOauthConfigCallback :: Text
    <*> arbitraryReduced n -- accountInfoOauthConfigProviders :: AccountInfoOauthConfigProviders
  
instance Arbitrary AccountInfoOauthConfigProviders where
  arbitrary = sized genAccountInfoOauthConfigProviders

genAccountInfoOauthConfigProviders :: Int -> Gen AccountInfoOauthConfigProviders
genAccountInfoOauthConfigProviders n =
  
  pure AccountInfoOauthConfigProviders
   
instance Arbitrary AccountInfoOauthConfigProvidersValue where
  arbitrary = sized genAccountInfoOauthConfigProvidersValue

genAccountInfoOauthConfigProvidersValue :: Int -> Gen AccountInfoOauthConfigProvidersValue
genAccountInfoOauthConfigProvidersValue n =
  AccountInfoOauthConfigProvidersValue
    <$> arbitraryReducedMaybe n -- accountInfoOauthConfigProvidersValueEnabled :: Maybe Bool
    <*> arbitraryReducedMaybe n -- accountInfoOauthConfigProvidersValueLinked :: Maybe Bool
    <*> arbitraryReducedMaybe n -- accountInfoOauthConfigProvidersValueAccount :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoOauthConfigProvidersValueUrl :: Maybe Text
  
instance Arbitrary AccountInfoOauthproviders where
  arbitrary = sized genAccountInfoOauthproviders

genAccountInfoOauthproviders :: Int -> Gen AccountInfoOauthproviders
genAccountInfoOauthproviders n =
  
  pure AccountInfoOauthproviders
   
instance Arbitrary AccountInfoPost where
  arbitrary = sized genAccountInfoPost

genAccountInfoPost :: Int -> Gen AccountInfoPost
genAccountInfoPost n =
  AccountInfoPost
    <$> arbitrary -- accountInfoPostName :: Text
    <*> arbitrary -- accountInfoPostAddress :: Text
    <*> arbitrary -- accountInfoPostCity :: Text
    <*> arbitrary -- accountInfoPostState :: Text
    <*> arbitrary -- accountInfoPostZip :: Text
    <*> arbitrary -- accountInfoPostCountry :: Text
    <*> arbitrary -- accountInfoPostPhone :: Text
    <*> arbitraryReducedMaybe n -- accountInfoPostCompany :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoPostAddress2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoPostLocale :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoPostEmailInvoices :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoPostEmailAbuse :: Maybe Text
    <*> arbitraryReducedMaybe n -- accountInfoPostDisableReset :: Maybe Bool
    <*> arbitraryReducedMaybe n -- accountInfoPostDisableReinstall :: Maybe Bool
    <*> arbitraryReducedMaybe n -- accountInfoPostDisableServerNotifications :: Maybe Bool
    <*> arbitraryReducedMaybe n -- accountInfoPostDisableEmailNotifications :: Maybe Bool
    <*> arbitraryReducedMaybe n -- accountInfoPostGstin :: Maybe Text
  
instance Arbitrary AccountSshKey where
  arbitrary = sized genAccountSshKey

genAccountSshKey :: Int -> Gen AccountSshKey
genAccountSshKey n =
  AccountSshKey
    <$> arbitraryReducedMaybe n -- accountSshKeySshKey :: Maybe Text
  
instance Arbitrary AddServer200Response where
  arbitrary = sized genAddServer200Response

genAddServer200Response :: Int -> Gen AddServer200Response
genAddServer200Response n =
  AddServer200Response
    <$> arbitraryReducedMaybe n -- addServer200ResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- addServer200ResponseInvoice :: Maybe Int
    <*> arbitraryReducedMaybe n -- addServer200ResponseOrder :: Maybe Int
  
instance Arbitrary AffiliateBannerRow where
  arbitrary = sized genAffiliateBannerRow

genAffiliateBannerRow :: Int -> Gen AffiliateBannerRow
genAffiliateBannerRow n =
  AffiliateBannerRow
    <$> arbitraryReducedMaybe n -- affiliateBannerRowImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- affiliateBannerRowWidth :: Maybe Text
    <*> arbitraryReducedMaybe n -- affiliateBannerRowHeight :: Maybe Text
  
instance Arbitrary AffiliateDockSetup where
  arbitrary = sized genAffiliateDockSetup

genAffiliateDockSetup :: Int -> Gen AffiliateDockSetup
genAffiliateDockSetup n =
  AffiliateDockSetup
    <$> arbitraryReducedMaybe n -- affiliateDockSetupAffiliateDockTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- affiliateDockSetupAffiliateDockDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- affiliateDockSetupReferrerCoupon :: Maybe Text
  
instance Arbitrary AffiliatePaymentSetup where
  arbitrary = sized genAffiliatePaymentSetup

genAffiliatePaymentSetup :: Int -> Gen AffiliatePaymentSetup
genAffiliatePaymentSetup n =
  AffiliatePaymentSetup
    <$> arbitraryReducedMaybe n -- affiliatePaymentSetupAffiliatePaypal :: Maybe Text
    <*> arbitraryReducedMaybe n -- affiliatePaymentSetupAffiliatePaymentMethod :: Maybe Text
  
instance Arbitrary AffiliateTrafficRow where
  arbitrary = sized genAffiliateTrafficRow

genAffiliateTrafficRow :: Int -> Gen AffiliateTrafficRow
genAffiliateTrafficRow n =
  AffiliateTrafficRow
    <$> arbitraryReducedMaybe n -- affiliateTrafficRowTrafficId :: Maybe Text
    <*> arbitraryReducedMaybe n -- affiliateTrafficRowTrafficIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- affiliateTrafficRowTrafficUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- affiliateTrafficRowTrafficAffiliate :: Maybe Text
    <*> arbitraryReducedMaybe n -- affiliateTrafficRowTrafficReferrer :: Maybe Text
    <*> arbitraryReducedMaybe n -- affiliateTrafficRowTrafficTimestamp :: Maybe Text
  
instance Arbitrary Backup where
  arbitrary = sized genBackup

genBackup :: Int -> Gen Backup
genBackup n =
  Backup
    <$> arbitraryReducedMaybe n -- backupServiceInfo :: Maybe BackupServiceInfo
    <*> arbitraryReducedMaybe n -- backupClientLinks :: Maybe [BackupClientLink]
    <*> arbitraryReducedMaybe n -- backupBillingDetails :: Maybe BackupBillingDetails
    <*> arbitraryReducedMaybe n -- backupCustCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupCustCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceMaster :: Maybe BackupServiceMaster
    <*> arbitraryReducedMaybe n -- backupPackage :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceExtra :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupExtraInfoTables :: Maybe BackupExtraInfoTables
  
instance Arbitrary BackupBillingDetails where
  arbitrary = sized genBackupBillingDetails

genBackupBillingDetails :: Int -> Gen BackupBillingDetails
genBackupBillingDetails n =
  BackupBillingDetails
    <$> arbitraryReducedMaybe n -- backupBillingDetailsServiceLastInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupBillingDetailsServicePaymentStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupBillingDetailsServiceFrequency :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupBillingDetailsNextDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupBillingDetailsServiceNextInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupBillingDetailsServiceCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupBillingDetailsServiceCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupBillingDetailsServiceCostInfo :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupBillingDetailsServiceExtra :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupBillingDetailsServiceExtraJson :: Maybe Text
  
instance Arbitrary BackupClientLink where
  arbitrary = sized genBackupClientLink

genBackupClientLink :: Int -> Gen BackupClientLink
genBackupClientLink n =
  BackupClientLink
    <$> arbitraryReducedMaybe n -- backupClientLinkLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupClientLinkLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupClientLinkIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupClientLinkIconText :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupClientLinkHelpText :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupClientLinkOtherAttr :: Maybe Text
  
instance Arbitrary BackupExtraInfoTables where
  arbitrary = sized genBackupExtraInfoTables

genBackupExtraInfoTables :: Int -> Gen BackupExtraInfoTables
genBackupExtraInfoTables n =
  BackupExtraInfoTables
    <$> arbitraryReducedMaybe n -- backupExtraInfoTablesIpInfo :: Maybe BackupIPInfo
  
instance Arbitrary BackupIPInfo where
  arbitrary = sized genBackupIPInfo

genBackupIPInfo :: Int -> Gen BackupIPInfo
genBackupIPInfo n =
  BackupIPInfo
    <$> arbitraryReducedMaybe n -- backupIPInfoTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupIPInfoRows :: Maybe [BackupIPInfoRow]
  
instance Arbitrary BackupIPInfoRow where
  arbitrary = sized genBackupIPInfoRow

genBackupIPInfoRow :: Int -> Gen BackupIPInfoRow
genBackupIPInfoRow n =
  BackupIPInfoRow
    <$> arbitraryReducedMaybe n -- backupIPInfoRowDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupIPInfoRowValue :: Maybe Text
  
instance Arbitrary BackupLoginResponse where
  arbitrary = sized genBackupLoginResponse

genBackupLoginResponse :: Int -> Gen BackupLoginResponse
genBackupLoginResponse n =
  BackupLoginResponse
    <$> arbitraryReducedMaybe n -- backupLoginResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- backupLoginResponseText :: Maybe Text
  
instance Arbitrary BackupOrderPostResponse where
  arbitrary = sized genBackupOrderPostResponse

genBackupOrderPostResponse :: Int -> Gen BackupOrderPostResponse
genBackupOrderPostResponse n =
  BackupOrderPostResponse
    <$> arbitraryReducedMaybe n -- backupOrderPostResponseContinue :: Maybe Bool
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseErrors :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseTotalCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseIid :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseIids :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseRealIids :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseServiceId :: Maybe Int
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseInvoiceDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseCjParams :: Maybe BackupOrderPostResponseCjParams
  
instance Arbitrary BackupOrderPostResponseCjParams where
  arbitrary = sized genBackupOrderPostResponseCjParams

genBackupOrderPostResponseCjParams :: Int -> Gen BackupOrderPostResponseCjParams
genBackupOrderPostResponseCjParams n =
  BackupOrderPostResponseCjParams
    <$> arbitraryReducedMaybe n -- backupOrderPostResponseCjParamsContainerTagId :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseCjParamsCid :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseCjParamsOid :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseCjParamsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseCjParamsItem1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseCjParamsAmt1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseCjParamsQty1 :: Maybe Int
    <*> arbitraryReducedMaybe n -- backupOrderPostResponseCjParamsCurrency :: Maybe Text
  
instance Arbitrary BackupOrderPutRequest where
  arbitrary = sized genBackupOrderPutRequest

genBackupOrderPutRequest :: Int -> Gen BackupOrderPutRequest
genBackupOrderPutRequest n =
  BackupOrderPutRequest
    <$> arbitraryReducedMaybe n -- backupOrderPutRequestValidateOnly :: Maybe Bool
    <*> arbitraryReducedMaybe n -- backupOrderPutRequestServiceType :: Maybe Int
    <*> arbitraryReducedMaybe n -- backupOrderPutRequestCoupon :: Maybe Text
  
instance Arbitrary BackupOrderPutResponse where
  arbitrary = sized genBackupOrderPutResponse

genBackupOrderPutResponse :: Int -> Gen BackupOrderPutResponse
genBackupOrderPutResponse n =
  BackupOrderPutResponse
    <$> arbitraryReducedMaybe n -- backupOrderPutResponseContinue :: Maybe Bool
    <*> arbitraryReducedMaybe n -- backupOrderPutResponseErrors :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- backupOrderPutResponseServiceType :: Maybe Int
    <*> arbitraryReducedMaybe n -- backupOrderPutResponseServiceCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPutResponseOriginalCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPutResponseRepeatServiceCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPutResponseHostname :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPutResponsePassword :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPutResponseCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupOrderPutResponseCouponCode :: Maybe Int
  
instance Arbitrary BackupRow where
  arbitrary = sized genBackupRow

genBackupRow :: Int -> Gen BackupRow
genBackupRow n =
  BackupRow
    <$> arbitraryReducedMaybe n -- backupRowBackupId :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupRowBackupName :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupRowBackupCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupRowBackupUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupRowBackupStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupRowServicesName :: Maybe Text
  
instance Arbitrary BackupServiceInfo where
  arbitrary = sized genBackupServiceInfo

genBackupServiceInfo :: Int -> Gen BackupServiceInfo
genBackupServiceInfo n =
  BackupServiceInfo
    <$> arbitraryReducedMaybe n -- backupServiceInfoBackupId :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupServer :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupType :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupOrderDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupCustid :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupQuota :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupInvoice :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupExtra :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupServerStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceInfoBackupComment :: Maybe Text
  
instance Arbitrary BackupServiceMaster where
  arbitrary = sized genBackupServiceMaster

genBackupServiceMaster :: Int -> Gen BackupServiceMaster
genBackupServiceMaster n =
  BackupServiceMaster
    <$> arbitraryReducedMaybe n -- backupServiceMasterBackupId :: Maybe Int
    <*> arbitraryReducedMaybe n -- backupServiceMasterBackupName :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceMasterBackupIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceMasterBackupType :: Maybe Int
    <*> arbitraryReducedMaybe n -- backupServiceMasterBackupHdsize :: Maybe Int
    <*> arbitraryReducedMaybe n -- backupServiceMasterBackupHdfree :: Maybe Int
    <*> arbitraryReducedMaybe n -- backupServiceMasterBackupLastUpdate :: Maybe Text
    <*> arbitraryReducedMaybe n -- backupServiceMasterBackupAvailable :: Maybe Int
    <*> arbitraryReducedMaybe n -- backupServiceMasterBackupIowait :: Maybe Int
    <*> arbitraryReducedMaybe n -- backupServiceMasterBackupOrder :: Maybe Int
  
instance Arbitrary BackupsOrder where
  arbitrary = sized genBackupsOrder

genBackupsOrder :: Int -> Gen BackupsOrder
genBackupsOrder n =
  BackupsOrder
    <$> arbitraryReduced n -- backupsOrderPackageCosts :: BackupsOrderPackageCosts
    <*> arbitraryReduced n -- backupsOrderServiceTypes :: BackupsOrderServiceTypes
  
instance Arbitrary BackupsOrderPackageCosts where
  arbitrary = sized genBackupsOrderPackageCosts

genBackupsOrderPackageCosts :: Int -> Gen BackupsOrderPackageCosts
genBackupsOrderPackageCosts n =
  BackupsOrderPackageCosts
    <$> arbitrary -- backupsOrderPackageCosts11006 :: Int
  
instance Arbitrary BackupsOrderServiceTypes where
  arbitrary = sized genBackupsOrderServiceTypes

genBackupsOrderServiceTypes :: Int -> Gen BackupsOrderServiceTypes
genBackupsOrderServiceTypes n =
  BackupsOrderServiceTypes
    <$> arbitraryReducedMaybe n -- backupsOrderServiceTypes11006 :: Maybe BackupsOrderServiceTypes
  
instance Arbitrary BillingAddCcRequest where
  arbitrary = sized genBillingAddCcRequest

genBillingAddCcRequest :: Int -> Gen BillingAddCcRequest
genBillingAddCcRequest n =
  BillingAddCcRequest
    <$> arbitraryReducedMaybe n -- billingAddCcRequestName :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingAddCcRequestAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingAddCcRequestCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingAddCcRequestState :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingAddCcRequestCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingAddCcRequestZip :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingAddCcRequestCc :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingAddCcRequestCcExp :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingAddCcRequestCcCcv2 :: Maybe Text
  
instance Arbitrary BillingInvoiceDetail where
  arbitrary = sized genBillingInvoiceDetail

genBillingInvoiceDetail :: Int -> Gen BillingInvoiceDetail
genBillingInvoiceDetail n =
  
  pure BillingInvoiceDetail
   
instance Arbitrary BillingInvoiceList where
  arbitrary = sized genBillingInvoiceList

genBillingInvoiceList :: Int -> Gen BillingInvoiceList
genBillingInvoiceList n =
  BillingInvoiceList
    <$> arbitraryReducedMaybe n -- billingInvoiceListRows :: Maybe [A.Value]
    <*> arbitraryReducedMaybeValue n -- billingInvoiceListSummary :: Maybe A.Value
  
instance Arbitrary BillingPaymentMethodRequest where
  arbitrary = sized genBillingPaymentMethodRequest

genBillingPaymentMethodRequest :: Int -> Gen BillingPaymentMethodRequest
genBillingPaymentMethodRequest n =
  BillingPaymentMethodRequest
    <$> arbitraryReducedMaybe n -- billingPaymentMethodRequestPaymentMethod :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingPaymentMethodRequestCcAuto :: Maybe Text
  
instance Arbitrary BillingPrepayRequest where
  arbitrary = sized genBillingPrepayRequest

genBillingPrepayRequest :: Int -> Gen BillingPrepayRequest
genBillingPrepayRequest n =
  BillingPrepayRequest
    <$> arbitraryReducedMaybe n -- billingPrepayRequestModule :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingPrepayRequestAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- billingPrepayRequestAutomaticUse :: Maybe Text
  
instance Arbitrary BillingVerifyCcRequest where
  arbitrary = sized genBillingVerifyCcRequest

genBillingVerifyCcRequest :: Int -> Gen BillingVerifyCcRequest
genBillingVerifyCcRequest n =
  BillingVerifyCcRequest
    <$> arbitraryReducedMaybe n -- billingVerifyCcRequestIdx :: Maybe Int
    <*> arbitraryReducedMaybe n -- billingVerifyCcRequestCcCcv2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingVerifyCcRequestCcAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingVerifyCcRequestCcAmount2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- billingVerifyCcRequestTerms :: Maybe Bool
  
instance Arbitrary BuyItNowList where
  arbitrary = sized genBuyItNowList

genBuyItNowList :: Int -> Gen BuyItNowList
genBuyItNowList n =
  
  pure BuyItNowList
   
instance Arbitrary BuyItNowRow where
  arbitrary = sized genBuyItNowRow

genBuyItNowRow :: Int -> Gen BuyItNowRow
genBuyItNowRow n =
  BuyItNowRow
    <$> arbitraryReducedMaybe n -- buyItNowRowServerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowCpu :: Maybe [BuyItNowRowCpuInner]
    <*> arbitraryReducedMaybe n -- buyItNowRowMemory :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowDisk :: Maybe (Map.Map String Text)
    <*> arbitraryReducedMaybe n -- buyItNowRowBandwidth :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowIps :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowLocation :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowPrice :: Maybe Int
  
instance Arbitrary BuyItNowRowCpuInner where
  arbitrary = sized genBuyItNowRowCpuInner

genBuyItNowRowCpuInner :: Int -> Gen BuyItNowRowCpuInner
genBuyItNowRowCpuInner n =
  BuyItNowRowCpuInner
    <$> arbitraryReducedMaybe n -- buyItNowRowCpuInnerImg :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowCpuInnerType :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowCpuInnerSpeed :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowCpuInnerNumCpus :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowCpuInnerNumCores :: Maybe Text
  
instance Arbitrary BuyItNowRowCpuInnerOneOf where
  arbitrary = sized genBuyItNowRowCpuInnerOneOf

genBuyItNowRowCpuInnerOneOf :: Int -> Gen BuyItNowRowCpuInnerOneOf
genBuyItNowRowCpuInnerOneOf n =
  BuyItNowRowCpuInnerOneOf
    <$> arbitraryReducedMaybe n -- buyItNowRowCpuInnerOneOfImg :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowCpuInnerOneOfType :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowCpuInnerOneOfSpeed :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowCpuInnerOneOfNumCpus :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowRowCpuInnerOneOfNumCores :: Maybe Text
  
instance Arbitrary BuyItNowServerOrder200Response where
  arbitrary = sized genBuyItNowServerOrder200Response

genBuyItNowServerOrder200Response :: Int -> Gen BuyItNowServerOrder200Response
genBuyItNowServerOrder200Response n =
  BuyItNowServerOrder200Response
    <$> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseBandwidth :: Maybe [BuyItNowServerOrder200ResponseBandwidthInner]
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseIps :: Maybe [BuyItNowServerOrder200ResponseIpsInner]
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseOs :: Maybe [BuyItNowServerOrder200ResponseOsInner]
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseCp :: Maybe [BuyItNowServerOrder200ResponseCpInner]
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseRaid :: Maybe [BuyItNowServerOrder200ResponseRaidInner]
  
instance Arbitrary BuyItNowServerOrder200ResponseBandwidthInner where
  arbitrary = sized genBuyItNowServerOrder200ResponseBandwidthInner

genBuyItNowServerOrder200ResponseBandwidthInner :: Int -> Gen BuyItNowServerOrder200ResponseBandwidthInner
genBuyItNowServerOrder200ResponseBandwidthInner n =
  BuyItNowServerOrder200ResponseBandwidthInner
    <$> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseBandwidthInnerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseBandwidthInnerShortDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseBandwidthInnerLongDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseBandwidthInnerMonthlyPrice :: Maybe Text
  
instance Arbitrary BuyItNowServerOrder200ResponseCpInner where
  arbitrary = sized genBuyItNowServerOrder200ResponseCpInner

genBuyItNowServerOrder200ResponseCpInner :: Int -> Gen BuyItNowServerOrder200ResponseCpInner
genBuyItNowServerOrder200ResponseCpInner n =
  BuyItNowServerOrder200ResponseCpInner
    <$> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseCpInnerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseCpInnerShortDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseCpInnerLongDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseCpInnerOsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseCpInnerMonthlyPrice :: Maybe Text
  
instance Arbitrary BuyItNowServerOrder200ResponseIpsInner where
  arbitrary = sized genBuyItNowServerOrder200ResponseIpsInner

genBuyItNowServerOrder200ResponseIpsInner :: Int -> Gen BuyItNowServerOrder200ResponseIpsInner
genBuyItNowServerOrder200ResponseIpsInner n =
  BuyItNowServerOrder200ResponseIpsInner
    <$> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseIpsInnerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseIpsInnerShortDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseIpsInnerLongDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseIpsInnerMonthlyPrice :: Maybe Text
  
instance Arbitrary BuyItNowServerOrder200ResponseOsInner where
  arbitrary = sized genBuyItNowServerOrder200ResponseOsInner

genBuyItNowServerOrder200ResponseOsInner :: Int -> Gen BuyItNowServerOrder200ResponseOsInner
genBuyItNowServerOrder200ResponseOsInner n =
  BuyItNowServerOrder200ResponseOsInner
    <$> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseOsInnerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseOsInnerShortDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseOsInnerLongDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseOsInnerMonthlyPrice :: Maybe Text
  
instance Arbitrary BuyItNowServerOrder200ResponseRaidInner where
  arbitrary = sized genBuyItNowServerOrder200ResponseRaidInner

genBuyItNowServerOrder200ResponseRaidInner :: Int -> Gen BuyItNowServerOrder200ResponseRaidInner
genBuyItNowServerOrder200ResponseRaidInner n =
  BuyItNowServerOrder200ResponseRaidInner
    <$> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseRaidInnerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseRaidInnerShortDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseRaidInnerLongDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- buyItNowServerOrder200ResponseRaidInnerMonthlyPrice :: Maybe Text
  
instance Arbitrary CancelBackup200Response where
  arbitrary = sized genCancelBackup200Response

genCancelBackup200Response :: Int -> Gen CancelBackup200Response
genCancelBackup200Response n =
  CancelBackup200Response
    <$> arbitrary -- cancelBackup200ResponseSuccess :: Bool
    <*> arbitrary -- cancelBackup200ResponseText :: Text
  
instance Arbitrary CancelDomain200Response where
  arbitrary = sized genCancelDomain200Response

genCancelDomain200Response :: Int -> Gen CancelDomain200Response
genCancelDomain200Response n =
  CancelDomain200Response
    <$> arbitrary -- cancelDomain200ResponseSuccess :: Bool
    <*> arbitrary -- cancelDomain200ResponseText :: Text
  
instance Arbitrary CancelScrubIp200Response where
  arbitrary = sized genCancelScrubIp200Response

genCancelScrubIp200Response :: Int -> Gen CancelScrubIp200Response
genCancelScrubIp200Response n =
  CancelScrubIp200Response
    <$> arbitrary -- cancelScrubIp200ResponseSuccess :: Bool
    <*> arbitrary -- cancelScrubIp200ResponseText :: Text
  
instance Arbitrary CaptchaResponse where
  arbitrary = sized genCaptchaResponse

genCaptchaResponse :: Int -> Gen CaptchaResponse
genCaptchaResponse n =
  CaptchaResponse
    <$> arbitrary -- captchaResponseCaptcha :: Text
  
instance Arbitrary ChargeInvoiceRows where
  arbitrary = sized genChargeInvoiceRows

genChargeInvoiceRows :: Int -> Gen ChargeInvoiceRows
genChargeInvoiceRows n =
  ChargeInvoiceRows
    <$> arbitraryReducedMaybe n -- chargeInvoiceRowsSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoices :: Maybe (Map.Map String ChargeInvoiceRowsInvoicesValue)
  
instance Arbitrary ChargeInvoiceRowsInvoicesValue where
  arbitrary = sized genChargeInvoiceRowsInvoicesValue

genChargeInvoiceRowsInvoicesValue :: Int -> Gen ChargeInvoiceRowsInvoicesValue
genChargeInvoiceRowsInvoicesValue n =
  ChargeInvoiceRowsInvoicesValue
    <$> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValueInvoicesId :: Maybe Double
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValueInvoicesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValueInvoicesAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValueInvoicesDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValueInvoicesPaid :: Maybe E'XdpAction
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValueInvoicesDueDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValueInvoicesCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValueCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValueInvoicesDateFormatted :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoices :: Maybe (Map.Map String ChargeInvoiceRowsInvoicesValuePaidInvoicesValue)
  
instance Arbitrary ChargeInvoiceRowsInvoicesValuePaidInvoicesValue where
  arbitrary = sized genChargeInvoiceRowsInvoicesValuePaidInvoicesValue

genChargeInvoiceRowsInvoicesValuePaidInvoicesValue :: Int -> Gen ChargeInvoiceRowsInvoicesValuePaidInvoicesValue
genChargeInvoiceRowsInvoicesValuePaidInvoicesValue n =
  ChargeInvoiceRowsInvoicesValuePaidInvoicesValue
    <$> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueInvoicesId :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueInvoicesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueInvoicesAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueInvoicesDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueInvoicesCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueInvoicesDateFormatted :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValuePaymentType :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoices :: Maybe (Map.Map String ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue)
  
instance Arbitrary ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue where
  arbitrary = sized genChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue

genChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue :: Int -> Gen ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue
genChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue n =
  ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue
    <$> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValueInvoicesId :: Maybe Double
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValueInvoicesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValueInvoicesAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValueInvoicesDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValueInvoicesCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValueCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- chargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValueInvoicesDateFormatted :: Maybe Text
  
instance Arbitrary CloseTicketResponseSchema where
  arbitrary = sized genCloseTicketResponseSchema

genCloseTicketResponseSchema :: Int -> Gen CloseTicketResponseSchema
genCloseTicketResponseSchema n =
  CloseTicketResponseSchema
    <$> arbitraryReducedMaybe n -- closeTicketResponseSchemaSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- closeTicketResponseSchemaText :: Maybe Text
  
instance Arbitrary CreateFilter where
  arbitrary = sized genCreateFilter

genCreateFilter :: Int -> Gen CreateFilter
genCreateFilter n =
  CreateFilter
    <$> arbitrary -- createFilterFilterType :: Text
    <*> arbitrary -- createFilterPort :: Int
  
instance Arbitrary CreateFilter201Response where
  arbitrary = sized genCreateFilter201Response

genCreateFilter201Response :: Int -> Gen CreateFilter201Response
genCreateFilter201Response n =
  CreateFilter201Response
    <$> arbitraryReducedMaybe n -- createFilter201ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- createFilter201ResponseText :: Maybe Text
  
instance Arbitrary CreateFilter400Response where
  arbitrary = sized genCreateFilter400Response

genCreateFilter400Response :: Int -> Gen CreateFilter400Response
genCreateFilter400Response n =
  CreateFilter400Response
    <$> arbitraryReducedMaybe n -- createFilter400ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- createFilter400ResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- createFilter400ResponseErrors :: Maybe [Text]
  
instance Arbitrary CreateFilter500Response where
  arbitrary = sized genCreateFilter500Response

genCreateFilter500Response :: Int -> Gen CreateFilter500Response
genCreateFilter500Response n =
  CreateFilter500Response
    <$> arbitraryReducedMaybe n -- createFilter500ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- createFilter500ResponseText :: Maybe Text
  
instance Arbitrary CreateFirewallRule where
  arbitrary = sized genCreateFirewallRule

genCreateFirewallRule :: Int -> Gen CreateFirewallRule
genCreateFirewallRule n =
  CreateFirewallRule
    <$> arbitrary -- createFirewallRuleProtocolId :: E'ProtocolId
    <*> arbitrary -- createFirewallRuleXdpAction :: E'XdpAction
    <*> arbitraryReducedMaybe n -- createFirewallRuleDestinationPort :: Maybe Int
    <*> arbitraryReducedMaybe n -- createFirewallRuleSourceIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- createFirewallRuleSourcePort :: Maybe Int
  
instance Arbitrary CreateGeoFirewallRule where
  arbitrary = sized genCreateGeoFirewallRule

genCreateGeoFirewallRule :: Int -> Gen CreateGeoFirewallRule
genCreateGeoFirewallRule n =
  CreateGeoFirewallRule
    <$> arbitrary -- createGeoFirewallRuleXdpAction :: E'XdpAction
    <*> arbitraryReducedMaybe n -- createGeoFirewallRuleDestinationPort :: Maybe Int
    <*> arbitraryReducedMaybe n -- createGeoFirewallRuleCountryCode :: Maybe Int
    <*> arbitraryReducedMaybe n -- createGeoFirewallRuleAsn :: Maybe Int
  
instance Arbitrary CreateGeoRule400Response where
  arbitrary = sized genCreateGeoRule400Response

genCreateGeoRule400Response :: Int -> Gen CreateGeoRule400Response
genCreateGeoRule400Response n =
  CreateGeoRule400Response
    <$> arbitraryReducedMaybe n -- createGeoRule400ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- createGeoRule400ResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- createGeoRule400ResponseErrors :: Maybe [Text]
  
instance Arbitrary CreateRule201Response where
  arbitrary = sized genCreateRule201Response

genCreateRule201Response :: Int -> Gen CreateRule201Response
genCreateRule201Response n =
  CreateRule201Response
    <$> arbitraryReducedMaybe n -- createRule201ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- createRule201ResponseText :: Maybe Text
  
instance Arbitrary CreateRule400Response where
  arbitrary = sized genCreateRule400Response

genCreateRule400Response :: Int -> Gen CreateRule400Response
genCreateRule400Response n =
  CreateRule400Response
    <$> arbitraryReducedMaybe n -- createRule400ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- createRule400ResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- createRule400ResponseErrors :: Maybe [Text]
  
instance Arbitrary CreateRule500Response where
  arbitrary = sized genCreateRule500Response

genCreateRule500Response :: Int -> Gen CreateRule500Response
genCreateRule500Response n =
  CreateRule500Response
    <$> arbitraryReducedMaybe n -- createRule500ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- createRule500ResponseText :: Maybe Text
  
instance Arbitrary DeleteFilter200Response where
  arbitrary = sized genDeleteFilter200Response

genDeleteFilter200Response :: Int -> Gen DeleteFilter200Response
genDeleteFilter200Response n =
  DeleteFilter200Response
    <$> arbitraryReducedMaybe n -- deleteFilter200ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- deleteFilter200ResponseText :: Maybe Text
  
instance Arbitrary DeleteFilter400Response where
  arbitrary = sized genDeleteFilter400Response

genDeleteFilter400Response :: Int -> Gen DeleteFilter400Response
genDeleteFilter400Response n =
  DeleteFilter400Response
    <$> arbitraryReducedMaybe n -- deleteFilter400ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- deleteFilter400ResponseText :: Maybe Text
  
instance Arbitrary DeleteFilter500Response where
  arbitrary = sized genDeleteFilter500Response

genDeleteFilter500Response :: Int -> Gen DeleteFilter500Response
genDeleteFilter500Response n =
  DeleteFilter500Response
    <$> arbitraryReducedMaybe n -- deleteFilter500ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- deleteFilter500ResponseText :: Maybe Text
  
instance Arbitrary DeleteFirewallRule where
  arbitrary = sized genDeleteFirewallRule

genDeleteFirewallRule :: Int -> Gen DeleteFirewallRule
genDeleteFirewallRule n =
  DeleteFirewallRule
    <$> arbitrary -- deleteFirewallRuleRuleId :: Int
  
instance Arbitrary DeleteGeoFirewallRule where
  arbitrary = sized genDeleteGeoFirewallRule

genDeleteGeoFirewallRule :: Int -> Gen DeleteGeoFirewallRule
genDeleteGeoFirewallRule n =
  DeleteGeoFirewallRule
    <$> arbitrary -- deleteGeoFirewallRuleRuleId :: Int
  
instance Arbitrary DeleteMailAlertRequest where
  arbitrary = sized genDeleteMailAlertRequest

genDeleteMailAlertRequest :: Int -> Gen DeleteMailAlertRequest
genDeleteMailAlertRequest n =
  DeleteMailAlertRequest
    <$> arbitrary -- deleteMailAlertRequestAlertId :: Int
  
instance Arbitrary DenyRuleNew where
  arbitrary = sized genDenyRuleNew

genDenyRuleNew :: Int -> Gen DenyRuleNew
genDenyRuleNew n =
  DenyRuleNew
    <$> arbitrary -- denyRuleNewType :: E'Type2
    <*> arbitrary -- denyRuleNewData :: Text
    <*> arbitraryReducedMaybe n -- denyRuleNewUser :: Maybe Text
  
instance Arbitrary DenyRuleRecord where
  arbitrary = sized genDenyRuleRecord

genDenyRuleRecord :: Int -> Gen DenyRuleRecord
genDenyRuleRecord n =
  DenyRuleRecord
    <$> arbitrary -- denyRuleRecordType :: E'Type2
    <*> arbitrary -- denyRuleRecordData :: Text
    <*> arbitrary -- denyRuleRecordId :: Int
    <*> arbitrary -- denyRuleRecordCreated :: Text
    <*> arbitraryReducedMaybe n -- denyRuleRecordUser :: Maybe Text
  
instance Arbitrary DisableScrub200Response where
  arbitrary = sized genDisableScrub200Response

genDisableScrub200Response :: Int -> Gen DisableScrub200Response
genDisableScrub200Response n =
  DisableScrub200Response
    <$> arbitrary -- disableScrub200ResponseSuccess :: Bool
    <*> arbitrary -- disableScrub200ResponseText :: Text
  
instance Arbitrary DisableScrub400Response where
  arbitrary = sized genDisableScrub400Response

genDisableScrub400Response :: Int -> Gen DisableScrub400Response
genDisableScrub400Response n =
  DisableScrub400Response
    <$> arbitrary -- disableScrub400ResponseSuccess :: Bool
    <*> arbitrary -- disableScrub400ResponseText :: Text
  
instance Arbitrary DisableScrub500Response where
  arbitrary = sized genDisableScrub500Response

genDisableScrub500Response :: Int -> Gen DisableScrub500Response
genDisableScrub500Response n =
  DisableScrub500Response
    <$> arbitrary -- disableScrub500ResponseSuccess :: Bool
    <*> arbitrary -- disableScrub500ResponseText :: Text
  
instance Arbitrary DnsListItem where
  arbitrary = sized genDnsListItem

genDnsListItem :: Int -> Gen DnsListItem
genDnsListItem n =
  DnsListItem
    <$> arbitraryReducedMaybe n -- dnsListItemId :: Maybe Int
    <*> arbitraryReducedMaybe n -- dnsListItemName :: Maybe Text
    <*> arbitraryReducedMaybe n -- dnsListItemContent :: Maybe Text
  
instance Arbitrary DnsNewDomain where
  arbitrary = sized genDnsNewDomain

genDnsNewDomain :: Int -> Gen DnsNewDomain
genDnsNewDomain n =
  DnsNewDomain
    <$> arbitrary -- dnsNewDomainDomain :: Text
    <*> arbitrary -- dnsNewDomainIp :: Text
  
instance Arbitrary DnsNewRecord where
  arbitrary = sized genDnsNewRecord

genDnsNewRecord :: Int -> Gen DnsNewRecord
genDnsNewRecord n =
  DnsNewRecord
    <$> arbitrary -- dnsNewRecordName :: Text
    <*> arbitraryReduced n -- dnsNewRecordType :: DnsRecordType
    <*> arbitrary -- dnsNewRecordContent :: Text
    <*> arbitraryReducedMaybe n -- dnsNewRecordTtl :: Maybe Int
    <*> arbitraryReducedMaybe n -- dnsNewRecordPrio :: Maybe Int
  
instance Arbitrary DnsRecord where
  arbitrary = sized genDnsRecord

genDnsRecord :: Int -> Gen DnsRecord
genDnsRecord n =
  DnsRecord
    <$> arbitrary -- dnsRecordId :: Text
    <*> arbitrary -- dnsRecordDomainId :: Text
    <*> arbitrary -- dnsRecordName :: Text
    <*> arbitraryReduced n -- dnsRecordType :: DnsRecordType
    <*> arbitrary -- dnsRecordContent :: Text
    <*> arbitrary -- dnsRecordTtl :: Text
    <*> arbitrary -- dnsRecordPrio :: Text
    <*> arbitrary -- dnsRecordDisabled :: Text
    <*> arbitrary -- dnsRecordOrdername :: Text
    <*> arbitrary -- dnsRecordAuth :: Text
  
instance Arbitrary DnsUpdateRecord where
  arbitrary = sized genDnsUpdateRecord

genDnsUpdateRecord :: Int -> Gen DnsUpdateRecord
genDnsUpdateRecord n =
  DnsUpdateRecord
    <$> arbitraryReducedMaybe n -- dnsUpdateRecordName :: Maybe Text
    <*> arbitraryReducedMaybe n -- dnsUpdateRecordType :: Maybe DnsRecordType
    <*> arbitraryReducedMaybe n -- dnsUpdateRecordContent :: Maybe Text
    <*> arbitraryReducedMaybe n -- dnsUpdateRecordTtl :: Maybe Text
    <*> arbitraryReducedMaybe n -- dnsUpdateRecordPrio :: Maybe Text
    <*> arbitraryReducedMaybe n -- dnsUpdateRecordDisabled :: Maybe Text
    <*> arbitraryReducedMaybe n -- dnsUpdateRecordOrdername :: Maybe Text
    <*> arbitraryReducedMaybe n -- dnsUpdateRecordAuth :: Maybe Text
  
instance Arbitrary Domain where
  arbitrary = sized genDomain

genDomain :: Int -> Gen Domain
genDomain n =
  Domain
    <$> arbitraryReducedMaybe n -- domainServiceInfo :: Maybe DomainServiceInfo
    <*> arbitraryReducedMaybe n -- domainServiceTypes :: Maybe (Map.Map String DomainServiceType)
    <*> arbitraryReducedMaybe n -- domainClientLinks :: Maybe [DomainClientLink]
    <*> arbitraryReducedMaybe n -- domainBillingDetails :: Maybe DomainBillingDetails
    <*> arbitraryReducedMaybe n -- domainCustCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainCustCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceExtra :: Maybe DomainBillingExtra
    <*> arbitraryReducedMaybe n -- domainExtraInfoTables :: Maybe BackupExtraInfoTables
    <*> arbitraryReducedMaybe n -- domainServiceType :: Maybe DomainServiceType
    <*> arbitraryReducedMaybe n -- domainContactDetails :: Maybe DomainContactDetails
    <*> arbitraryReducedMaybe n -- domainPwarning :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTransferInfo :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainErrors :: Maybe Bool
    <*> arbitraryReducedMaybe n -- domainDomainLogs :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- domainAllInfo :: Maybe DomainAllInfo
    <*> arbitraryReducedMaybe n -- domainRegistrarStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainLocked :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacy :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAutoRenew :: Maybe Text
  
instance Arbitrary DomainAdminContact where
  arbitrary = sized genDomainAdminContact

genDomainAdminContact :: Int -> Gen DomainAdminContact
genDomainAdminContact n =
  DomainAdminContact
    <$> arbitraryReducedMaybe n -- domainAdminContactStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactState :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactOrgName :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactPostalCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactFax :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactAddress2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactAddress3 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactAddress1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactPhone :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactFirstName :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAdminContactLastName :: Maybe Text
  
instance Arbitrary DomainAllInfo where
  arbitrary = sized genDomainAllInfo

genDomainAllInfo :: Int -> Gen DomainAllInfo
genDomainAllInfo n =
  DomainAllInfo
    <$> arbitraryReducedMaybe n -- domainAllInfoOpsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributes :: Maybe DomainAllInfoAttributes
    <*> arbitraryReducedMaybe n -- domainAllInfoObject :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoResponseCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoAction :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoIsSuccess :: Maybe Text
  
instance Arbitrary DomainAllInfoAttributes where
  arbitrary = sized genDomainAllInfoAttributes

genDomainAllInfoAttributes :: Int -> Gen DomainAllInfoAttributes
genDomainAllInfoAttributes n =
  DomainAllInfoAttributes
    <$> arbitraryReducedMaybe n -- domainAllInfoAttributesContactSet :: Maybe DomainAllInfoAttributesContactSet
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesRegistryCreatedate :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesRegistryExpiredate :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesTldData :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesLetExpire :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesAutoRenew :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesSponsoringRsp :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesGdprConsentStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesNameserverList :: Maybe [DomainNameServer]
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesRegistryUpdatedate :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesAffiliateId :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesExpiredate :: Maybe Text
  
instance Arbitrary DomainAllInfoAttributesContactSet where
  arbitrary = sized genDomainAllInfoAttributesContactSet

genDomainAllInfoAttributesContactSet :: Int -> Gen DomainAllInfoAttributesContactSet
genDomainAllInfoAttributesContactSet n =
  DomainAllInfoAttributesContactSet
    <$> arbitraryReducedMaybe n -- domainAllInfoAttributesContactSetOwner :: Maybe DomainOwnerContact
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesContactSetAdmin :: Maybe DomainAdminContact
    <*> arbitraryReducedMaybe n -- domainAllInfoAttributesContactSetTech :: Maybe DomainTechContact
  
instance Arbitrary DomainBillingDetails where
  arbitrary = sized genDomainBillingDetails

genDomainBillingDetails :: Int -> Gen DomainBillingDetails
genDomainBillingDetails n =
  DomainBillingDetails
    <$> arbitraryReducedMaybe n -- domainBillingDetailsServiceLastInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingDetailsServicePaymentStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingDetailsServiceFrequency :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingDetailsNextDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingDetailsServiceNextInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingDetailsServiceCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingDetailsServiceCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingDetailsServiceCostInfo :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingDetailsServiceExtra :: Maybe DomainBillingExtra
    <*> arbitraryReducedMaybe n -- domainBillingDetailsServiceExtraJson :: Maybe Text
  
instance Arbitrary DomainBillingExtra where
  arbitrary = sized genDomainBillingExtra

genDomainBillingExtra :: Int -> Gen DomainBillingExtra
genDomainBillingExtra n =
  DomainBillingExtra
    <$> arbitraryReducedMaybe n -- domainBillingExtraOrder :: Maybe DomainOrderResponse
    <*> arbitraryReducedMaybe n -- domainBillingExtraOrderId :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraDomainId :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraProvProcessPending :: Maybe DomainProvProcessPending
    <*> arbitraryReducedMaybe n -- domainBillingExtraEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraFirstname :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraLastname :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraCompany :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraAddress2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraAddress3 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraState :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraZip :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraPhone :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainBillingExtraFax :: Maybe Text
  
instance Arbitrary DomainClientLink where
  arbitrary = sized genDomainClientLink

genDomainClientLink :: Int -> Gen DomainClientLink
genDomainClientLink n =
  DomainClientLink
    <$> arbitraryReducedMaybe n -- domainClientLinkLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainClientLinkLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainClientLinkIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainClientLinkIconText :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainClientLinkHelpText :: Maybe Text
  
instance Arbitrary DomainContactDetails where
  arbitrary = sized genDomainContactDetails

genDomainContactDetails :: Int -> Gen DomainContactDetails
genDomainContactDetails n =
  DomainContactDetails
    <$> arbitraryReducedMaybe n -- domainContactDetailsStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsState :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsOrgName :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsPostalCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsFax :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsAddress2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsAddress3 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsAddress1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsPhone :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsFirstName :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainContactDetailsLastName :: Maybe Text
  
instance Arbitrary DomainDnssecRecords where
  arbitrary = sized genDomainDnssecRecords

genDomainDnssecRecords :: Int -> Gen DomainDnssecRecords
genDomainDnssecRecords n =
  
  pure DomainDnssecRecords
   
instance Arbitrary DomainDnssecRecordsInner where
  arbitrary = sized genDomainDnssecRecordsInner

genDomainDnssecRecordsInner :: Int -> Gen DomainDnssecRecordsInner
genDomainDnssecRecordsInner n =
  DomainDnssecRecordsInner
    <$> arbitraryReducedMaybe n -- domainDnssecRecordsInnerAlgorithm :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainDnssecRecordsInnerDigestType :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainDnssecRecordsInnerDigest :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainDnssecRecordsInnerKeyTag :: Maybe Text
  
instance Arbitrary DomainDnssecRequest where
  arbitrary = sized genDomainDnssecRequest

genDomainDnssecRequest :: Int -> Gen DomainDnssecRequest
genDomainDnssecRequest n =
  DomainDnssecRequest
    <$> arbitraryReducedMaybe n -- domainDnssecRequestAlgorithm :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- domainDnssecRequestDigestType :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- domainDnssecRequestDigest :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- domainDnssecRequestKeyTag :: Maybe [Int]
  
instance Arbitrary DomainLookupResponse where
  arbitrary = sized genDomainLookupResponse

genDomainLookupResponse :: Int -> Gen DomainLookupResponse
genDomainLookupResponse n =
  DomainLookupResponse
    <$> arbitraryReducedMaybe n -- domainLookupResponseAvailable :: Maybe Bool
    <*> arbitraryReducedMaybe n -- domainLookupResponsePremium :: Maybe Bool
    <*> arbitraryReducedMaybe n -- domainLookupResponseWebsite :: Maybe Bool
    <*> arbitraryReducedMaybe n -- domainLookupResponseDomainService :: Maybe Bool
    <*> arbitraryReducedMaybeValue n -- domainLookupResponseService :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- domainLookupResponseWhoisPrivacy :: Maybe Bool
    <*> arbitraryReducedMaybe n -- domainLookupResponseNew :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainLookupResponseRenewal :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainLookupResponseTransfer :: Maybe Text
    <*> arbitraryReducedMaybeValue n -- domainLookupResponseFields :: Maybe A.Value
    <*> arbitraryReducedMaybeValue n -- domainLookupResponseCurrencies :: Maybe A.Value
  
instance Arbitrary DomainNameServer where
  arbitrary = sized genDomainNameServer

genDomainNameServer :: Int -> Gen DomainNameServer
genDomainNameServer n =
  DomainNameServer
    <$> arbitraryReducedMaybe n -- domainNameServerSortorder :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainNameServerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainNameServerIpaddress :: Maybe Text
  
instance Arbitrary DomainNameserverGetResponse where
  arbitrary = sized genDomainNameserverGetResponse

genDomainNameserverGetResponse :: Int -> Gen DomainNameserverGetResponse
genDomainNameserverGetResponse n =
  
  pure DomainNameserverGetResponse
   
instance Arbitrary DomainNameserverGetResponseInner where
  arbitrary = sized genDomainNameserverGetResponseInner

genDomainNameserverGetResponseInner :: Int -> Gen DomainNameserverGetResponseInner
genDomainNameserverGetResponseInner n =
  DomainNameserverGetResponseInner
    <$> arbitrary -- domainNameserverGetResponseInnerName :: Text
    <*> arbitrary -- domainNameserverGetResponseInnerIpaddress :: Text
    <*> arbitrary -- domainNameserverGetResponseInnerCanDelete :: E'XdpAction
  
instance Arbitrary DomainNameserverPostRequest where
  arbitrary = sized genDomainNameserverPostRequest

genDomainNameserverPostRequest :: Int -> Gen DomainNameserverPostRequest
genDomainNameserverPostRequest n =
  DomainNameserverPostRequest
    <$> arbitrary -- domainNameserverPostRequestName :: Text
    <*> arbitrary -- domainNameserverPostRequestIpAddress :: Text
  
instance Arbitrary DomainNameserverPutRequest where
  arbitrary = sized genDomainNameserverPutRequest

genDomainNameserverPutRequest :: Int -> Gen DomainNameserverPutRequest
genDomainNameserverPutRequest n =
  DomainNameserverPutRequest
    <$> arbitrary -- domainNameserverPutRequestNameserver :: [Text]
  
instance Arbitrary DomainOrder where
  arbitrary = sized genDomainOrder

genDomainOrder :: Int -> Gen DomainOrder
genDomainOrder n =
  DomainOrder
    <$> arbitraryReducedMaybe n -- domainOrderWhoisPrivacyCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderServices :: Maybe DomainOrderServices
    <*> arbitraryReducedMaybeValue n -- domainOrderTldServices :: Maybe A.Value
  
instance Arbitrary DomainOrderRequest where
  arbitrary = sized genDomainOrderRequest

genDomainOrderRequest :: Int -> Gen DomainOrderRequest
genDomainOrderRequest n =
  DomainOrderRequest
    <$> arbitrary -- domainOrderRequestHostname :: Text
    <*> arbitraryReducedMaybe n -- domainOrderRequestType :: Maybe E'Type
    <*> arbitraryReducedMaybe n -- domainOrderRequestCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderRequestWhoisPrivacy :: Maybe E'WhoisPrivacy
  
instance Arbitrary DomainOrderResponse where
  arbitrary = sized genDomainOrderResponse

genDomainOrderResponse :: Int -> Gen DomainOrderResponse
genDomainOrderResponse n =
  DomainOrderResponse
    <$> arbitraryReducedMaybe n -- domainOrderResponseOpsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderResponseProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderResponseIsSuccess :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderResponseAction :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderResponseAttributes :: Maybe DomainOrderResponseAttributes
    <*> arbitraryReducedMaybe n -- domainOrderResponseResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderResponseObject :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderResponseResponseCode :: Maybe Text
  
instance Arbitrary DomainOrderResponseAttributes where
  arbitrary = sized genDomainOrderResponseAttributes

genDomainOrderResponseAttributes :: Int -> Gen DomainOrderResponseAttributes
genDomainOrderResponseAttributes n =
  DomainOrderResponseAttributes
    <$> arbitraryReducedMaybe n -- domainOrderResponseAttributesId :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderResponseAttributesAdminEmail :: Maybe Text
  
instance Arbitrary DomainOrderServices where
  arbitrary = sized genDomainOrderServices

genDomainOrderServices :: Int -> Gen DomainOrderServices
genDomainOrderServices n =
  DomainOrderServices
    <$> arbitraryReducedMaybe n -- domainOrderServicesDomainOrderServices10001 :: Maybe DomainOrderServices10001
  
instance Arbitrary DomainOrderServices10001 where
  arbitrary = sized genDomainOrderServices10001

genDomainOrderServices10001 :: Int -> Gen DomainOrderServices10001
genDomainOrderServices10001 n =
  DomainOrderServices10001
    <$> arbitraryReducedMaybe n -- domainOrderServices10001ServicesId :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderServices10001ServicesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderServices10001ServicesCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderServices10001ServicesCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderServices10001ServicesCategory :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderServices10001ServicesBuyable :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderServices10001ServicesType :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderServices10001ServicesField1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderServices10001ServicesField2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderServices10001ServicesModule :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOrderServices10001ServicesHidden :: Maybe Text
  
instance Arbitrary DomainOwnerContact where
  arbitrary = sized genDomainOwnerContact

genDomainOwnerContact :: Int -> Gen DomainOwnerContact
genDomainOwnerContact n =
  DomainOwnerContact
    <$> arbitraryReducedMaybe n -- domainOwnerContactPostalCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactOrgName :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactState :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactFirstName :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactLastName :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactAddress3 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactFax :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactAddress2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactPhone :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainOwnerContactAddress1 :: Maybe Text
  
instance Arbitrary DomainProvProcessPending where
  arbitrary = sized genDomainProvProcessPending

genDomainProvProcessPending :: Int -> Gen DomainProvProcessPending
genDomainProvProcessPending n =
  DomainProvProcessPending
    <$> arbitraryReducedMaybe n -- domainProvProcessPendingOpsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainProvProcessPendingResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainProvProcessPendingProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainProvProcessPendingResponseCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainProvProcessPendingAction :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainProvProcessPendingObject :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainProvProcessPendingIsSuccess :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainProvProcessPendingAttributes :: Maybe DomainProvProcessPendingAttributes
  
instance Arbitrary DomainProvProcessPendingAttributes where
  arbitrary = sized genDomainProvProcessPendingAttributes

genDomainProvProcessPendingAttributes :: Int -> Gen DomainProvProcessPendingAttributes
genDomainProvProcessPendingAttributes n =
  DomainProvProcessPendingAttributes
    <$> arbitraryReducedMaybe n -- domainProvProcessPendingAttributesId :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainProvProcessPendingAttributesOrderId :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainProvProcessPendingAttributesRegistrationExpirationDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainProvProcessPendingAttributesFAutoRenew :: Maybe Text
  
instance Arbitrary DomainRow where
  arbitrary = sized genDomainRow

genDomainRow :: Int -> Gen DomainRow
genDomainRow n =
  DomainRow
    <$> arbitraryReducedMaybe n -- domainRowDomainId :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainRowDomainHostname :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainRowDomainExpireDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainRowCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainRowDomainStatus :: Maybe Text
  
instance Arbitrary DomainSearchResponse where
  arbitrary = sized genDomainSearchResponse

genDomainSearchResponse :: Int -> Gen DomainSearchResponse
genDomainSearchResponse n =
  DomainSearchResponse
    <$> arbitraryReducedMaybe n -- domainSearchResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- domainSearchResponseResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainSearchResponseResponseTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainSearchResponseLookup :: Maybe [A.Value]
    <*> arbitraryReducedMaybe n -- domainSearchResponseSuggest :: Maybe [A.Value]
    <*> arbitraryReducedMaybe n -- domainSearchResponseTlds :: Maybe [Text]
  
instance Arbitrary DomainServiceInfo where
  arbitrary = sized genDomainServiceInfo

genDomainServiceInfo :: Int -> Gen DomainServiceInfo
genDomainServiceInfo n =
  DomainServiceInfo
    <$> arbitraryReducedMaybe n -- domainServiceInfoDomainId :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceInfoDomainHostname :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceInfoDomainUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceInfoDomainPassword :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceInfoDomainType :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceInfoDomainCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceInfoDomainExpireDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceInfoDomainOrderDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceInfoDomainCustid :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceInfoDomainStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceInfoDomainInvoice :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceInfoDomainCoupon :: Maybe Text
  
instance Arbitrary DomainServiceType where
  arbitrary = sized genDomainServiceType

genDomainServiceType :: Int -> Gen DomainServiceType
genDomainServiceType n =
  DomainServiceType
    <$> arbitraryReducedMaybe n -- domainServiceTypeServicesId :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceTypeServicesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceTypeServicesCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceTypeServicesCategory :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceTypeServicesBuyable :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceTypeServicesType :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceTypeServicesField1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceTypeServicesField2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainServiceTypeServicesModule :: Maybe Text
  
instance Arbitrary DomainTechContact where
  arbitrary = sized genDomainTechContact

genDomainTechContact :: Int -> Gen DomainTechContact
genDomainTechContact n =
  DomainTechContact
    <$> arbitraryReducedMaybe n -- domainTechContactState :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactOrgName :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactPostalCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactFax :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactAddress2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactAddress3 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactAddress1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactPhone :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactFirstName :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainTechContactLastName :: Maybe Text
  
instance Arbitrary DomainWhoisPrivacyRequest where
  arbitrary = sized genDomainWhoisPrivacyRequest

genDomainWhoisPrivacyRequest :: Int -> Gen DomainWhoisPrivacyRequest
genDomainWhoisPrivacyRequest n =
  DomainWhoisPrivacyRequest
    <$> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestFunc :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestCsrfToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainFirstname :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainLastname :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainAddress2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainAddress3 :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainState :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainZip :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainPhone :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainFax :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainCompany :: Maybe Text
    <*> arbitraryReducedMaybe n -- domainWhoisPrivacyRequestDomainExtra :: Maybe Text
  
instance Arbitrary DownloadQsBackup200Response where
  arbitrary = sized genDownloadQsBackup200Response

genDownloadQsBackup200Response :: Int -> Gen DownloadQsBackup200Response
genDownloadQsBackup200Response n =
  DownloadQsBackup200Response
    <$> arbitraryReducedMaybe n -- downloadQsBackup200ResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- downloadQsBackup200ResponseUrl :: Maybe Text
  
instance Arbitrary DownloadQsBackupRequest where
  arbitrary = sized genDownloadQsBackupRequest

genDownloadQsBackupRequest :: Int -> Gen DownloadQsBackupRequest
genDownloadQsBackupRequest n =
  DownloadQsBackupRequest
    <$> arbitrary -- downloadQsBackupRequestFile :: Text
  
instance Arbitrary EmailAddress where
  arbitrary = sized genEmailAddress

genEmailAddress :: Int -> Gen EmailAddress
genEmailAddress n =
  EmailAddress
    <$> arbitraryReducedMaybe n -- emailAddressEmail :: Maybe Text
  
instance Arbitrary EmailAddressName where
  arbitrary = sized genEmailAddressName

genEmailAddressName :: Int -> Gen EmailAddressName
genEmailAddressName n =
  EmailAddressName
    <$> arbitrary -- emailAddressNameEmail :: Text
    <*> arbitraryReducedMaybe n -- emailAddressNameName :: Maybe Text
  
instance Arbitrary EnableScrub200Response where
  arbitrary = sized genEnableScrub200Response

genEnableScrub200Response :: Int -> Gen EnableScrub200Response
genEnableScrub200Response n =
  EnableScrub200Response
    <$> arbitrary -- enableScrub200ResponseSuccess :: Bool
    <*> arbitrary -- enableScrub200ResponseText :: Text
  
instance Arbitrary EnableScrub500Response where
  arbitrary = sized genEnableScrub500Response

genEnableScrub500Response :: Int -> Gen EnableScrub500Response
genEnableScrub500Response n =
  EnableScrub500Response
    <$> arbitrary -- enableScrub500ResponseSuccess :: Bool
    <*> arbitrary -- enableScrub500ResponseText :: Text
  
instance Arbitrary FloatingIpOrderRequest where
  arbitrary = sized genFloatingIpOrderRequest

genFloatingIpOrderRequest :: Int -> Gen FloatingIpOrderRequest
genFloatingIpOrderRequest n =
  FloatingIpOrderRequest
    <$> arbitrary -- floatingIpOrderRequestServiceType :: Int
    <*> arbitraryReducedMaybe n -- floatingIpOrderRequestCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- floatingIpOrderRequestComment :: Maybe Text
  
instance Arbitrary FloatingIpsCancel200Response where
  arbitrary = sized genFloatingIpsCancel200Response

genFloatingIpsCancel200Response :: Int -> Gen FloatingIpsCancel200Response
genFloatingIpsCancel200Response n =
  FloatingIpsCancel200Response
    <$> arbitrary -- floatingIpsCancel200ResponseSuccess :: Bool
    <*> arbitrary -- floatingIpsCancel200ResponseText :: Text
  
instance Arbitrary GenericResponse where
  arbitrary = sized genGenericResponse

genGenericResponse :: Int -> Gen GenericResponse
genGenericResponse n =
  GenericResponse
    <$> arbitrary -- genericResponseStatus :: Text
    <*> arbitrary -- genericResponseText :: Text
  
instance Arbitrary GetAccountInfo401Response where
  arbitrary = sized genGetAccountInfo401Response

genGetAccountInfo401Response :: Int -> Gen GetAccountInfo401Response
genGetAccountInfo401Response n =
  GetAccountInfo401Response
    <$> arbitrary -- getAccountInfo401ResponseCode :: Int
    <*> arbitrary -- getAccountInfo401ResponseMessage :: Text
  
instance Arbitrary GetAccountLocales200ResponseValue where
  arbitrary = sized genGetAccountLocales200ResponseValue

genGetAccountLocales200ResponseValue :: Int -> Gen GetAccountLocales200ResponseValue
genGetAccountLocales200ResponseValue n =
  GetAccountLocales200ResponseValue
    <$> arbitraryReducedMaybe n -- getAccountLocales200ResponseValueName :: Maybe Text
    <*> arbitraryReducedMaybe n -- getAccountLocales200ResponseValueLocalName :: Maybe Text
  
instance Arbitrary GetAccountTfaSetup200Response where
  arbitrary = sized genGetAccountTfaSetup200Response

genGetAccountTfaSetup200Response :: Int -> Gen GetAccountTfaSetup200Response
genGetAccountTfaSetup200Response n =
  GetAccountTfaSetup200Response
    <$> arbitraryReducedMaybe n -- getAccountTfaSetup200Response2faGoogleKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- getAccountTfaSetup200Response2faGoogleSplit :: Maybe Text
  
instance Arbitrary GetAffiliateSignups200Response where
  arbitrary = sized genGetAffiliateSignups200Response

genGetAffiliateSignups200Response :: Int -> Gen GetAffiliateSignups200Response
genGetAffiliateSignups200Response n =
  GetAffiliateSignups200Response
    <$> arbitraryReducedMaybeValue n -- getAffiliateSignups200ResponseData :: Maybe A.Value
  
instance Arbitrary GetOauthRedirect200Response where
  arbitrary = sized genGetOauthRedirect200Response

genGetOauthRedirect200Response :: Int -> Gen GetOauthRedirect200Response
genGetOauthRedirect200Response n =
  GetOauthRedirect200Response
    <$> arbitraryReducedMaybe n -- getOauthRedirect200ResponseRedirectUrl :: Maybe Text
  
instance Arbitrary GetOrderDetail200Response where
  arbitrary = sized genGetOrderDetail200Response

genGetOrderDetail200Response :: Int -> Gen GetOrderDetail200Response
genGetOrderDetail200Response n =
  GetOrderDetail200Response
    <$> arbitraryReducedMaybe n -- getOrderDetail200ResponsePackageCosts :: Maybe GetOrderDetail200ResponsePackageCosts
    <*> arbitraryReducedMaybe n -- getOrderDetail200ResponseServiceTypes :: Maybe [GetOrderDetail200ResponseServiceTypesInner]
    <*> arbitraryReducedMaybe n -- getOrderDetail200ResponseIps :: Maybe [GetOrderDetail200ResponseIpsInner]
  
instance Arbitrary GetOrderDetail200ResponseIpsInner where
  arbitrary = sized genGetOrderDetail200ResponseIpsInner

genGetOrderDetail200ResponseIpsInner :: Int -> Gen GetOrderDetail200ResponseIpsInner
genGetOrderDetail200ResponseIpsInner n =
  GetOrderDetail200ResponseIpsInner
    <$> arbitraryReducedMaybe n -- getOrderDetail200ResponseIpsInnerServiceId :: Maybe Double
    <*> arbitraryReducedMaybe n -- getOrderDetail200ResponseIpsInnerServiceModule :: Maybe Text
    <*> arbitraryReducedMaybe n -- getOrderDetail200ResponseIpsInnerServiceHostname :: Maybe Text
  
instance Arbitrary GetOrderDetail200ResponsePackageCosts where
  arbitrary = sized genGetOrderDetail200ResponsePackageCosts

genGetOrderDetail200ResponsePackageCosts :: Int -> Gen GetOrderDetail200ResponsePackageCosts
genGetOrderDetail200ResponsePackageCosts n =
  GetOrderDetail200ResponsePackageCosts
    <$> arbitraryReducedMaybe n -- getOrderDetail200ResponsePackageCostsPackageId :: Maybe Double
    <*> arbitraryReducedMaybe n -- getOrderDetail200ResponsePackageCostsPackageCost :: Maybe Double
    <*> arbitraryReducedMaybe n -- getOrderDetail200ResponsePackageCostsCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- getOrderDetail200ResponsePackageCostsCurrencySymbol :: Maybe Text
  
instance Arbitrary GetOrderDetail200ResponseServiceTypesInner where
  arbitrary = sized genGetOrderDetail200ResponseServiceTypesInner

genGetOrderDetail200ResponseServiceTypesInner :: Int -> Gen GetOrderDetail200ResponseServiceTypesInner
genGetOrderDetail200ResponseServiceTypesInner n =
  GetOrderDetail200ResponseServiceTypesInner
    <$> arbitraryReducedMaybe n -- getOrderDetail200ResponseServiceTypesInnerServicesId :: Maybe Int
    <*> arbitraryReducedMaybe n -- getOrderDetail200ResponseServiceTypesInnerServicesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- getOrderDetail200ResponseServiceTypesInnerServicesCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- getOrderDetail200ResponseServiceTypesInnerServicesField1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- getOrderDetail200ResponseServiceTypesInnerServicesField2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- getOrderDetail200ResponseServiceTypesInnerServicesModule :: Maybe Text
  
instance Arbitrary GetScrubIpDetails200Response where
  arbitrary = sized genGetScrubIpDetails200Response

genGetScrubIpDetails200Response :: Int -> Gen GetScrubIpDetails200Response
genGetScrubIpDetails200Response n =
  GetScrubIpDetails200Response
    <$> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfo :: Maybe GetScrubIpDetails200ResponseServiceInfo
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseClientLinks :: Maybe [GetScrubIpDetails200ResponseClientLinksInner]
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseBillingDetails :: Maybe GetScrubIpDetails200ResponseBillingDetails
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseCustCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseCustCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponsePackage :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseExtraInfoTables :: Maybe GetScrubIpDetails200ResponseExtraInfoTables
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewall :: Maybe GetScrubIpDetails200ResponseFilterFirewall
  
instance Arbitrary GetScrubIpDetails200ResponseBillingDetails where
  arbitrary = sized genGetScrubIpDetails200ResponseBillingDetails

genGetScrubIpDetails200ResponseBillingDetails :: Int -> Gen GetScrubIpDetails200ResponseBillingDetails
genGetScrubIpDetails200ResponseBillingDetails n =
  GetScrubIpDetails200ResponseBillingDetails
    <$> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseBillingDetailsServiceLastInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseBillingDetailsServicePaymentStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseBillingDetailsServiceFrequency :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseBillingDetailsNextDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseBillingDetailsServiceNextInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseBillingDetailsServiceCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseBillingDetailsServiceCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseBillingDetailsServiceCostInfo :: Maybe Text
  
instance Arbitrary GetScrubIpDetails200ResponseClientLinksInner where
  arbitrary = sized genGetScrubIpDetails200ResponseClientLinksInner

genGetScrubIpDetails200ResponseClientLinksInner :: Int -> Gen GetScrubIpDetails200ResponseClientLinksInner
genGetScrubIpDetails200ResponseClientLinksInner n =
  GetScrubIpDetails200ResponseClientLinksInner
    <$> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseClientLinksInnerLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseClientLinksInnerLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseClientLinksInnerIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseClientLinksInnerIconText :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseClientLinksInnerHelpText :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseClientLinksInnerOtherAttr :: Maybe Text
  
instance Arbitrary GetScrubIpDetails200ResponseExtraInfoTables where
  arbitrary = sized genGetScrubIpDetails200ResponseExtraInfoTables

genGetScrubIpDetails200ResponseExtraInfoTables :: Int -> Gen GetScrubIpDetails200ResponseExtraInfoTables
genGetScrubIpDetails200ResponseExtraInfoTables n =
  GetScrubIpDetails200ResponseExtraInfoTables
    <$> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseExtraInfoTablesScrubIps :: Maybe GetScrubIpDetails200ResponseExtraInfoTablesScrubIps
  
instance Arbitrary GetScrubIpDetails200ResponseExtraInfoTablesScrubIps where
  arbitrary = sized genGetScrubIpDetails200ResponseExtraInfoTablesScrubIps

genGetScrubIpDetails200ResponseExtraInfoTablesScrubIps :: Int -> Gen GetScrubIpDetails200ResponseExtraInfoTablesScrubIps
genGetScrubIpDetails200ResponseExtraInfoTablesScrubIps n =
  GetScrubIpDetails200ResponseExtraInfoTablesScrubIps
    <$> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseExtraInfoTablesScrubIpsTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseExtraInfoTablesScrubIpsRows :: Maybe [GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner]
  
instance Arbitrary GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner where
  arbitrary = sized genGetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner

genGetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner :: Int -> Gen GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner
genGetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner n =
  GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner
    <$> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInnerDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInnerValue :: Maybe Text
  
instance Arbitrary GetScrubIpDetails200ResponseFilterFirewall where
  arbitrary = sized genGetScrubIpDetails200ResponseFilterFirewall

genGetScrubIpDetails200ResponseFilterFirewall :: Int -> Gen GetScrubIpDetails200ResponseFilterFirewall
genGetScrubIpDetails200ResponseFilterFirewall n =
  GetScrubIpDetails200ResponseFilterFirewall
    <$> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallRules :: Maybe [GetScrubIpDetails200ResponseFilterFirewallRulesInner]
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallFilters :: Maybe [GetScrubIpDetails200ResponseFilterFirewallFiltersInner]
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallScrubEnabled :: Maybe Int
  
instance Arbitrary GetScrubIpDetails200ResponseFilterFirewallFiltersInner where
  arbitrary = sized genGetScrubIpDetails200ResponseFilterFirewallFiltersInner

genGetScrubIpDetails200ResponseFilterFirewallFiltersInner :: Int -> Gen GetScrubIpDetails200ResponseFilterFirewallFiltersInner
genGetScrubIpDetails200ResponseFilterFirewallFiltersInner n =
  GetScrubIpDetails200ResponseFilterFirewallFiltersInner
    <$> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallFiltersInnerDaddr :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallFiltersInnerDest :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallFiltersInnerFilterName :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallFiltersInnerDestinationIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallFiltersInnerFilter :: Maybe Text
  
instance Arbitrary GetScrubIpDetails200ResponseFilterFirewallRulesInner where
  arbitrary = sized genGetScrubIpDetails200ResponseFilterFirewallRulesInner

genGetScrubIpDetails200ResponseFilterFirewallRulesInner :: Int -> Gen GetScrubIpDetails200ResponseFilterFirewallRulesInner
genGetScrubIpDetails200ResponseFilterFirewallRulesInner n =
  GetScrubIpDetails200ResponseFilterFirewallRulesInner
    <$> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallRulesInnerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallRulesInnerSourceIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallRulesInnerDestinationIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallRulesInnerProtocolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallRulesInnerSourcePort :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallRulesInnerDestinationPort :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallRulesInnerXdpAction :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseFilterFirewallRulesInnerGlobalDrop :: Maybe Text
  
instance Arbitrary GetScrubIpDetails200ResponseServiceInfo where
  arbitrary = sized genGetScrubIpDetails200ResponseServiceInfo

genGetScrubIpDetails200ResponseServiceInfo :: Int -> Gen GetScrubIpDetails200ResponseServiceInfo
genGetScrubIpDetails200ResponseServiceInfo n =
  GetScrubIpDetails200ResponseServiceInfo
    <$> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfoScrubIpId :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfoScrubIpType :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfoScrubIpCustid :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfoScrubIpOrderDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfoScrubIpIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfoScrubIpServiceId :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfoScrubIpServiceModule :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfoScrubIpStatus :: Maybe E'ScrubIpStatus
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfoScrubIpInvoice :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfoScrubIpCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfoScrubIpCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- getScrubIpDetails200ResponseServiceInfoScrubIpComment :: Maybe Text
  
instance Arbitrary GetWebsiteBuyIp200Response where
  arbitrary = sized genGetWebsiteBuyIp200Response

genGetWebsiteBuyIp200Response :: Int -> Gen GetWebsiteBuyIp200Response
genGetWebsiteBuyIp200Response n =
  GetWebsiteBuyIp200Response
    <$> arbitraryReducedMaybe n -- getWebsiteBuyIp200ResponseIps :: Maybe (Map.Map String Text)
  
instance Arbitrary Home where
  arbitrary = sized genHome

genHome :: Int -> Gen Home
genHome n =
  Home
    <$> arbitrary -- homeLastLoginIp :: Text
    <*> arbitrary -- homeLastLogin :: Text
    <*> arbitrary -- homeCurrency :: Text
    <*> arbitrary -- homeAmount :: Text
    <*> arbitrary -- homeInvoiceList :: Int
    <*> arbitrary -- homeBalance :: Text
    <*> arbitrary -- homeFullName :: Text
    <*> arbitrary -- homeEmail :: Text
    <*> arbitrary -- homeTickets :: [Text]
    <*> arbitraryReduced n -- homeTicketStatus :: HomeTicketStatus
    <*> arbitraryReduced n -- homeTicketStatusView :: HomeTicketStatusView
    <*> arbitraryReduced n -- homeDetails :: HomeDetails
    <*> arbitraryReduced n -- homeServices :: HomeServices
    <*> arbitrary -- homeAffiliateAmount :: Text
  
instance Arbitrary HomeDetails where
  arbitrary = sized genHomeDetails

genHomeDetails :: Int -> Gen HomeDetails
genHomeDetails n =
  HomeDetails
    <$> arbitraryReducedMaybe n -- homeDetailsModules :: Maybe HomeDetailsModules
  
instance Arbitrary HomeDetailsModules where
  arbitrary = sized genHomeDetailsModules

genHomeDetailsModules :: Int -> Gen HomeDetailsModules
genHomeDetailsModules n =
  HomeDetailsModules
    <$> arbitraryReducedMaybe n -- homeDetailsModulesDomains :: Maybe HomeDetailsModulesDomains
    <*> arbitraryReducedMaybe n -- homeDetailsModulesWebhosting :: Maybe HomeDetailsModulesWebhosting
    <*> arbitraryReducedMaybe n -- homeDetailsModulesVps :: Maybe HomeDetailsModulesVps
    <*> arbitraryReducedMaybe n -- homeDetailsModulesLicenses :: Maybe HomeDetailsModulesLicenses
    <*> arbitraryReducedMaybe n -- homeDetailsModulesBackups :: Maybe HomeDetailsModulesBackups
    <*> arbitraryReducedMaybe n -- homeDetailsModulesServers :: Maybe HomeDetailsModulesServers
    <*> arbitraryReducedMaybe n -- homeDetailsModulesQuickservers :: Maybe HomeDetailsModulesQuickservers
  
instance Arbitrary HomeDetailsModulesBackups where
  arbitrary = sized genHomeDetailsModulesBackups

genHomeDetailsModulesBackups :: Int -> Gen HomeDetailsModulesBackups
genHomeDetailsModulesBackups n =
  HomeDetailsModulesBackups
    <$> arbitraryReducedMaybe n -- homeDetailsModulesBackupsIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesBackupsViewLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesBackupsHeading :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesBackupsBuyLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesBackupsListLink :: Maybe Text
  
instance Arbitrary HomeDetailsModulesDomains where
  arbitrary = sized genHomeDetailsModulesDomains

genHomeDetailsModulesDomains :: Int -> Gen HomeDetailsModulesDomains
genHomeDetailsModulesDomains n =
  HomeDetailsModulesDomains
    <$> arbitraryReducedMaybe n -- homeDetailsModulesDomainsIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesDomainsViewLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesDomainsHeading :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesDomainsBuyLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesDomainsListLink :: Maybe Text
  
instance Arbitrary HomeDetailsModulesLicenses where
  arbitrary = sized genHomeDetailsModulesLicenses

genHomeDetailsModulesLicenses :: Int -> Gen HomeDetailsModulesLicenses
genHomeDetailsModulesLicenses n =
  HomeDetailsModulesLicenses
    <$> arbitraryReducedMaybe n -- homeDetailsModulesLicensesIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesLicensesViewLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesLicensesHeading :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesLicensesBuyLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesLicensesListLink :: Maybe Text
  
instance Arbitrary HomeDetailsModulesQuickservers where
  arbitrary = sized genHomeDetailsModulesQuickservers

genHomeDetailsModulesQuickservers :: Int -> Gen HomeDetailsModulesQuickservers
genHomeDetailsModulesQuickservers n =
  HomeDetailsModulesQuickservers
    <$> arbitraryReducedMaybe n -- homeDetailsModulesQuickserversIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesQuickserversViewLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesQuickserversHeading :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesQuickserversBuyLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesQuickserversListLink :: Maybe Text
  
instance Arbitrary HomeDetailsModulesServers where
  arbitrary = sized genHomeDetailsModulesServers

genHomeDetailsModulesServers :: Int -> Gen HomeDetailsModulesServers
genHomeDetailsModulesServers n =
  HomeDetailsModulesServers
    <$> arbitraryReducedMaybe n -- homeDetailsModulesServersIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesServersViewLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesServersHeading :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesServersBuyLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesServersListLink :: Maybe Text
  
instance Arbitrary HomeDetailsModulesVps where
  arbitrary = sized genHomeDetailsModulesVps

genHomeDetailsModulesVps :: Int -> Gen HomeDetailsModulesVps
genHomeDetailsModulesVps n =
  HomeDetailsModulesVps
    <$> arbitraryReducedMaybe n -- homeDetailsModulesVpsIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesVpsViewLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesVpsHeading :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesVpsBuyLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesVpsListLink :: Maybe Text
  
instance Arbitrary HomeDetailsModulesWebhosting where
  arbitrary = sized genHomeDetailsModulesWebhosting

genHomeDetailsModulesWebhosting :: Int -> Gen HomeDetailsModulesWebhosting
genHomeDetailsModulesWebhosting n =
  HomeDetailsModulesWebhosting
    <$> arbitraryReducedMaybe n -- homeDetailsModulesWebhostingIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesWebhostingViewLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesWebhostingHeading :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesWebhostingBuyLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeDetailsModulesWebhostingListLink :: Maybe Text
  
instance Arbitrary HomeServices where
  arbitrary = sized genHomeServices

genHomeServices :: Int -> Gen HomeServices
genHomeServices n =
  HomeServices
    <$> arbitraryReducedMaybe n -- homeServicesDomains :: Maybe HomeServicesDomains
    <*> arbitraryReducedMaybe n -- homeServicesWebhosting :: Maybe HomeServicesWebhosting
    <*> arbitraryReducedMaybe n -- homeServicesVps :: Maybe HomeServicesVps
    <*> arbitraryReducedMaybe n -- homeServicesLicenses :: Maybe HomeServicesLicenses
    <*> arbitraryReducedMaybe n -- homeServicesServers :: Maybe HomeServicesServers
    <*> arbitraryReducedMaybe n -- homeServicesBackups :: Maybe HomeServicesBackups
  
instance Arbitrary HomeServicesBackups where
  arbitrary = sized genHomeServicesBackups

genHomeServicesBackups :: Int -> Gen HomeServicesBackups
genHomeServicesBackups n =
  HomeServicesBackups
    <$> arbitraryReducedMaybe n -- homeServicesBackupsLinks :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- homeServicesBackupsCount :: Maybe Int
  
instance Arbitrary HomeServicesDomains where
  arbitrary = sized genHomeServicesDomains

genHomeServicesDomains :: Int -> Gen HomeServicesDomains
genHomeServicesDomains n =
  HomeServicesDomains
    <$> arbitraryReducedMaybe n -- homeServicesDomainsLinks :: Maybe HomeServicesDomainsLinks
    <*> arbitraryReducedMaybe n -- homeServicesDomainsCount :: Maybe Int
  
instance Arbitrary HomeServicesDomainsLinks where
  arbitrary = sized genHomeServicesDomainsLinks

genHomeServicesDomainsLinks :: Int -> Gen HomeServicesDomainsLinks
genHomeServicesDomainsLinks n =
  HomeServicesDomainsLinks
    <$> arbitraryReducedMaybe n -- homeServicesDomainsLinks376114 :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeServicesDomainsLinks376503 :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeServicesDomainsLinks592337 :: Maybe Text
  
instance Arbitrary HomeServicesLicenses where
  arbitrary = sized genHomeServicesLicenses

genHomeServicesLicenses :: Int -> Gen HomeServicesLicenses
genHomeServicesLicenses n =
  HomeServicesLicenses
    <$> arbitraryReducedMaybe n -- homeServicesLicensesLinks :: Maybe HomeServicesLicensesLinks
    <*> arbitraryReducedMaybe n -- homeServicesLicensesCount :: Maybe Int
  
instance Arbitrary HomeServicesLicensesLinks where
  arbitrary = sized genHomeServicesLicensesLinks

genHomeServicesLicensesLinks :: Int -> Gen HomeServicesLicensesLinks
genHomeServicesLicensesLinks n =
  HomeServicesLicensesLinks
    <$> arbitraryReducedMaybe n -- homeServicesLicensesLinks386522 :: Maybe Text
  
instance Arbitrary HomeServicesServers where
  arbitrary = sized genHomeServicesServers

genHomeServicesServers :: Int -> Gen HomeServicesServers
genHomeServicesServers n =
  HomeServicesServers
    <$> arbitraryReducedMaybe n -- homeServicesServersLinks :: Maybe HomeServicesServersLinks
    <*> arbitraryReducedMaybe n -- homeServicesServersCount :: Maybe Int
  
instance Arbitrary HomeServicesServersLinks where
  arbitrary = sized genHomeServicesServersLinks

genHomeServicesServersLinks :: Int -> Gen HomeServicesServersLinks
genHomeServicesServersLinks n =
  HomeServicesServersLinks
    <$> arbitraryReducedMaybe n -- homeServicesServersLinks16058 :: Maybe Text
  
instance Arbitrary HomeServicesVps where
  arbitrary = sized genHomeServicesVps

genHomeServicesVps :: Int -> Gen HomeServicesVps
genHomeServicesVps n =
  HomeServicesVps
    <$> arbitraryReducedMaybe n -- homeServicesVpsLinks :: Maybe HomeServicesVpsLinks
    <*> arbitraryReducedMaybe n -- homeServicesVpsCount :: Maybe Int
  
instance Arbitrary HomeServicesVpsLinks where
  arbitrary = sized genHomeServicesVpsLinks

genHomeServicesVpsLinks :: Int -> Gen HomeServicesVpsLinks
genHomeServicesVpsLinks n =
  HomeServicesVpsLinks
    <$> arbitraryReducedMaybe n -- homeServicesVpsLinks465503 :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeServicesVpsLinks2500081 :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeServicesVpsLinks2578866 :: Maybe Text
  
instance Arbitrary HomeServicesWebhosting where
  arbitrary = sized genHomeServicesWebhosting

genHomeServicesWebhosting :: Int -> Gen HomeServicesWebhosting
genHomeServicesWebhosting n =
  HomeServicesWebhosting
    <$> arbitraryReducedMaybe n -- homeServicesWebhostingLinks :: Maybe HomeServicesWebhostingLinks
    <*> arbitraryReducedMaybe n -- homeServicesWebhostingCount :: Maybe Int
  
instance Arbitrary HomeServicesWebhostingLinks where
  arbitrary = sized genHomeServicesWebhostingLinks

genHomeServicesWebhostingLinks :: Int -> Gen HomeServicesWebhostingLinks
genHomeServicesWebhostingLinks n =
  HomeServicesWebhostingLinks
    <$> arbitraryReducedMaybe n -- homeServicesWebhostingLinks376359 :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeServicesWebhostingLinks376473 :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeServicesWebhostingLinks386218 :: Maybe Text
  
instance Arbitrary HomeTicketStatus where
  arbitrary = sized genHomeTicketStatus

genHomeTicketStatus :: Int -> Gen HomeTicketStatus
genHomeTicketStatus n =
  HomeTicketStatus
    <$> arbitraryReducedMaybe n -- homeTicketStatusOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- homeTicketStatusOnHold :: Maybe Int
  
instance Arbitrary HomeTicketStatusView where
  arbitrary = sized genHomeTicketStatusView

genHomeTicketStatusView :: Int -> Gen HomeTicketStatusView
genHomeTicketStatusView n =
  HomeTicketStatusView
    <$> arbitraryReducedMaybe n -- homeTicketStatusView4 :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeTicketStatusView5 :: Maybe Text
    <*> arbitraryReducedMaybe n -- homeTicketStatusView6 :: Maybe Text
  
instance Arbitrary HostnameObject where
  arbitrary = sized genHostnameObject

genHostnameObject :: Int -> Gen HostnameObject
genHostnameObject n =
  HostnameObject
    <$> arbitraryReducedMaybe n -- hostnameObjectHostname :: Maybe Text
  
instance Arbitrary InitiatePayment200Response where
  arbitrary = sized genInitiatePayment200Response

genInitiatePayment200Response :: Int -> Gen InitiatePayment200Response
genInitiatePayment200Response n =
  InitiatePayment200Response
    <$> arbitraryReducedMaybe n -- initiatePayment200ResponseType :: Maybe E'Type3
    <*> arbitraryReducedMaybe n -- initiatePayment200ResponseRedirect :: Maybe Text
    <*> arbitraryReducedMaybe n -- initiatePayment200ResponseAction :: Maybe Text
    <*> arbitraryReducedMaybe n -- initiatePayment200ResponseMethod :: Maybe Text
    <*> arbitraryReducedMaybeValue n -- initiatePayment200ResponseItems :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- initiatePayment200ResponseText :: Maybe Text
  
instance Arbitrary IpLimitRange where
  arbitrary = sized genIpLimitRange

genIpLimitRange :: Int -> Gen IpLimitRange
genIpLimitRange n =
  IpLimitRange
    <$> arbitrary -- ipLimitRangeStart :: Text
    <*> arbitrary -- ipLimitRangeEnd :: Text
  
instance Arbitrary IpObject where
  arbitrary = sized genIpObject

genIpObject :: Int -> Gen IpObject
genIpObject n =
  IpObject
    <$> arbitrary -- ipObjectIp :: Text
  
instance Arbitrary License where
  arbitrary = sized genLicense

genLicense :: Int -> Gen License
genLicense n =
  License
    <$> arbitraryReduced n -- licenseServiceInfo :: LicenseServiceInfo
    <*> arbitraryReduced n -- licenseClientLinks :: [LicenseClientLink]
    <*> arbitraryReduced n -- licenseBillingDetails :: LicenseBillingDetails
    <*> arbitrary -- licenseCustCurrency :: Text
    <*> arbitrary -- licenseCustCurrencySymbol :: Text
    <*> arbitrary -- licensePackage :: Text
    <*> arbitrary -- licenseServiceExtra :: [Text]
    <*> arbitraryReduced n -- licenseExtraInfoTables :: LicenseExtraInfoTables
    <*> arbitrary -- licenseServiceOverviewExtra :: Text
    <*> arbitraryReduced n -- licenseServiceType :: LicenseServiceType
    <*> arbitrary -- licenseLicenseKey :: Text
  
instance Arbitrary LicenseBillingDetails where
  arbitrary = sized genLicenseBillingDetails

genLicenseBillingDetails :: Int -> Gen LicenseBillingDetails
genLicenseBillingDetails n =
  LicenseBillingDetails
    <$> arbitraryReducedMaybe n -- licenseBillingDetailsServiceLastInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseBillingDetailsServicePaymentStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseBillingDetailsServiceFrequency :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseBillingDetailsNextDate :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- licenseBillingDetailsServiceNextInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseBillingDetailsServiceCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseBillingDetailsServiceCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseBillingDetailsServiceCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseBillingDetailsServiceCostInfo :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseBillingDetailsServiceExtra :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- licenseBillingDetailsServiceExtraJson :: Maybe Text
  
instance Arbitrary LicenseClientLink where
  arbitrary = sized genLicenseClientLink

genLicenseClientLink :: Int -> Gen LicenseClientLink
genLicenseClientLink n =
  LicenseClientLink
    <$> arbitrary -- licenseClientLinkLabel :: Text
    <*> arbitrary -- licenseClientLinkLink :: Text
    <*> arbitrary -- licenseClientLinkIcon :: Text
    <*> arbitrary -- licenseClientLinkHelpText :: Text
    <*> arbitraryReducedMaybe n -- licenseClientLinkIconText :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseClientLinkOtherAttr :: Maybe Text
  
instance Arbitrary LicenseExtraInfoTables where
  arbitrary = sized genLicenseExtraInfoTables

genLicenseExtraInfoTables :: Int -> Gen LicenseExtraInfoTables
genLicenseExtraInfoTables n =
  LicenseExtraInfoTables
    <$> arbitraryReducedMaybe n -- licenseExtraInfoTablesIpInfo :: Maybe LicenseIpInfo
  
instance Arbitrary LicenseIpInfo where
  arbitrary = sized genLicenseIpInfo

genLicenseIpInfo :: Int -> Gen LicenseIpInfo
genLicenseIpInfo n =
  LicenseIpInfo
    <$> arbitraryReducedMaybe n -- licenseIpInfoTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseIpInfoRows :: Maybe [LicenseIpInfoRow]
  
instance Arbitrary LicenseIpInfoRow where
  arbitrary = sized genLicenseIpInfoRow

genLicenseIpInfoRow :: Int -> Gen LicenseIpInfoRow
genLicenseIpInfoRow n =
  LicenseIpInfoRow
    <$> arbitraryReducedMaybe n -- licenseIpInfoRowDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseIpInfoRowValue :: Maybe Text
  
instance Arbitrary LicenseOrderRequest where
  arbitrary = sized genLicenseOrderRequest

genLicenseOrderRequest :: Int -> Gen LicenseOrderRequest
genLicenseOrderRequest n =
  LicenseOrderRequest
    <$> arbitrary -- licenseOrderRequestPackage :: Int
    <*> arbitrary -- licenseOrderRequestIp :: Text
    <*> arbitrary -- licenseOrderRequestTos :: Bool
    <*> arbitraryReducedMaybe n -- licenseOrderRequestFrequency :: Maybe Int
    <*> arbitraryReducedMaybe n -- licenseOrderRequestCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseOrderRequestComment :: Maybe Text
  
instance Arbitrary LicenseRow where
  arbitrary = sized genLicenseRow

genLicenseRow :: Int -> Gen LicenseRow
genLicenseRow n =
  LicenseRow
    <$> arbitraryReducedMaybe n -- licenseRowLicenseId :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseRowLicenseHostname :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseRowLicenseIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseRowServicesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseRowCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseRowLicenseStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseRowInvoicesPaid :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseRowInvoicesDate :: Maybe DateTime
  
instance Arbitrary LicenseServiceInfo where
  arbitrary = sized genLicenseServiceInfo

genLicenseServiceInfo :: Int -> Gen LicenseServiceInfo
genLicenseServiceInfo n =
  LicenseServiceInfo
    <$> arbitrary -- licenseServiceInfoLicenseId :: Text
    <*> arbitrary -- licenseServiceInfoLicenseType :: Text
    <*> arbitrary -- licenseServiceInfoLicenseCurrency :: Text
    <*> arbitraryReduced n -- licenseServiceInfoLicenseOrderDate :: DateTime
    <*> arbitrary -- licenseServiceInfoLicenseCustid :: Text
    <*> arbitrary -- licenseServiceInfoLicenseIp :: Text
    <*> arbitrary -- licenseServiceInfoLicenseStatus :: Text
    <*> arbitrary -- licenseServiceInfoLicenseInvoice :: Text
    <*> arbitrary -- licenseServiceInfoLicenseCoupon :: Text
    <*> arbitraryReducedMaybe n -- licenseServiceInfoLicenseHostname :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseServiceInfoLicenseKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseServiceInfoLicenseExtra :: Maybe Text
  
instance Arbitrary LicenseServiceType where
  arbitrary = sized genLicenseServiceType

genLicenseServiceType :: Int -> Gen LicenseServiceType
genLicenseServiceType n =
  LicenseServiceType
    <$> arbitraryReducedMaybe n -- licenseServiceTypeServicesId :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseServiceTypeServicesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseServiceTypeServicesCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseServiceTypeServicesCategory :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseServiceTypeServicesBuyable :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseServiceTypeServicesType :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseServiceTypeServicesField1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseServiceTypeServicesField2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- licenseServiceTypeServicesModule :: Maybe Text
  
instance Arbitrary LicensesCancel200Response where
  arbitrary = sized genLicensesCancel200Response

genLicensesCancel200Response :: Int -> Gen LicensesCancel200Response
genLicensesCancel200Response n =
  LicensesCancel200Response
    <$> arbitrary -- licensesCancel200ResponseSuccess :: Bool
    <*> arbitrary -- licensesCancel200ResponseText :: Text
  
instance Arbitrary LicensesOrder where
  arbitrary = sized genLicensesOrder

genLicensesOrder :: Int -> Gen LicensesOrder
genLicensesOrder n =
  LicensesOrder
    <$> arbitraryReducedMaybe n -- licensesOrderServiceCategories :: Maybe LicensesOrderServiceCategories
    <*> arbitraryReducedMaybe n -- licensesOrderPackageCosts :: Maybe LicensesOrderPackageCosts
    <*> arbitraryReducedMaybe n -- licensesOrderServiceTypes :: Maybe LicensesOrderServiceTypes
  
instance Arbitrary LicensesOrderPackageCosts where
  arbitrary = sized genLicensesOrderPackageCosts

genLicensesOrderPackageCosts :: Int -> Gen LicensesOrderPackageCosts
genLicensesOrderPackageCosts n =
  LicensesOrderPackageCosts
    <$> arbitraryReducedMaybe n -- licensesOrderPackageCostsLicensesOrderPackageCosts11468 :: Maybe Double
  
instance Arbitrary LicensesOrderServiceCategories where
  arbitrary = sized genLicensesOrderServiceCategories

genLicensesOrderServiceCategories :: Int -> Gen LicensesOrderServiceCategories
genLicensesOrderServiceCategories n =
  LicensesOrderServiceCategories
    <$> arbitraryReducedMaybe n -- licensesOrderServiceCategoriesLicensesOrderServiceCategories509 :: Maybe LicensesOrderServiceCategories509
  
instance Arbitrary LicensesOrderServiceCategories509 where
  arbitrary = sized genLicensesOrderServiceCategories509

genLicensesOrderServiceCategories509 :: Int -> Gen LicensesOrderServiceCategories509
genLicensesOrderServiceCategories509 n =
  LicensesOrderServiceCategories509
    <$> arbitraryReducedMaybe n -- licensesOrderServiceCategories509CategoryId :: Maybe Text
    <*> arbitraryReducedMaybe n -- licensesOrderServiceCategories509CategoryName :: Maybe Text
    <*> arbitraryReducedMaybe n -- licensesOrderServiceCategories509CategoryTag :: Maybe Text
    <*> arbitraryReducedMaybe n -- licensesOrderServiceCategories509CategoryModule :: Maybe Text
  
instance Arbitrary LicensesOrderServiceTypes where
  arbitrary = sized genLicensesOrderServiceTypes

genLicensesOrderServiceTypes :: Int -> Gen LicensesOrderServiceTypes
genLicensesOrderServiceTypes n =
  LicensesOrderServiceTypes
    <$> arbitraryReducedMaybe n -- licensesOrderServiceTypesLicensesOrderServiceTypes11482 :: Maybe LicensesOrderServiceTypes11482
  
instance Arbitrary LicensesOrderServiceTypes11482 where
  arbitrary = sized genLicensesOrderServiceTypes11482

genLicensesOrderServiceTypes11482 :: Int -> Gen LicensesOrderServiceTypes11482
genLicensesOrderServiceTypes11482 n =
  LicensesOrderServiceTypes11482
    <$> arbitraryReducedMaybe n -- licensesOrderServiceTypes11482ServicesId :: Maybe Text
    <*> arbitraryReducedMaybe n -- licensesOrderServiceTypes11482ServicesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- licensesOrderServiceTypes11482ServicesCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- licensesOrderServiceTypes11482ServicesCategory :: Maybe Text
    <*> arbitraryReducedMaybe n -- licensesOrderServiceTypes11482ServicesBuyable :: Maybe Text
    <*> arbitraryReducedMaybe n -- licensesOrderServiceTypes11482ServicesType :: Maybe Text
    <*> arbitraryReducedMaybe n -- licensesOrderServiceTypes11482ServicesField1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- licensesOrderServiceTypes11482ServicesField2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- licensesOrderServiceTypes11482ServicesModule :: Maybe Text
  
instance Arbitrary LoginErrorResponse where
  arbitrary = sized genLoginErrorResponse

genLoginErrorResponse :: Int -> Gen LoginErrorResponse
genLoginErrorResponse n =
  LoginErrorResponse
    <$> arbitraryReducedMaybe n -- loginErrorResponseMessage :: Maybe Text
    <*> arbitraryReducedMaybe n -- loginErrorResponseField :: Maybe Text
  
instance Arbitrary LoginInfo where
  arbitrary = sized genLoginInfo

genLoginInfo :: Int -> Gen LoginInfo
genLoginInfo n =
  LoginInfo
    <$> arbitrary -- loginInfoCaptcha :: Text
    <*> arbitraryReduced n -- loginInfoCounts :: LoginServiceCounts
    <*> arbitraryReducedMaybe n -- loginInfoLogo :: Maybe Text
    <*> arbitraryReducedMaybe n -- loginInfoLanguage :: Maybe Text
  
instance Arbitrary LoginServiceCounts where
  arbitrary = sized genLoginServiceCounts

genLoginServiceCounts :: Int -> Gen LoginServiceCounts
genLoginServiceCounts n =
  LoginServiceCounts
    <$> arbitrary -- loginServiceCountsVps :: Int
    <*> arbitrary -- loginServiceCountsWebsites :: Int
    <*> arbitrary -- loginServiceCountsServers :: Int
  
instance Arbitrary LoginSubmissionExample where
  arbitrary = sized genLoginSubmissionExample

genLoginSubmissionExample :: Int -> Gen LoginSubmissionExample
genLoginSubmissionExample n =
  LoginSubmissionExample
    <$> arbitrary -- loginSubmissionExampleLogin :: Text
    <*> arbitrary -- loginSubmissionExamplePasswd :: Text
    <*> arbitraryReducedMaybe n -- loginSubmissionExampleRemember :: Maybe Text
    <*> arbitraryReducedMaybe n -- loginSubmissionExampleGRecaptchaResponse :: Maybe LoginSubmissionExampleGRecaptchaResponse
    <*> arbitraryReducedMaybe n -- loginSubmissionExampleTfa :: Maybe Text
  
instance Arbitrary LoginSubmissionExampleGRecaptchaResponse where
  arbitrary = sized genLoginSubmissionExampleGRecaptchaResponse

genLoginSubmissionExampleGRecaptchaResponse :: Int -> Gen LoginSubmissionExampleGRecaptchaResponse
genLoginSubmissionExampleGRecaptchaResponse n =
  LoginSubmissionExampleGRecaptchaResponse
    <$> arbitraryReducedMaybe n -- loginSubmissionExampleGRecaptchaResponseVIsShallow :: Maybe Bool
    <*> arbitraryReducedMaybe n -- loginSubmissionExampleGRecaptchaResponseDep :: Maybe LoginSubmissionExampleGRecaptchaResponseDep
    <*> arbitraryReducedMaybe n -- loginSubmissionExampleGRecaptchaResponseVIsRef :: Maybe Bool
    <*> arbitraryReducedMaybe n -- loginSubmissionExampleGRecaptchaResponseRawValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- loginSubmissionExampleGRecaptchaResponseValue :: Maybe Text
  
instance Arbitrary LoginSubmissionExampleGRecaptchaResponseDep where
  arbitrary = sized genLoginSubmissionExampleGRecaptchaResponseDep

genLoginSubmissionExampleGRecaptchaResponseDep :: Int -> Gen LoginSubmissionExampleGRecaptchaResponseDep
genLoginSubmissionExampleGRecaptchaResponseDep n =
  LoginSubmissionExampleGRecaptchaResponseDep
    <$> arbitraryReducedMaybe n -- loginSubmissionExampleGRecaptchaResponseDepW :: Maybe Int
    <*> arbitraryReducedMaybe n -- loginSubmissionExampleGRecaptchaResponseDepN :: Maybe Int
  
instance Arbitrary LoginSuccessResponse where
  arbitrary = sized genLoginSuccessResponse

genLoginSuccessResponse :: Int -> Gen LoginSuccessResponse
genLoginSuccessResponse n =
  LoginSuccessResponse
    <$> arbitraryReducedMaybe n -- loginSuccessResponseSessionId :: Maybe Text
    <*> arbitraryReducedMaybe n -- loginSuccessResponseAccountId :: Maybe Int
    <*> arbitraryReducedMaybe n -- loginSuccessResponseAccountLid :: Maybe Text
    <*> arbitraryReducedMaybe n -- loginSuccessResponseIma :: Maybe Text
    <*> arbitraryReducedMaybe n -- loginSuccessResponseGravatar :: Maybe Text
  
instance Arbitrary MailAlertRequest where
  arbitrary = sized genMailAlertRequest

genMailAlertRequest :: Int -> Gen MailAlertRequest
genMailAlertRequest n =
  MailAlertRequest
    <$> arbitraryReducedMaybe n -- mailAlertRequestType :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailAlertRequestValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailAlertRequestTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailAlertRequestEnabled :: Maybe Text
  
instance Arbitrary MailAlertUpdateRequest where
  arbitrary = sized genMailAlertUpdateRequest

genMailAlertUpdateRequest :: Int -> Gen MailAlertUpdateRequest
genMailAlertUpdateRequest n =
  MailAlertUpdateRequest
    <$> arbitraryReducedMaybe n -- mailAlertUpdateRequestAlertId :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailAlertUpdateRequestType :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailAlertUpdateRequestValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailAlertUpdateRequestTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailAlertUpdateRequestEnabled :: Maybe Text
  
instance Arbitrary MailAlertsResponse where
  arbitrary = sized genMailAlertsResponse

genMailAlertsResponse :: Int -> Gen MailAlertsResponse
genMailAlertsResponse n =
  
  pure MailAlertsResponse
   
instance Arbitrary MailAlertsResponseInner where
  arbitrary = sized genMailAlertsResponseInner

genMailAlertsResponseInner :: Int -> Gen MailAlertsResponseInner
genMailAlertsResponseInner n =
  MailAlertsResponseInner
    <$> arbitraryReducedMaybe n -- mailAlertsResponseInnerAlertId :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailAlertsResponseInnerAlertType :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailAlertsResponseInnerAlertValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailAlertsResponseInnerAlertTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailAlertsResponseInnerAlertEnabled :: Maybe Text
  
instance Arbitrary MailAttachment where
  arbitrary = sized genMailAttachment

genMailAttachment :: Int -> Gen MailAttachment
genMailAttachment n =
  MailAttachment
    <$> arbitrary -- mailAttachmentFilename :: Text
    <*> arbitrary -- mailAttachmentData :: Text
  
instance Arbitrary MailBillingDetails where
  arbitrary = sized genMailBillingDetails

genMailBillingDetails :: Int -> Gen MailBillingDetails
genMailBillingDetails n =
  MailBillingDetails
    <$> arbitraryReducedMaybe n -- mailBillingDetailsServiceLastInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailBillingDetailsServicePaymentStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailBillingDetailsServiceFrequency :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailBillingDetailsNextDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailBillingDetailsServiceNextInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailBillingDetailsServiceCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailBillingDetailsServiceCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailBillingDetailsServiceCostInfo :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailBillingDetailsServiceExtra :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- mailBillingDetailsServiceExtraJson :: Maybe Text
  
instance Arbitrary MailBlockClickHouse where
  arbitrary = sized genMailBlockClickHouse

genMailBlockClickHouse :: Int -> Gen MailBlockClickHouse
genMailBlockClickHouse n =
  MailBlockClickHouse
    <$> arbitraryReduced n -- mailBlockClickHouseDate :: Date
    <*> arbitrary -- mailBlockClickHouseFrom :: Text
    <*> arbitrary -- mailBlockClickHouseMessageId :: Text
    <*> arbitrary -- mailBlockClickHouseSubject :: Text
    <*> arbitrary -- mailBlockClickHouseTo :: Text
  
instance Arbitrary MailBlockRspamd where
  arbitrary = sized genMailBlockRspamd

genMailBlockRspamd :: Int -> Gen MailBlockRspamd
genMailBlockRspamd n =
  MailBlockRspamd
    <$> arbitrary -- mailBlockRspamdFrom :: Text
    <*> arbitrary -- mailBlockRspamdSubject :: Text
  
instance Arbitrary MailBlocks where
  arbitrary = sized genMailBlocks

genMailBlocks :: Int -> Gen MailBlocks
genMailBlocks n =
  MailBlocks
    <$> arbitraryReduced n -- mailBlocksLocal :: [MailBlockClickHouse]
    <*> arbitraryReduced n -- mailBlocksMbtrap :: [MailBlockClickHouse]
    <*> arbitraryReduced n -- mailBlocksSubject :: [MailBlockRspamd]
  
instance Arbitrary MailCancel200Response where
  arbitrary = sized genMailCancel200Response

genMailCancel200Response :: Int -> Gen MailCancel200Response
genMailCancel200Response n =
  MailCancel200Response
    <$> arbitrary -- mailCancel200ResponseSuccess :: Bool
    <*> arbitrary -- mailCancel200ResponseText :: Text
  
instance Arbitrary MailClientLink where
  arbitrary = sized genMailClientLink

genMailClientLink :: Int -> Gen MailClientLink
genMailClientLink n =
  MailClientLink
    <$> arbitraryReducedMaybe n -- mailClientLinkLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailClientLinkLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailClientLinkIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailClientLinkIconText :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailClientLinkHelpText :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailClientLinkOtherAttr :: Maybe Text
  
instance Arbitrary MailDelistRequest where
  arbitrary = sized genMailDelistRequest

genMailDelistRequest :: Int -> Gen MailDelistRequest
genMailDelistRequest n =
  MailDelistRequest
    <$> arbitraryReducedMaybe n -- mailDelistRequestUnblock :: Maybe Text
  
instance Arbitrary MailDelistResponse where
  arbitrary = sized genMailDelistResponse

genMailDelistResponse :: Int -> Gen MailDelistResponse
genMailDelistResponse n =
  MailDelistResponse
    <$> arbitraryReducedMaybe n -- mailDelistResponseId :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailDelistResponseLocal :: Maybe [A.Value]
    <*> arbitraryReducedMaybe n -- mailDelistResponseMbtrap :: Maybe [A.Value]
    <*> arbitraryReducedMaybe n -- mailDelistResponseSubject :: Maybe [A.Value]
    <*> arbitraryReducedMaybe n -- mailDelistResponseManual :: Maybe [A.Value]
  
instance Arbitrary MailDeliverabilityResponse where
  arbitrary = sized genMailDeliverabilityResponse

genMailDeliverabilityResponse :: Int -> Gen MailDeliverabilityResponse
genMailDeliverabilityResponse n =
  MailDeliverabilityResponse
    <$> arbitraryReducedMaybeValue n -- mailDeliverabilityResponseStat :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- mailDeliverabilityResponsePercent :: Maybe Double
    <*> arbitraryReducedMaybe n -- mailDeliverabilityResponseTableData :: Maybe [[Text]]
  
instance Arbitrary MailExtraInfoTable where
  arbitrary = sized genMailExtraInfoTable

genMailExtraInfoTable :: Int -> Gen MailExtraInfoTable
genMailExtraInfoTable n =
  MailExtraInfoTable
    <$> arbitraryReducedMaybe n -- mailExtraInfoTableTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailExtraInfoTableRows :: Maybe [MailExtraInfoTableRow]
  
instance Arbitrary MailExtraInfoTableRow where
  arbitrary = sized genMailExtraInfoTableRow

genMailExtraInfoTableRow :: Int -> Gen MailExtraInfoTableRow
genMailExtraInfoTableRow n =
  MailExtraInfoTableRow
    <$> arbitraryReducedMaybe n -- mailExtraInfoTableRowDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailExtraInfoTableRowValue :: Maybe Text
  
instance Arbitrary MailLog where
  arbitrary = sized genMailLog

genMailLog :: Int -> Gen MailLog
genMailLog n =
  MailLog
    <$> arbitrary -- mailLogTotal :: Int
    <*> arbitrary -- mailLogSkip :: Int
    <*> arbitrary -- mailLogLimit :: Int
    <*> arbitraryReduced n -- mailLogEmails :: [MailLogEntry]
  
instance Arbitrary MailLogEntry where
  arbitrary = sized genMailLogEntry

genMailLogEntry :: Int -> Gen MailLogEntry
genMailLogEntry n =
  MailLogEntry
    <$> arbitrary -- mailLogEntryId :: Int
    <*> arbitrary -- mailLogEntryId :: Text
    <*> arbitrary -- mailLogEntryFrom :: Text
    <*> arbitrary -- mailLogEntryTo :: Text
    <*> arbitrary -- mailLogEntryCreated :: Text
    <*> arbitrary -- mailLogEntryTime :: Int
    <*> arbitrary -- mailLogEntryUser :: Text
    <*> arbitrary -- mailLogEntryTranstype :: Text
    <*> arbitrary -- mailLogEntryOrigin :: Text
    <*> arbitrary -- mailLogEntryInterface :: Text
    <*> arbitraryReducedMaybe n -- mailLogEntrySubject :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailLogEntryMessageId :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailLogEntrySendingZone :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailLogEntryBodySize :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailLogEntrySeq :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailLogEntryDelivered :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailLogEntryCode :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailLogEntryRecipient :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailLogEntryResponse :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailLogEntryDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailLogEntryLocked :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailLogEntryLockTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailLogEntryAssigned :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailLogEntryQueued :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailLogEntryMxHostname :: Maybe Text
  
instance Arbitrary MailOrder where
  arbitrary = sized genMailOrder

genMailOrder :: Int -> Gen MailOrder
genMailOrder n =
  MailOrder
    <$> arbitrary -- mailOrderId :: Int
    <*> arbitrary -- mailOrderStatus :: Text
    <*> arbitrary -- mailOrderUsername :: Text
    <*> arbitraryReducedMaybe n -- mailOrderComment :: Maybe Text
  
instance Arbitrary MailOrderRequest where
  arbitrary = sized genMailOrderRequest

genMailOrderRequest :: Int -> Gen MailOrderRequest
genMailOrderRequest n =
  MailOrderRequest
    <$> arbitrary -- mailOrderRequestServiceType :: Int
    <*> arbitraryReducedMaybe n -- mailOrderRequestCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailOrderRequestComment :: Maybe Text
  
instance Arbitrary MailRow where
  arbitrary = sized genMailRow

genMailRow :: Int -> Gen MailRow
genMailRow n =
  MailRow
    <$> arbitraryReducedMaybe n -- mailRowMailId :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailRowRepeatInvoicesCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailRowMailUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailRowMailStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailRowServicesName :: Maybe Text
  
instance Arbitrary MailSchema where
  arbitrary = sized genMailSchema

genMailSchema :: Int -> Gen MailSchema
genMailSchema n =
  MailSchema
    <$> arbitraryReduced n -- mailSchemaServiceInfo :: MailServiceInfo
    <*> arbitraryReduced n -- mailSchemaClientLinks :: [MailClientLink]
    <*> arbitraryReduced n -- mailSchemaBillingDetails :: MailBillingDetails
    <*> arbitrary -- mailSchemaCustCurrency :: Text
    <*> arbitrary -- mailSchemaCustCurrencySymbol :: Text
    <*> arbitrary -- mailSchemaPackage :: Text
    <*> arbitraryReduced n -- mailSchemaExtraInfoTables :: MailSchemaExtraInfoTables
    <*> arbitraryReduced n -- mailSchemaServiceType :: MailServiceType
    <*> arbitrary -- mailSchemaUsageCount :: Text
    <*> arbitraryReducedMaybe n -- mailSchemaServiceExtra :: Maybe [Text]
  
instance Arbitrary MailSchemaExtraInfoTables where
  arbitrary = sized genMailSchemaExtraInfoTables

genMailSchemaExtraInfoTables :: Int -> Gen MailSchemaExtraInfoTables
genMailSchemaExtraInfoTables n =
  MailSchemaExtraInfoTables
    <$> arbitraryReducedMaybe n -- mailSchemaExtraInfoTablesMail :: Maybe MailExtraInfoTable
    <*> arbitraryReducedMaybe n -- mailSchemaExtraInfoTablesTutorials :: Maybe MailTutorialsTable
  
instance Arbitrary MailServiceInfo where
  arbitrary = sized genMailServiceInfo

genMailServiceInfo :: Int -> Gen MailServiceInfo
genMailServiceInfo n =
  MailServiceInfo
    <$> arbitrary -- mailServiceInfoMailId :: Text
    <*> arbitrary -- mailServiceInfoMailType :: Text
    <*> arbitrary -- mailServiceInfoMailCurrency :: Text
    <*> arbitrary -- mailServiceInfoMailOrderDate :: Text
    <*> arbitrary -- mailServiceInfoMailCustid :: Text
    <*> arbitrary -- mailServiceInfoMailQuota :: Text
    <*> arbitrary -- mailServiceInfoMailStatus :: Text
    <*> arbitrary -- mailServiceInfoMailInvoice :: Text
    <*> arbitraryReducedMaybe n -- mailServiceInfoMailUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceInfoMailIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceInfoMailCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceInfoMailExtra :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceInfoMailServerStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceInfoMailComment :: Maybe Text
  
instance Arbitrary MailServiceType where
  arbitrary = sized genMailServiceType

genMailServiceType :: Int -> Gen MailServiceType
genMailServiceType n =
  MailServiceType
    <$> arbitraryReducedMaybe n -- mailServiceTypeServicesId :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceTypeServicesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceTypeServicesCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceTypeServicesCategory :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceTypeServicesBuyable :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceTypeServicesType :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceTypeServicesField1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceTypeServicesField2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailServiceTypeServicesModule :: Maybe Text
  
instance Arbitrary MailStatsType where
  arbitrary = sized genMailStatsType

genMailStatsType :: Int -> Gen MailStatsType
genMailStatsType n =
  MailStatsType
    <$> arbitraryReducedMaybe n -- mailStatsTypeTime :: Maybe E'Time
    <*> arbitraryReducedMaybe n -- mailStatsTypeUsage :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailStatsTypeCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailStatsTypeCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailStatsTypeCost :: Maybe Double
    <*> arbitraryReducedMaybe n -- mailStatsTypeReceived :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailStatsTypeSent :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailStatsTypeVolume :: Maybe MailStatsTypeVolume
  
instance Arbitrary MailStatsTypeVolume where
  arbitrary = sized genMailStatsTypeVolume

genMailStatsTypeVolume :: Int -> Gen MailStatsTypeVolume
genMailStatsTypeVolume n =
  MailStatsTypeVolume
    <$> arbitraryReducedMaybe n -- mailStatsTypeVolumeTo :: Maybe MailStatsTypeVolumeTo
    <*> arbitraryReducedMaybe n -- mailStatsTypeVolumeFrom :: Maybe MailStatsTypeVolumeFrom
    <*> arbitraryReducedMaybe n -- mailStatsTypeVolumeIp :: Maybe MailStatsTypeVolumeIp
  
instance Arbitrary MailStatsTypeVolumeFrom where
  arbitrary = sized genMailStatsTypeVolumeFrom

genMailStatsTypeVolumeFrom :: Int -> Gen MailStatsTypeVolumeFrom
genMailStatsTypeVolumeFrom n =
  MailStatsTypeVolumeFrom
    <$> arbitraryReducedMaybe n -- mailStatsTypeVolumeFromBillingsomedomainCom :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailStatsTypeVolumeFromSalessomedomainCom :: Maybe Int
  
instance Arbitrary MailStatsTypeVolumeIp where
  arbitrary = sized genMailStatsTypeVolumeIp

genMailStatsTypeVolumeIp :: Int -> Gen MailStatsTypeVolumeIp
genMailStatsTypeVolumeIp n =
  MailStatsTypeVolumeIp
    <$> arbitraryReducedMaybe n -- mailStatsTypeVolumeIp1111 :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailStatsTypeVolumeIp2222 :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailStatsTypeVolumeIp3333 :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailStatsTypeVolumeIp4444 :: Maybe Int
  
instance Arbitrary MailStatsTypeVolumeTo where
  arbitrary = sized genMailStatsTypeVolumeTo

genMailStatsTypeVolumeTo :: Int -> Gen MailStatsTypeVolumeTo
genMailStatsTypeVolumeTo n =
  MailStatsTypeVolumeTo
    <$> arbitraryReducedMaybe n -- mailStatsTypeVolumeToClientdomainCom :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailStatsTypeVolumeToUsersiteNet :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailStatsTypeVolumeToSalescompanyCom :: Maybe Int
    <*> arbitraryReducedMaybe n -- mailStatsTypeVolumeToClientanothersiteCom :: Maybe Int
  
instance Arbitrary MailTutorialsTable where
  arbitrary = sized genMailTutorialsTable

genMailTutorialsTable :: Int -> Gen MailTutorialsTable
genMailTutorialsTable n =
  MailTutorialsTable
    <$> arbitraryReducedMaybe n -- mailTutorialsTableTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailTutorialsTableRows :: Maybe [MailTutorialsTableRow]
  
instance Arbitrary MailTutorialsTableRow where
  arbitrary = sized genMailTutorialsTableRow

genMailTutorialsTableRow :: Int -> Gen MailTutorialsTableRow
genMailTutorialsTableRow n =
  MailTutorialsTableRow
    <$> arbitraryReducedMaybe n -- mailTutorialsTableRowDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- mailTutorialsTableRowValue :: Maybe Text
  
instance Arbitrary ModuleSettings where
  arbitrary = sized genModuleSettings

genModuleSettings :: Int -> Gen ModuleSettings
genModuleSettings n =
  ModuleSettings
    <$> arbitrary -- moduleSettingsServiceIdOffset :: Int
    <*> arbitrary -- moduleSettingsUseRepeatInvoice :: Bool
    <*> arbitrary -- moduleSettingsUsePackages :: Bool
    <*> arbitrary -- moduleSettingsBillingDaysOffset :: Int
    <*> arbitrary -- moduleSettingsImgname :: Text
    <*> arbitrary -- moduleSettingsRepeatBillingMethod :: Int
    <*> arbitrary -- moduleSettingsDeletePendingDays :: Int
    <*> arbitrary -- moduleSettingsSuspendDays :: Int
    <*> arbitrary -- moduleSettingsSuspendWarningDays :: Int
    <*> arbitrary -- moduleSettingsTitle :: Text
    <*> arbitrary -- moduleSettingsMenuname :: Text
    <*> arbitrary -- moduleSettingsEmailFrom :: Text
    <*> arbitrary -- moduleSettingsTblname :: Text
    <*> arbitrary -- moduleSettingsTable :: Text
    <*> arbitrary -- moduleSettingsTitleField :: Text
    <*> arbitrary -- moduleSettingsPrefix :: Text
    <*> arbitraryReducedMaybe n -- moduleSettingsTitleField2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- moduleSettingsTitleField3 :: Maybe Text
  
instance Arbitrary Modules where
  arbitrary = sized genModules

genModules :: Int -> Gen Modules
genModules n =
  
  pure Modules
   
instance Arbitrary MonthlyCounts where
  arbitrary = sized genMonthlyCounts

genMonthlyCounts :: Int -> Gen MonthlyCounts
genMonthlyCounts n =
  
  pure MonthlyCounts
   
instance Arbitrary PasswordRequest where
  arbitrary = sized genPasswordRequest

genPasswordRequest :: Int -> Gen PasswordRequest
genPasswordRequest n =
  PasswordRequest
    <$> arbitrary -- passwordRequestPassword :: Text
  
instance Arbitrary PatchBillingCreditCardVerifyRequest where
  arbitrary = sized genPatchBillingCreditCardVerifyRequest

genPatchBillingCreditCardVerifyRequest :: Int -> Gen PatchBillingCreditCardVerifyRequest
genPatchBillingCreditCardVerifyRequest n =
  PatchBillingCreditCardVerifyRequest
    <$> arbitrary -- patchBillingCreditCardVerifyRequestCcCcv2 :: Text
  
instance Arbitrary PatchOauthTwoFactor200Response where
  arbitrary = sized genPatchOauthTwoFactor200Response

genPatchOauthTwoFactor200Response :: Int -> Gen PatchOauthTwoFactor200Response
genPatchOauthTwoFactor200Response n =
  PatchOauthTwoFactor200Response
    <$> arbitraryReducedMaybe n -- patchOauthTwoFactor200ResponseLogin :: Maybe Bool
  
instance Arbitrary PatchOauthTwoFactorRequest where
  arbitrary = sized genPatchOauthTwoFactorRequest

genPatchOauthTwoFactorRequest :: Int -> Gen PatchOauthTwoFactorRequest
genPatchOauthTwoFactorRequest n =
  PatchOauthTwoFactorRequest
    <$> arbitrary -- patchOauthTwoFactorRequestAccountId :: Int
    <*> arbitrary -- patchOauthTwoFactorRequestCode :: Text
  
instance Arbitrary PlaceBuyNowServerRequest where
  arbitrary = sized genPlaceBuyNowServerRequest

genPlaceBuyNowServerRequest :: Int -> Gen PlaceBuyNowServerRequest
genPlaceBuyNowServerRequest n =
  PlaceBuyNowServerRequest
    <$> arbitraryReducedMaybe n -- placeBuyNowServerRequestServerId :: Maybe Double
    <*> arbitraryReducedMaybe n -- placeBuyNowServerRequestServerHostname :: Maybe Text
    <*> arbitraryReducedMaybe n -- placeBuyNowServerRequestServerRootPassword :: Maybe Text
  
instance Arbitrary PlaceScrubOrder201Response where
  arbitrary = sized genPlaceScrubOrder201Response

genPlaceScrubOrder201Response :: Int -> Gen PlaceScrubOrder201Response
genPlaceScrubOrder201Response n =
  PlaceScrubOrder201Response
    <$> arbitraryReducedMaybe n -- placeScrubOrder201ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetails :: Maybe PlaceScrubOrder201ResponseOrderDetails
  
instance Arbitrary PlaceScrubOrder201ResponseOrderDetails where
  arbitrary = sized genPlaceScrubOrder201ResponseOrderDetails

genPlaceScrubOrder201ResponseOrderDetails :: Int -> Gen PlaceScrubOrder201ResponseOrderDetails
genPlaceScrubOrder201ResponseOrderDetails n =
  PlaceScrubOrder201ResponseOrderDetails
    <$> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsTotalCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsServiceId :: Maybe Int
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsInvoiceId :: Maybe Int
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsInvoiceDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsCjParams :: Maybe PlaceScrubOrder201ResponseOrderDetailsCjParams
  
instance Arbitrary PlaceScrubOrder201ResponseOrderDetailsCjParams where
  arbitrary = sized genPlaceScrubOrder201ResponseOrderDetailsCjParams

genPlaceScrubOrder201ResponseOrderDetailsCjParams :: Int -> Gen PlaceScrubOrder201ResponseOrderDetailsCjParams
genPlaceScrubOrder201ResponseOrderDetailsCjParams n =
  PlaceScrubOrder201ResponseOrderDetailsCjParams
    <$> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsCjParamsContainerTagId :: Maybe Int
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsCjParamsCid :: Maybe Int
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsCjParamsOid :: Maybe Text
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsCjParamsType :: Maybe Int
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsCjParamsItem1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsCjParamsAmt1 :: Maybe Int
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsCjParamsQty1 :: Maybe Int
    <*> arbitraryReducedMaybe n -- placeScrubOrder201ResponseOrderDetailsCjParamsCurrency :: Maybe Text
  
instance Arbitrary PostOauthCallback200Response where
  arbitrary = sized genPostOauthCallback200Response

genPostOauthCallback200Response :: Int -> Gen PostOauthCallback200Response
genPostOauthCallback200Response n =
  PostOauthCallback200Response
    <$> arbitraryReducedMaybe n -- postOauthCallback200ResponseLogin :: Maybe Bool
    <*> arbitraryReducedMaybe n -- postOauthCallback200ResponseSignup :: Maybe Bool
    <*> arbitraryReducedMaybe n -- postOauthCallback200ResponseLinked :: Maybe Bool
    <*> arbitraryReducedMaybe n -- postOauthCallback200ResponseAccountId :: Maybe Int
    <*> arbitraryReducedMaybe n -- postOauthCallback200ResponseErrorCode :: Maybe Text
  
instance Arbitrary PostOauthCallbackRequest where
  arbitrary = sized genPostOauthCallbackRequest

genPostOauthCallbackRequest :: Int -> Gen PostOauthCallbackRequest
genPostOauthCallbackRequest n =
  PostOauthCallbackRequest
    <$> arbitraryReducedMaybe n -- postOauthCallbackRequestProvider :: Maybe Text
  
instance Arbitrary PostWebsiteBuyIp200Response where
  arbitrary = sized genPostWebsiteBuyIp200Response

genPostWebsiteBuyIp200Response :: Int -> Gen PostWebsiteBuyIp200Response
genPostWebsiteBuyIp200Response n =
  PostWebsiteBuyIp200Response
    <$> arbitraryReducedMaybe n -- postWebsiteBuyIp200ResponseMessage :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteBuyIp200ResponseSuccess :: Maybe Bool
  
instance Arbitrary PostWebsiteBuyIpRequest where
  arbitrary = sized genPostWebsiteBuyIpRequest

genPostWebsiteBuyIpRequest :: Int -> Gen PostWebsiteBuyIpRequest
genPostWebsiteBuyIpRequest n =
  PostWebsiteBuyIpRequest
    <$> arbitraryReducedMaybe n -- postWebsiteBuyIpRequestIps :: Maybe (Map.Map String Text)
  
instance Arbitrary PostWebsiteMigration200Response where
  arbitrary = sized genPostWebsiteMigration200Response

genPostWebsiteMigration200Response :: Int -> Gen PostWebsiteMigration200Response
genPostWebsiteMigration200Response n =
  PostWebsiteMigration200Response
    <$> arbitraryReducedMaybe n -- postWebsiteMigration200ResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigration200ResponseTicket :: Maybe Int
  
instance Arbitrary PostWebsiteMigrationRequest where
  arbitrary = sized genPostWebsiteMigrationRequest

genPostWebsiteMigrationRequest :: Int -> Gen PostWebsiteMigrationRequest
genPostWebsiteMigrationRequest n =
  PostWebsiteMigrationRequest
    <$> arbitraryReducedMaybe n -- postWebsiteMigrationRequestCustPortal :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigrationRequestRegEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigrationRequestPassword :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigrationRequestCtrlPanel :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigrationRequestFtpUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigrationRequestFtpPassword :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigrationRequestSiteBusyMig :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigrationRequestSplReqMig :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigrationRequestDomainReg :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigrationRequestDataMig :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigrationRequestDomainRegPortal :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigrationRequestDomainRegEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- postWebsiteMigrationRequestDomainRegPassword :: Maybe Text
  
instance Arbitrary PutScrubIps200Response where
  arbitrary = sized genPutScrubIps200Response

genPutScrubIps200Response :: Int -> Gen PutScrubIps200Response
genPutScrubIps200Response n =
  PutScrubIps200Response
    <$> arbitraryReducedMaybe n -- putScrubIps200ResponseContinue :: Maybe Bool
    <*> arbitraryReducedMaybe n -- putScrubIps200ResponseErrors :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- putScrubIps200ResponseServiceType :: Maybe Int
    <*> arbitraryReducedMaybe n -- putScrubIps200ResponseServiceCost :: Maybe Double
    <*> arbitraryReducedMaybe n -- putScrubIps200ResponseOriginalCost :: Maybe Double
    <*> arbitraryReducedMaybe n -- putScrubIps200ResponseRepeatServiceCost :: Maybe Double
  
instance Arbitrary QsOrderRequest where
  arbitrary = sized genQsOrderRequest

genQsOrderRequest :: Int -> Gen QsOrderRequest
genQsOrderRequest n =
  QsOrderRequest
    <$> arbitrary -- qsOrderRequestServer :: Int
    <*> arbitrary -- qsOrderRequestPassword :: Text
    <*> arbitrary -- qsOrderRequestTos :: Bool
    <*> arbitraryReducedMaybe n -- qsOrderRequestOs :: Maybe Text
    <*> arbitraryReducedMaybe n -- qsOrderRequestComment :: Maybe Text
  
instance Arbitrary QueueResponse where
  arbitrary = sized genQueueResponse

genQueueResponse :: Int -> Gen QueueResponse
genQueueResponse n =
  QueueResponse
    <$> arbitrary -- queueResponseText :: Text
    <*> arbitrary -- queueResponseQueueId :: Int
  
instance Arbitrary Quickserver where
  arbitrary = sized genQuickserver

genQuickserver :: Int -> Gen Quickserver
genQuickserver n =
  Quickserver
    <$> arbitraryReduced n -- quickserverServiceInfo :: QuickserverServiceInfo
    <*> arbitraryReduced n -- quickserverClientLinks :: [QuickserverClientLink]
    <*> arbitraryReduced n -- quickserverBillingDetails :: QuickserverBillingDetails
    <*> arbitrary -- quickserverCustCurrency :: Text
    <*> arbitrary -- quickserverCustCurrencySymbol :: Text
    <*> arbitraryReduced n -- quickserverServiceMaster :: QuickserverServiceMaster
    <*> arbitrary -- quickserverPackage :: Text
    <*> arbitrary -- quickserverOsTemplate :: Text
    <*> arbitraryReduced n -- quickserverServiceExtra :: QuickserverServiceExtra
    <*> arbitraryReduced n -- quickserverExtraInfoTables :: QuickserverExtraInfoTables
    <*> arbitrary -- quickserverCpuGraphData :: Text
    <*> arbitrary -- quickserverBandwidthXaxis :: Text
    <*> arbitrary -- quickserverBandwidthYaxis :: Text
    <*> arbitrary -- quickserverModule :: Text
    <*> arbitrary -- quickserverToken :: Text
    <*> arbitrary -- quickserverServiceDiskUsed :: Text
    <*> arbitrary -- quickserverServiceDiskTotal :: Text
    <*> arbitrary -- quickserverDiskPercentage :: Double
    <*> arbitrary -- quickserverMemory :: Text
    <*> arbitrary -- quickserverHdd :: Text
    <*> arbitrary -- quickserverServiceOverviewExtra :: [Text]
  
instance Arbitrary QuickserverAddons where
  arbitrary = sized genQuickserverAddons

genQuickserverAddons :: Int -> Gen QuickserverAddons
genQuickserverAddons n =
  QuickserverAddons
    <$> arbitraryReducedMaybe n -- quickserverAddonsTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverAddonsRows :: Maybe [QuickserverAddonsRow]
  
instance Arbitrary QuickserverAddonsRow where
  arbitrary = sized genQuickserverAddonsRow

genQuickserverAddonsRow :: Int -> Gen QuickserverAddonsRow
genQuickserverAddonsRow n =
  QuickserverAddonsRow
    <$> arbitraryReducedMaybe n -- quickserverAddonsRowDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverAddonsRowValue :: Maybe Text
  
instance Arbitrary QuickserverBillingDetails where
  arbitrary = sized genQuickserverBillingDetails

genQuickserverBillingDetails :: Int -> Gen QuickserverBillingDetails
genQuickserverBillingDetails n =
  QuickserverBillingDetails
    <$> arbitraryReducedMaybe n -- quickserverBillingDetailsServiceLastInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverBillingDetailsServicePaymentStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverBillingDetailsServiceFrequency :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverBillingDetailsNextDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverBillingDetailsServiceNextInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverBillingDetailsServiceCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverBillingDetailsServiceCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverBillingDetailsServiceCostInfo :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverBillingDetailsServiceExtra :: Maybe QuickserverServiceExtra
    <*> arbitraryReducedMaybe n -- quickserverBillingDetailsServiceExtraJson :: Maybe Text
  
instance Arbitrary QuickserverClientLink where
  arbitrary = sized genQuickserverClientLink

genQuickserverClientLink :: Int -> Gen QuickserverClientLink
genQuickserverClientLink n =
  QuickserverClientLink
    <$> arbitraryReducedMaybe n -- quickserverClientLinkLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverClientLinkLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverClientLinkIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverClientLinkIconText :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverClientLinkHelpText :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverClientLinkOtherAttr :: Maybe Text
  
instance Arbitrary QuickserverExtraInfoTables where
  arbitrary = sized genQuickserverExtraInfoTables

genQuickserverExtraInfoTables :: Int -> Gen QuickserverExtraInfoTables
genQuickserverExtraInfoTables n =
  QuickserverExtraInfoTables
    <$> arbitraryReducedMaybe n -- quickserverExtraInfoTablesIpInfo :: Maybe QuickserverIpInfo
    <*> arbitraryReducedMaybe n -- quickserverExtraInfoTablesAddons :: Maybe QuickserverAddons
  
instance Arbitrary QuickserverIpInfo where
  arbitrary = sized genQuickserverIpInfo

genQuickserverIpInfo :: Int -> Gen QuickserverIpInfo
genQuickserverIpInfo n =
  QuickserverIpInfo
    <$> arbitraryReducedMaybe n -- quickserverIpInfoTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverIpInfoRows :: Maybe [QuickserverIpTableRow]
  
instance Arbitrary QuickserverIpTableRow where
  arbitrary = sized genQuickserverIpTableRow

genQuickserverIpTableRow :: Int -> Gen QuickserverIpTableRow
genQuickserverIpTableRow n =
  QuickserverIpTableRow
    <$> arbitraryReducedMaybe n -- quickserverIpTableRowDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverIpTableRowValue :: Maybe Text
  
instance Arbitrary QuickserverOrder where
  arbitrary = sized genQuickserverOrder

genQuickserverOrder :: Int -> Gen QuickserverOrder
genQuickserverOrder n =
  QuickserverOrder
    <$> arbitraryReducedMaybe n -- quickserverOrderQsId :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverOrderServerDetails :: Maybe QuickserverOrderServerDetails
    <*> arbitraryReducedMaybe n -- quickserverOrderTemplates :: Maybe QuickserverOrderTemplates
    <*> arbitraryReducedMaybe n -- quickserverOrderVersion :: Maybe QuickserverOrderVersion
    <*> arbitraryReducedMaybe n -- quickserverOrderDistroSel :: Maybe QuickserverOrderDistroSel
  
instance Arbitrary QuickserverOrderDistroSel where
  arbitrary = sized genQuickserverOrderDistroSel

genQuickserverOrderDistroSel :: Int -> Gen QuickserverOrderDistroSel
genQuickserverOrderDistroSel n =
  QuickserverOrderDistroSel
    <$> arbitraryReducedMaybe n -- quickserverOrderDistroSelUbuntu :: Maybe QuickserverOrderDistroSelUbuntu
  
instance Arbitrary QuickserverOrderDistroSelUbuntu where
  arbitrary = sized genQuickserverOrderDistroSelUbuntu

genQuickserverOrderDistroSelUbuntu :: Int -> Gen QuickserverOrderDistroSelUbuntu
genQuickserverOrderDistroSelUbuntu n =
  QuickserverOrderDistroSelUbuntu
    <$> arbitraryReducedMaybe n -- quickserverOrderDistroSelUbuntuUbuntu :: Maybe Text
  
instance Arbitrary QuickserverOrderServerDetails where
  arbitrary = sized genQuickserverOrderServerDetails

genQuickserverOrderServerDetails :: Int -> Gen QuickserverOrderServerDetails
genQuickserverOrderServerDetails n =
  QuickserverOrderServerDetails
    <$> arbitraryReducedMaybe n -- quickserverOrderServerDetails381 :: Maybe QuickserverOrderServerDetails381
  
instance Arbitrary QuickserverOrderServerDetails381 where
  arbitrary = sized genQuickserverOrderServerDetails381

genQuickserverOrderServerDetails381 :: Int -> Gen QuickserverOrderServerDetails381
genQuickserverOrderServerDetails381 n =
  QuickserverOrderServerDetails381
    <$> arbitraryReducedMaybe n -- quickserverOrderServerDetails381Cpu :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverOrderServerDetails381Ram :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverOrderServerDetails381Hd :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverOrderServerDetails381Cores :: Maybe Int
    <*> arbitraryReducedMaybe n -- quickserverOrderServerDetails381Cost :: Maybe Text
  
instance Arbitrary QuickserverOrderTemplates where
  arbitrary = sized genQuickserverOrderTemplates

genQuickserverOrderTemplates :: Int -> Gen QuickserverOrderTemplates
genQuickserverOrderTemplates n =
  QuickserverOrderTemplates
    <$> arbitraryReducedMaybe n -- quickserverOrderTemplatesUbuntu :: Maybe QuickserverOrderTemplatesUbuntu64
  
instance Arbitrary QuickserverOrderTemplatesUbuntu64 where
  arbitrary = sized genQuickserverOrderTemplatesUbuntu64

genQuickserverOrderTemplatesUbuntu64 :: Int -> Gen QuickserverOrderTemplatesUbuntu64
genQuickserverOrderTemplatesUbuntu64 n =
  
  pure QuickserverOrderTemplatesUbuntu64
   
instance Arbitrary QuickserverOrderVersion where
  arbitrary = sized genQuickserverOrderVersion

genQuickserverOrderVersion :: Int -> Gen QuickserverOrderVersion
genQuickserverOrderVersion n =
  QuickserverOrderVersion
    <$> arbitraryReducedMaybe n -- quickserverOrderVersionCentosstream8 :: Maybe QuickserverOrderVersionCentosstream8
  
instance Arbitrary QuickserverOrderVersionCentosstream8 where
  arbitrary = sized genQuickserverOrderVersionCentosstream8

genQuickserverOrderVersionCentosstream8 :: Int -> Gen QuickserverOrderVersionCentosstream8
genQuickserverOrderVersionCentosstream8 n =
  QuickserverOrderVersionCentosstream8
    <$> arbitraryReducedMaybe n -- quickserverOrderVersionCentosstream8Centosstream8 :: Maybe Text
  
instance Arbitrary QuickserverRow where
  arbitrary = sized genQuickserverRow

genQuickserverRow :: Int -> Gen QuickserverRow
genQuickserverRow n =
  QuickserverRow
    <$> arbitrary -- quickserverRowQsId :: Text
    <*> arbitrary -- quickserverRowQsName :: Text
    <*> arbitrary -- quickserverRowCost :: Text
    <*> arbitrary -- quickserverRowQsHostname :: Text
    <*> arbitrary -- quickserverRowQsStatus :: Text
    <*> arbitrary -- quickserverRowQsComment :: Text
  
instance Arbitrary QuickserverServiceExtra where
  arbitrary = sized genQuickserverServiceExtra

genQuickserverServiceExtra :: Int -> Gen QuickserverServiceExtra
genQuickserverServiceExtra n =
  QuickserverServiceExtra
    <$> arbitraryReducedMaybe n -- quickserverServiceExtraPlatform :: Maybe Text
  
instance Arbitrary QuickserverServiceInfo where
  arbitrary = sized genQuickserverServiceInfo

genQuickserverServiceInfo :: Int -> Gen QuickserverServiceInfo
genQuickserverServiceInfo n =
  QuickserverServiceInfo
    <$> arbitraryReducedMaybe n -- quickserverServiceInfoQsId :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsCustid :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsServer :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsIpv6 :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsVzid :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsOrderDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsInvoice :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsExtra :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsHostname :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsServerStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsComment :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsSlices :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsVnc :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsVncPort :: Maybe Int
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsRootpass :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsMac :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsOs :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsLocation :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceInfoQsPlatform :: Maybe Text
  
instance Arbitrary QuickserverServiceMaster where
  arbitrary = sized genQuickserverServiceMaster

genQuickserverServiceMaster :: Int -> Gen QuickserverServiceMaster
genQuickserverServiceMaster n =
  QuickserverServiceMaster
    <$> arbitraryReducedMaybe n -- quickserverServiceMasterQsId :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsHdsize :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsHdfree :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsBits :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsLoad :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsRam :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsCpuModel :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsCpuMhz :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsLocation :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsAvailable :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsLastUpdate :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsCores :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsIowait :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsRaidStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsDriveType :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsRaidBuilding :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsKernel :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsIoping :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsSpeed :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsDistro :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsDistroVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsBytesSecIn :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsBytesSecOut :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsPacketsSecIn :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsPacketsSecOut :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsLastInstallTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsPartitions :: Maybe Text
    <*> arbitraryReducedMaybe n -- quickserverServiceMasterQsCpuFlags :: Maybe Text
  
instance Arbitrary QuickserversCancel200Response where
  arbitrary = sized genQuickserversCancel200Response

genQuickserversCancel200Response :: Int -> Gen QuickserversCancel200Response
genQuickserversCancel200Response n =
  QuickserversCancel200Response
    <$> arbitrary -- quickserversCancel200ResponseSuccess :: Bool
    <*> arbitrary -- quickserversCancel200ResponseText :: Text
  
instance Arbitrary ReplyTicketRequest where
  arbitrary = sized genReplyTicketRequest

genReplyTicketRequest :: Int -> Gen ReplyTicketRequest
genReplyTicketRequest n =
  ReplyTicketRequest
    <$> arbitraryReducedMaybe n -- replyTicketRequestContent :: Maybe Text
  
instance Arbitrary ReplyTicketResponseSchema where
  arbitrary = sized genReplyTicketResponseSchema

genReplyTicketResponseSchema :: Int -> Gen ReplyTicketResponseSchema
genReplyTicketResponseSchema n =
  ReplyTicketResponseSchema
    <$> arbitraryReducedMaybe n -- replyTicketResponseSchemaSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- replyTicketResponseSchemaPostId :: Maybe Int
  
instance Arbitrary RestoreRequest where
  arbitrary = sized genRestoreRequest

genRestoreRequest :: Int -> Gen RestoreRequest
genRestoreRequest n =
  RestoreRequest
    <$> arbitraryReducedMaybe n -- restoreRequestBackup :: Maybe Text
    <*> arbitraryReducedMaybe n -- restoreRequestPassword :: Maybe Text
  
instance Arbitrary ReverseDnsEntries where
  arbitrary = sized genReverseDnsEntries

genReverseDnsEntries :: Int -> Gen ReverseDnsEntries
genReverseDnsEntries n =
  ReverseDnsEntries
    <$> arbitraryReducedMaybe n -- reverseDnsEntriesIps :: Maybe (Map.Map String AnyType)
  
instance Arbitrary ScrubIpFilterTypes where
  arbitrary = sized genScrubIpFilterTypes

genScrubIpFilterTypes :: Int -> Gen ScrubIpFilterTypes
genScrubIpFilterTypes n =
  ScrubIpFilterTypes
    <$> arbitraryReducedMaybe n -- scrubIpFilterTypesSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- scrubIpFilterTypesFilters :: Maybe (Map.Map String ScrubIpFilterTypesFiltersValue)
  
instance Arbitrary ScrubIpFilterTypesFiltersValue where
  arbitrary = sized genScrubIpFilterTypesFiltersValue

genScrubIpFilterTypesFiltersValue :: Int -> Gen ScrubIpFilterTypesFiltersValue
genScrubIpFilterTypesFiltersValue n =
  ScrubIpFilterTypesFiltersValue
    <$> arbitraryReducedMaybe n -- scrubIpFilterTypesFiltersValueName :: Maybe Text
    <*> arbitraryReducedMaybe n -- scrubIpFilterTypesFiltersValueDesc :: Maybe Text
  
instance Arbitrary ScrubIpPlaceOrder where
  arbitrary = sized genScrubIpPlaceOrder

genScrubIpPlaceOrder :: Int -> Gen ScrubIpPlaceOrder
genScrubIpPlaceOrder n =
  ScrubIpPlaceOrder
    <$> arbitrary -- scrubIpPlaceOrderServiceType :: Int
    <*> arbitrary -- scrubIpPlaceOrderIp :: Text
  
instance Arbitrary ScrubIpsDeleteRule200Response where
  arbitrary = sized genScrubIpsDeleteRule200Response

genScrubIpsDeleteRule200Response :: Int -> Gen ScrubIpsDeleteRule200Response
genScrubIpsDeleteRule200Response n =
  ScrubIpsDeleteRule200Response
    <$> arbitraryReducedMaybe n -- scrubIpsDeleteRule200ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- scrubIpsDeleteRule200ResponseText :: Maybe Text
  
instance Arbitrary ScrubIpsDeleteRule400Response where
  arbitrary = sized genScrubIpsDeleteRule400Response

genScrubIpsDeleteRule400Response :: Int -> Gen ScrubIpsDeleteRule400Response
genScrubIpsDeleteRule400Response n =
  ScrubIpsDeleteRule400Response
    <$> arbitraryReducedMaybe n -- scrubIpsDeleteRule400ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- scrubIpsDeleteRule400ResponseText :: Maybe Text
  
instance Arbitrary ScrubIpsDeleteRule500Response where
  arbitrary = sized genScrubIpsDeleteRule500Response

genScrubIpsDeleteRule500Response :: Int -> Gen ScrubIpsDeleteRule500Response
genScrubIpsDeleteRule500Response n =
  ScrubIpsDeleteRule500Response
    <$> arbitraryReducedMaybe n -- scrubIpsDeleteRule500ResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- scrubIpsDeleteRule500ResponseText :: Maybe Text
  
instance Arbitrary ScrubIpsLogRowSchema where
  arbitrary = sized genScrubIpsLogRowSchema

genScrubIpsLogRowSchema :: Int -> Gen ScrubIpsLogRowSchema
genScrubIpsLogRowSchema n =
  ScrubIpsLogRowSchema
    <$> arbitraryReducedMaybe n -- scrubIpsLogRowSchemaDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- scrubIpsLogRowSchemaFilter :: Maybe Text
    <*> arbitraryReducedMaybe n -- scrubIpsLogRowSchemaBlockedIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- scrubIpsLogRowSchemaTargetIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- scrubIpsLogRowSchemaTargetPort :: Maybe Double
    <*> arbitraryReducedMaybe n -- scrubIpsLogRowSchemaProtocol :: Maybe Text
    <*> arbitraryReducedMaybe n -- scrubIpsLogRowSchemaByteCount :: Maybe Double
    <*> arbitraryReducedMaybe n -- scrubIpsLogRowSchemaXdpAction :: Maybe Text
  
instance Arbitrary ScrubIpsRowSchema where
  arbitrary = sized genScrubIpsRowSchema

genScrubIpsRowSchema :: Int -> Gen ScrubIpsRowSchema
genScrubIpsRowSchema n =
  ScrubIpsRowSchema
    <$> arbitraryReducedMaybe n -- scrubIpsRowSchemaScrubIpId :: Maybe Int
    <*> arbitraryReducedMaybe n -- scrubIpsRowSchemaRepeatInvoicesCost :: Maybe Double
    <*> arbitraryReducedMaybe n -- scrubIpsRowSchemaScrubIpIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- scrubIpsRowSchemaScrubIpStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- scrubIpsRowSchemaServicesName :: Maybe Text
  
instance Arbitrary SearchAutocompleteResponse where
  arbitrary = sized genSearchAutocompleteResponse

genSearchAutocompleteResponse :: Int -> Gen SearchAutocompleteResponse
genSearchAutocompleteResponse n =
  
  pure SearchAutocompleteResponse
   
instance Arbitrary SendMail where
  arbitrary = sized genSendMail

genSendMail :: Int -> Gen SendMail
genSendMail n =
  SendMail
    <$> arbitrary -- sendMailTo :: Text
    <*> arbitrary -- sendMailFrom :: Text
    <*> arbitrary -- sendMailSubject :: Text
    <*> arbitrary -- sendMailBody :: Text
  
instance Arbitrary SendMailAdv where
  arbitrary = sized genSendMailAdv

genSendMailAdv :: Int -> Gen SendMailAdv
genSendMailAdv n =
  SendMailAdv
    <$> arbitrary -- sendMailAdvSubject :: Text
    <*> arbitrary -- sendMailAdvBody :: Text
    <*> arbitraryReduced n -- sendMailAdvFrom :: EmailAddressName
    <*> arbitraryReduced n -- sendMailAdvTo :: [EmailAddressName]
    <*> arbitraryReducedMaybe n -- sendMailAdvReplyto :: Maybe [EmailAddressName]
    <*> arbitraryReducedMaybe n -- sendMailAdvCc :: Maybe [EmailAddressName]
    <*> arbitraryReducedMaybe n -- sendMailAdvBcc :: Maybe [EmailAddressName]
    <*> arbitraryReducedMaybe n -- sendMailAdvAttachments :: Maybe [MailAttachment]
    <*> arbitraryReducedMaybe n -- sendMailAdvId :: Maybe Integer
  
instance Arbitrary Server where
  arbitrary = sized genServer

genServer :: Int -> Gen Server
genServer n =
  Server
    <$> arbitrary -- serverIpmiAuth :: Bool
    <*> arbitraryReduced n -- serverClientLinks :: [ServerClientLink]
    <*> arbitraryReduced n -- serverBillingDetails :: ServerBillingDetails
    <*> arbitrary -- serverCustCurrency :: Text
    <*> arbitrary -- serverCustCurrencySymbol :: Text
    <*> arbitrary -- serverPackage :: Text
    <*> arbitrary -- serverServiceExtra :: [Text]
    <*> arbitraryReduced n -- serverLocations :: ServerLocations
    <*> arbitraryReduced n -- serverNetworkInfo :: ServerNetworkInfo
    <*> arbitraryReduced n -- serverExtraInfoTables :: ServerExtraInfoTables
    <*> arbitraryReduced n -- serverServiceInfo :: ServerServiceInfo
  
instance Arbitrary ServerAsset where
  arbitrary = sized genServerAsset

genServerAsset :: Int -> Gen ServerAsset
genServerAsset n =
  ServerAsset
    <$> arbitrary -- serverAssetId :: Int
    <*> arbitrary -- serverAssetOrderId :: Text
    <*> arbitrary -- serverAssetHostname :: Text
    <*> arbitrary -- serverAssetStatus :: Text
    <*> arbitrary -- serverAssetPrimaryIpv4 :: Text
    <*> arbitrary -- serverAssetPrimaryIpv6 :: Text
    <*> arbitrary -- serverAssetDatacenter :: Text
    <*> arbitrary -- serverAssetTypeId :: Text
    <*> arbitrary -- serverAssetAssetTag :: Text
    <*> arbitrary -- serverAssetRack :: Text
    <*> arbitrary -- serverAssetRow :: Text
    <*> arbitrary -- serverAssetCol :: Text
    <*> arbitrary -- serverAssetUnitStart :: Text
    <*> arbitrary -- serverAssetUnitEnd :: Text
    <*> arbitrary -- serverAssetUnitSub :: Text
    <*> arbitrary -- serverAssetIpmiMac :: Text
    <*> arbitrary -- serverAssetIpmiIp :: Text
    <*> arbitrary -- serverAssetIpmiWorking :: Text
    <*> arbitrary -- serverAssetCompany :: Text
    <*> arbitrary -- serverAssetComments :: Text
    <*> arbitrary -- serverAssetMake :: Text
    <*> arbitrary -- serverAssetModel :: Text
    <*> arbitrary -- serverAssetDescription :: Text
    <*> arbitrary -- serverAssetCustomerId :: Text
    <*> arbitrary -- serverAssetExternalId :: Text
    <*> arbitrary -- serverAssetBillingStatus :: Text
    <*> arbitrary -- serverAssetOverdue :: Text
    <*> arbitrary -- serverAssetAssetId :: Text
    <*> arbitrary -- serverAssetAssetName :: Text
    <*> arbitrary -- serverAssetRackId :: Text
    <*> arbitrary -- serverAssetRackName :: Text
    <*> arbitrary -- serverAssetRackLocation :: Text
    <*> arbitrary -- serverAssetRackSize :: Text
    <*> arbitrary -- serverAssetRackX :: Text
    <*> arbitrary -- serverAssetRackY :: Text
    <*> arbitrary -- serverAssetSwitchports :: [Int]
    <*> arbitrary -- serverAssetVlans :: [Text]
    <*> arbitrary -- serverAssetVlans6 :: [Text]
    <*> arbitraryReduced n -- serverAssetLease :: ServerLease
    <*> arbitraryReducedMaybe n -- serverAssetMac :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverAssetIpmiAdminUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverAssetIpmiAdminPassword :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverAssetIpmiClientUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverAssetIpmiClientPassword :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverAssetIpmiUpdated :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverAssetCreateTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverAssetUpdateTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverAssetComment :: Maybe Text
  
instance Arbitrary ServerAssets where
  arbitrary = sized genServerAssets

genServerAssets :: Int -> Gen ServerAssets
genServerAssets n =
  ServerAssets
    <$> arbitraryReducedMaybe n -- serverAssetsTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverAssetsSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverAssetsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverAssetsHeader :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- serverAssetsRows :: Maybe [[Text]]
  
instance Arbitrary ServerBillingDetails where
  arbitrary = sized genServerBillingDetails

genServerBillingDetails :: Int -> Gen ServerBillingDetails
genServerBillingDetails n =
  ServerBillingDetails
    <$> arbitraryReducedMaybe n -- serverBillingDetailsServiceLastInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverBillingDetailsServicePaymentStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverBillingDetailsServiceFrequency :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverBillingDetailsNextDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverBillingDetailsServiceNextInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverBillingDetailsServiceCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverBillingDetailsServiceCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverBillingDetailsServiceCostInfo :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverBillingDetailsServiceExtra :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- serverBillingDetailsServiceExtraJson :: Maybe Text
  
instance Arbitrary ServerBulkIpmiPowerResponse where
  arbitrary = sized genServerBulkIpmiPowerResponse

genServerBulkIpmiPowerResponse :: Int -> Gen ServerBulkIpmiPowerResponse
genServerBulkIpmiPowerResponse n =
  ServerBulkIpmiPowerResponse
    <$> arbitraryReduced n -- serverBulkIpmiPowerResponseResults :: [ServerBulkIpmiPowerResponseResultsInner]
  
instance Arbitrary ServerBulkIpmiPowerResponseResultsInner where
  arbitrary = sized genServerBulkIpmiPowerResponseResultsInner

genServerBulkIpmiPowerResponseResultsInner :: Int -> Gen ServerBulkIpmiPowerResponseResultsInner
genServerBulkIpmiPowerResponseResultsInner n =
  ServerBulkIpmiPowerResponseResultsInner
    <$> arbitraryReducedMaybe n -- serverBulkIpmiPowerResponseResultsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverBulkIpmiPowerResponseResultsInnerAsset :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverBulkIpmiPowerResponseResultsInnerText :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverBulkIpmiPowerResponseResultsInnerError :: Maybe Text
  
instance Arbitrary ServerClientLink where
  arbitrary = sized genServerClientLink

genServerClientLink :: Int -> Gen ServerClientLink
genServerClientLink n =
  ServerClientLink
    <$> arbitrary -- serverClientLinkLabel :: Text
    <*> arbitrary -- serverClientLinkLink :: Text
    <*> arbitraryReducedMaybe n -- serverClientLinkIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverClientLinkIconText :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverClientLinkHelpText :: Maybe Text
  
instance Arbitrary ServerExtraInfoTables where
  arbitrary = sized genServerExtraInfoTables

genServerExtraInfoTables :: Int -> Gen ServerExtraInfoTables
genServerExtraInfoTables n =
  ServerExtraInfoTables
    <$> arbitraryReduced n -- serverExtraInfoTablesAssets :: ServerAssets
  
instance Arbitrary ServerIpmiLiveInfo where
  arbitrary = sized genServerIpmiLiveInfo

genServerIpmiLiveInfo :: Int -> Gen ServerIpmiLiveInfo
genServerIpmiLiveInfo n =
  ServerIpmiLiveInfo
    <$> arbitraryReducedMaybe n -- serverIpmiLiveInfoText :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverIpmiLiveInfoPublicIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverIpmiLiveInfoAllowedIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverIpmiLiveInfoClientUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverIpmiLiveInfoClientPassword :: Maybe Text
  
instance Arbitrary ServerIpmiLiveRequest where
  arbitrary = sized genServerIpmiLiveRequest

genServerIpmiLiveRequest :: Int -> Gen ServerIpmiLiveRequest
genServerIpmiLiveRequest n =
  ServerIpmiLiveRequest
    <$> arbitrary -- serverIpmiLiveRequestIp :: Text
    <*> arbitraryReducedMaybe n -- serverIpmiLiveRequestAsset :: Maybe Int
  
instance Arbitrary ServerIpmiPowerRequest where
  arbitrary = sized genServerIpmiPowerRequest

genServerIpmiPowerRequest :: Int -> Gen ServerIpmiPowerRequest
genServerIpmiPowerRequest n =
  ServerIpmiPowerRequest
    <$> arbitrary -- serverIpmiPowerRequestAction :: E'Action
    <*> arbitraryReducedMaybe n -- serverIpmiPowerRequestAsset :: Maybe Int
  
instance Arbitrary ServerLease where
  arbitrary = sized genServerLease

genServerLease :: Int -> Gen ServerLease
genServerLease n =
  ServerLease
    <$> arbitrary -- serverLeaseMac :: Text
    <*> arbitrary -- serverLeaseAuthenticated :: Bool
    <*> arbitrary -- serverLeaseGroup :: Text
  
instance Arbitrary ServerLocation1 where
  arbitrary = sized genServerLocation1

genServerLocation1 :: Int -> Gen ServerLocation1
genServerLocation1 n =
  ServerLocation1
    <$> arbitrary -- serverLocation1LocationId :: Int
    <*> arbitrary -- serverLocation1LocationName :: Text
    <*> arbitrary -- serverLocation1LocationLat :: Text
    <*> arbitrary -- serverLocation1LocationLong :: Text
    <*> arbitraryReducedMaybe n -- serverLocation1LocationDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverLocation1LocationIpmiGroup :: Maybe Int
  
instance Arbitrary ServerLocations where
  arbitrary = sized genServerLocations

genServerLocations :: Int -> Gen ServerLocations
genServerLocations n =
  ServerLocations
    <$> arbitraryReducedMaybe n -- serverLocations1 :: Maybe ServerLocation1
  
instance Arbitrary ServerNetworkInfo where
  arbitrary = sized genServerNetworkInfo

genServerNetworkInfo :: Int -> Gen ServerNetworkInfo
genServerNetworkInfo n =
  ServerNetworkInfo
    <$> arbitrary -- serverNetworkInfoVlans :: [Text]
    <*> arbitrary -- serverNetworkInfoVlans6 :: [Text]
    <*> arbitraryReduced n -- serverNetworkInfoAssets :: ServerNetworkInfoAssets
    <*> arbitraryReduced n -- serverNetworkInfoSwitchports :: ServerNetworkInfoSwitchports
  
instance Arbitrary ServerNetworkInfoAssets where
  arbitrary = sized genServerNetworkInfoAssets

genServerNetworkInfoAssets :: Int -> Gen ServerNetworkInfoAssets
genServerNetworkInfoAssets n =
  ServerNetworkInfoAssets
    <$> arbitraryReduced n -- serverNetworkInfoAssets3497 :: ServerAsset
  
instance Arbitrary ServerNetworkInfoSwitchports where
  arbitrary = sized genServerNetworkInfoSwitchports

genServerNetworkInfoSwitchports :: Int -> Gen ServerNetworkInfoSwitchports
genServerNetworkInfoSwitchports n =
  ServerNetworkInfoSwitchports
    <$> arbitraryReduced n -- serverNetworkInfoSwitchports10414 :: ServerSwitchport
  
instance Arbitrary ServerOrder where
  arbitrary = sized genServerOrder

genServerOrder :: Int -> Gen ServerOrder
genServerOrder n =
  ServerOrder
    <$> arbitraryReducedMaybe n -- serverOrderFormValues :: Maybe ServerOrderFormValues
    <*> arbitraryReducedMaybe n -- serverOrderConfigIds :: Maybe ServerOrderConfigIds
    <*> arbitraryReducedMaybe n -- serverOrderCpu :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderFieldLabel :: Maybe ServerOrderFieldLabels
    <*> arbitraryReducedMaybe n -- serverOrderCpuLi :: Maybe ServerOrderCpuLi
    <*> arbitraryReducedMaybe n -- serverOrderMemoryLi :: Maybe ServerOrderMemoryLi
    <*> arbitraryReducedMaybe n -- serverOrderBandwidthLi :: Maybe ServerOrderBandwidthLi
    <*> arbitraryReducedMaybe n -- serverOrderIpsLi :: Maybe ServerOrderIpsLi
    <*> arbitraryReducedMaybe n -- serverOrderOsLi :: Maybe ServerOrderOsLi
    <*> arbitraryReducedMaybe n -- serverOrderCpLi :: Maybe ServerOrderCpLi
    <*> arbitraryReducedMaybe n -- serverOrderRaidLi :: Maybe [ServerOrderRAID]
  
instance Arbitrary ServerOrderBandwidth where
  arbitrary = sized genServerOrderBandwidth

genServerOrderBandwidth :: Int -> Gen ServerOrderBandwidth
genServerOrderBandwidth n =
  ServerOrderBandwidth
    <$> arbitraryReducedMaybe n -- serverOrderBandwidthId :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderBandwidthPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderBandwidthImg :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderBandwidthShortDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderBandwidthLongDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderBandwidthType :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderBandwidthQty :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderBandwidthActive :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderBandwidthMonthlyPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderBandwidthPriceDisplay :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderBandwidthMonthlyPriceDisplay :: Maybe Text
  
instance Arbitrary ServerOrderBandwidthLi where
  arbitrary = sized genServerOrderBandwidthLi

genServerOrderBandwidthLi :: Int -> Gen ServerOrderBandwidthLi
genServerOrderBandwidthLi n =
  ServerOrderBandwidthLi
    <$> arbitraryReducedMaybe n -- serverOrderBandwidthLi15 :: Maybe ServerOrderBandwidth
  
instance Arbitrary ServerOrderCPU where
  arbitrary = sized genServerOrderCPU

genServerOrderCPU :: Int -> Gen ServerOrderCPU
genServerOrderCPU n =
  ServerOrderCPU
    <$> arbitraryReducedMaybe n -- serverOrderCPUId :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderCPUImg :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUShortDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPULongDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPULocation :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUFsb :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUManu :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUType :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUSpeed :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUCache :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUActive :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUNumCores :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUNumCpus :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUBenchmark :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUMonthlyPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderCPUMaxRam :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUMinRam :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUMaxLff :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUMaxSff :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUMaxNve :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUVisible :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUHdIds :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUPriceDisplay :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderCPUMonthlyPriceDisplay :: Maybe Text
  
instance Arbitrary ServerOrderConfigIds where
  arbitrary = sized genServerOrderConfigIds

genServerOrderConfigIds :: Int -> Gen ServerOrderConfigIds
genServerOrderConfigIds n =
  ServerOrderConfigIds
    <$> arbitraryReducedMaybe n -- serverOrderConfigIdsMemory :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderConfigIdsBandwidth :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderConfigIdsIps :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderConfigIdsOs :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderConfigIdsCp :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderConfigIdsRaid :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderConfigIdsHd :: Maybe Text
  
instance Arbitrary ServerOrderControlPanel where
  arbitrary = sized genServerOrderControlPanel

genServerOrderControlPanel :: Int -> Gen ServerOrderControlPanel
genServerOrderControlPanel n =
  ServerOrderControlPanel
    <$> arbitraryReducedMaybe n -- serverOrderControlPanelId :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderControlPanelPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderControlPanelImg :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderControlPanelShortDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderControlPanelLongDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderControlPanelOsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderControlPanelMonthlyPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderControlPanelTypes :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- serverOrderControlPanelPriceDisplay :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderControlPanelMonthlyPriceDisplay :: Maybe Text
  
instance Arbitrary ServerOrderCpLi where
  arbitrary = sized genServerOrderCpLi

genServerOrderCpLi :: Int -> Gen ServerOrderCpLi
genServerOrderCpLi n =
  ServerOrderCpLi
    <$> arbitraryReducedMaybe n -- serverOrderCpLi9 :: Maybe ServerOrderControlPanel
  
instance Arbitrary ServerOrderCpuLi where
  arbitrary = sized genServerOrderCpuLi

genServerOrderCpuLi :: Int -> Gen ServerOrderCpuLi
genServerOrderCpuLi n =
  ServerOrderCpuLi
    <$> arbitraryReducedMaybe n -- serverOrderCpuLi254 :: Maybe ServerOrderCPU
  
instance Arbitrary ServerOrderFieldLabel where
  arbitrary = sized genServerOrderFieldLabel

genServerOrderFieldLabel :: Int -> Gen ServerOrderFieldLabel
genServerOrderFieldLabel n =
  ServerOrderFieldLabel
    <$> arbitraryReducedMaybe n -- serverOrderFieldLabelName :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderFieldLabelActive :: Maybe Int
  
instance Arbitrary ServerOrderFieldLabels where
  arbitrary = sized genServerOrderFieldLabels

genServerOrderFieldLabels :: Int -> Gen ServerOrderFieldLabels
genServerOrderFieldLabels n =
  ServerOrderFieldLabels
    <$> arbitraryReducedMaybe n -- serverOrderFieldLabelsBandwidth :: Maybe ServerOrderFieldLabel
    <*> arbitraryReducedMaybe n -- serverOrderFieldLabelsIps :: Maybe ServerOrderFieldLabel
    <*> arbitraryReducedMaybe n -- serverOrderFieldLabelsOs :: Maybe ServerOrderFieldLabel
    <*> arbitraryReducedMaybe n -- serverOrderFieldLabelsCp :: Maybe ServerOrderFieldLabel
    <*> arbitraryReducedMaybe n -- serverOrderFieldLabelsRaid :: Maybe ServerOrderFieldLabel
    <*> arbitraryReducedMaybe n -- serverOrderFieldLabelsMemory :: Maybe ServerOrderFieldLabel
    <*> arbitraryReducedMaybe n -- serverOrderFieldLabelsHd :: Maybe ServerOrderFieldLabel
  
instance Arbitrary ServerOrderFormValues where
  arbitrary = sized genServerOrderFormValues

genServerOrderFormValues :: Int -> Gen ServerOrderFormValues
genServerOrderFormValues n =
  ServerOrderFormValues
    <$> arbitraryReducedMaybe n -- serverOrderFormValuesMemory :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderFormValuesBandwidth :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderFormValuesIps :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderFormValuesOs :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderFormValuesCp :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderFormValuesRaid :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderFormValuesHd :: Maybe Text
  
instance Arbitrary ServerOrderIP where
  arbitrary = sized genServerOrderIP

genServerOrderIP :: Int -> Gen ServerOrderIP
genServerOrderIP n =
  ServerOrderIP
    <$> arbitraryReducedMaybe n -- serverOrderIPId :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderIPPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderIPImg :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderIPShortDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderIPLongDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderIPQty :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderIPMonthlyPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderIPPriceDisplay :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderIPMonthlyPriceDisplay :: Maybe Text
  
instance Arbitrary ServerOrderIpsLi where
  arbitrary = sized genServerOrderIpsLi

genServerOrderIpsLi :: Int -> Gen ServerOrderIpsLi
genServerOrderIpsLi n =
  ServerOrderIpsLi
    <$> arbitraryReducedMaybe n -- serverOrderIpsLi9 :: Maybe ServerOrderIP
  
instance Arbitrary ServerOrderMemory where
  arbitrary = sized genServerOrderMemory

genServerOrderMemory :: Int -> Gen ServerOrderMemory
genServerOrderMemory n =
  ServerOrderMemory
    <$> arbitraryReducedMaybe n -- serverOrderMemoryId :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderMemoryPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderMemoryImg :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderMemoryShortDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderMemoryLongDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderMemoryManu :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderMemorySize :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderMemoryType :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderMemoryHidden :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderMemoryMonthlyPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderMemoryDriveType :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderMemoryMonthlyPriceDisplay :: Maybe Text
  
instance Arbitrary ServerOrderMemoryLi where
  arbitrary = sized genServerOrderMemoryLi

genServerOrderMemoryLi :: Int -> Gen ServerOrderMemoryLi
genServerOrderMemoryLi n =
  ServerOrderMemoryLi
    <$> arbitraryReducedMaybe n -- serverOrderMemoryLi254 :: Maybe ServerOrderMemoryLi254
  
instance Arbitrary ServerOrderMemoryLi254 where
  arbitrary = sized genServerOrderMemoryLi254

genServerOrderMemoryLi254 :: Int -> Gen ServerOrderMemoryLi254
genServerOrderMemoryLi254 n =
  ServerOrderMemoryLi254
    <$> arbitraryReducedMaybe n -- serverOrderMemoryLi25465 :: Maybe ServerOrderMemory
  
instance Arbitrary ServerOrderOS where
  arbitrary = sized genServerOrderOS

genServerOrderOS :: Int -> Gen ServerOrderOS
genServerOrderOS n =
  ServerOrderOS
    <$> arbitraryReducedMaybe n -- serverOrderOSId :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderOSPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderOSImg :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderOSShortDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderOSLongDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderOSMonthlyPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderOSActive :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderOSPriceDisplay :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderOSMonthlyPriceDisplay :: Maybe Text
  
instance Arbitrary ServerOrderOsLi where
  arbitrary = sized genServerOrderOsLi

genServerOrderOsLi :: Int -> Gen ServerOrderOsLi
genServerOrderOsLi n =
  ServerOrderOsLi
    <$> arbitraryReducedMaybe n -- serverOrderOsLi51 :: Maybe ServerOrderOS
  
instance Arbitrary ServerOrderPostRequest where
  arbitrary = sized genServerOrderPostRequest

genServerOrderPostRequest :: Int -> Gen ServerOrderPostRequest
genServerOrderPostRequest n =
  ServerOrderPostRequest
    <$> arbitrary -- serverOrderPostRequestCpu :: Int
    <*> arbitraryReduced n -- serverOrderPostRequestHd :: ServerOrderPostRequestHd
    <*> arbitrary -- serverOrderPostRequestMemory :: Int
    <*> arbitrary -- serverOrderPostRequestBandwidth :: Int
    <*> arbitrary -- serverOrderPostRequestIps :: Int
    <*> arbitrary -- serverOrderPostRequestOs :: Int
    <*> arbitrary -- serverOrderPostRequestCp :: Int
    <*> arbitrary -- serverOrderPostRequestRaid :: Int
    <*> arbitrary -- serverOrderPostRequestRegion :: Int
    <*> arbitrary -- serverOrderPostRequestServername :: Text
    <*> arbitrary -- serverOrderPostRequestRootpass :: Text
    <*> arbitrary -- serverOrderPostRequestTos :: Bool
    <*> arbitraryReducedMaybe n -- serverOrderPostRequestComment :: Maybe Text
  
instance Arbitrary ServerOrderPostRequestHd where
  arbitrary = sized genServerOrderPostRequestHd

genServerOrderPostRequestHd :: Int -> Gen ServerOrderPostRequestHd
genServerOrderPostRequestHd n =
  
  pure ServerOrderPostRequestHd
   
instance Arbitrary ServerOrderRAID where
  arbitrary = sized genServerOrderRAID

genServerOrderRAID :: Int -> Gen ServerOrderRAID
genServerOrderRAID n =
  ServerOrderRAID
    <$> arbitraryReducedMaybe n -- serverOrderRAIDId :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderRAIDPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderRAIDImg :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderRAIDShortDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderRAIDLongDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderRAIDMonthlyPrice :: Maybe Int
    <*> arbitraryReducedMaybe n -- serverOrderRAIDActive :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderRAIDPriceDisplay :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverOrderRAIDMonthlyPriceDisplay :: Maybe Text
  
instance Arbitrary ServerRow where
  arbitrary = sized genServerRow

genServerRow :: Int -> Gen ServerRow
genServerRow n =
  ServerRow
    <$> arbitrary -- serverRowServerId :: Text
    <*> arbitrary -- serverRowAccountLid :: Text
    <*> arbitrary -- serverRowServerHostname :: Text
    <*> arbitrary -- serverRowServerStatus :: Text
  
instance Arbitrary ServerServiceInfo where
  arbitrary = sized genServerServiceInfo

genServerServiceInfo :: Int -> Gen ServerServiceInfo
genServerServiceInfo n =
  ServerServiceInfo
    <$> arbitraryReducedMaybe n -- serverServiceInfoServerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerHostname :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerCustid :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerType :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerOrderDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerInvoice :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerRoot :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerDedicatedTag :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerCustomTag :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerComment :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerInitialBill :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerHardware :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerIps :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerMonthlyBill :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerSetup :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerDiscount :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerRep :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerTotalCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerLocation :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerHardwareOrdered :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerBilled :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerWelcomeEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerDedicatedCpu :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerDedicatedMemory :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerDedicatedHd1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerDedicatedHd2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerDedicatedBandwidth :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerDedicatedIps :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerDedicatedOs :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerDedicatedCp :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerDedicatedRaid :: Maybe Text
    <*> arbitraryReducedMaybe n -- serverServiceInfoServerExtra :: Maybe Text
  
instance Arbitrary ServerSwitchport where
  arbitrary = sized genServerSwitchport

genServerSwitchport :: Int -> Gen ServerSwitchport
genServerSwitchport n =
  ServerSwitchport
    <$> arbitrary -- serverSwitchportSwitchportId :: Int
    <*> arbitrary -- serverSwitchportSwitchId :: Text
    <*> arbitrary -- serverSwitchportSwitch :: Text
    <*> arbitrary -- serverSwitchportPort :: Text
    <*> arbitrary -- serverSwitchportBlade :: Text
    <*> arbitrary -- serverSwitchportJustport :: Text
    <*> arbitrary -- serverSwitchportGraphId :: Text
    <*> arbitrary -- serverSwitchportAssetId :: Int
    <*> arbitraryReducedMaybe n -- serverSwitchportVlans :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- serverSwitchportVlans6 :: Maybe [Text]
  
instance Arbitrary ServersBuyNowError where
  arbitrary = sized genServersBuyNowError

genServersBuyNowError :: Int -> Gen ServersBuyNowError
genServersBuyNowError n =
  ServersBuyNowError
    <$> arbitraryReducedMaybe n -- serversBuyNowErrorSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- serversBuyNowErrorText :: Maybe Text
    <*> arbitraryReducedMaybe n -- serversBuyNowErrorErrors :: Maybe [Text]
  
instance Arbitrary ServersBuyNowResponse where
  arbitrary = sized genServersBuyNowResponse

genServersBuyNowResponse :: Int -> Gen ServersBuyNowResponse
genServersBuyNowResponse n =
  ServersBuyNowResponse
    <$> arbitraryReducedMaybe n -- serversBuyNowResponseSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- serversBuyNowResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- serversBuyNowResponseOrderDetails :: Maybe ServersBuyNowResponseOrderDetails
  
instance Arbitrary ServersBuyNowResponseOrderDetails where
  arbitrary = sized genServersBuyNowResponseOrderDetails

genServersBuyNowResponseOrderDetails :: Int -> Gen ServersBuyNowResponseOrderDetails
genServersBuyNowResponseOrderDetails n =
  ServersBuyNowResponseOrderDetails
    <$> arbitraryReducedMaybe n -- serversBuyNowResponseOrderDetailsServiceId :: Maybe Double
    <*> arbitraryReducedMaybe n -- serversBuyNowResponseOrderDetailsInvoiceId :: Maybe Double
  
instance Arbitrary ServersCancel200Response where
  arbitrary = sized genServersCancel200Response

genServersCancel200Response :: Int -> Gen ServersCancel200Response
genServersCancel200Response n =
  ServersCancel200Response
    <$> arbitrary -- serversCancel200ResponseSuccess :: Bool
    <*> arbitrary -- serversCancel200ResponseText :: Text
  
instance Arbitrary Service where
  arbitrary = sized genService

genService :: Int -> Gen Service
genService n =
  Service
    <$> arbitrary -- serviceServicesId :: Int
    <*> arbitrary -- serviceServicesName :: Text
    <*> arbitrary -- serviceServicesCost :: Double
    <*> arbitrary -- serviceServicesCurrency :: Text
    <*> arbitrary -- serviceServicesCategory :: Int
    <*> arbitrary -- serviceServicesBuyable :: Bool
    <*> arbitrary -- serviceServicesType :: Int
    <*> arbitrary -- serviceServicesField1 :: Text
    <*> arbitrary -- serviceServicesField2 :: Text
    <*> arbitrary -- serviceServicesModule :: Text
  
instance Arbitrary ServiceCategories where
  arbitrary = sized genServiceCategories

genServiceCategories :: Int -> Gen ServiceCategories
genServiceCategories n =
  
  pure ServiceCategories
   
instance Arbitrary ServiceCategory where
  arbitrary = sized genServiceCategory

genServiceCategory :: Int -> Gen ServiceCategory
genServiceCategory n =
  ServiceCategory
    <$> arbitrary -- serviceCategoryCategoryId :: Int
    <*> arbitrary -- serviceCategoryCategoryName :: Text
    <*> arbitrary -- serviceCategoryCategoryTag :: Text
    <*> arbitrary -- serviceCategoryCategoryModule :: Text
  
instance Arbitrary ServiceOrderPostResponse where
  arbitrary = sized genServiceOrderPostResponse

genServiceOrderPostResponse :: Int -> Gen ServiceOrderPostResponse
genServiceOrderPostResponse n =
  ServiceOrderPostResponse
    <$> arbitraryReducedMaybe n -- serviceOrderPostResponseContinue :: Maybe Bool
    <*> arbitraryReducedMaybe n -- serviceOrderPostResponseErrors :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- serviceOrderPostResponseTotalCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- serviceOrderPostResponseIid :: Maybe Text
    <*> arbitraryReducedMaybe n -- serviceOrderPostResponseIids :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- serviceOrderPostResponseRealIids :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- serviceOrderPostResponseServiceId :: Maybe Int
    <*> arbitraryReducedMaybe n -- serviceOrderPostResponseInvoiceDescription :: Maybe Text
  
instance Arbitrary ServiceType where
  arbitrary = sized genServiceType

genServiceType :: Int -> Gen ServiceType
genServiceType n =
  ServiceType
    <$> arbitrary -- serviceTypeStId :: Int
    <*> arbitrary -- serviceTypeStName :: Text
    <*> arbitrary -- serviceTypeStCategory :: Int
    <*> arbitrary -- serviceTypeStModule :: Text
  
instance Arbitrary ServiceTypes where
  arbitrary = sized genServiceTypes

genServiceTypes :: Int -> Gen ServiceTypes
genServiceTypes n =
  
  pure ServiceTypes
   
instance Arbitrary Services where
  arbitrary = sized genServices

genServices :: Int -> Gen Services
genServices n =
  
  pure Services
   
instance Arbitrary ServicesInfo where
  arbitrary = sized genServicesInfo

genServicesInfo :: Int -> Gen ServicesInfo
genServicesInfo n =
  ServicesInfo
    <$> arbitraryReduced n -- servicesInfoModules :: Modules
    <*> arbitraryReduced n -- servicesInfoServices :: Services
    <*> arbitraryReduced n -- servicesInfoServiceTypes :: ServiceTypes
    <*> arbitraryReduced n -- servicesInfoServiceCategories :: ServiceCategories
  
instance Arbitrary SslCancel200Response where
  arbitrary = sized genSslCancel200Response

genSslCancel200Response :: Int -> Gen SslCancel200Response
genSslCancel200Response n =
  SslCancel200Response
    <$> arbitrary -- sslCancel200ResponseSuccess :: Bool
    <*> arbitrary -- sslCancel200ResponseText :: Text
  
instance Arbitrary SslOrderRequest where
  arbitrary = sized genSslOrderRequest

genSslOrderRequest :: Int -> Gen SslOrderRequest
genSslOrderRequest n =
  SslOrderRequest
    <$> arbitrary -- sslOrderRequestSsl :: Int
    <*> arbitrary -- sslOrderRequestHostname :: Text
    <*> arbitrary -- sslOrderRequestApproverEmail :: Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestFrequency :: Maybe Int
    <*> arbitraryReducedMaybe n -- sslOrderRequestCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestCsrType :: Maybe E'CsrType
    <*> arbitraryReducedMaybe n -- sslOrderRequestCsr :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestFirstname :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestLastname :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestState :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestZip :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestPhone :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestCompany :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestDepartment :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestAgency :: Maybe Text
    <*> arbitraryReducedMaybe n -- sslOrderRequestBusinessCategory :: Maybe Text
  
instance Arbitrary StatusMonthlyBreakdown where
  arbitrary = sized genStatusMonthlyBreakdown

genStatusMonthlyBreakdown :: Int -> Gen StatusMonthlyBreakdown
genStatusMonthlyBreakdown n =
  StatusMonthlyBreakdown
    <$> arbitraryReduced n -- statusMonthlyBreakdownDefault :: MonthlyCounts
    <*> arbitraryReduced n -- statusMonthlyBreakdownFailed :: MonthlyCounts
    <*> arbitraryReduced n -- statusMonthlyBreakdownRejected :: MonthlyCounts
    <*> arbitraryReduced n -- statusMonthlyBreakdownPending :: MonthlyCounts
    <*> arbitraryReduced n -- statusMonthlyBreakdownLocked :: MonthlyCounts
    <*> arbitraryReduced n -- statusMonthlyBreakdownPaid :: MonthlyCounts
  
instance Arbitrary SuccessTextResponse where
  arbitrary = sized genSuccessTextResponse

genSuccessTextResponse :: Int -> Gen SuccessTextResponse
genSuccessTextResponse n =
  SuccessTextResponse
    <$> arbitrary -- successTextResponseSuccess :: Bool
    <*> arbitraryReducedMaybe n -- successTextResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- successTextResponseAction :: Maybe Text
  
instance Arbitrary TemplateRequest where
  arbitrary = sized genTemplateRequest

genTemplateRequest :: Int -> Gen TemplateRequest
genTemplateRequest n =
  TemplateRequest
    <$> arbitrary -- templateRequestTemplate :: Text
    <*> arbitrary -- templateRequestLocalPassword :: Text
    <*> arbitraryReducedMaybe n -- templateRequestPassword :: Maybe Text
  
instance Arbitrary TextResponse where
  arbitrary = sized genTextResponse

genTextResponse :: Int -> Gen TextResponse
genTextResponse n =
  TextResponse
    <$> arbitraryReducedMaybe n -- textResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- textResponseMessage :: Maybe Text
  
instance Arbitrary TicketCustomFieldDetails where
  arbitrary = sized genTicketCustomFieldDetails

genTicketCustomFieldDetails :: Int -> Gen TicketCustomFieldDetails
genTicketCustomFieldDetails n =
  TicketCustomFieldDetails
    <$> arbitraryReducedMaybe n -- ticketCustomFieldDetailsCustomerServerAccess :: Maybe E'CustomerServerAccess
    <*> arbitraryReducedMaybe n -- ticketCustomFieldDetailsIpAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketCustomFieldDetailsRootPassword :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketCustomFieldDetailsSudoUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketCustomFieldDetailsSudoPassword :: Maybe Int
    <*> arbitraryReducedMaybe n -- ticketCustomFieldDetailsPort :: Maybe Int
  
instance Arbitrary TicketDetails where
  arbitrary = sized genTicketDetails

genTicketDetails :: Int -> Gen TicketDetails
genTicketDetails n =
  TicketDetails
    <$> arbitraryReducedMaybe n -- ticketDetailsTicketid :: Maybe Int
    <*> arbitraryReducedMaybe n -- ticketDetailsTicketmaskid :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketDetailsDepartment :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketDetailsStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketDetailsPriority :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketDetailsSubject :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketDetailsCreatedOn :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketDetailsUpdatedOn :: Maybe Text
  
instance Arbitrary TicketNew where
  arbitrary = sized genTicketNew

genTicketNew :: Int -> Gen TicketNew
genTicketNew n =
  TicketNew
    <$> arbitrary -- ticketNewSubject :: Text
    <*> arbitrary -- ticketNewBody :: Text
    <*> arbitraryReducedMaybe n -- ticketNewServiceId :: Maybe Int
    <*> arbitraryReducedMaybe n -- ticketNewServiceModule :: Maybe Text
  
instance Arbitrary TicketNewResponse where
  arbitrary = sized genTicketNewResponse

genTicketNewResponse :: Int -> Gen TicketNewResponse
genTicketNewResponse n =
  TicketNewResponse
    <$> arbitrary -- ticketNewResponseText :: Text
    <*> arbitrary -- ticketNewResponseSuccess :: Bool
    <*> arbitraryReducedMaybe n -- ticketNewResponseTicketId :: Maybe Int
  
instance Arbitrary TicketPostDetails where
  arbitrary = sized genTicketPostDetails

genTicketPostDetails :: Int -> Gen TicketPostDetails
genTicketPostDetails n =
  
  pure TicketPostDetails
   
instance Arbitrary TicketPostDetailsInner where
  arbitrary = sized genTicketPostDetailsInner

genTicketPostDetailsInner :: Int -> Gen TicketPostDetailsInner
genTicketPostDetailsInner n =
  TicketPostDetailsInner
    <$> arbitraryReducedMaybe n -- ticketPostDetailsInnerPostId :: Maybe Int
    <*> arbitraryReducedMaybe n -- ticketPostDetailsInnerDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketPostDetailsInnerContents :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketPostDetailsInnerCreator :: Maybe E'Creator
    <*> arbitraryReducedMaybe n -- ticketPostDetailsInnerCreatorEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketPostDetailsInnerCreatorName :: Maybe Text
    <*> arbitraryReducedMaybe n -- ticketPostDetailsInnerHasattachments :: Maybe Int
    <*> arbitraryReducedMaybe n -- ticketPostDetailsInnerAttachmentDownload :: Maybe Text
  
instance Arbitrary Tickets where
  arbitrary = sized genTickets

genTickets :: Int -> Gen Tickets
genTickets n =
  Tickets
    <$> arbitrary -- ticketsIma :: Text
    <*> arbitrary -- ticketsCustid :: Text
    <*> arbitrary -- ticketsView :: Text
    <*> arbitrary -- ticketsCurrentPage :: Int
    <*> arbitrary -- ticketsLimit :: Int
    <*> arbitrary -- ticketsSortcol :: Int
    <*> arbitrary -- ticketsSortdir :: Int
    <*> arbitrary -- ticketsRowsOffset :: Int
    <*> arbitraryReduced n -- ticketsTickets :: [TicketsRow]
    <*> arbitrary -- ticketsPages :: Int
    <*> arbitrary -- ticketsRowsTotal :: Int
    <*> arbitrary -- ticketsInboxCount :: Int
    <*> arbitraryReduced n -- ticketsCountArray :: TicketsCountArray
    <*> arbitrary -- ticketsViewText :: Text
  
instance Arbitrary TicketsCountArray where
  arbitrary = sized genTicketsCountArray

genTicketsCountArray :: Int -> Gen TicketsCountArray
genTicketsCountArray n =
  TicketsCountArray
    <$> arbitraryReducedMaybe n -- ticketsCountArrayOpen :: Maybe Int
    <*> arbitraryReducedMaybe n -- ticketsCountArrayOnHold :: Maybe Int
    <*> arbitraryReducedMaybe n -- ticketsCountArrayClosed :: Maybe Int
  
instance Arbitrary TicketsRow where
  arbitrary = sized genTicketsRow

genTicketsRow :: Int -> Gen TicketsRow
genTicketsRow n =
  TicketsRow
    <$> arbitrary -- ticketsRowTitle :: Text
    <*> arbitrary -- ticketsRowTicketmaskid :: Text
    <*> arbitrary -- ticketsRowLastreplier :: Text
    <*> arbitrary -- ticketsRowStatus :: Text
    <*> arbitrary -- ticketsRowPriority :: Text
    <*> arbitrary -- ticketsRowTotalReplies :: Int
    <*> arbitrary -- ticketsRowLastactivity :: Text
    <*> arbitrary -- ticketsRowDepartmenttitle :: Text
    <*> arbitrary -- ticketsRowTicketid :: Int
    <*> arbitrary -- ticketsRowCanClose :: Text
    <*> arbitraryReduced n -- ticketsRowAttachments :: AnyType
    <*> arbitrary -- ticketsRowStatusText :: Text
    <*> arbitrary -- ticketsRowChecked :: Bool
  
instance Arbitrary TimezoneUpdate where
  arbitrary = sized genTimezoneUpdate

genTimezoneUpdate :: Int -> Gen TimezoneUpdate
genTimezoneUpdate n =
  TimezoneUpdate
    <$> arbitrary -- timezoneUpdateTimezone :: Text
  
instance Arbitrary UpdateAccountTfaRequest where
  arbitrary = sized genUpdateAccountTfaRequest

genUpdateAccountTfaRequest :: Int -> Gen UpdateAccountTfaRequest
genUpdateAccountTfaRequest n =
  UpdateAccountTfaRequest
    <$> arbitrary -- updateAccountTfaRequest2faGoogleCode :: Text
  
instance Arbitrary UpdateTicket where
  arbitrary = sized genUpdateTicket

genUpdateTicket :: Int -> Gen UpdateTicket
genUpdateTicket n =
  UpdateTicket
    <$> arbitraryReducedMaybe n -- updateTicketIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- updateTicketIpAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- updateTicketCustomerServerAccess :: Maybe E'CustomerServerAccess
    <*> arbitraryReducedMaybe n -- updateTicketRootPassword :: Maybe Text
    <*> arbitraryReducedMaybe n -- updateTicketSudoUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- updateTicketSudoPassword :: Maybe Text
    <*> arbitraryReducedMaybe n -- updateTicketPort :: Maybe Int
  
instance Arbitrary UpdateTicketResponseSchema where
  arbitrary = sized genUpdateTicketResponseSchema

genUpdateTicketResponseSchema :: Int -> Gen UpdateTicketResponseSchema
genUpdateTicketResponseSchema n =
  UpdateTicketResponseSchema
    <$> arbitraryReducedMaybe n -- updateTicketResponseSchemaSuccess :: Maybe Bool
    <*> arbitraryReducedMaybe n -- updateTicketResponseSchemaMessage :: Maybe Text
  
instance Arbitrary UrlRequest where
  arbitrary = sized genUrlRequest

genUrlRequest :: Int -> Gen UrlRequest
genUrlRequest n =
  UrlRequest
    <$> arbitraryReducedMaybe n -- urlRequestUrl :: Maybe Text
  
instance Arbitrary VPSCancel200Response where
  arbitrary = sized genVPSCancel200Response

genVPSCancel200Response :: Int -> Gen VPSCancel200Response
genVPSCancel200Response n =
  VPSCancel200Response
    <$> arbitrary -- vPSCancel200ResponseSuccess :: Bool
    <*> arbitrary -- vPSCancel200ResponseText :: Text
  
instance Arbitrary VPSTrafficDataDataSectionResponse where
  arbitrary = sized genVPSTrafficDataDataSectionResponse

genVPSTrafficDataDataSectionResponse :: Int -> Gen VPSTrafficDataDataSectionResponse
genVPSTrafficDataDataSectionResponse n =
  
  pure VPSTrafficDataDataSectionResponse
   
instance Arbitrary VPSTrafficDataDataSectionResponseInner where
  arbitrary = sized genVPSTrafficDataDataSectionResponseInner

genVPSTrafficDataDataSectionResponseInner :: Int -> Gen VPSTrafficDataDataSectionResponseInner
genVPSTrafficDataDataSectionResponseInner n =
  
  pure VPSTrafficDataDataSectionResponseInner
   
instance Arbitrary ViewMailLogStartDateParameter where
  arbitrary = sized genViewMailLogStartDateParameter

genViewMailLogStartDateParameter :: Int -> Gen ViewMailLogStartDateParameter
genViewMailLogStartDateParameter n =
  
  pure ViewMailLogStartDateParameter
   
instance Arbitrary ViewTicketResponse where
  arbitrary = sized genViewTicketResponse

genViewTicketResponse :: Int -> Gen ViewTicketResponse
genViewTicketResponse n =
  ViewTicketResponse
    <$> arbitrary -- viewTicketResponseSuccess :: Bool
    <*> arbitraryReduced n -- viewTicketResponseTicket :: TicketDetails
    <*> arbitraryReducedMaybe n -- viewTicketResponseTicketCustomFields :: Maybe TicketCustomFieldDetails
    <*> arbitraryReducedMaybe n -- viewTicketResponseTicketPosts :: Maybe TicketPostDetails
  
instance Arbitrary Vps where
  arbitrary = sized genVps

genVps :: Int -> Gen Vps
genVps n =
  Vps
    <$> arbitraryReduced n -- vpsServiceInfo :: VpsServiceInfo
    <*> arbitraryReduced n -- vpsClientLinks :: [VpsClientLink]
    <*> arbitraryReduced n -- vpsBillingDetails :: VpsBillingDetails
    <*> arbitrary -- vpsCustCurrency :: Text
    <*> arbitrary -- vpsCustCurrencySymbol :: Text
    <*> arbitraryReduced n -- vpsServiceMaster :: VpsServiceMaster
    <*> arbitrary -- vpsPackage :: Text
    <*> arbitraryReduced n -- vpsServiceExtra :: VpsServiceExtra
    <*> arbitraryReduced n -- vpsExtraInfoTables :: VpsExtraInfoTables
    <*> arbitrary -- vpsModule :: Text
    <*> arbitrary -- vpsToken :: Text
    <*> arbitrary -- vpsDaLink :: Int
    <*> arbitrary -- vpsSrLink :: Int
    <*> arbitraryReduced n -- vpsCpData :: VpsCPData
    <*> arbitraryReduced n -- vpsDaData :: VpsDAData
    <*> arbitraryReduced n -- vpsPlesk12Data :: VpsPlesk12Data
    <*> arbitraryReduced n -- vpsServiceAddons :: VpsServiceAddons
    <*> arbitraryReducedMaybe n -- vpsOsTemplate :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsCpuGraphData :: Maybe AnyType
  
instance Arbitrary VpsBackupRow where
  arbitrary = sized genVpsBackupRow

genVpsBackupRow :: Int -> Gen VpsBackupRow
genVpsBackupRow n =
  VpsBackupRow
    <$> arbitrary -- vpsBackupRowType :: Text
    <*> arbitrary -- vpsBackupRowService :: Int
    <*> arbitrary -- vpsBackupRowName :: Text
    <*> arbitrary -- vpsBackupRowSize :: Int
    <*> arbitrary -- vpsBackupRowDate :: Int
  
instance Arbitrary VpsBackupRows where
  arbitrary = sized genVpsBackupRows

genVpsBackupRows :: Int -> Gen VpsBackupRows
genVpsBackupRows n =
  
  pure VpsBackupRows
   
instance Arbitrary VpsBillingDetails where
  arbitrary = sized genVpsBillingDetails

genVpsBillingDetails :: Int -> Gen VpsBillingDetails
genVpsBillingDetails n =
  VpsBillingDetails
    <$> arbitraryReducedMaybe n -- vpsBillingDetailsServiceLastInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsBillingDetailsServicePaymentStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsBillingDetailsServiceFrequency :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsBillingDetailsNextDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsBillingDetailsServiceNextInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsBillingDetailsServiceCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsBillingDetailsServiceCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsBillingDetailsServiceCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsBillingDetailsServiceCostInfo :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsBillingDetailsServiceExtra :: Maybe VpsServiceExtra
    <*> arbitraryReducedMaybe n -- vpsBillingDetailsServiceExtraJson :: Maybe Text
  
instance Arbitrary VpsCPData where
  arbitrary = sized genVpsCPData

genVpsCPData :: Int -> Gen VpsCPData
genVpsCPData n =
  VpsCPData
    <$> arbitraryReducedMaybe n -- vpsCPDataName :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsCPDataCost :: Maybe Int
  
instance Arbitrary VpsClientLink where
  arbitrary = sized genVpsClientLink

genVpsClientLink :: Int -> Gen VpsClientLink
genVpsClientLink n =
  VpsClientLink
    <$> arbitraryReducedMaybe n -- vpsClientLinkLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsClientLinkLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsClientLinkIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsClientLinkIconText :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsClientLinkHelpText :: Maybe Text
  
instance Arbitrary VpsDAData where
  arbitrary = sized genVpsDAData

genVpsDAData :: Int -> Gen VpsDAData
genVpsDAData n =
  VpsDAData
    <$> arbitraryReducedMaybe n -- vpsDADataFree :: Maybe VpsDALicense
  
instance Arbitrary VpsDALicense where
  arbitrary = sized genVpsDALicense

genVpsDALicense :: Int -> Gen VpsDALicense
genVpsDALicense n =
  VpsDALicense
    <$> arbitraryReducedMaybe n -- vpsDALicenseName :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsDALicenseSubName :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsDALicenseCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsDALicenseImgDisabled :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsDALicenseImgActive :: Maybe Text
  
instance Arbitrary VpsExtraInfoTables where
  arbitrary = sized genVpsExtraInfoTables

genVpsExtraInfoTables :: Int -> Gen VpsExtraInfoTables
genVpsExtraInfoTables n =
  VpsExtraInfoTables
    <$> arbitraryReducedMaybe n -- vpsExtraInfoTablesIpInfo :: Maybe VpsIPInfo
  
instance Arbitrary VpsIPInfo where
  arbitrary = sized genVpsIPInfo

genVpsIPInfo :: Int -> Gen VpsIPInfo
genVpsIPInfo n =
  VpsIPInfo
    <$> arbitraryReducedMaybe n -- vpsIPInfoTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsIPInfoRows :: Maybe [VpsIPInfoRow]
  
instance Arbitrary VpsIPInfoRow where
  arbitrary = sized genVpsIPInfoRow

genVpsIPInfoRow :: Int -> Gen VpsIPInfoRow
genVpsIPInfoRow n =
  VpsIPInfoRow
    <$> arbitraryReducedMaybe n -- vpsIPInfoRowDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsIPInfoRowValue :: Maybe Text
  
instance Arbitrary VpsOrder where
  arbitrary = sized genVpsOrder

genVpsOrder :: Int -> Gen VpsOrder
genVpsOrder n =
  VpsOrder
    <$> arbitrary -- vpsOrderVpsSliceSsdOvzCost :: Double
    <*> arbitrary -- vpsOrderVpsSliceOvzCost :: Double
    <*> arbitrary -- vpsOrderVpsSliceSsdVirtuozzoCost :: Double
    <*> arbitrary -- vpsOrderVpsSliceVirtuozzoCost :: Double
    <*> arbitrary -- vpsOrderVpsSliceHypervCost :: Double
    <*> arbitrary -- vpsOrderVpsSliceVmwareCost :: Double
    <*> arbitrary -- vpsOrderVpsSliceLxcCost :: Double
    <*> arbitrary -- vpsOrderVpsSliceXenCost :: Double
    <*> arbitrary -- vpsOrderVpsSliceKvmLCost :: Double
    <*> arbitrary -- vpsOrderVpsSliceKvmStorageCost :: Double
    <*> arbitrary -- vpsOrderVpsNyCost :: Double
    <*> arbitrary -- vpsOrderVpsSliceKvmWCost :: Double
    <*> arbitrary -- vpsOrderCpanelCost :: Double
    <*> arbitrary -- vpsOrderDaCost :: Double
    <*> arbitrary -- vpsOrderRamSlice :: Text
    <*> arbitrary -- vpsOrderHdSlice :: Text
    <*> arbitrary -- vpsOrderHdStorageSlice :: Text
    <*> arbitrary -- vpsOrderBwSlice :: Text
    <*> arbitrary -- vpsOrderBwType :: Text
    <*> arbitrary -- vpsOrderBwTotal :: Double
    <*> arbitrary -- vpsOrderMaxSlices :: Text
    <*> arbitraryReduced n -- vpsOrderPlatformPackages :: VpsOrderPlatformPackages
    <*> arbitraryReduced n -- vpsOrderPlatformNames :: VpsOrderPlatformNames
    <*> arbitraryReduced n -- vpsOrderPackageCosts :: VpsOrderPackageCosts
    <*> arbitraryReduced n -- vpsOrderLocationStock :: VpsOrderLocationStock
    <*> arbitraryReduced n -- vpsOrderLocationNames :: VpsOrderLocationNames
    <*> arbitraryReduced n -- vpsOrderOsNames :: VpsOrderOsNames
    <*> arbitraryReduced n -- vpsOrderTemplates :: VpsOrderTemplates
    <*> arbitraryReduced n -- vpsOrderServiceTypes :: VpsOrderServiceTypes
    <*> arbitrary -- vpsOrderCurrency :: Text
    <*> arbitrary -- vpsOrderCurrencySymbol :: Text
  
instance Arbitrary VpsOrderLocationNames where
  arbitrary = sized genVpsOrderLocationNames

genVpsOrderLocationNames :: Int -> Gen VpsOrderLocationNames
genVpsOrderLocationNames n =
  VpsOrderLocationNames
    <$> arbitraryReducedMaybe n -- vpsOrderLocationNames3 :: Maybe Text
  
instance Arbitrary VpsOrderLocationStock where
  arbitrary = sized genVpsOrderLocationStock

genVpsOrderLocationStock :: Int -> Gen VpsOrderLocationStock
genVpsOrderLocationStock n =
  VpsOrderLocationStock
    <$> arbitraryReducedMaybe n -- vpsOrderLocationStock1 :: Maybe VpsOrderLocationStock1
  
instance Arbitrary VpsOrderLocationStock1 where
  arbitrary = sized genVpsOrderLocationStock1

genVpsOrderLocationStock1 :: Int -> Gen VpsOrderLocationStock1
genVpsOrderLocationStock1 n =
  VpsOrderLocationStock1
    <$> arbitraryReducedMaybe n -- vpsOrderLocationStock1Kvm :: Maybe Bool
    <*> arbitraryReducedMaybe n -- vpsOrderLocationStock1Kvmstorage :: Maybe Bool
    <*> arbitraryReducedMaybe n -- vpsOrderLocationStock1Hyperv :: Maybe Bool
  
instance Arbitrary VpsOrderOsNames where
  arbitrary = sized genVpsOrderOsNames

genVpsOrderOsNames :: Int -> Gen VpsOrderOsNames
genVpsOrderOsNames n =
  VpsOrderOsNames
    <$> arbitraryReducedMaybe n -- vpsOrderOsNamesOpensuse :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderOsNamesUbuntu :: Maybe Text
  
instance Arbitrary VpsOrderPackageCosts where
  arbitrary = sized genVpsOrderPackageCosts

genVpsOrderPackageCosts :: Int -> Gen VpsOrderPackageCosts
genVpsOrderPackageCosts n =
  VpsOrderPackageCosts
    <$> arbitraryReducedMaybe n -- vpsOrderPackageCosts57 :: Maybe Double
  
instance Arbitrary VpsOrderPlatformNames where
  arbitrary = sized genVpsOrderPlatformNames

genVpsOrderPlatformNames :: Int -> Gen VpsOrderPlatformNames
genVpsOrderPlatformNames n =
  VpsOrderPlatformNames
    <$> arbitraryReducedMaybe n -- vpsOrderPlatformNamesKvm :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderPlatformNamesKvmstorage :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderPlatformNamesHyperv :: Maybe Text
  
instance Arbitrary VpsOrderPlatformPackages where
  arbitrary = sized genVpsOrderPlatformPackages

genVpsOrderPlatformPackages :: Int -> Gen VpsOrderPlatformPackages
genVpsOrderPlatformPackages n =
  VpsOrderPlatformPackages
    <$> arbitraryReducedMaybe n -- vpsOrderPlatformPackagesKvm :: Maybe Double
    <*> arbitraryReducedMaybe n -- vpsOrderPlatformPackagesKvmstorage :: Maybe Double
    <*> arbitraryReducedMaybe n -- vpsOrderPlatformPackagesHyperv :: Maybe Double
  
instance Arbitrary VpsOrderPostRequest where
  arbitrary = sized genVpsOrderPostRequest

genVpsOrderPostRequest :: Int -> Gen VpsOrderPostRequest
genVpsOrderPostRequest n =
  VpsOrderPostRequest
    <$> arbitrary -- vpsOrderPostRequestOsDistro :: Text
    <*> arbitrary -- vpsOrderPostRequestSlices :: Int
    <*> arbitrary -- vpsOrderPostRequestVpsPlatform :: E'VpsPlatform
    <*> arbitrary -- vpsOrderPostRequestPeriod :: Int
    <*> arbitrary -- vpsOrderPostRequestLocation :: Int
    <*> arbitrary -- vpsOrderPostRequestOsVersion :: Text
    <*> arbitrary -- vpsOrderPostRequestHostname :: Text
    <*> arbitrary -- vpsOrderPostRequestRootpass :: Text
    <*> arbitraryReducedMaybe n -- vpsOrderPostRequestControlpanel :: Maybe E'Controlpanel
    <*> arbitraryReducedMaybe n -- vpsOrderPostRequestCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderPostRequestComment :: Maybe Text
  
instance Arbitrary VpsOrderPutRequest where
  arbitrary = sized genVpsOrderPutRequest

genVpsOrderPutRequest :: Int -> Gen VpsOrderPutRequest
genVpsOrderPutRequest n =
  VpsOrderPutRequest
    <$> arbitrary -- vpsOrderPutRequestOsDistro :: Text
    <*> arbitrary -- vpsOrderPutRequestSlices :: Int
    <*> arbitrary -- vpsOrderPutRequestVpsPlatform :: E'VpsPlatform
    <*> arbitrary -- vpsOrderPutRequestPeriod :: Int
    <*> arbitrary -- vpsOrderPutRequestLocation :: Int
    <*> arbitrary -- vpsOrderPutRequestOsVersion :: Text
    <*> arbitrary -- vpsOrderPutRequestHostname :: Text
    <*> arbitrary -- vpsOrderPutRequestRootpass :: Text
    <*> arbitraryReducedMaybe n -- vpsOrderPutRequestControlpanel :: Maybe E'Controlpanel
    <*> arbitraryReducedMaybe n -- vpsOrderPutRequestCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderPutRequestComment :: Maybe Text
  
instance Arbitrary VpsOrderPutResponse where
  arbitrary = sized genVpsOrderPutResponse

genVpsOrderPutResponse :: Int -> Gen VpsOrderPutResponse
genVpsOrderPutResponse n =
  VpsOrderPutResponse
    <$> arbitraryReducedMaybe n -- vpsOrderPutResponseContinue :: Maybe Bool
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseErrors :: Maybe [AnyType]
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseCouponCode :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseServiceCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseSliceCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseServiceType :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseRepeatSliceCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseOriginalSliceCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseOriginalCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseRepeatServiceCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseMonthlyServiceCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseCustid :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseOs :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseSlices :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponsePlatform :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseControlpanel :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponsePeriod :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseLocation :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseHostname :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderPutResponseRootpass :: Maybe Text
  
instance Arbitrary VpsOrderServiceTypes where
  arbitrary = sized genVpsOrderServiceTypes

genVpsOrderServiceTypes :: Int -> Gen VpsOrderServiceTypes
genVpsOrderServiceTypes n =
  VpsOrderServiceTypes
    <$> arbitraryReducedMaybe n -- vpsOrderServiceTypes32 :: Maybe VpsOrderServiceTypes32
  
instance Arbitrary VpsOrderServiceTypes32 where
  arbitrary = sized genVpsOrderServiceTypes32

genVpsOrderServiceTypes32 :: Int -> Gen VpsOrderServiceTypes32
genVpsOrderServiceTypes32 n =
  VpsOrderServiceTypes32
    <$> arbitraryReducedMaybe n -- vpsOrderServiceTypes32ServicesId :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderServiceTypes32ServicesName :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderServiceTypes32ServicesCost :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderServiceTypes32ServicesCategory :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderServiceTypes32ServicesBuyable :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderServiceTypes32ServicesType :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderServiceTypes32ServicesField1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderServiceTypes32ServicesField2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderServiceTypes32ServicesModule :: Maybe Text
  
instance Arbitrary VpsOrderTemplates where
  arbitrary = sized genVpsOrderTemplates

genVpsOrderTemplates :: Int -> Gen VpsOrderTemplates
genVpsOrderTemplates n =
  VpsOrderTemplates
    <$> arbitraryReducedMaybe n -- vpsOrderTemplatesHyperv :: Maybe VpsOrderTemplatesHyperv
  
instance Arbitrary VpsOrderTemplatesHyperv where
  arbitrary = sized genVpsOrderTemplatesHyperv

genVpsOrderTemplatesHyperv :: Int -> Gen VpsOrderTemplatesHyperv
genVpsOrderTemplatesHyperv n =
  VpsOrderTemplatesHyperv
    <$> arbitraryReducedMaybe n -- vpsOrderTemplatesHypervWindows :: Maybe VpsOrderTemplatesHypervWindows
  
instance Arbitrary VpsOrderTemplatesHypervWindows where
  arbitrary = sized genVpsOrderTemplatesHypervWindows

genVpsOrderTemplatesHypervWindows :: Int -> Gen VpsOrderTemplatesHypervWindows
genVpsOrderTemplatesHypervWindows n =
  VpsOrderTemplatesHypervWindows
    <$> arbitraryReducedMaybe n -- vpsOrderTemplatesHypervWindowsWindows2019Standard :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsOrderTemplatesHypervWindowsWindows2022 :: Maybe Text
  
instance Arbitrary VpsPlesk12Data where
  arbitrary = sized genVpsPlesk12Data

genVpsPlesk12Data :: Int -> Gen VpsPlesk12Data
genVpsPlesk12Data n =
  VpsPlesk12Data
    <$> arbitraryReducedMaybe n -- vpsPlesk12DataAdmin :: Maybe VpsPleskLicense
    <*> arbitraryReducedMaybe n -- vpsPlesk12DataPro :: Maybe VpsPleskLicense
    <*> arbitraryReducedMaybe n -- vpsPlesk12DataHost :: Maybe VpsPleskLicense
  
instance Arbitrary VpsPleskLicense where
  arbitrary = sized genVpsPleskLicense

genVpsPleskLicense :: Int -> Gen VpsPleskLicense
genVpsPleskLicense n =
  VpsPleskLicense
    <$> arbitraryReducedMaybe n -- vpsPleskLicenseId :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsPleskLicenseName :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsPleskLicenseSubName :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsPleskLicenseCost :: Maybe Int
  
instance Arbitrary VpsRow where
  arbitrary = sized genVpsRow

genVpsRow :: Int -> Gen VpsRow
genVpsRow n =
  VpsRow
    <$> arbitrary -- vpsRowVpsId :: Text
    <*> arbitrary -- vpsRowVpsName :: Text
    <*> arbitrary -- vpsRowRepeatInvoicesCost :: Text
    <*> arbitrary -- vpsRowVpsHostname :: Text
    <*> arbitrary -- vpsRowVpsIp :: Text
    <*> arbitrary -- vpsRowVpsStatus :: Text
    <*> arbitrary -- vpsRowServicesName :: Text
    <*> arbitrary -- vpsRowVpsComment :: Text
  
instance Arbitrary VpsServiceAddons where
  arbitrary = sized genVpsServiceAddons

genVpsServiceAddons :: Int -> Gen VpsServiceAddons
genVpsServiceAddons n =
  VpsServiceAddons
    <$> arbitraryReducedMaybe n -- vpsServiceAddonsHasCpanel :: Maybe Bool
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsHasDirectadmin :: Maybe Bool
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsHasFantastico :: Maybe Bool
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsHasSoftaculous :: Maybe Bool
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsHasHdspace :: Maybe Bool
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsDedicatedIp :: Maybe Bool
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsExtraIps :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsExtraIps6 :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsUnpaidIps :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsIps :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsIps6 :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsCpanelId :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsIds :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- vpsServiceAddonsRdata :: Maybe [Text]
  
instance Arbitrary VpsServiceExtra where
  arbitrary = sized genVpsServiceExtra

genVpsServiceExtra :: Int -> Gen VpsServiceExtra
genVpsServiceExtra n =
  VpsServiceExtra
    <$> arbitraryReducedMaybe n -- vpsServiceExtraSpice :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsServiceExtraSnapshots :: Maybe [VpsSnapshot]
  
instance Arbitrary VpsServiceInfo where
  arbitrary = sized genVpsServiceInfo

genVpsServiceInfo :: Int -> Gen VpsServiceInfo
genVpsServiceInfo n =
  VpsServiceInfo
    <$> arbitraryReducedMaybe n -- vpsServiceInfoVpsId :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsCustid :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsServer :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsIpv6 :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsVzid :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsOrderDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsInvoice :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsExtra :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsHostname :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsServerStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsComment :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsSlices :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsVnc :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsVncPort :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsRootpass :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsMac :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsOs :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsLocation :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsPlatform :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsDiskused :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceInfoVpsDiskmax :: Maybe Text
  
instance Arbitrary VpsServiceMaster where
  arbitrary = sized genVpsServiceMaster

genVpsServiceMaster :: Int -> Gen VpsServiceMaster
genVpsServiceMaster n =
  VpsServiceMaster
    <$> arbitraryReducedMaybe n -- vpsServiceMasterVpsId :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsType :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsHdsize :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsHdfree :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsBits :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsLoad :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsRam :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsCpuModel :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsCpuMhz :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsLocation :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsLastUpdate :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsRaidBuilding :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsKernel :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsAvailable :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsCores :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsIowait :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsRaidStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsMounts :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsServerMax :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsServerMaxSlices :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsDriveType :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsServiceMasterVpsOrder :: Maybe Text
  
instance Arbitrary VpsSnapshot where
  arbitrary = sized genVpsSnapshot

genVpsSnapshot :: Int -> Gen VpsSnapshot
genVpsSnapshot n =
  VpsSnapshot
    <$> arbitraryReducedMaybe n -- vpsSnapshotName :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsSnapshotUsed :: Maybe Int
    <*> arbitraryReducedMaybe n -- vpsSnapshotDate :: Maybe Int
  
instance Arbitrary VpsTemplateRow where
  arbitrary = sized genVpsTemplateRow

genVpsTemplateRow :: Int -> Gen VpsTemplateRow
genVpsTemplateRow n =
  VpsTemplateRow
    <$> arbitraryReducedMaybe n -- vpsTemplateRowTemplateId :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsTemplateRowTemplateType :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsTemplateRowTemplateOs :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsTemplateRowTemplateVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsTemplateRowTemplateBits :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsTemplateRowTemplateFile :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsTemplateRowTemplateAvailable :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsTemplateRowTemplateName :: Maybe Text
    <*> arbitraryReducedMaybe n -- vpsTemplateRowTemplateDir :: Maybe Text
  
instance Arbitrary VpsTemplatesList where
  arbitrary = sized genVpsTemplatesList

genVpsTemplatesList :: Int -> Gen VpsTemplatesList
genVpsTemplatesList n =
  VpsTemplatesList
    <$> arbitraryReduced n -- vpsTemplatesListTemplates :: [VpsTemplateRow]
  
instance Arbitrary VpsTrafficDataSectionResponse where
  arbitrary = sized genVpsTrafficDataSectionResponse

genVpsTrafficDataSectionResponse :: Int -> Gen VpsTrafficDataSectionResponse
genVpsTrafficDataSectionResponse n =
  VpsTrafficDataSectionResponse
    <$> arbitrary -- vpsTrafficDataSectionResponseName :: Text
    <*> arbitraryReduced n -- vpsTrafficDataSectionResponseData :: [VPSTrafficDataDataSectionResponse]
  
instance Arbitrary VpsTrafficHistoryResponse where
  arbitrary = sized genVpsTrafficHistoryResponse

genVpsTrafficHistoryResponse :: Int -> Gen VpsTrafficHistoryResponse
genVpsTrafficHistoryResponse n =
  VpsTrafficHistoryResponse
    <$> arbitraryReduced n -- vpsTrafficHistoryResponseHour :: VpsTrafficHistorySectionResponse
    <*> arbitraryReduced n -- vpsTrafficHistoryResponseDay :: VpsTrafficHistorySectionResponse
  
instance Arbitrary VpsTrafficHistorySectionDataResponse where
  arbitrary = sized genVpsTrafficHistorySectionDataResponse

genVpsTrafficHistorySectionDataResponse :: Int -> Gen VpsTrafficHistorySectionDataResponse
genVpsTrafficHistorySectionDataResponse n =
  
  pure VpsTrafficHistorySectionDataResponse
   
instance Arbitrary VpsTrafficHistorySectionResponse where
  arbitrary = sized genVpsTrafficHistorySectionResponse

genVpsTrafficHistorySectionResponse :: Int -> Gen VpsTrafficHistorySectionResponse
genVpsTrafficHistorySectionResponse n =
  VpsTrafficHistorySectionResponse
    <$> arbitraryReduced n -- vpsTrafficHistorySectionResponseData :: [VpsTrafficHistorySectionDataResponse]
    <*> arbitraryReduced n -- vpsTrafficHistorySectionResponseTimes :: [DateTime]
  
instance Arbitrary VpsTrafficResponse where
  arbitrary = sized genVpsTrafficResponse

genVpsTrafficResponse :: Int -> Gen VpsTrafficResponse
genVpsTrafficResponse n =
  VpsTrafficResponse
    <$> arbitrary -- vpsTrafficResponseName :: Text
    <*> arbitrary -- vpsTrafficResponseTarget :: Text
    <*> arbitrary -- vpsTrafficResponseInterval :: Int
    <*> arbitraryReduced n -- vpsTrafficResponseHistory :: VpsTrafficHistoryResponse
    <*> arbitraryReduced n -- vpsTrafficResponseLast :: DateTime
    <*> arbitraryReduced n -- vpsTrafficResponseTimes :: [DateTime]
    <*> arbitraryReduced n -- vpsTrafficResponseTotals :: VpsTrafficTotalsResposne
    <*> arbitraryReduced n -- vpsTrafficResponseUsage :: VpsTrafficUsageResponse
    <*> arbitraryReduced n -- vpsTrafficResponseData :: [VpsTrafficDataSectionResponse]
  
instance Arbitrary VpsTrafficTotalsResposne where
  arbitrary = sized genVpsTrafficTotalsResposne

genVpsTrafficTotalsResposne :: Int -> Gen VpsTrafficTotalsResposne
genVpsTrafficTotalsResposne n =
  VpsTrafficTotalsResposne
    <$> arbitraryReduced n -- vpsTrafficTotalsResposneDay :: VpsTrafficTotalsSectionResponse
    <*> arbitraryReduced n -- vpsTrafficTotalsResposneMonth :: VpsTrafficTotalsSectionResponse
    <*> arbitraryReduced n -- vpsTrafficTotalsResposneYear :: VpsTrafficTotalsSectionResponse
    <*> arbitraryReduced n -- vpsTrafficTotalsResposneAll :: VpsTrafficTotalsSectionResponse
  
instance Arbitrary VpsTrafficTotalsSectionResponse where
  arbitrary = sized genVpsTrafficTotalsSectionResponse

genVpsTrafficTotalsSectionResponse :: Int -> Gen VpsTrafficTotalsSectionResponse
genVpsTrafficTotalsSectionResponse n =
  VpsTrafficTotalsSectionResponse
    <$> arbitrary -- vpsTrafficTotalsSectionResponseIn :: Integer
    <*> arbitrary -- vpsTrafficTotalsSectionResponseOut :: Integer
  
instance Arbitrary VpsTrafficUsageAverageResponse where
  arbitrary = sized genVpsTrafficUsageAverageResponse

genVpsTrafficUsageAverageResponse :: Int -> Gen VpsTrafficUsageAverageResponse
genVpsTrafficUsageAverageResponse n =
  VpsTrafficUsageAverageResponse
    <$> arbitraryReduced n -- vpsTrafficUsageAverageResponseIn :: VpsTrafficUsageAverageSectionResponse
    <*> arbitraryReduced n -- vpsTrafficUsageAverageResponseOut :: VpsTrafficUsageAverageSectionResponse
  
instance Arbitrary VpsTrafficUsageAverageSectionResponse where
  arbitrary = sized genVpsTrafficUsageAverageSectionResponse

genVpsTrafficUsageAverageSectionResponse :: Int -> Gen VpsTrafficUsageAverageSectionResponse
genVpsTrafficUsageAverageSectionResponse n =
  VpsTrafficUsageAverageSectionResponse
    <$> arbitrary -- vpsTrafficUsageAverageSectionResponseTotal :: Int
    <*> arbitrary -- vpsTrafficUsageAverageSectionResponseCount :: Int
    <*> arbitrary -- vpsTrafficUsageAverageSectionResponseValue :: Int
  
instance Arbitrary VpsTrafficUsageResponse where
  arbitrary = sized genVpsTrafficUsageResponse

genVpsTrafficUsageResponse :: Int -> Gen VpsTrafficUsageResponse
genVpsTrafficUsageResponse n =
  VpsTrafficUsageResponse
    <$> arbitraryReduced n -- vpsTrafficUsageResponseCurrent :: VpsTrafficTotalsSectionResponse
    <*> arbitraryReduced n -- vpsTrafficUsageResponsePeak :: VpsTrafficTotalsSectionResponse
    <*> arbitraryReduced n -- vpsTrafficUsageResponseAverage :: VpsTrafficUsageAverageResponse
  
instance Arbitrary WebhostingCancel200Response where
  arbitrary = sized genWebhostingCancel200Response

genWebhostingCancel200Response :: Int -> Gen WebhostingCancel200Response
genWebhostingCancel200Response n =
  WebhostingCancel200Response
    <$> arbitrary -- webhostingCancel200ResponseSuccess :: Bool
    <*> arbitrary -- webhostingCancel200ResponseText :: Text
  
instance Arbitrary Website where
  arbitrary = sized genWebsite

genWebsite :: Int -> Gen Website
genWebsite n =
  Website
    <$> arbitraryReducedMaybe n -- websiteServiceInfo :: Maybe WebsiteServiceInfo
    <*> arbitraryReducedMaybe n -- websiteClientLinks :: Maybe [WebsiteClientLink]
    <*> arbitraryReducedMaybe n -- websiteBillingDetails :: Maybe WebsiteBillingDetails
    <*> arbitraryReducedMaybe n -- websiteCustCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteCustCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMaster :: Maybe WebsiteServiceMaster
    <*> arbitraryReducedMaybe n -- websitePackage :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceExtra :: Maybe [A.Value]
    <*> arbitraryReducedMaybe n -- websiteExtraInfoTables :: Maybe WebsiteExtraInfoTables
  
instance Arbitrary WebsiteBackups where
  arbitrary = sized genWebsiteBackups

genWebsiteBackups :: Int -> Gen WebsiteBackups
genWebsiteBackups n =
  
  pure WebsiteBackups
   
instance Arbitrary WebsiteBackupsInner where
  arbitrary = sized genWebsiteBackupsInner

genWebsiteBackupsInner :: Int -> Gen WebsiteBackupsInner
genWebsiteBackupsInner n =
  WebsiteBackupsInner
    <$> arbitrary -- websiteBackupsInnerName :: Text
    <*> arbitraryReducedMaybe n -- websiteBackupsInnerSize :: Maybe Int
  
instance Arbitrary WebsiteBillingDetails where
  arbitrary = sized genWebsiteBillingDetails

genWebsiteBillingDetails :: Int -> Gen WebsiteBillingDetails
genWebsiteBillingDetails n =
  WebsiteBillingDetails
    <$> arbitraryReducedMaybe n -- websiteBillingDetailsServiceLastInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteBillingDetailsServicePaymentStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteBillingDetailsServiceFrequency :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteBillingDetailsNextDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteBillingDetailsServiceNextInvoiceDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteBillingDetailsServiceCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteBillingDetailsServiceCurrencySymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteBillingDetailsServiceCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteBillingDetailsServiceCostInfo :: Maybe Text
    <*> arbitraryReducedMaybeValue n -- websiteBillingDetailsServiceExtra :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- websiteBillingDetailsServiceExtraJson :: Maybe Text
  
instance Arbitrary WebsiteClientLink where
  arbitrary = sized genWebsiteClientLink

genWebsiteClientLink :: Int -> Gen WebsiteClientLink
genWebsiteClientLink n =
  WebsiteClientLink
    <$> arbitraryReducedMaybe n -- websiteClientLinkLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteClientLinkLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteClientLinkIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteClientLinkIconText :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteClientLinkHelpText :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteClientLinkOtherAttr :: Maybe Text
  
instance Arbitrary WebsiteExtraInfoTables where
  arbitrary = sized genWebsiteExtraInfoTables

genWebsiteExtraInfoTables :: Int -> Gen WebsiteExtraInfoTables
genWebsiteExtraInfoTables n =
  WebsiteExtraInfoTables
    <$> arbitraryReducedMaybe n -- websiteExtraInfoTablesLinks :: Maybe WebsiteTable
    <*> arbitraryReducedMaybe n -- websiteExtraInfoTablesPreview :: Maybe WebsiteTable
    <*> arbitraryReducedMaybe n -- websiteExtraInfoTablesDns :: Maybe WebsiteTable
  
instance Arbitrary WebsiteLoginResponse where
  arbitrary = sized genWebsiteLoginResponse

genWebsiteLoginResponse :: Int -> Gen WebsiteLoginResponse
genWebsiteLoginResponse n =
  WebsiteLoginResponse
    <$> arbitraryReducedMaybe n -- websiteLoginResponseType :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteLoginResponseLocation :: Maybe Text
  
instance Arbitrary WebsiteOrderPostRequest where
  arbitrary = sized genWebsiteOrderPostRequest

genWebsiteOrderPostRequest :: Int -> Gen WebsiteOrderPostRequest
genWebsiteOrderPostRequest n =
  WebsiteOrderPostRequest
    <$> arbitrary -- websiteOrderPostRequestHostname :: Text
    <*> arbitrary -- websiteOrderPostRequestPackageId :: Int
    <*> arbitraryReducedMaybe n -- websiteOrderPostRequestRootpass :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteOrderPostRequestPeriod :: Maybe Int
    <*> arbitraryReducedMaybe n -- websiteOrderPostRequestCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteOrderPostRequestServiceOfferId :: Maybe Int
    <*> arbitraryReducedMaybe n -- websiteOrderPostRequestScript :: Maybe Int
    <*> arbitraryReducedMaybe n -- websiteOrderPostRequestComment :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteOrderPostRequestRegisterDomain :: Maybe Bool
  
instance Arbitrary WebsiteOrderPutRequest where
  arbitrary = sized genWebsiteOrderPutRequest

genWebsiteOrderPutRequest :: Int -> Gen WebsiteOrderPutRequest
genWebsiteOrderPutRequest n =
  WebsiteOrderPutRequest
    <$> arbitrary -- websiteOrderPutRequestHostname :: Text
    <*> arbitrary -- websiteOrderPutRequestPackageId :: Int
    <*> arbitraryReducedMaybe n -- websiteOrderPutRequestRootpass :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteOrderPutRequestPeriod :: Maybe Int
    <*> arbitraryReducedMaybe n -- websiteOrderPutRequestCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteOrderPutRequestServiceOfferId :: Maybe Int
    <*> arbitraryReducedMaybe n -- websiteOrderPutRequestScript :: Maybe Int
    <*> arbitraryReducedMaybe n -- websiteOrderPutRequestComment :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteOrderPutRequestRegisterDomain :: Maybe Bool
  
instance Arbitrary WebsiteRow where
  arbitrary = sized genWebsiteRow

genWebsiteRow :: Int -> Gen WebsiteRow
genWebsiteRow n =
  WebsiteRow
    <$> arbitrary -- websiteRowWebsiteId :: Text
    <*> arbitrary -- websiteRowWebsiteHostname :: Text
    <*> arbitrary -- websiteRowRepeatInvoicesCost :: Text
    <*> arbitrary -- websiteRowWebsiteStatus :: Text
    <*> arbitrary -- websiteRowServicesName :: Text
    <*> arbitrary -- websiteRowWebsiteComment :: Text
  
instance Arbitrary WebsiteServiceInfo where
  arbitrary = sized genWebsiteServiceInfo

genWebsiteServiceInfo :: Int -> Gen WebsiteServiceInfo
genWebsiteServiceInfo n =
  WebsiteServiceInfo
    <$> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteId :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteServer :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteType :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteOrderDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteCustid :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteInvoice :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteExtra :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteHostname :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteComment :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceInfoWebsiteServerStatus :: Maybe Text
  
instance Arbitrary WebsiteServiceMaster where
  arbitrary = sized genWebsiteServiceMaster

genWebsiteServiceMaster :: Int -> Gen WebsiteServiceMaster
genWebsiteServiceMaster n =
  WebsiteServiceMaster
    <$> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteId :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteName :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteIp :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteType :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteAvailable :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteHdsize :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteHdfree :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteLoad :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteLastUpdate :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteMaxSites :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsitePartitions :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteDns1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteServiceMasterWebsiteDns2 :: Maybe Text
  
instance Arbitrary WebsiteTable where
  arbitrary = sized genWebsiteTable

genWebsiteTable :: Int -> Gen WebsiteTable
genWebsiteTable n =
  WebsiteTable
    <$> arbitraryReducedMaybe n -- websiteTableTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteTableRows :: Maybe [WebsiteTableRow]
  
instance Arbitrary WebsiteTableRow where
  arbitrary = sized genWebsiteTableRow

genWebsiteTableRow :: Int -> Gen WebsiteTableRow
genWebsiteTableRow n =
  WebsiteTableRow
    <$> arbitraryReducedMaybe n -- websiteTableRowDesc :: Maybe Text
    <*> arbitraryReducedMaybe n -- websiteTableRowValue :: Maybe Text
  
instance Arbitrary WebsitesOrder where
  arbitrary = sized genWebsitesOrder

genWebsitesOrder :: Int -> Gen WebsitesOrder
genWebsitesOrder n =
  WebsitesOrder
    <$> arbitrary -- websitesOrderStep :: Text
    <*> arbitrary -- websitesOrderWebsite :: Text
    <*> arbitrary -- websitesOrderPeriod :: Int
    <*> arbitrary -- websitesOrderServiceOfferId :: Int
    <*> arbitraryReduced n -- websitesOrderPackages :: WebsitesOrderPackages
    <*> arbitrary -- websitesOrderEnableDomainRegistering :: Bool
    <*> arbitraryReduced n -- websitesOrderJsonServices :: WebsitesOrderJsonServices
    <*> arbitraryReduced n -- websitesOrderJsonServiceOffers :: WebsitesOrderJsonServiceOffers
    <*> arbitraryReduced n -- websitesOrderServiceTypes :: WebsitesOrderServiceTypes
    <*> arbitraryReduced n -- websitesOrderServiceOffers :: WebsitesOrderServiceOffers
    <*> arbitraryReducedMaybe n -- websitesOrderPackges :: Maybe WebsitesOrderPackges
  
instance Arbitrary WebsitesOrderJsonServiceOffers where
  arbitrary = sized genWebsitesOrderJsonServiceOffers

genWebsitesOrderJsonServiceOffers :: Int -> Gen WebsitesOrderJsonServiceOffers
genWebsitesOrderJsonServiceOffers n =
  WebsitesOrderJsonServiceOffers
    <$> arbitraryReduced n -- websitesOrderJsonServiceOffers1026 :: [WebsitesOrderJsonServiceOffersItem]
  
instance Arbitrary WebsitesOrderJsonServiceOffersItem where
  arbitrary = sized genWebsitesOrderJsonServiceOffersItem

genWebsitesOrderJsonServiceOffersItem :: Int -> Gen WebsitesOrderJsonServiceOffersItem
genWebsitesOrderJsonServiceOffersItem n =
  WebsitesOrderJsonServiceOffersItem
    <$> arbitraryReducedMaybe n -- websitesOrderJsonServiceOffersItemServiceOfferId :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderJsonServiceOffersItemServiceId :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderJsonServiceOffersItemIntroCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- websitesOrderJsonServiceOffersItemRenewalCost :: Maybe Int
    <*> arbitraryReducedMaybe n -- websitesOrderJsonServiceOffersItemIntroFrequency :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderJsonServiceOffersItemRenewalFrequency :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderJsonServiceOffersItemAllowCoupon :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderJsonServiceOffersItemServiceModule :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderJsonServiceOffersItemCreatedAt :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderJsonServiceOffersItemUpdatedAt :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderJsonServiceOffersItemDeletedAt :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderJsonServiceOffersItemCurrencySymbol :: Maybe Text
  
instance Arbitrary WebsitesOrderJsonServices where
  arbitrary = sized genWebsitesOrderJsonServices

genWebsitesOrderJsonServices :: Int -> Gen WebsitesOrderJsonServices
genWebsitesOrderJsonServices n =
  WebsitesOrderJsonServices
    <$> arbitrary -- websitesOrderJsonServices11447 :: Text
  
instance Arbitrary WebsitesOrderPackages where
  arbitrary = sized genWebsitesOrderPackages

genWebsitesOrderPackages :: Int -> Gen WebsitesOrderPackages
genWebsitesOrderPackages n =
  WebsitesOrderPackages
    <$> arbitrary -- websitesOrderPackages11447 :: Text
  
instance Arbitrary WebsitesOrderPackagesInfo where
  arbitrary = sized genWebsitesOrderPackagesInfo

genWebsitesOrderPackagesInfo :: Int -> Gen WebsitesOrderPackagesInfo
genWebsitesOrderPackagesInfo n =
  WebsitesOrderPackagesInfo
    <$> arbitrary -- websitesOrderPackagesInfoServicesId :: Text
    <*> arbitrary -- websitesOrderPackagesInfoServicesName :: Text
    <*> arbitrary -- websitesOrderPackagesInfoServicesCost :: Text
    <*> arbitrary -- websitesOrderPackagesInfoServicesCategory :: Text
    <*> arbitrary -- websitesOrderPackagesInfoServicesBuyable :: Text
    <*> arbitrary -- websitesOrderPackagesInfoServicesType :: Text
    <*> arbitrary -- websitesOrderPackagesInfoServicesModule :: Text
    <*> arbitrary -- websitesOrderPackagesInfoServicesDescription :: Text
    <*> arbitraryReducedMaybe n -- websitesOrderPackagesInfoServicesField1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderPackagesInfoServicesField2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderPackagesInfoServicesHtml :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderPackagesInfoServicesMoreinfoUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderPackagesInfoServicesHidden :: Maybe Text
  
instance Arbitrary WebsitesOrderPackges where
  arbitrary = sized genWebsitesOrderPackges

genWebsitesOrderPackges :: Int -> Gen WebsitesOrderPackges
genWebsitesOrderPackges n =
  WebsitesOrderPackges
    <$> arbitraryReduced n -- websitesOrderPackges11440 :: WebsitesOrderPackagesInfo
  
instance Arbitrary WebsitesOrderServiceOffer where
  arbitrary = sized genWebsitesOrderServiceOffer

genWebsitesOrderServiceOffer :: Int -> Gen WebsitesOrderServiceOffer
genWebsitesOrderServiceOffer n =
  WebsitesOrderServiceOffer
    <$> arbitrary -- websitesOrderServiceOfferServiceOfferId :: Text
    <*> arbitrary -- websitesOrderServiceOfferServiceId :: Text
    <*> arbitrary -- websitesOrderServiceOfferIntroCost :: Text
    <*> arbitrary -- websitesOrderServiceOfferRenewalCost :: Text
    <*> arbitrary -- websitesOrderServiceOfferIntroFrequency :: Text
    <*> arbitrary -- websitesOrderServiceOfferRenewalFrequency :: Text
    <*> arbitrary -- websitesOrderServiceOfferAllowCoupon :: Text
    <*> arbitrary -- websitesOrderServiceOfferServiceModule :: Text
    <*> arbitrary -- websitesOrderServiceOfferCreatedAt :: Text
    <*> arbitraryReducedMaybe n -- websitesOrderServiceOfferUpdatedAt :: Maybe Text
    <*> arbitraryReducedMaybe n -- websitesOrderServiceOfferDeletedAt :: Maybe Text
  
instance Arbitrary WebsitesOrderServiceOffers where
  arbitrary = sized genWebsitesOrderServiceOffers

genWebsitesOrderServiceOffers :: Int -> Gen WebsitesOrderServiceOffers
genWebsitesOrderServiceOffers n =
  WebsitesOrderServiceOffers
    <$> arbitraryReduced n -- websitesOrderServiceOffers1026 :: [WebsitesOrderServiceOffer]
  
instance Arbitrary WebsitesOrderServiceTypes where
  arbitrary = sized genWebsitesOrderServiceTypes

genWebsitesOrderServiceTypes :: Int -> Gen WebsitesOrderServiceTypes
genWebsitesOrderServiceTypes n =
  WebsitesOrderServiceTypes
    <$> arbitraryReduced n -- websitesOrderServiceTypes11447 :: WebsitesOrderServiceTypes
  



instance Arbitrary DnsRecordType where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Action where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Controlpanel where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Creator where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'CsrType where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'CustomerServerAccess where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Dir where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Ex where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'FetchBy where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Groupby where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Method where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Period where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'ProtocolId where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'ScrubIpStatus where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Sort where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Time where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Time2 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Type where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Type2 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Type3 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'View where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'VpsPlatform where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'WhoisPrivacy where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'XdpAction where
  arbitrary = arbitraryBoundedEnum

