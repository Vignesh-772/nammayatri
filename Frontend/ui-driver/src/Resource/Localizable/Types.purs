{-
 
  Copyright 2022-23, Juspay India Pvt Ltd
 
  This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License
 
  as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. This program
 
  is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 
  or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details. You should have received a copy of
 
  the GNU Affero General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
-}

module Language.Types where

data STR = LETS_GET_STARTED
        | YOUR_APPLICATION_HAS_BEEN_SUBMITTED_SUCCESSFULLY_AND_IS_UNDER_VERIFICATION
        | VIEW_STATUS
        | GO_HOME
        | SELECT_LANGUAGE
        | WHICH_LANGUAGE_DO_YOU_PREFER
        | T_C
        | ENTER_MOBILE_NUMBER
        | BY_CLICKING_NEXT_YOU_WILL_BE_AGREEING_TO_OUR
        | ENTER_OTP
        | DIDNT_RECIEVE_OTP
        | RESEND_OTP
        | PLEASE_ENTER_VALID_OTP
        | INVALID_MOBILE_NUMBER
        | REGISTER
        | MOBILE_NUMBER
        | AUTO_READING_OTP
        | UPLOAD_DRIVING_LICENSE
        | UPLOAD_BACK_SIDE
        | UPLOAD_FRONT_SIDE
        | BACK_SIDE
        | FRONT_SIDE
        | NEXT
        | LICENSE_INSTRUCTION_PICTURE
        | LICENSE_INSTRUCTION_CLARITY
        | REGISTRATION_STEPS 
        | PROGRESS_SAVED 
        | DRIVING_LICENSE 
        | AADHAR_CARD 
        | BANK_DETAILS 
        | VEHICLE_DETAILS 
        | UPLOAD_FRONT_BACK 
        | EARNINGS_WILL_BE_CREDITED 
        | FILL_VEHICLE_DETAILS
        | FOLLOW_STEPS
        | REGISTRATION
        | UPLOAD_ADHAAR_CARD
        | ADHAAR_INTRUCTION_PICTURE
        | ADD_VEHICLE_DETAILS 
        | VEHICLE_REGISTRATION_NUMBER
        | ENTER_VEHICLE_NO 
        | VEHICLE_TYPE 
        | VEHICLE_MODEL_NAME 
        | ENTER_MODEL_NAME 
        | VEHICLE_COLOUR 
        | ENTER_VEHICLE_COLOUR 
        | UPLOAD_REGISTRATION_CERTIFICATE 
        | UPLOAD_RC
        | PREVIEW 
        | CHOOSE_VEHICLE_TYPE
        | RE_ENTER_BENIFICIARY_NUMBER
        | IFSC_CODE
        | BENIFICIARY_NUMBER
        | SENDING_OTP
        | PLEASE_WAIT_WHILE_IN_PROGRESS
        | LIMIT_EXCEEDED
        | YOUR_REQUEST_HAS_TIMEOUT_TRY_AGAIN
        | ERROR_OCCURED_PLEASE_TRY_AGAIN_LATER
        | LIMIT_EXCEEDED_PLEASE_TRY_AGAIN_AFTER_10MIN
        | COUNTRY_CODE_INDIA
        | ENTER_OTP_SENT_TO
        | OTP_SENT_TO
        | ENTER_ACCOUNT_NUMBER
        | ADD_BANK_DETAILS
        | ENTER_IFSC_CODE
        | SUBMIT
        | PERSONAL_DETAILS
        | LANGUAGES
        | HELP_AND_FAQ
        | ABOUT
        | LOGOUT
        | UPDATE
        | EDIT
        | AUTO
        | NAME
        | PRIVACY_POLICY
        | LOGO
        | ABOUT_APP_DESCRIPTION
        | TERMS_AND_CONDITIONS
        | UPDATE_VEHICLE_DETAILS
        | Help_AND_SUPPORT
        | NOTE
        | VISIT_MY_RIDES_SCREEN_FOR_SPECIFIC_COMPLAINTS
        | THANK_YOU_FOR_WRTITTING_US
        | GO_TO_HOME
        | YOUR_RECENT_RIDE
        | ALL_TOPICS
        | REPORT_AN_ISSUE_WITH_THIS_TRIP
        | YOU_RATED
        | VIEW_ALL_RIDES
        | WRITE_TO_US
        | SUBJECT
        | YOUR_EMAIL_ID
        | DESCRIBE_YOUR_ISSUE
        | GETTING_STARTED_AND_FAQ
        | FOR_OTHER_ISSUES_WRITE_TO_US
        | CALL_SUPPORT_CENTER
        | YOU_CAN_DESCRIBE_ISSUE_THAT_YOU_FACED_HERE
        | REGISTRATION_CERTIFICATE_IMAGE
        | HOME
        | RIDES
        | PROFILE
        | ENTER_DRIVING_LICENSE_NUMBER
        | TRIP_DETAILS
        | BY_CASH
        | ONLINE_
        | DISTANCE
        | REPORT_AN_ISSUE
        | TIME_TAKEN
        | OPEN_GOOGLE_MAPS
        | CALL
        | START_RIDE
        | CANCEL_RIDE
        | PLEASE_TELL_US_WHY_YOU_WANT_TO_CANCEL
        | MANDATORY
        | END_RIDE
        | RIDE_COMPLETED_WITH
        | COLLECT_AMOUNT_IN_CASH
        | CASH_COLLECTED
        | OFFLINE
        | ACCEPT_FOR
        | DECLINE
        | REQUEST
        | YOU_ARE_OFFLINE
        | YOU_ARE_CURRENTLY_BUSY_GO_ONLINE_TO_RECIEVE_TRIP_REQUESTS
        | GOING_OFFLINE_WILL_NOT_GET_YOU_ANY_RIDE
        | CANCEL
        | GO_OFFLINE
        | IS_WAITING_FOR_YOU
        | YOU_ARE_ON_A_RIDE
        | PLEASE_ASK_RIDER_FOR_THE_OTP
        | COMPLETED_
        | CANCELLED_
        | WHERE_IS_MY_LICENSE_NUMBER
        | WE_NEED_SOME_ACCESS
        | ALLOW_ACCESS
        | ENTER_RC_NUMBER
        | WHERE_IS_MY_RC_NUMBER
        | WE_HAVE_RECIEVED_YOUR_ISSUE
        | THANK_YOU_FOR_WRITING_TO_US
        | RIDER
        | TRIP_ID
        | NEED_IT_TO_SHOW_YOU_INCOMING_RIDE_REQUEST
        | NEED_IT_TO_DISABLE_BATTERY_OPTIMIZATION_FOR_THE_APP
        | NEED_IT_TO_AUTOSTART_YOUR_APP
        | NEED_IT_TO_ENABLE_LOCATION
        | OVERLAY_TO_DRAW_OVER_APPLICATIONS
        | BATTERY_OPTIMIZATIONS
        | AUTO_START_APPLICATION_IN_BACKGROUND
        | LOCATION_ACCESS
        | STEP
        | PAID
        | ENTERED_WRONG_OTP
        | COPIED
        | BANK_NAME
        | AADHAR_DETAILS
        | AADHAR_NUMBER
        | FRONT_SIDE_IMAGE
        | BACK_SIDE_IMAGE
        | STILL_NOT_RESOLVED
        | CASE_TWO
        | NON_DISCLOUSER_AGREEMENT
        | DATA_COLLECTION_AUTHORITY
        | SOFTWARE_LICENSE
        | LOAD_MORE
        | ARE_YOU_SURE_YOU_WANT_TO_LOGOUT
        | GO_BACK
        | THANK_YOU_FOR_REGISTERING_US
        | UNFORTANUTELY_WE_ARE_NOT_AVAILABLE__YET_FOR_YOU
        | ARE_YOU_SURE_YOU_WANT_TO_END_THE_RIDE
        | EMPTY_RIDES
        | YOU_HAVE_NOT_TAKEN_A_TRIP_YET
        | BOOK_NOW
        | RESEND_OTP_IN
        | WE_NEED_ACCESS_TO_YOUR_LOCATION
        | YOUR_LOCATION_HELPS_OUR_SYSTEM
        | NO_INTERNET_CONNECTION
        | PLEASE_CHECK_YOUR_INTERNET_CONNECTION_AND_TRY_AGAIN
        | TRY_AGAIN
        | GRANT_ACCESS
        | YOUR_LIMIT_EXCEEDED_TRY_AGAIN_AFTER_10_MIN
        | ENTER_REFERRAL_MOBILE_NUMBER
        | APPLY
        | HAVE_A_REFERRAL
        | ADD_HERE
        | REFERRAL_APPLIED
        | SMALLEDIT
        | ADD_DRIVING_LICENSE
        | HELP
        | INVALID_DL_NUMBER
        | DRIVING_LICENSE_NUMBER
        | ENTER_DL_NUMBER
        | SELECT_DATE_OF_BIRTH
        | DATE_OF_BIRTH
        | WATCH_A_TUTORIAL_FOR_EASY_REGISTRATION
        | ENTER_MINIMUM_FIFTEEN_CHARACTERS
        | ADD_YOUR_FRIEND
        | PLEASE_WAIT_WHILE_VALIDATING_THE_IMAGE
        | VALIDATING
        | VERIFICATION_PENDING
        | VERIFICATION_FAILED
        | NO_DOC_AVAILABLE
        | ISSUE_WITH_DL_IMAGE
        | STILL_HAVE_SOME_DOUBT
        | ISSUE_WITH_RC_IMAGE
        | PLEASE_CHECK_FOR_IMAGE_IF_VALID_DOCUMENT_IMAGE_OR_NOT
        | OOPS_YOUR_APPLICATION_HAS_BEEN_REJECTED
        | INVALID_DRIVING_LICENSE
        | LIMIT_EXCEEDED_FOR_DL_UPLOAD
        | INVALID_VEHICLE_REGISTRATION_CERTIFICATE
        | LIMIT_EXCEEDED_FOR_RC_UPLOAD
        | YOUR_DOCUMENTS_ARE_APPROVED
        | APPLICATION_STATUS
        | FOR_SUPPORT
        | CONTACT_US
        | IMAGE_VALIDATION_FAILED 
        | IMAGE_NOT_READABLE
        | IMAGE_LOW_QUALITY
        | IMAGE_INVALID_TYPE 
        | IMAGE_DOCUMENT_NUMBER_MISMATCH 
        | IMAGE_EXTRACTION_FAILED
        | IMAGE_NOT_FOUND 
        | IMAGE_NOT_VALID 
        | DRIVER_ALREADY_LINKED 
        | DL_ALREADY_UPDATED 
        | RC_ALREADY_LINKED 
        | RC_ALREADY_UPDATED 
        | DL_ALREADY_LINKED
        | SOMETHING_WENT_WRONG
        | PICKUP
        | TRIP
        | CURRENTLY_WE_ALLOW_ONLY_KARNATAKA_REGISTERED_NUMBER
        | RE_ENTER_VEHICLE_REGISTRATION_NUMBER
        | RE_ENTER_DRIVING_LICENSE_NUMBER
        | UPDATED_AT
        | TRIP_COUNT
        | TODAYS_EARNINGS
        | DATE_OF_REGISTRATION
        | SELECT_DATE_OF_REGISTRATION
        | DATE_OF_ISSUE
        | PROVIDE_DATE_OF_ISSUE_TEXT
        | PROVIDE_DATE_OF_REGISTRATION_TEXT
        | SELECT_DATE_OF_ISSUE
        | SAME_REENTERED_RC_MESSAGE
        | SAME_REENTERED_DL_MESSAGE
        | WHERE_IS_MY_ISSUE_DATE
        | WHERE_IS_MY_REGISTRATION_DATE
        | OTP_RESENT
        | EARNINGS_CREDITED_IN_ACCOUNT
        | INVALID_PARAMETERS
        | UNAUTHORIZED
        | INVALID_TOKEN
        | SOME_ERROR_OCCURED_IN_OFFERRIDE
        | SELECT_VEHICLE_TYPE
        | RIDE
        | NO_LOCATION_UPDATE
        | GOT_IT_TELL_US_MORE 
        | WRITE_A_COMMENT 
        | HOW_WAS_YOUR_RIDE_WITH 
        | RUDE_BEHAVIOUR
        | LONG_WAITING_TIME
        | DIDNT_COME_TO_PICUP_LOCATION
        | HELP_US_WITH_YOUR_REASON
        | MAX_CHAR_LIMIT_REACHED
        | SHOW_ALL_OPTIONS
        | UPDATE_REQUIRED
        | PLEASE_UPDATE_APP_TO_CONTINUE_SERVICE
        | NOT_NOW 
        | OF
        | DROP
        | PLEASE_WAIT
        | SETTING_YOU_OFFLINE
        | SETTING_YOU_ONLINE
        | VIEW_BREAKDOWN
        | APP_INFO
        | OTHER
        | VEHICLE_ISSUE
        | FARE_UPDATED
        | FREQUENT_CANCELLATIONS_WILL_LEAD_TO_LESS_RIDES
        | CONTINUE
        | CONFIRM_PASSWORD
        | DEMO_MODE
        | PASSWORD
        | ENTER_DEMO_MODE_PASSWORD
        | DEMO_MODE_DISABLED
        | ONLINE_VIA_DEMO_MODE
        | MORE
        | LESS
        | YOU_ARE_AT_PICKUP
        | WAITING_FOR_CUSTOMER
        | CUSTOMER_NOTIFIED
        | I_ARRIVED
        | ESTIMATED_RIDE_FARE
        | PICKUP_TOO_FAR
        | CUSTOMER_NOT_PICKING_CALL
        | TRAFFIC_JAM
        | CUSTOMER_WAS_RUDE
        | ALERT
        | ALL_ALERTS
        | ADD_A_COMMENT
        | POST_COMMENT
        | ENTER_YOUR_COMMENT
        | NO_NOTIFICATIONS_RIGHT_NOW
        | NO_NOTIFICATIONS_RIGHT_NOW_DESC
        | ALERTS
        | YOUR_COMMENT
        | SHOW_MORE
        | LOAD_OLDER_ALERTS
        | CONTEST
        | YOUR_REFERRAL_CODE_IS_LINKED
        | YOU_CAN_NOW_EARN_REWARDS
        | COMING_SOON
        | COMING_SOON_DESCRIPTION
        | REFERRAL_CODE
        | REFERRAL_CODE_HINT
        | CONFIRM_REFERRAL_CODE
        | CONFIRM_REFERRAL_CODE_HINT
        | YOUR_REFERRAL_CODE
        | FIRST_REFERRAL_SUCCESSFUL
        | AWAITING_REFERRAL_RIDE
        | CHECK_THIS_SPACE_WHEN_YOU_GET_REFERRAL_ALERT
        | REFERRED_CUSTOMERS
        | ACTIVATED_CUSTOMERS
        | REFERRAL_CODE_LINKING
        | CONTACT_SUPPORT
        | CALL_SUPPORT
        | YOU_ARE_ABOUT_TO_CALL_NAMMA_YATRI_SUPPORT
        | REFERRAL_ENROLMENT
        | REFERRALS
        | LINK_REFERRAL_CODE
        | DRIVER_DETAILS
        | FOR_UPDATES_SEE_ALERTS
        | SHARE_OPTIONS
        | ENTER_PASSWORD

