.class synthetic Lnet/time4j/MachineTime$1;
.super Ljava/lang/Object;
.source "MachineTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/MachineTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$util$concurrent$TimeUnit:[I

.field static final synthetic $SwitchMap$net$time4j$SI:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1526
    invoke-static {}, Ljava/util/concurrent/TimeUnit;->values()[Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/time4j/MachineTime$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lnet/time4j/MachineTime$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lnet/time4j/MachineTime$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lnet/time4j/MachineTime$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 235
    :catch_3
    invoke-static {}, Lnet/time4j/SI;->values()[Lnet/time4j/SI;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lnet/time4j/MachineTime$1;->$SwitchMap$net$time4j$SI:[I

    :try_start_4
    sget-object v3, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    invoke-virtual {v3}, Lnet/time4j/SI;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lnet/time4j/MachineTime$1;->$SwitchMap$net$time4j$SI:[I

    sget-object v2, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    invoke-virtual {v2}, Lnet/time4j/SI;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
