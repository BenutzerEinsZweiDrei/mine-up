.class Lnet/time4j/android/spi/AndroidTickerSPI;
.super Ljava/lang/Object;
.source "AndroidTickerSPI.java"

# interfaces
.implements Lnet/time4j/scale/TickProvider;


# static fields
.field private static final ANDROID:Ljava/lang/reflect/Method;

.field private static final EMPTY_ARGS:[Ljava/lang/Object;

.field private static final EMPTY_PARAMS:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 40
    sput-object v1, Lnet/time4j/android/spi/AndroidTickerSPI;->EMPTY_PARAMS:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    sput-object v0, Lnet/time4j/android/spi/AndroidTickerSPI;->EMPTY_ARGS:[Ljava/lang/Object;

    const/4 v2, 0x0

    .line 48
    :try_start_0
    const-class v3, Landroid/os/SystemClock;

    const-string v4, "elapsedRealtimeNanos"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 59
    :catch_0
    sput-object v2, Lnet/time4j/android/spi/AndroidTickerSPI;->ANDROID:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNanos()J
    .locals 4

    .line 74
    sget-object v0, Lnet/time4j/android/spi/AndroidTickerSPI;->ANDROID:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 76
    :try_start_0
    sget-object v2, Lnet/time4j/android/spi/AndroidTickerSPI;->EMPTY_ARGS:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 80
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 78
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/IllegalAccessException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 84
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    const-string v0, "Dalvik"

    return-object v0
.end method
