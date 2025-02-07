{-
 
  Copyright 2022-23, Juspay India Pvt Ltd
 
  This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License
 
  as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. This program
 
  is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 
  or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details. You should have received a copy of
 
  the GNU Affero General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
-}

module Screens.HelpAndSupportScreen.Handler where

import Prelude (bind, discard, ($), pure, (<$>))
import Engineering.Helpers.BackTrack (getState)
import Screens.HelpAndSupportScreen.Controller (ScreenOutput(..))
import Control.Monad.Except.Trans (lift)
import Control.Transformers.Back.Trans as App
import PrestoDOM.Core.Types.Language.Flow (runScreen)
import Screens.HelpAndSupportScreen.View as HelpAndSupportScreen
import Components.SettingSideBar.Controller as SettingSideBar
import ModifyScreenState (modifyScreenState)
import Types.App (FlowBT, GlobalState(..), HELP_AND_SUPPORT_SCREEN_OUTPUT(..), ScreenType(..))

helpAndSupportScreen :: FlowBT String HELP_AND_SUPPORT_SCREEN_OUTPUT
helpAndSupportScreen = do
  (GlobalState state) <- getState
  act <- lift $ lift $ runScreen $ HelpAndSupportScreen.screen state.helpAndSupportScreen
  case act of
    GoBack -> App.BackT $ App.BackPoint <$> (pure $ GO_TO_HOME_FROM_HELP)
    GoHome -> do 
      modifyScreenState $ HomeScreenStateType (\homeScreenState -> homeScreenState{data{settingSideBar{opened = SettingSideBar.CLOSED}}}) 
      App.BackT $ App.BackPoint <$> (pure $ GO_TO_HOME_FROM_HELP)
    GoToSupportScreen bookingId-> App.BackT $ App.BackPoint <$> (pure $ GO_TO_SUPPORT_SCREEN bookingId)
    GoToTripDetails updatedState-> App.BackT $ App.BackPoint <$> (pure $ GO_TO_TRIP_DETAILS updatedState)
    GoToMyRides -> App.BackT $ App.BackPoint <$> (pure $ VIEW_RIDES)
    UpdateState updatedState -> App.BackT $ App.BackPoint <$> (pure $ UPDATE_STATE updatedState)