type LETS_GET_STARTED = String
type SELECT_LANGUAGE = String
type WHICH_LANGUAGE_DO_YOU_PREFER = String
type T_C = String
type ENTER_MOBILE_NUMBER = String
type BY_CLICKING_NEXT_YOU_WILL_BE_AGREEING_TO_OUR = String
type ENTER_OTP = String
type DIDNT_RECIEVE_OTP = String
type RESEND_OTP = String
type PLEASE_ENTER_VALID_OTP = String
type INVALID_MOBILE_NUMBER = String
type REGISTER = String
type MOBILE_NUMBER = String
type AUTO_READING_OTP = String
type UPLOAD_DRIVING_LICENSE = String

type UPLOAD_BACK_SIDE = String

type UPLOAD_FRONT_SIDE = String

type BACK_SIDE = String

type FRONT_SIDE = String

type NEXT = String

type LICENSE_INSTRUCTION_PICTURE = String

type LICENSE_INSTRUCTION_CLARITY = String

type REGISTRATION_STEPS = String

type PROGRESS_SAVED = String

type DRIVING_LICENSE = String

type AADHAR_CARD = String

type BANK_DETAILS = String

type VEHICLE_DETAILS = String

type UPLOAD_FRONT_BACK = String

type EARNINGS_WILL_BE_CREDITED = String

