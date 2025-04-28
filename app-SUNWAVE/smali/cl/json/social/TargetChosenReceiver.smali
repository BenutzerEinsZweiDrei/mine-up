.class public Lcl/json/social/TargetChosenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TargetChosenReceiver.java"


# static fields
.field private static final EXTRA_RECEIVER_TOKEN:Ljava/lang/String; = "receiver_token"

.field private static final LOCK:Ljava/lang/Object;

.field private static failureCallback:Lcom/facebook/react/bridge/Callback;

.field private static sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

.field private static sTargetChosenReceiveAction:Ljava/lang/String;

.field private static successCallback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcl/json/social/TargetChosenReceiver;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getSharingSenderIntent(Lcom/facebook/react/bridge/ReactContext;)Landroid/content/IntentSender;
    .locals 6

    .line 40
    const-class v0, Lcl/json/social/TargetChosenReceiver;

    sget-object v1, Lcl/json/social/TargetChosenReceiver;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v2, Lcl/json/social/TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcl/json/social/TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 45
    sget-object v3, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    :cond_1
    new-instance v3, Lcl/json/social/TargetChosenReceiver;

    invoke-direct {v3}, Lcl/json/social/TargetChosenReceiver;-><init>()V

    sput-object v3, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    .line 49
    new-instance v4, Landroid/content/IntentFilter;

    sget-object v5, Lcl/json/social/TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcl/json/social/TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "receiver_token"

    .line 55
    sget-object v2, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 57
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    const/high16 v2, 0x54000000

    goto :goto_0

    :cond_2
    const/high16 v2, 0x50000000

    .line 56
    :goto_0
    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 50
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static isSupported()Z
    .locals 2

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static registerCallbacks(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 34
    sput-object p0, Lcl/json/social/TargetChosenReceiver;->successCallback:Lcom/facebook/react/bridge/Callback;

    .line 35
    sput-object p1, Lcl/json/social/TargetChosenReceiver;->failureCallback:Lcom/facebook/react/bridge/Callback;

    return-void
.end method

.method public static varargs sendCallback(Z[Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 85
    sget-object p0, Lcl/json/social/TargetChosenReceiver;->successCallback:Lcom/facebook/react/bridge/Callback;

    if-eqz p0, :cond_1

    .line 86
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_0
    sget-object p0, Lcl/json/social/TargetChosenReceiver;->failureCallback:Lcom/facebook/react/bridge/Callback;

    if-eqz p0, :cond_1

    .line 89
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 91
    sput-object p0, Lcl/json/social/TargetChosenReceiver;->successCallback:Lcom/facebook/react/bridge/Callback;

    .line 92
    sput-object p0, Lcl/json/social/TargetChosenReceiver;->failureCallback:Lcom/facebook/react/bridge/Callback;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 66
    sget-object v0, Lcl/json/social/TargetChosenReceiver;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    if-eq v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 69
    sput-object p1, Lcl/json/social/TargetChosenReceiver;->sLastRegisteredReceiver:Lcl/json/social/TargetChosenReceiver;

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "receiver_token"

    .line 71
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "receiver_token"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "android.intent.extra.CHOSEN_COMPONENT"

    .line 75
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    const/4 p2, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    new-array p2, p2, [Ljava/lang/Object;

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {v1, p2}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array p1, p2, [Ljava/lang/Object;

    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "OK"

    aput-object p2, p1, v1

    invoke-static {v1, p1}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
