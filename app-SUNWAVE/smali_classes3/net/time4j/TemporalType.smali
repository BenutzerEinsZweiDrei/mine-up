.class public abstract Lnet/time4j/TemporalType;
.super Ljava/lang/Object;
.source "TemporalType.java"

# interfaces
.implements Lnet/time4j/engine/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/TemporalType$ZoneRule;,
        Lnet/time4j/TemporalType$CalendarRule;,
        Lnet/time4j/TemporalType$MillisSinceUnixRule;,
        Lnet/time4j/TemporalType$JavaUtilDateRule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/Converter<",
        "TS;TT;>;"
    }
.end annotation


# static fields
.field public static final JAVA_UTIL_CALENDAR:Lnet/time4j/TemporalType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/TemporalType<",
            "Ljava/util/Calendar;",
            "Lnet/time4j/ZonalDateTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final JAVA_UTIL_DATE:Lnet/time4j/TemporalType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/TemporalType<",
            "Ljava/util/Date;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation
.end field

.field public static final JAVA_UTIL_TIMEZONE:Lnet/time4j/TemporalType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/TemporalType<",
            "Ljava/util/TimeZone;",
            "Lnet/time4j/tz/Timezone;",
            ">;"
        }
    .end annotation
.end field

.field private static final JUT_PROVIDER:Ljava/lang/String; = "java.util.TimeZone~"

.field public static final MILLIS_SINCE_UNIX:Lnet/time4j/TemporalType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/TemporalType<",
            "Ljava/lang/Long;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIO:I = 0xf4240


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 99
    new-instance v0, Lnet/time4j/TemporalType$JavaUtilDateRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/TemporalType$JavaUtilDateRule;-><init>(Lnet/time4j/TemporalType$1;)V

    sput-object v0, Lnet/time4j/TemporalType;->JAVA_UTIL_DATE:Lnet/time4j/TemporalType;

    .line 137
    new-instance v0, Lnet/time4j/TemporalType$MillisSinceUnixRule;

    invoke-direct {v0, v1}, Lnet/time4j/TemporalType$MillisSinceUnixRule;-><init>(Lnet/time4j/TemporalType$1;)V

    sput-object v0, Lnet/time4j/TemporalType;->MILLIS_SINCE_UNIX:Lnet/time4j/TemporalType;

    .line 160
    new-instance v0, Lnet/time4j/TemporalType$CalendarRule;

    invoke-direct {v0, v1}, Lnet/time4j/TemporalType$CalendarRule;-><init>(Lnet/time4j/TemporalType$1;)V

    sput-object v0, Lnet/time4j/TemporalType;->JAVA_UTIL_CALENDAR:Lnet/time4j/TemporalType;

    .line 178
    new-instance v0, Lnet/time4j/TemporalType$ZoneRule;

    invoke-direct {v0, v1}, Lnet/time4j/TemporalType$ZoneRule;-><init>(Lnet/time4j/TemporalType$1;)V

    sput-object v0, Lnet/time4j/TemporalType;->JAVA_UTIL_TIMEZONE:Lnet/time4j/TemporalType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract from(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TS;"
        }
    .end annotation
.end method

.method public abstract translate(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation
.end method
