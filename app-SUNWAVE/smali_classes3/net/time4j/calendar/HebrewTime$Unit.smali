.class public final enum Lnet/time4j/calendar/HebrewTime$Unit;
.super Ljava/lang/Enum;
.source "HebrewTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/HebrewTime$Unit;",
        ">;",
        "Lnet/time4j/engine/ChronoUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/HebrewTime$Unit;

.field public static final enum HALAKIM:Lnet/time4j/calendar/HebrewTime$Unit;

.field public static final enum HOURS:Lnet/time4j/calendar/HebrewTime$Unit;


# instance fields
.field private final transient length:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 941
    new-instance v0, Lnet/time4j/calendar/HebrewTime$Unit;

    const-string v1, "HOURS"

    const/4 v2, 0x0

    const-wide v3, 0x40ac200000000000L    # 3600.0

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/HebrewTime$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lnet/time4j/calendar/HebrewTime$Unit;->HOURS:Lnet/time4j/calendar/HebrewTime$Unit;

    .line 943
    new-instance v1, Lnet/time4j/calendar/HebrewTime$Unit;

    const-string v3, "HALAKIM"

    const/4 v4, 0x1

    const-wide v5, 0x400aaaaaaaaaaaabL    # 3.3333333333333335

    invoke-direct {v1, v3, v4, v5, v6}, Lnet/time4j/calendar/HebrewTime$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v1, Lnet/time4j/calendar/HebrewTime$Unit;->HALAKIM:Lnet/time4j/calendar/HebrewTime$Unit;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/time4j/calendar/HebrewTime$Unit;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 936
    sput-object v3, Lnet/time4j/calendar/HebrewTime$Unit;->$VALUES:[Lnet/time4j/calendar/HebrewTime$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 951
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 952
    iput-wide p3, p0, Lnet/time4j/calendar/HebrewTime$Unit;->length:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/HebrewTime$Unit;
    .locals 1

    .line 936
    const-class v0, Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/HebrewTime$Unit;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/HebrewTime$Unit;
    .locals 1

    .line 936
    sget-object v0, Lnet/time4j/calendar/HebrewTime$Unit;->$VALUES:[Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-virtual {v0}, [Lnet/time4j/calendar/HebrewTime$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/HebrewTime$Unit;

    return-object v0
.end method


# virtual methods
.method public between(Lnet/time4j/calendar/HebrewTime;Lnet/time4j/calendar/HebrewTime;)I
    .locals 0

    .line 990
    invoke-virtual {p1, p2, p0}, Lnet/time4j/calendar/HebrewTime;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public getLength()D
    .locals 2

    .line 967
    iget-wide v0, p0, Lnet/time4j/calendar/HebrewTime$Unit;->length:D

    return-wide v0
.end method

.method public isCalendrical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
