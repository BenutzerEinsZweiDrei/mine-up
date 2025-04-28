.class Lnet/time4j/SystemClock$StdTickProvider;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lnet/time4j/scale/TickProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/SystemClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StdTickProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/SystemClock$1;)V
    .locals 0

    .line 498
    invoke-direct {p0}, Lnet/time4j/SystemClock$StdTickProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNanos()J
    .locals 2

    .line 513
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
