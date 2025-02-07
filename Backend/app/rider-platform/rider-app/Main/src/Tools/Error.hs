{-
 Copyright 2022-23, Juspay India Pvt Ltd

 This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License

 as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. This program

 is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY

 or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details. You should have received a copy of

 the GNU Affero General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE TemplateHaskell #-}

module Tools.Error (module Tools.Error) where

import EulerHS.Prelude
import Kernel.Types.Error as Tools.Error
import Kernel.Types.Error.BaseError.HTTPError
import Kernel.Types.Error.BaseError.HTTPError.FromResponse
import Network.HTTP.Types (Status (statusCode))
import Servant.Client (ResponseF (responseStatusCode))

data RatingError
  = InvalidRatingValue
  deriving (Eq, Show, IsBecknAPIError)

instanceExceptionWithParent 'HTTPException ''RatingError

instance IsBaseError RatingError

instance IsHTTPError RatingError where
  toErrorCode InvalidRatingValue = "INVALID_RATING_VALUE"
  toHttpCode InvalidRatingValue = E400

instance IsAPIError RatingError

data EstimateError = EstimateDoesNotExist Text | EstimateStatusDoesNotExist Text | EstimateCancelled Text | EstimateNotFound
  deriving (Eq, Show, IsBecknAPIError)

instanceExceptionWithParent 'HTTPException ''EstimateError

instance IsBaseError EstimateError where
  toMessage (EstimateDoesNotExist estimateId) = Just $ "No estimate matches passed data \"" <> show estimateId <> "\" not exist. "
  toMessage (EstimateStatusDoesNotExist estimateId) = Just $ "Estimate status not found with estimate id : \"" <> show estimateId
  toMessage (EstimateCancelled estimateId) = Just $ "Estimate for the estimate id : \"" <> show estimateId <> "\" has been cancelled. "
  toMessage EstimateNotFound = Just "Estimate not found. "

instance IsHTTPError EstimateError where
  toErrorCode _ = "ESTIMATE_DOES_NOT_EXIST"
  toHttpCode _ = E400

instance IsAPIError EstimateError

data TrackUrlError
  = InvalidRideRequest
  | TrackingUrlFailed
  deriving (Eq, Show, IsBecknAPIError)

instanceExceptionWithParent 'HTTPException ''TrackUrlError

instance FromResponse TrackUrlError where
  fromResponse resp = case statusCode $ responseStatusCode resp of
    400 -> Just InvalidRideRequest
    _ -> Just TrackingUrlFailed

instance IsBaseError TrackUrlError where
  toMessage = \case
    InvalidRideRequest -> Just "Tracking not available for provided ride."
    TrackingUrlFailed -> Just "Can't call tracking url"

instance IsHTTPError TrackUrlError where
  toErrorCode = \case
    InvalidRideRequest -> "INVALID_RIDE_REQUEST"
    TrackingUrlFailed -> "TRACKING_URL_FAILED"

  toHttpCode = \case
    InvalidRideRequest -> E412
    TrackingUrlFailed -> E500

instance IsAPIError TrackUrlError
