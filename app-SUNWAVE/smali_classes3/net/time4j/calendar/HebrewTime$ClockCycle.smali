.class public final enum Lnet/time4j/calendar/HebrewTime$ClockCycle;
.super Ljava/lang/Enum;
.source "HebrewTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClockCycle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/HebrewTime$ClockCycle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/HebrewTime$ClockCycle;

.field public static final enum DAY:Lnet/time4j/calendar/HebrewTime$ClockCycle;

.field public static final enum NIGHT:Lnet/time4j/calendar/HebrewTime$ClockCycle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 922
    new-instance v0, Lnet/time4j/calendar/HebrewTime$ClockCycle;

    const-string v1, "NIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/HebrewTime$ClockCycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/calendar/HebrewTime$ClockCycle;->NIGHT:Lnet/time4j/calendar/HebrewTime$ClockCycle;

    new-instance v1, Lnet/time4j/calendar/HebrewTime$ClockCycle;

    const-string v3, "DAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/calendar/HebrewTime$ClockCycle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/calendar/HebrewTime$ClockCycle;->DAY:Lnet/time4j/calendar/HebrewTime$ClockCycle;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/time4j/calendar/HebrewTime$ClockCycle;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 918
    sput-object v3, Lnet/time4j/calendar/HebrewTime$ClockCycle;->$VALUES:[Lnet/time4j/calendar/HebrewTime$ClockCycle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 918
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/HebrewTime$ClockCycle;
    .locals 1

    .line 918
    const-class v0, Lnet/time4j/calendar/HebrewTime$ClockCycle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/HebrewTime$ClockCycle;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/HebrewTime$ClockCycle;
    .locals 1

    .line 918
    sget-object v0, Lnet/time4j/calendar/HebrewTime$ClockCycle;->$VALUES:[Lnet/time4j/calendar/HebrewTime$ClockCycle;

    invoke-virtual {v0}, [Lnet/time4j/calendar/HebrewTime$ClockCycle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/HebrewTime$ClockCycle;

    return-object v0
.end method
