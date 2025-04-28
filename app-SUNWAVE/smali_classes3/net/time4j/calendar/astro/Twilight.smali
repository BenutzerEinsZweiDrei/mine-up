.class public final enum Lnet/time4j/calendar/astro/Twilight;
.super Ljava/lang/Enum;
.source "Twilight.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/astro/Twilight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/astro/Twilight;

.field public static final enum ASTRONOMICAL:Lnet/time4j/calendar/astro/Twilight;

.field public static final enum BLUE_HOUR:Lnet/time4j/calendar/astro/Twilight;

.field public static final enum CIVIL:Lnet/time4j/calendar/astro/Twilight;

.field public static final enum NAUTICAL:Lnet/time4j/calendar/astro/Twilight;


# instance fields
.field private final transient angle:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 57
    new-instance v0, Lnet/time4j/calendar/astro/Twilight;

    const-string v1, "BLUE_HOUR"

    const/4 v2, 0x0

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/astro/Twilight;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lnet/time4j/calendar/astro/Twilight;->BLUE_HOUR:Lnet/time4j/calendar/astro/Twilight;

    .line 65
    new-instance v1, Lnet/time4j/calendar/astro/Twilight;

    const-string v3, "CIVIL"

    const/4 v4, 0x1

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    invoke-direct {v1, v3, v4, v5, v6}, Lnet/time4j/calendar/astro/Twilight;-><init>(Ljava/lang/String;ID)V

    sput-object v1, Lnet/time4j/calendar/astro/Twilight;->CIVIL:Lnet/time4j/calendar/astro/Twilight;

    .line 73
    new-instance v3, Lnet/time4j/calendar/astro/Twilight;

    const-string v5, "NAUTICAL"

    const/4 v6, 0x2

    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    invoke-direct {v3, v5, v6, v7, v8}, Lnet/time4j/calendar/astro/Twilight;-><init>(Ljava/lang/String;ID)V

    sput-object v3, Lnet/time4j/calendar/astro/Twilight;->NAUTICAL:Lnet/time4j/calendar/astro/Twilight;

    .line 85
    new-instance v5, Lnet/time4j/calendar/astro/Twilight;

    const-string v7, "ASTRONOMICAL"

    const/4 v8, 0x3

    const-wide/high16 v9, 0x4032000000000000L    # 18.0

    invoke-direct {v5, v7, v8, v9, v10}, Lnet/time4j/calendar/astro/Twilight;-><init>(Ljava/lang/String;ID)V

    sput-object v5, Lnet/time4j/calendar/astro/Twilight;->ASTRONOMICAL:Lnet/time4j/calendar/astro/Twilight;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/time4j/calendar/astro/Twilight;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 39
    sput-object v7, Lnet/time4j/calendar/astro/Twilight;->$VALUES:[Lnet/time4j/calendar/astro/Twilight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-wide p3, p0, Lnet/time4j/calendar/astro/Twilight;->angle:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/astro/Twilight;
    .locals 1

    .line 39
    const-class v0, Lnet/time4j/calendar/astro/Twilight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/astro/Twilight;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/astro/Twilight;
    .locals 1

    .line 39
    sget-object v0, Lnet/time4j/calendar/astro/Twilight;->$VALUES:[Lnet/time4j/calendar/astro/Twilight;

    invoke-virtual {v0}, [Lnet/time4j/calendar/astro/Twilight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/astro/Twilight;

    return-object v0
.end method


# virtual methods
.method getAngle()D
    .locals 2

    .line 111
    iget-wide v0, p0, Lnet/time4j/calendar/astro/Twilight;->angle:D

    return-wide v0
.end method
