.class public Lorg/wonday/orientation/OrientationActivityLifecycle;
.super Ljava/lang/Object;
.source "OrientationActivityLifecycle.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "OrientationModule"

.field private static activeCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static instance:Lorg/wonday/orientation/OrientationActivityLifecycle;


# instance fields
.field private orientationListeners:Lorg/wonday/orientation/OrientationListeners;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/wonday/orientation/OrientationActivityLifecycle;->activeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/wonday/orientation/OrientationActivityLifecycle;
    .locals 1

    .line 18
    sget-object v0, Lorg/wonday/orientation/OrientationActivityLifecycle;->instance:Lorg/wonday/orientation/OrientationActivityLifecycle;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lorg/wonday/orientation/OrientationActivityLifecycle;

    invoke-direct {v0}, Lorg/wonday/orientation/OrientationActivityLifecycle;-><init>()V

    sput-object v0, Lorg/wonday/orientation/OrientationActivityLifecycle;->instance:Lorg/wonday/orientation/OrientationActivityLifecycle;

    .line 21
    :cond_0
    sget-object v0, Lorg/wonday/orientation/OrientationActivityLifecycle;->instance:Lorg/wonday/orientation/OrientationActivityLifecycle;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "OrientationModule"

    const-string p2, "onActivityCreated"

    .line 36
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string p1, "OrientationModule"

    const-string v0, "onActivityDestroyed"

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object p1, Lorg/wonday/orientation/OrientationActivityLifecycle;->activeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lorg/wonday/orientation/OrientationActivityLifecycle;->orientationListeners:Lorg/wonday/orientation/OrientationListeners;

    if-eqz p1, :cond_0

    .line 81
    invoke-interface {p1}, Lorg/wonday/orientation/OrientationListeners;->release()V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string p1, "OrientationModule"

    const-string v0, "onActivityPaused"

    .line 57
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const-string p1, "OrientationModule"

    const-string v0, "onActivityResumed"

    .line 46
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v0, Lorg/wonday/orientation/OrientationActivityLifecycle;->activeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lorg/wonday/orientation/OrientationActivityLifecycle;->orientationListeners:Lorg/wonday/orientation/OrientationListeners;

    if-eqz v0, :cond_0

    const-string v0, "Start orientation"

    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lorg/wonday/orientation/OrientationActivityLifecycle;->orientationListeners:Lorg/wonday/orientation/OrientationListeners;

    invoke-interface {p1}, Lorg/wonday/orientation/OrientationListeners;->start()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "OrientationModule"

    const-string p2, "onActivitySaveInstanceState"

    .line 73
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string p1, "OrientationModule"

    const-string v0, "onActivityStarted"

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string p1, "OrientationModule"

    const-string v0, "onActivityStopped"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object p1, Lorg/wonday/orientation/OrientationActivityLifecycle;->activeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lorg/wonday/orientation/OrientationActivityLifecycle;->orientationListeners:Lorg/wonday/orientation/OrientationListeners;

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Lorg/wonday/orientation/OrientationListeners;->stop()V

    :cond_0
    return-void
.end method

.method public registerListeners(Lorg/wonday/orientation/OrientationListeners;)V
    .locals 1

    .line 27
    iput-object p1, p0, Lorg/wonday/orientation/OrientationActivityLifecycle;->orientationListeners:Lorg/wonday/orientation/OrientationListeners;

    .line 28
    sget-object p1, Lorg/wonday/orientation/OrientationActivityLifecycle;->activeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 30
    iget-object p1, p0, Lorg/wonday/orientation/OrientationActivityLifecycle;->orientationListeners:Lorg/wonday/orientation/OrientationListeners;

    invoke-interface {p1}, Lorg/wonday/orientation/OrientationListeners;->start()V

    :cond_0
    return-void
.end method
