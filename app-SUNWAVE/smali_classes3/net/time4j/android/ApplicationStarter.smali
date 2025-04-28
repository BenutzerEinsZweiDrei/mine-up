.class public Lnet/time4j/android/ApplicationStarter;
.super Ljava/lang/Object;
.source "ApplicationStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/android/ApplicationStarter$StdPrefetch;,
        Lnet/time4j/android/ApplicationStarter$TimezoneChangedReceiver;
    }
.end annotation


# static fields
.field private static final PREPARED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final REGISTERED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final RELEASE_DAY:I = 0x1b

.field private static final RELEASE_MONTH:I = 0x3

.field private static final RELEASE_YEAR:I = 0x7e5

.field private static final TIME4A:Ljava/lang/String; = "TIME4A"

.field private static final VERSION:Ljava/lang/String; = "v4.8-2021a"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lnet/time4j/android/ApplicationStarter;->PREPARED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lnet/time4j/android/ApplicationStarter;->REGISTERED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, v0}, Lnet/time4j/android/ApplicationStarter;->initialize(Landroid/content/Context;Z)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4

    .line 163
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 165
    invoke-static {p0, v2}, Lnet/time4j/android/ApplicationStarter;->prepareAssets(Landroid/content/Context;Lnet/time4j/android/AssetLocation;)V

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lnet/time4j/android/ApplicationStarter;->registerReceiver(Landroid/content/Context;)V

    const/16 p0, 0x7e5

    const/4 v2, 0x3

    const/16 v3, 0x1b

    .line 169
    invoke-static {p0, v2, v3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p0

    .line 170
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting Time4A (v4.8-2021a published on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/PlainTimestamp;->toDate()Lnet/time4j/PlainDate;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TIME4A"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 174
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 177
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Main-Thread consumed in ms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initialize(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 120
    new-instance p1, Lnet/time4j/android/ApplicationStarter$StdPrefetch;

    invoke-direct {p1, v0}, Lnet/time4j/android/ApplicationStarter$StdPrefetch;-><init>(Lnet/time4j/android/ApplicationStarter$1;)V

    move-object v0, p1

    :cond_0
    invoke-static {p0, v0}, Lnet/time4j/android/ApplicationStarter;->initialize(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static prepareAssets(Landroid/content/Context;Lnet/time4j/android/AssetLocation;)V
    .locals 2

    .line 207
    sget-object v0, Lnet/time4j/android/ApplicationStarter;->PREPARED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "net.time4j.base.ResourceLoader"

    const-string v1, "net.time4j.android.spi.AndroidResourceLoader"

    .line 208
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v0

    check-cast v0, Lnet/time4j/android/spi/AndroidResourceLoader;

    invoke-virtual {v0, p0, p1}, Lnet/time4j/android/spi/AndroidResourceLoader;->init(Landroid/content/Context;Lnet/time4j/android/AssetLocation;)V

    :cond_0
    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 236
    sget-object v0, Lnet/time4j/android/ApplicationStarter;->REGISTERED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "net.time4j.allow.system.tz.override"

    const-string v1, "true"

    .line 237
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    new-instance v0, Lnet/time4j/android/ApplicationStarter$TimezoneChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/android/ApplicationStarter$TimezoneChangedReceiver;-><init>(Lnet/time4j/android/ApplicationStarter$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