type FILL_VEHICLE_DETAILS = String

type FOLLOW_STEPS = String

type REGISTRATION = String

type UPLOAD_ADHAAR_CARD = String
type ADD_VEHICLE_DETAILS = String
type VEHICLE_REGISTRATION_NUMBER= String
type RE_ENTER_VEHICLE_REGISTRATION_NUMBER = String
type ENTER_VEHICLE_NO = String
type VEHICLE_TYPE = String
type VEHICLE_MODEL_NAME = String
type ENTER_MODEL_NAME = String
type VEHICLE_COLOUR = String
type ENTER_VEHICLE_COLOUR = String
type UPLOAD_REGISTRATION_CERTIFICATE = String
type UPLOAD_RC= String
type PREVIEW = String
type CHOOSE_VEHICLE_TYPE = String
type YOUR_APPLICATION_HAS_BEEN_SUBMITTED_SUCCESSFULLY_AND_IS_UNDER_VERIFICATION = String
type VIEW_STATUS = String
type GO_HOME = String

type IFSC_CODE = String

type BENIFICIARY_NUMBER = String

type RE_ENTER_BENIFICIARY_NUMBER = String

type SENDING_OTP = String

type PLEASE_WAIT_WHILE_IN_PROGRESS = String

type ERROR_OCCURED_PLEASE_TRY_AGAIN_LATER = String

