{-
 
  Copyright 2022-23, Juspay India Pvt Ltd
 
  This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License
 
  as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. This program
 
  is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 
  or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details. You should have received a copy of
 
  the GNU Affero General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
-}

module ModifyScreenState where

import Accessor (_lat, _lon)
import Data.Lens ((^.))
import Data.Maybe (Maybe(..))
import Engineering.Helpers.BackTrack (modifyState)
import Prelude (Unit, ($))
import Resources.Constants (encodeAddress, getAddressFromBooking)
import Screens.HomeScreen.ScreenData (initData) as HomeScreen
import Screens.Types (MyRidesScreenState, Stage(..))
import Types.App (FlowBT, GlobalState(..), ScreenType(..))

modifyScreenState :: ScreenType -> FlowBT String Unit
modifyScreenState st =
  case st of
    ChooseLanguageScreenStateType a -> modifyState (\(GlobalState  state) -> GlobalState  $ state { chooseLanguageScreen = a state.chooseLanguageScreen})
    EnterMobileNumberScreenType a -> modifyState (\(GlobalState  state) -> GlobalState  $ state { enterMobileNumberScreen = a state.enterMobileNumberScreen})
    AccountSetUpScreenStateType a -> modifyState (\(GlobalState  state) -> GlobalState  $ state { accountSetUpScreen = a state.accountSetUpScreen})
    HomeScreenStateType a -> modifyState (\(GlobalState state) -> GlobalState $ state {homeScreen = a state.homeScreen})
    TripDetailsScreenStateType a -> modifyState (\(GlobalState state) -> GlobalState $ state {tripDetailsScreen = a state.tripDetailsScreen})
    MyRideScreenStateType a -> modifyState (\(GlobalState state) -> GlobalState $ state {myRidesScreen = a state.myRidesScreen})
    HelpAndSupportScreenStateType a -> modifyState (\(GlobalState state) -> GlobalState $ state { helpAndSupportScreen = a state.helpAndSupportScreen})
    InvoiceScreenStateType a -> modifyState (\(GlobalState state) -> GlobalState $ state {invoiceScreen = a state.invoiceScreen})
    SelectLanguageScreenStateType a -> modifyState (\(GlobalState state) -> GlobalState $ state {selectLanguageScreen = a state.selectLanguageScreen})
    AddNewAddressScreenStateType a -> modifyState (\(GlobalState state) -> GlobalState $ state {addNewAddressScreen = a state.addNewAddressScreen})
    MyProfileScreenStateType a -> modifyState (\(GlobalState state) -> GlobalState $ state {myProfileScreen = a state.myProfileScreen})
    ContactUsScreenStateType a -> modifyState (\(GlobalState state) -> GlobalState $ state {contactUsScreen = a state.contactUsScreen})
    SavedLocationScreenStateType a -> modifyState (\(GlobalState state) -> GlobalState $ state {savedLocationScreen = a state.savedLocationScreen})
    ReferralScreenStateType a -> modifyState (\(GlobalState state) -> GlobalState $ state {referralScreen = a state.referralScreen})


updateRideDetails :: MyRidesScreenState -> FlowBT String Unit
updateRideDetails state = do 
  modifyScreenState $ HomeScreenStateType 
    (\homeScreen -> HomeScreen.initData{ 
    data {
      source =  state.data.selectedItem.source
    , destination = state.data.selectedItem.destination
    , locationList = homeScreen.data.locationList
    , sourceAddress = getAddressFromBooking state.data.selectedItem.sourceLocation
    , savedLocations = homeScreen.data.savedLocations
    , destinationAddress = getAddressFromBooking state.data.selectedItem.destinationLocation 
    }
    , props{
      sourceSelectedOnMap = true
    , sourceLat = state.data.selectedItem.sourceLocation^._lat
    , sourceLong = state.data.selectedItem.sourceLocation^._lon
    , destinationLat = state.data.selectedItem.destinationLocation^._lat
    , destinationLong = state.data.selectedItem.destinationLocation^._lon
    , currentStage = FindingEstimate
    , rideRequestFlow = true
    }
    })
