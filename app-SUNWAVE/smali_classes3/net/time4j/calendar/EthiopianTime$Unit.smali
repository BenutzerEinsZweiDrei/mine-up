.class public final enum Lnet/time4j/calendar/EthiopianTime$Unit;
.super Ljava/lang/Enum;
.source "EthiopianTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EthiopianTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/EthiopianTime$Unit;",
        ">;",
        "Lnet/time4j/engine/ChronoUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/EthiopianTime$Unit;

.field public static final enum HOURS:Lnet/time4j/calendar/EthiopianTime$Unit;

.field public static final enum MINUTES:Lnet/time4j/calendar/EthiopianTime$Unit;

.field public static final enum SECONDS:Lnet/time4j/calendar/EthiopianTime$Unit;


# instance fields
.field private final transient length:D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1051
    new-instance v0, Lnet/time4j/calendar/EthiopianTime$Unit;

    const-string v1, "HOURS"

    const/4 v2, 0x0

    const-wide v3, 0x40ac200000000000L    # 3600.0

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/EthiopianTime$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lnet/time4j/calendar/EthiopianTime$Unit;->HOURS:Lnet/time4j/calendar/EthiopianTime$Unit;

    .line 1053
    new-instance v1, Lnet/time4j/calendar/EthiopianTime$Unit;

    const-string v3, "MINUTES"

    const/4 v4, 0x1

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    invoke-direct {v1, v3, v4, v5, v6}, Lnet/time4j/calendar/EthiopianTime$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v1, Lnet/time4j/calendar/EthiopianTime$Unit;->MINUTES:Lnet/time4j/calendar/EthiopianTime$Unit;

    .line 1055
    new-instance v3, Lnet/time4j/calendar/EthiopianTime$Unit;

    const-string v5, "SECONDS"

    const/4 v6, 0x2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v5, v6, v7, v8}, Lnet/time4j/calendar/EthiopianTime$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v3, Lnet/time4j/calendar/EthiopianTime$Unit;->SECONDS:Lnet/time4j/calendar/EthiopianTime$Unit;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/time4j/calendar/EthiopianTime$Unit;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1046
    sput-object v5, Lnet/time4j/calendar/EthiopianTime$Unit;->$VALUES:[Lnet/time4j/calendar/EthiopianTime$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 1063
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1064
    iput-wide p3, p0, Lnet/time4j/calendar/EthiopianTime$Unit;->length:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/EthiopianTime$Unit;
    .locals 1

    .line 1046
    const-class v0, Lnet/time4j/calendar/EthiopianTime$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/EthiopianTime$Unit;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/EthiopianTime$Unit;
    .locals 1

    .line 1046
    sget-object v0, Lnet/time4j/calendar/EthiopianTime$Unit;->$VALUES:[Lnet/time4j/calendar/EthiopianTime$Unit;

    invoke-virtual {v0}, [Lnet/time4j/calendar/EthiopianTime$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/EthiopianTime$Unit;

    return-object v0
.end method


# virtual methods
.method public between(Lnet/time4j/calendar/EthiopianTime;Lnet/time4j/calendar/EthiopianTime;)I
    .locals 0

    .line 1104
    invoke-virtual {p1, p2, p0}, Lnet/time4j/calendar/EthiopianTime;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public getLength()D
    .locals 2

    .line 1072
    iget-wide v0, p0, Lnet/time4j/calendar/EthiopianTime$Unit;->length:D

    return-wide v0
.end method

.method public isCalendrical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