type LIMIT_EXCEEDED = String

type YOUR_REQUEST_HAS_TIMEOUT_TRY_AGAIN = String

type LIMIT_EXCEEDED_PLEASE_TRY_AGAIN_AFTER_10MIN = String

type COUNTRY_CODE_INDIA = String

type ENTER_OTP_SENT_TO = String

type OTP_SENT_TO = String

type ENTER_ACCOUNT_NUMBER = String

type ADD_BANK_DETAILS = String

type ENTER_IFSC_CODE = String

type SUBMIT = String
type PERSONAL_DETAILS = String
type LANGUAGES = String
type HELP_AND_FAQ = String
type ABOUT = String
type LOGOUT = String
type UPDATE = String
type EDIT = String
type AUTO = String
type PRIVACY_POLICY = String
type LOGO = String
type ABOUT_APP_DESCRIPTION = String
type TERMS_AND_CONDITIONS = String
type Help_AND_SUPPORT = String
type NOTE = String
type VISIT_MY_RIDES_SCREEN_FOR_SPECIFIC_COMPLAINTS = String
type THANK_YOU_FOR_WRTITTING_US = String
type GO_TO_HOME = String
type YOUR_RECENT_RIDE = String
type ALL_TOPICS = String
type REPORT_AN_ISSUE_WITH_THIS_TRIP = String
type YOU_RATED = String
type VIEW_ALL_RIDES = String
type WRITE_TO_US = String
type SUBJECT = String
type YOUR_EMAIL_ID = String
type DESCRIBE_YOUR_ISSUE = String
type GETTING_STARTED_AND_FAQ = String
type FOR_OTHER_ISSUES_WRITE_TO_US = String
type YOU_CAN_DESCRIBE_ISSUE_THAT_YOU_FACED_HERE = String
type REGISTRATION_CERTIFICATE_IMAGE = String
type HOME = String
type RIDES = String
type Profile = String
type WHERE_IS_MY_LICENSE_NUMBER = String
type OPEN_GOOGLE_MAPS = String
type CALL = String
type START_RIDE = String
type CANCEL_RIDE = String
type PLEASE_TELL_US_WHY_YOU_WANT_TO_CANCEL = String
type MANDATORY = String
type END_RIDE = String
type RIDE_COMPLETED_WITH = String
type COLLECT_AMOUNT_IN_CASH = String
type CASH_COLLECTED = String
type OFFLINE = String
type ACCEPT_FOR = String
type DECLINE = String
type REQUEST = String
type YOU_ARE_OFFLINE = String
type YOU_ARE_CURRENTLY_BUSY_GO_ONLINE_TO_RECIEVE_TRIP_REQUESTS = String
type GOING_OFFLINE_WILL_NOT_GET_YOU_ANY_RIDE = String
type CANCEL = String
type GO_OFFLINE = String
type IS_WAITING_FOR_YOU = String 
type YOU_ARE_ON_A_RIDE = String 
type PLEASE_ASK_RIDER_FOR_THE_OTP = String

