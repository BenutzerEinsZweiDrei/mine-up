.class public abstract Lnet/time4j/sql/JDBCAdapter;
.super Lnet/time4j/TemporalType;
.source "JDBCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/sql/JDBCAdapter$SqlMomentRule;,
        Lnet/time4j/sql/JDBCAdapter$SqlTimestampRule;,
        Lnet/time4j/sql/JDBCAdapter$SqlTimeRule;,
        Lnet/time4j/sql/JDBCAdapter$SqlDateRule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/time4j/TemporalType<",
        "TS;TT;>;"
    }
.end annotation


# static fields
.field public static final SQL_DATE:Lnet/time4j/sql/JDBCAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/sql/JDBCAdapter<",
            "Ljava/sql/Date;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final SQL_TIME:Lnet/time4j/sql/JDBCAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/sql/JDBCAdapter<",
            "Ljava/sql/Time;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final SQL_TIMESTAMP:Lnet/time4j/sql/JDBCAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/sql/JDBCAdapter<",
            "Ljava/sql/Timestamp;",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation
.end field

.field public static final SQL_TIMESTAMP_WITH_ZONE:Lnet/time4j/sql/JDBCAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/sql/JDBCAdapter<",
            "Ljava/sql/Timestamp;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNIX_DATE:Lnet/time4j/PlainDate;

.field private static final WITH_SQL_UTC_CONVERSION:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "net.time4j.sql.utc.conversion"

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lnet/time4j/sql/JDBCAdapter;->WITH_SQL_UTC_CONVERSION:Z

    .line 66
    sget-object v0, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v0

    sput-object v0, Lnet/time4j/sql/JDBCAdapter;->UNIX_DATE:Lnet/time4j/PlainDate;

    .line 131
    new-instance v0, Lnet/time4j/sql/JDBCAdapter$SqlDateRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/sql/JDBCAdapter$SqlDateRule;-><init>(Lnet/time4j/sql/JDBCAdapter$1;)V

    sput-object v0, Lnet/time4j/sql/JDBCAdapter;->SQL_DATE:Lnet/time4j/sql/JDBCAdapter;

    .line 191
    new-instance v0, Lnet/time4j/sql/JDBCAdapter$SqlTimeRule;

    invoke-direct {v0, v1}, Lnet/time4j/sql/JDBCAdapter$SqlTimeRule;-><init>(Lnet/time4j/sql/JDBCAdapter$1;)V

    sput-object v0, Lnet/time4j/sql/JDBCAdapter;->SQL_TIME:Lnet/time4j/sql/JDBCAdapter;

    .line 238
    new-instance v0, Lnet/time4j/sql/JDBCAdapter$SqlTimestampRule;

    invoke-direct {v0, v1}, Lnet/time4j/sql/JDBCAdapter$SqlTimestampRule;-><init>(Lnet/time4j/sql/JDBCAdapter$1;)V

    sput-object v0, Lnet/time4j/sql/JDBCAdapter;->SQL_TIMESTAMP:Lnet/time4j/sql/JDBCAdapter;

    .line 261
    new-instance v0, Lnet/time4j/sql/JDBCAdapter$SqlMomentRule;

    invoke-direct {v0, v1}, Lnet/time4j/sql/JDBCAdapter$SqlMomentRule;-><init>(Lnet/time4j/sql/JDBCAdapter$1;)V

    sput-object v0, Lnet/time4j/sql/JDBCAdapter;->SQL_TIMESTAMP_WITH_ZONE:Lnet/time4j/sql/JDBCAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Lnet/time4j/TemporalType;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/sql/JDBCAdapter$1;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lnet/time4j/sql/JDBCAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 59
    sget-boolean v0, Lnet/time4j/sql/JDBCAdapter;->WITH_SQL_UTC_CONVERSION:Z

    return v0
.end method

.method static synthetic access$600()Lnet/time4j/PlainDate;
    .locals 1

    .line 59
    sget-object v0, Lnet/time4j/sql/JDBCAdapter;->UNIX_DATE:Lnet/time4j/PlainDate;

    return-object v0
.end method
