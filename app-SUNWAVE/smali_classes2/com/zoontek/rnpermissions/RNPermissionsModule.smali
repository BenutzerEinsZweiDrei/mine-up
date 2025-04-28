.class public Lcom/zoontek/rnpermissions/RNPermissionsModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNPermissionsModule.java"

# interfaces
.implements Lcom/facebook/react/modules/core/PermissionListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNPermissions"
.end annotation


# static fields
.field private static final ERROR_INVALID_ACTIVITY:Ljava/lang/String; = "E_INVALID_ACTIVITY"

.field public static final MODULE_NAME:Ljava/lang/String; = "RNPermissions"


# instance fields
.field private final BLOCKED:Ljava/lang/String;

.field private final DENIED:Ljava/lang/String;

.field private final GRANTED:Ljava/lang/String;

.field private final UNAVAILABLE:Ljava/lang/String;

.field private final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/bridge/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCode:I


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    const-string p1, "granted"

    .line 40
    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->GRANTED:Ljava/lang/String;

    const-string p1, "denied"

    .line 41
    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->DENIED:Ljava/lang/String;

    const-string p1, "unavailable"

    .line 42
    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->UNAVAILABLE:Ljava/lang/String;

    const-string p1, "blocked"

    .line 43
    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->BLOCKED:Ljava/lang/String;

    .line 47
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mCallbacks:Landroid/util/SparseArray;

    return-void
.end method

.method private getFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "android.permission.ACCEPT_HANDOVER"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ACCEPT_HANDOVER"

    return-object p1

    :cond_0
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ACCESS_BACKGROUND_LOCATION"

    return-object p1

    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ACCESS_COARSE_LOCATION"

    return-object p1

    :cond_2
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "ACCESS_FINE_LOCATION"

    return-object p1

    :cond_3
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "ACCESS_MEDIA_LOCATION"

    return-object p1

    :cond_4
    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "ACTIVITY_RECOGNITION"

    return-object p1

    :cond_5
    const-string v0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "ADD_VOICEMAIL"

    return-object p1

    :cond_6
    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "ANSWER_PHONE_CALLS"

    return-object p1

    :cond_7
    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "BLUETOOTH_ADVERTISE"

    return-object p1

    :cond_8
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "BLUETOOTH_CONNECT"

    return-object p1

    :cond_9
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "BLUETOOTH_SCAN"

    return-object p1

    :cond_a
    const-string v0, "android.permission.BODY_SENSORS"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "BODY_SENSORS"

    return-object p1

    :cond_b
    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "BODY_SENSORS_BACKGROUND"

    return-object p1

    :cond_c
    const-string v0, "android.permission.CALL_PHONE"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "CALL_PHONE"

    return-object p1

    :cond_d
    const-string v0, "android.permission.CAMERA"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "CAMERA"

    return-object p1

    :cond_e
    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "GET_ACCOUNTS"

    return-object p1

    :cond_f
    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "NEARBY_WIFI_DEVICES"

    return-object p1

    :cond_10
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "POST_NOTIFICATIONS"

    return-object p1

    :cond_11
    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p1, "PROCESS_OUTGOING_CALLS"

    return-object p1

    :cond_12
    const-string v0, "android.permission.READ_CALENDAR"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p1, "READ_CALENDAR"

    return-object p1

    :cond_13
    const-string v0, "android.permission.READ_CALL_LOG"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "READ_CALL_LOG"

    return-object p1

    :cond_14
    const-string v0, "android.permission.READ_CONTACTS"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p1, "READ_CONTACTS"

    return-object p1

    :cond_15
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p1, "READ_EXTERNAL_STORAGE"

    return-object p1

    :cond_16
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p1, "READ_MEDIA_AUDIO"

    return-object p1

    :cond_17
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p1, "READ_MEDIA_IMAGES"

    return-object p1

    :cond_18
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "READ_MEDIA_VIDEO"

    return-object p1

    :cond_19
    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p1, "READ_PHONE_NUMBERS"

    return-object p1

    :cond_1a
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p1, "READ_PHONE_STATE"

    return-object p1

    :cond_1b
    const-string v0, "android.permission.READ_SMS"

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p1, "READ_SMS"

    return-object p1

    :cond_1c
    const-string v0, "android.permission.RECEIVE_MMS"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p1, "RECEIVE_MMS"

    return-object p1

    :cond_1d
    const-string v0, "android.permission.RECEIVE_SMS"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p1, "RECEIVE_SMS"

    return-object p1

    :cond_1e
    const-string v0, "android.permission.RECEIVE_WAP_PUSH"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p1, "RECEIVE_WAP_PUSH"

    return-object p1

    :cond_1f
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p1, "RECORD_AUDIO"

    return-object p1

    :cond_20
    const-string v0, "android.permission.SEND_SMS"

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p1, "SEND_SMS"

    return-object p1

    :cond_21
    const-string v0, "android.permission.USE_SIP"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p1, "USE_SIP"

    return-object p1

    :cond_22
    const-string v0, "android.permission.UWB_RANGING"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string p1, "UWB_RANGING"

    return-object p1

    :cond_23
    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p1, "WRITE_CALENDAR"

    return-object p1

    :cond_24
    const-string v0, "android.permission.WRITE_CALL_LOG"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string p1, "WRITE_CALL_LOG"

    return-object p1

    :cond_25
    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string p1, "WRITE_CONTACTS"

    return-object p1

    :cond_26
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const-string p1, "WRITE_EXTERNAL_STORAGE"

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;
    .locals 2

    .line 384
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    instance-of v1, v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz v1, :cond_0

    .line 393
    check-cast v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    return-object v0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to use permissions API but the host Activity doesn\'t implement PermissionAwareActivity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to use permissions API while not attached to an Activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private permissionExists(Ljava/lang/String;)Z
    .locals 2

    .line 141
    invoke-direct {p0, p1}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 147
    :cond_0
    :try_start_0
    const-class v1, Landroid/Manifest$permission;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method


