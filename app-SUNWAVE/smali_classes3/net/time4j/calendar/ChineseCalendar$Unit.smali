.class public final enum Lnet/time4j/calendar/ChineseCalendar$Unit;
.super Ljava/lang/Enum;
.source "ChineseCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/ChineseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/ChineseCalendar$Unit;",
        ">;",
        "Lnet/time4j/engine/ChronoUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/ChineseCalendar$Unit;

.field public static final enum CYCLES:Lnet/time4j/calendar/ChineseCalendar$Unit;

.field public static final enum DAYS:Lnet/time4j/calendar/ChineseCalendar$Unit;

.field public static final enum MONTHS:Lnet/time4j/calendar/ChineseCalendar$Unit;

.field public static final enum WEEKS:Lnet/time4j/calendar/ChineseCalendar$Unit;

.field public static final enum YEARS:Lnet/time4j/calendar/ChineseCalendar$Unit;


# instance fields
.field private final transient length:D


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 896
    new-instance v0, Lnet/time4j/calendar/ChineseCalendar$Unit;

    const-string v1, "CYCLES"

    const/4 v2, 0x0

    const-wide v3, 0x41dc36ce94f1a9fcL    # 1.893415507776E9

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/ChineseCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lnet/time4j/calendar/ChineseCalendar$Unit;->CYCLES:Lnet/time4j/calendar/ChineseCalendar$Unit;

    .line 898
    new-instance v1, Lnet/time4j/calendar/ChineseCalendar$Unit;

    const-string v3, "YEARS"

    const/4 v4, 0x1

    const-wide v5, 0x417e1853d212d773L    # 3.15569251296E7

    invoke-direct {v1, v3, v4, v5, v6}, Lnet/time4j/calendar/ChineseCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v1, Lnet/time4j/calendar/ChineseCalendar$Unit;->YEARS:Lnet/time4j/calendar/ChineseCalendar$Unit;

    .line 900
    new-instance v3, Lnet/time4j/calendar/ChineseCalendar$Unit;

    const-string v5, "MONTHS"

    const/4 v6, 0x2

    const-wide v7, 0x414377497054e1d9L    # 2551442.8775903997

    invoke-direct {v3, v5, v6, v7, v8}, Lnet/time4j/calendar/ChineseCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v3, Lnet/time4j/calendar/ChineseCalendar$Unit;->MONTHS:Lnet/time4j/calendar/ChineseCalendar$Unit;

    .line 902
    new-instance v5, Lnet/time4j/calendar/ChineseCalendar$Unit;

    const-string v7, "WEEKS"

    const/4 v8, 0x3

    const-wide v9, 0x4122750000000000L    # 604800.0

    invoke-direct {v5, v7, v8, v9, v10}, Lnet/time4j/calendar/ChineseCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v5, Lnet/time4j/calendar/ChineseCalendar$Unit;->WEEKS:Lnet/time4j/calendar/ChineseCalendar$Unit;

    .line 904
    new-instance v7, Lnet/time4j/calendar/ChineseCalendar$Unit;

    const-string v9, "DAYS"

    const/4 v10, 0x4

    const-wide v11, 0x40f5180000000000L    # 86400.0

    invoke-direct {v7, v9, v10, v11, v12}, Lnet/time4j/calendar/ChineseCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v7, Lnet/time4j/calendar/ChineseCalendar$Unit;->DAYS:Lnet/time4j/calendar/ChineseCalendar$Unit;

    const/4 v9, 0x5

    new-array v9, v9, [Lnet/time4j/calendar/ChineseCalendar$Unit;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 891
    sput-object v9, Lnet/time4j/calendar/ChineseCalendar$Unit;->$VALUES:[Lnet/time4j/calendar/ChineseCalendar$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 912
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 913
    iput-wide p3, p0, Lnet/time4j/calendar/ChineseCalendar$Unit;->length:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/ChineseCalendar$Unit;
    .locals 1

    .line 891
    const-class v0, Lnet/time4j/calendar/ChineseCalendar$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/ChineseCalendar$Unit;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/ChineseCalendar$Unit;
    .locals 1

    .line 891
    sget-object v0, Lnet/time4j/calendar/ChineseCalendar$Unit;->$VALUES:[Lnet/time4j/calendar/ChineseCalendar$Unit;

    invoke-virtual {v0}, [Lnet/time4j/calendar/ChineseCalendar$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/ChineseCalendar$Unit;

    return-object v0
.end method


# virtual methods
.method public between(Lnet/time4j/calendar/ChineseCalendar;Lnet/time4j/calendar/ChineseCalendar;)I
    .locals 0

    .line 951
    invoke-virtual {p1, p2, p0}, Lnet/time4j/calendar/ChineseCalendar;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public getLength()D
    .locals 2

    .line 921
    iget-wide v0, p0, Lnet/time4j/calendar/ChineseCalendar$Unit;->length:D

    return-wide v0
.end method

.method public isCalendrical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
