export function getStringValue(key){
    if (key in hindiStrings){
       return hindiStrings[key];
    }
    return "error in getCommonHI";
}

const hindiStrings = {
    WELCOME_TEXT : "Welcome to the app",
    ABOUT_TEXT : "This App is an open platform to connect drivers with riders. The app makes it convenient for drivers to find riders with proposed desired rates. No ride based commission, just pay small amount in the form of monthly subscription"
}