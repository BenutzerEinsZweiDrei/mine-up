.class public Lcom/polidea/rxandroidble2/ClientComponent$PlatformConstants;
.super Ljava/lang/Object;
.source "ClientComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/ClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlatformConstants"
.end annotation


# static fields
.field public static final BOOL_IS_ANDROID_WEAR:Ljava/lang/String; = "android-wear"

.field public static final BOOL_IS_NEARBY_PERMISSION_NEVER_FOR_LOCATION:Ljava/lang/String; = "nearby-permission-never-for-location"

.field public static final INT_DEVICE_SDK:Ljava/lang/String; = "device-sdk"

.field public static final INT_TARGET_SDK:Ljava/lang/String; = "target-sdk"

.field public static final STRING_ARRAY_CONNECT_PERMISSIONS:Ljava/lang/String; = "connect-permissions"

.field public static final STRING_ARRAY_SCAN_PERMISSIONS:Ljava/lang/String; = "scan-permissions"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