# virtual methods
.method public checkMultiplePermissions(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 279
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 280
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 282
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 283
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-direct {p0, v3}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->permissionExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "unavailable"

    .line 286
    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 287
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    const-string v6, "granted"

    if-ge v4, v5, :cond_2

    .line 290
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "blocked"

    .line 288
    :goto_1
    invoke-interface {v0, v3, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 294
    :cond_2
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 295
    invoke-interface {v0, v3, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v4, "denied"

    .line 297
    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_4
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public checkNotifications(Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    .line 159
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 160
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v0, "granted"

    goto :goto_0

    :cond_0
    const-string v0, "blocked"

    :goto_0
    const-string v3, "status"

    .line 162
    invoke-interface {v1, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "settings"

    .line 163
    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 165
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public checkPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-eqz p1, :cond_4

    .line 188
    invoke-direct {p0, p1}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->permissionExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 195
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const-string v3, "granted"

    if-ge v1, v2, :cond_2

    .line 196
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "blocked"

    :goto_0
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 203
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    .line 204
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string p1, "denied"

    .line 206
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p1, "unavailable"

    .line 189
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNPermissions"

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3

    .line 378
    iget-object p2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/bridge/Callback;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object p3

    const/4 v2, 0x1

    aput-object p3, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 379
    iget-object p2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 380
    iget-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public openSettings(Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 173
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 175
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 176
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "package"

    const/4 v4, 0x0

    .line 177
    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 180
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "E_INVALID_ACTIVITY"

    .line 182
    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public requestMultiplePermissions(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 10
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 306
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 312
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 313
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 315
    invoke-direct {p0, v6}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->permissionExists(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "unavailable"

    .line 316
    invoke-interface {v0, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 318
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    const-string v9, "granted"

    if-ge v7, v8, :cond_2

    .line 321
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    const-string v9, "blocked"

    .line 319
    :goto_2
    invoke-interface {v0, v6, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 327
    :cond_2
    invoke-virtual {v2, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 328
    invoke-interface {v0, v6, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 335
    :cond_4
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p1

    if-ne p1, v5, :cond_5

    .line 336
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 341
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object p1

    .line 343
    iget-object v2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mCallbacks:Landroid/util/SparseArray;

    iget v4, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    new-instance v5, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;

    invoke-direct {v5, p0, v1, v0, p2}, Lcom/zoontek/rnpermissions/RNPermissionsModule$2;-><init>(Lcom/zoontek/rnpermissions/RNPermissionsModule;Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v0, v3, [Ljava/lang/String;

    .line 369
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    invoke-interface {p1, v0, v1, p0}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    .line 370
    iget p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v0, "E_INVALID_ACTIVITY"

    .line 372
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public requestPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-eqz p1, :cond_4

    .line 226
    invoke-direct {p0, p1}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->permissionExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const-string v3, "granted"

    if-ge v1, v2, :cond_2

    .line 234
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "blocked"

    :goto_0
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 241
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 242
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 247
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mCallbacks:Landroid/util/SparseArray;

    iget v2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    new-instance v3, Lcom/zoontek/rnpermissions/RNPermissionsModule$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/zoontek/rnpermissions/RNPermissionsModule$1;-><init>(Lcom/zoontek/rnpermissions/RNPermissionsModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 270
    iget p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    invoke-interface {v0, v2, p1, p0}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    .line 271
    iget p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule;->mRequestCode:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "E_INVALID_ACTIVITY"

    .line 273
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p1, "unavailable"

    .line 227
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-eqz p1, :cond_1

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/zoontek/rnpermissions/RNPermissionsModule;->getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 217
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "E_INVALID_ACTIVITY"

    .line 220
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
