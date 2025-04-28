.class public Lcom/google/mlkit/vision/barcode/Barcode;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/barcode/Barcode$WiFi;,
        Lcom/google/mlkit/vision/barcode/Barcode$UrlBookmark;,
        Lcom/google/mlkit/vision/barcode/Barcode$Sms;,
        Lcom/google/mlkit/vision/barcode/Barcode$GeoPoint;,
        Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;,
        Lcom/google/mlkit/vision/barcode/Barcode$Email;,
        Lcom/google/mlkit/vision/barcode/Barcode$Phone;,
        Lcom/google/mlkit/vision/barcode/Barcode$PersonName;,
        Lcom/google/mlkit/vision/barcode/Barcode$DriverLicense;,
        Lcom/google/mlkit/vision/barcode/Barcode$CalendarEvent;,
        Lcom/google/mlkit/vision/barcode/Barcode$CalendarDateTime;,
        Lcom/google/mlkit/vision/barcode/Barcode$Address;,
        Lcom/google/mlkit/vision/barcode/Barcode$BarcodeValueType;,
        Lcom/google/mlkit/vision/barcode/Barcode$BarcodeFormat;
    }
.end annotation


# static fields
.field public static final FORMAT_ALL_FORMATS:I = 0x0

.field public static final FORMAT_AZTEC:I = 0x1000

.field public static final FORMAT_CODABAR:I = 0x8

.field public static final FORMAT_CODE_128:I = 0x1

.field public static final FORMAT_CODE_39:I = 0x2

.field public static final FORMAT_CODE_93:I = 0x4

.field public static final FORMAT_DATA_MATRIX:I = 0x10

.field public static final FORMAT_EAN_13:I = 0x20

.field public static final FORMAT_EAN_8:I = 0x40

.field public static final FORMAT_ITF:I = 0x80

.field public static final FORMAT_PDF417:I = 0x800

.field public static final FORMAT_QR_CODE:I = 0x100

.field public static final FORMAT_UNKNOWN:I = -0x1

.field public static final FORMAT_UPC_A:I = 0x200

.field public static final FORMAT_UPC_E:I = 0x400

.field public static final TYPE_CALENDAR_EVENT:I = 0xb

.field public static final TYPE_CONTACT_INFO:I = 0x1

.field public static final TYPE_DRIVER_LICENSE:I = 0xc

.field public static final TYPE_EMAIL:I = 0x2

.field public static final TYPE_GEO:I = 0xa

.field public static final TYPE_ISBN:I = 0x3

.field public static final TYPE_PHONE:I = 0x4

.field public static final TYPE_PRODUCT:I = 0x5

.field public static final TYPE_SMS:I = 0x6

.field public static final TYPE_TEXT:I = 0x7

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_URL:I = 0x8

.field public static final TYPE_WIFI:I = 0x9


# instance fields
.field private final zza:Lcom/google/mlkit/vision/barcode/internal/zzk;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/internal/zzk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/barcode/internal/zzk;

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    return-void
.end method


# virtual methods
.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzc()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarEvent()Lcom/google/mlkit/vision/barcode/Barcode$CalendarEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzd()Lcom/google/mlkit/vision/barcode/Barcode$CalendarEvent;

    move-result-object v0

    return-object v0
.end method

.method public getContactInfo()Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zze()Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCornerPoints()[Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzp()[Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDriverLicense()Lcom/google/mlkit/vision/barcode/Barcode$DriverLicense;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzf()Lcom/google/mlkit/vision/barcode/Barcode$DriverLicense;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Lcom/google/mlkit/vision/barcode/Barcode$Email;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzg()Lcom/google/mlkit/vision/barcode/Barcode$Email;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()I
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x1000

    if-gt v0, v2, :cond_0

    if-nez v0, :cond_1

    return v1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public getGeoPoint()Lcom/google/mlkit/vision/barcode/Barcode$GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzh()Lcom/google/mlkit/vision/barcode/Barcode$GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Lcom/google/mlkit/vision/barcode/Barcode$Phone;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzi()Lcom/google/mlkit/vision/barcode/Barcode$Phone;

    move-result-object v0

    return-object v0
.end method

.method public getRawBytes()[B
    .locals 2

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzo()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSms()Lcom/google/mlkit/vision/barcode/Barcode$Sms;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzj()Lcom/google/mlkit/vision/barcode/Barcode$Sms;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Lcom/google/mlkit/vision/barcode/Barcode$UrlBookmark;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzk()Lcom/google/mlkit/vision/barcode/Barcode$UrlBookmark;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()I
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzb()I

    move-result v0

    return v0
.end method

.method public getWifi()Lcom/google/mlkit/vision/barcode/Barcode$WiFi;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzl()Lcom/google/mlkit/vision/barcode/Barcode$WiFi;

    move-result-object v0

    return-object v0
.end method