type TRIP_DETAILS = String

type BY_CASH = String

type REPORT_AN_ISSUE = String

type DISTANCE = String

type TIME_TAKEN  = String
type COMPLETED_ = String

type CANCELLED_ = String

type ENTER_DRIVING_LICENSE_NUMBER = String

type WE_NEED_SOME_ACCESS = String

type ALLOW_ACCESS = String

type ENTER_RC_NUMBER = String

type WHERE_IS_MY_RC_NUMBER = String
type WE_HAVE_RECIEVED_YOUR_ISSUE = String

type THANK_YOU_FOR_WRITING_TO_US = String

type RIDER = String 

type TRIP_ID = String

type NEED_IT_TO_SHOW_YOU_INCOMING_RIDE_REQUEST = String
type NEED_IT_TO_DISABLE_BATTERY_OPTIMIZATION_FOR_THE_APP = String
type NEED_IT_TO_AUTOSTART_YOUR_APP = String
type NEED_IT_TO_ENABLE_LOCATION = String
type OVERLAY_TO_DRAW_OVER_APPLICATIONS = String
type BATTERY_OPTIMIZATIONS = String
type AUTO_START_APPLICATION_IN_BACKGROUND = String
type LOCATION_ACCESS = String
type STEP = String
type PAID = String 
type ENTERED_WRONG_OTP = String
type COPIED = String
type BANK_NAME = String
type AADHAR_DETAILS = String
type AADHAR_NUMBER = String
type FRONT_SIDE_IMAGE = String
type BACK_SIDE_IMAGE = String

