{-
 
  Copyright 2022-23, Juspay India Pvt Ltd
 
  This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License
 
  as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. This program
 
  is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 
  or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details. You should have received a copy of
 
  the GNU Affero General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
-}

module Screens.AddVehicleDetailsScreen.ComponentConfig where

import Components.PrimaryButton as PrimaryButton
import Common.Types.App
import Data.Maybe
import Data.String
import Font.Size as FontSize
import Language.Strings
import Language.Types (STR(..))
import Prelude
import PrestoDOM
import Screens.Types as ST
import Styles.Colors as Color

primaryButtonConfig :: ST.AddVehicleDetailsScreenState -> PrimaryButton.Config
primaryButtonConfig state = let 
    config = PrimaryButton.config
    primaryButtonConfig' = config 
      { textConfig{ text = (getString NEXT), textSize = FontSize.a_16}
      , width = MATCH_PARENT
      , cornerRadius = 0.0
      , height = (V 60)
      , background = Color.black900 
      , alpha = if ((state.props.isValidState) && (toLower(state.data.vehicle_registration_number) == toLower(state.data.reEnterVehicleRegistrationNumber)) && (state.data.dateOfRegistration /= Just "") )  then 1.0 else 0.8
      , isClickable = ((state.props.isValidState) && (toLower(state.data.vehicle_registration_number) == toLower(state.data.reEnterVehicleRegistrationNumber)) && (state.data.dateOfRegistration /= Just "") )
      , margin = (Margin 0 0 0 0)
      }
  in primaryButtonConfig'