.class Lcom/facebook/react/views/textinput/ReactTextInputManager$1;
.super Ljava/util/HashMap;
.source "ReactTextInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/textinput/ReactTextInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "birthdate-day"

    const-string v1, "birthDateDay"

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "birthdate-full"

    const-string v1, "birthDateFull"

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "birthdate-month"

    const-string v1, "birthDateMonth"

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "birthdate-year"

    const-string v1, "birthDateYear"

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cc-csc"

    const-string v1, "creditCardSecurityCode"

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cc-exp"

    const-string v1, "creditCardExpirationDate"

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cc-exp-day"

    const-string v1, "creditCardExpirationDay"

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cc-exp-month"

    const-string v1, "creditCardExpirationMonth"

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cc-exp-year"

    const-string v1, "creditCardExpirationYear"

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cc-number"

    const-string v1, "creditCardNumber"

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "email"

    const-string v1, "emailAddress"

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gender"

    .line 104
    invoke-virtual {p0, v0, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    const-string v1, "personName"

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name-family"

    const-string v1, "personFamilyName"

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name-given"

    const-string v1, "personGivenName"

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name-middle"

    const-string v1, "personMiddleName"

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name-middle-initial"

    const-string v1, "personMiddleInitial"

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name-prefix"

    const-string v1, "personNamePrefix"

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name-suffix"

    const-string v1, "personNameSuffix"

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    .line 112
    invoke-virtual {p0, v0, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password-new"

    const-string v1, "newPassword"

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postal-address"

    const-string v1, "postalAddress"

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postal-address-country"

    const-string v1, "addressCountry"

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postal-address-extended"

    const-string v1, "extendedAddress"

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postal-address-extended-postal-code"

    const-string v1, "extendedPostalCode"

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postal-address-locality"

    const-string v1, "addressLocality"

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postal-address-region"

    const-string v1, "addressRegion"

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postal-code"

    const-string v1, "postalCode"

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "street-address"

    const-string/jumbo v1, "streetAddress"

    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sms-otp"

    const-string v1, "smsOTPCode"

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "tel"

    const-string v1, "phoneNumber"

    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "tel-country-code"

    const-string v1, "phoneCountryCode"

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "tel-national"

    const-string v1, "phoneNational"

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "tel-device"

    const-string v1, "phoneNumberDevice"

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "username"

    .line 131
    invoke-virtual {p0, v0, v0}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "username-new"

    const-string v1, "newUsername"

    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