type CALL_SUPPORT_CENTER = String

type STILL_NOT_RESOLVED = String
type CASE_TWO = String
type NON_DISCLOUSER_AGREEMENT = String
type DATA_COLLECTION_AUTHORITY = String
type SOFTWARE_LICENSE = String
type LOAD_MORE = String

type ARE_YOU_SURE_YOU_WANT_TO_LOGOUT = String
type GO_BACK = String
type THANK_YOU_FOR_REGISTERING_US = String
type UNFORTANUTELY_WE_ARE_NOT_AVAILABLE__YET_FOR_YOU = String
type ARE_YOU_SURE_YOU_WANT_TO_END_THE_RIDE = String

type FREQUENT_CANCELLATIONS_WILL_LEAD_TO_LESS_RIDES = String

type CONTINUE = String

type EMPTY_RIDES = String
type YOU_HAVE_NOT_TAKEN_A_TRIP_YET = String
type BOOK_NOW = String
type RESEND_OTP_IN = String
type WE_NEED_ACCESS_TO_YOUR_LOCATION = String
type YOUR_LOCATION_HELPS_OUR_SYSTEM = String
type NO_INTERNET_CONNECTION = String
type PLEASE_CHECK_YOUR_INTERNET_CONNECTION_AND_TRY_AGAIN = String
type TRY_AGAIN = String
type GRANT_ACCESS = String
type YOUR_LIMIT_EXCEEDED_TRY_AGAIN_AFTER_10_MIN = String
type ENTER_REFERRAL_MOBILE_NUMBER = String
type APPLY = String
type HAVE_A_REFERRAL = String
type ADD_HERE = String
type REFERRAL_APPLIED = String
type SMALLEDIT = String
type ADD_DRIVING_LICENSE = String
type HELP = String
type INVALID_DL_NUMBER = String
type DRIVING_LICENSE_NUMBER = String
type RE_ENTER_DRIVING_LICENSE_NUMBER = String
type ENTER_DL_NUMBER = String
type SELECT_DATE_OF_BIRTH = String
type DATE_OF_BIRTH = String
type WATCH_A_TUTORIAL_FOR_EASY_REGISTRATION = String
type ENTER_MINIMUM_FIFTEEN_CHARACTERS = String
type ADD_YOUR_FRIEND = String
type VALIDATING = String
type PLEASE_WAIT_WHILE_VALIDATING_THE_IMAGE = String
type VERIFICATION_PENDING = String
type VERIFICATION_FAILED = String
type NO_DOC_AVAILABLE = String
type ISSUE_WITH_DL_IMAGE = String
type STILL_HAVE_SOME_DOUBT = String
type ISSUE_WITH_RC_IMAGE = String
type PLEASE_CHECK_FOR_IMAGE_IF_VALID_DOCUMENT_IMAGE_OR_NOT = String
type OOPS_YOUR_APPLICATION_HAS_BEEN_REJECTED = String
type INVALID_DRIVING_LICENSE = String
type LIMIT_EXCEEDED_FOR_DL_UPLOAD = String
type INVALID_VEHICLE_REGISTRATION_CERTIFICATE = String
type LIMIT_EXCEEDED_FOR_RC_UPLOAD = String
type YOUR_DOCUMENTS_ARE_APPROVED = String
type APPLICATION_STATUS = String
type FOR_SUPPORT = String
type CONTACT_US = String
type IMAGE_VALIDATION_FAILED = String
type IMAGE_NOT_READABLE = String
type IMAGE_LOW_QUALITY = String
type IMAGE_INVALID_TYPE = String
type IMAGE_DOCUMENT_NUMBER_MISMATCH = String
type IMAGE_EXTRACTION_FAILED = String
type IMAGE_NOT_FOUND = String
type IMAGE_NOT_VALID = String
type DRIVER_ALREADY_LINKED = String
type DL_ALREADY_UPDATED = String
type RC_ALREADY_LINKED = String
type RC_ALREADY_UPDATED = String
type DL_ALREADY_LINKED = String
type SOMETHING_WENT_WRONG = String
type PICKUP = String
type TRIP = String
type CURRENTLY_WE_ALLOW_ONLY_KARNATAKA_REGISTERED_NUMBER = String
type UPDATED_AT = String
type TRIP_COUNT = String
type TODAYS_EARNINGS = String
type DATE_OF_REGISTRATION = String
type SELECT_DATE_OF_REGISTRATION = String
type DATE_OF_ISSUE = String
type PROVIDE_DATE_OF_ISSUE_TEXT = String
type PROVIDE_DATE_OF_REGISTRATION_TEXT = String
type SELECT_DATE_OF_ISSUE = String
type SAME_REENTERED_RC_MESSAGE = String
type SAME_REENTERED_DL_MESSAGE = String
type WHERE_IS_MY_ISSUE_DATE = String
type WHERE_IS_MY_REGISTRATION_DATE = String
type OTP_RESENT = String
type EARNINGS_CREDITED_IN_ACCOUNT = String
type INVALID_PARAMETERS = String
type UNAUTHORIZED = String
type INVALID_TOKEN = String
type SOME_ERROR_OCCURED_IN_OFFERRIDE = String
type SELECT_VEHICLE_TYPE = String
type RIDE = String
type NO_LOCATION_UPDATE = String
type GOT_IT_TELL_US_MORE = String
type WRITE_A_COMMENT = String
type HOW_WAS_YOUR_RIDE_WITH = String
type RUDE_BEHAVIOUR = String
type LONG_WAITING_TIME = String
type DIDNT_COME_TO_PICUP_LOCATION = String
type HELP_US_WITH_YOUR_REASON = String 
type MAX_CHAR_LIMIT_REACHED = String
type SHOW_ALL_OPTIONS = String
type UPDATE_REQUIRED = String
type PLEASE_UPDATE_APP_TO_CONTINUE_SERVICE = String 
type NOT_NOW = String 
type OF = String
type DROP = String 
type PLEASE_WAIT = String
type SETTING_YOU_OFFLINE = String
type SETTING_YOU_ONLINE = String
type VIEW_BREAKDOWN = String
type APP_INFO = String
type OTHER = String 
type VEHICLE_ISSUE = String 
type FARE_UPDATED = String
type CONFIRM_PASSWORD = String
type DEMO_MODE = String
type PASSWORD = String
type ENTER_DEMO_MODE_PASSWORD = String
type DEMO_MODE_DISABLED = String
type ONLINE_VIA_DEMO_MODE = String
type MORE = String
type LESS = String
type YOU_ARE_AT_PICKUP = String
type WAITING_FOR_CUSTOMER = String
type CUSTOMER_NOTIFIED = String
type I_ARRIVED = String
type ESTIMATED_RIDE_FARE = String
type PICKUP_TOO_FAR = String 
type CUSTOMER_NOT_PICKING_CALL = String 
type TRAFFIC_JAM = String 
type CUSTOMER_WAS_RUDE = String 
type ALERT = String
type ALL_ALERTS = String
type ADD_A_COMMENT = String
type POST_COMMENT = String
type ENTER_YOUR_COMMENT = String
type NO_NOTIFICATIONS_RIGHT_NOW = String
type NO_NOTIFICATIONS_RIGHT_NOW_DESC = String
type ALERTS = String
type YOUR_COMMENT = String 
type SHOW_MORE = String
type LOAD_OLDER_ALERTS = String
type CONTEST = String
type YOUR_REFERRAL_CODE_IS_LINKED = String 
type YOU_CAN_NOW_EARN_REWARDS = String 
type COMING_SOON = String 
type COMING_SOON_DESCRIPTION = String 
type REFERRAL_CODE = String
type REFERRAL_CODE_HINT = String
type CONFIRM_REFERRAL_CODE = String
type CONFIRM_REFERRAL_CODE_HINT = String 
type YOUR_REFERRAL_CODE = String
type FIRST_REFERRAL_SUCCESSFUL = String 
type AWAITING_REFERRAL_RIDE = String 
type CHECK_THIS_SPACE_WHEN_YOU_GET_REFERRAL_ALERT = String 
type REFERRED_CUSTOMERS = String
type ACTIVATED_CUSTOMERS = String
type REFERRAL_CODE_LINKING = String 
type CONTACT_SUPPORT = String
type CALL_SUPPORT = String 
type YOU_ARE_ABOUT_TO_CALL_NAMMA_YATRI_SUPPORT = String
type REFERRAL_ENROLMENT = String 
type REFERRALS = String
type LINK_REFERRAL_CODE = String
type DRIVER_DETAILS = String
type FOR_UPDATES_SEE_ALERTS = String
type SHARE_OPTIONS = String
type ENTER_PASSWORD = String