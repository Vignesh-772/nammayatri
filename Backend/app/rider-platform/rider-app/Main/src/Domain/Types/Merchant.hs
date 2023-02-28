{-
 Copyright 2022-23, Juspay India Pvt Ltd

 This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License

 as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. This program

 is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY

 or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details. You should have received a copy of

 the GNU Affero General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
-}

module Domain.Types.Merchant where

import Domain.Types.Common
import Kernel.External.FCM.Types
import Kernel.Prelude
import Kernel.Types.Geofencing
import Kernel.Types.Id

data MerchantD (s :: UsageSafety) = Merchant
  { id :: Id Merchant,
    shortId :: ShortId Merchant,
    name :: Text,
    exoPhone :: Maybe Text,
    exoPhones :: [Text],
    exoPhoneCountryCode :: Maybe Text,
    fcmConfig :: FCMConfig,
    geofencingConfig :: GeofencingConfig,
    gatewayUrl :: BaseUrl,
    registryUrl :: BaseUrl,
    createdAt :: UTCTime,
    updatedAt :: UTCTime
  }
  deriving (Generic, Show)

type Merchant = MerchantD 'Safe

instance FromJSON (MerchantD 'Unsafe)

instance ToJSON (MerchantD 'Unsafe)