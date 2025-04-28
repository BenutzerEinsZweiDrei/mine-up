.class public final enum Lnet/time4j/calendar/JulianCalendar$Unit;
.super Ljava/lang/Enum;
.source "JulianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JulianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/JulianCalendar$Unit;",
        ">;",
        "Lnet/time4j/engine/ChronoUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/JulianCalendar$Unit;

.field public static final enum DAYS:Lnet/time4j/calendar/JulianCalendar$Unit;

.field public static final enum MONTHS:Lnet/time4j/calendar/JulianCalendar$Unit;

.field public static final enum WEEKS:Lnet/time4j/calendar/JulianCalendar$Unit;

.field public static final enum YEARS:Lnet/time4j/calendar/JulianCalendar$Unit;


# instance fields
.field private final transient length:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 923
    new-instance v0, Lnet/time4j/calendar/JulianCalendar$Unit;

    const-string v1, "YEARS"

    const/4 v2, 0x0

    const-wide v3, 0x417e187e00000000L    # 3.15576E7

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/JulianCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lnet/time4j/calendar/JulianCalendar$Unit;->YEARS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 925
    new-instance v1, Lnet/time4j/calendar/JulianCalendar$Unit;

    const-string v3, "MONTHS"

    const/4 v4, 0x1

    const-wide v5, 0x4144105400000000L    # 2629800.0

    invoke-direct {v1, v3, v4, v5, v6}, Lnet/time4j/calendar/JulianCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 927
    new-instance v3, Lnet/time4j/calendar/JulianCalendar$Unit;

    const-string v5, "WEEKS"

    const/4 v6, 0x2

    const-wide v7, 0x4122750000000000L    # 604800.0

    invoke-direct {v3, v5, v6, v7, v8}, Lnet/time4j/calendar/JulianCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v3, Lnet/time4j/calendar/JulianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 929
    new-instance v5, Lnet/time4j/calendar/JulianCalendar$Unit;

    const-string v7, "DAYS"

    const/4 v8, 0x3

    const-wide v9, 0x40f5180000000000L    # 86400.0

    invoke-direct {v5, v7, v8, v9, v10}, Lnet/time4j/calendar/JulianCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v5, Lnet/time4j/calendar/JulianCalendar$Unit;->DAYS:Lnet/time4j/calendar/JulianCalendar$Unit;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/time4j/calendar/JulianCalendar$Unit;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 918
    sput-object v7, Lnet/time4j/calendar/JulianCalendar$Unit;->$VALUES:[Lnet/time4j/calendar/JulianCalendar$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 937
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 938
    iput-wide p3, p0, Lnet/time4j/calendar/JulianCalendar$Unit;->length:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/JulianCalendar$Unit;
    .locals 1

    .line 918
    const-class v0, Lnet/time4j/calendar/JulianCalendar$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/JulianCalendar$Unit;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/JulianCalendar$Unit;
    .locals 1

    .line 918
    sget-object v0, Lnet/time4j/calendar/JulianCalendar$Unit;->$VALUES:[Lnet/time4j/calendar/JulianCalendar$Unit;

    invoke-virtual {v0}, [Lnet/time4j/calendar/JulianCalendar$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/JulianCalendar$Unit;

    return-object v0
.end method


# virtual methods
.method public between(Lnet/time4j/calendar/JulianCalendar;Lnet/time4j/calendar/JulianCalendar;)I
    .locals 0

    .line 987
    invoke-virtual {p1, p2, p0}, Lnet/time4j/calendar/JulianCalendar;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p1

    return p1
.end method

.method public getLength()D
    .locals 2

    .line 946
    iget-wide v0, p0, Lnet/time4j/calendar/JulianCalendar$Unit;->length:D

    return-wide v0
.end method

.method public isCalendrical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
