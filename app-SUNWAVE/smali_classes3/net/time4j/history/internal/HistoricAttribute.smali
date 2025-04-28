.class public final Lnet/time4j/history/internal/HistoricAttribute;
.super Ljava/lang/Object;
.source "HistoricAttribute.java"


# static fields
.field public static final CALENDAR_HISTORY:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/history/ChronoHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMMON_ERA:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LATIN_ERA:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-class v0, Lnet/time4j/history/ChronoHistory;

    const-string v1, "CALENDAR_HISTORY"

    .line 62
    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/history/internal/HistoricAttribute;->CALENDAR_HISTORY:Lnet/time4j/engine/AttributeKey;

    .line 82
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "COMMON_ERA"

    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/history/internal/HistoricAttribute;->COMMON_ERA:Lnet/time4j/engine/AttributeKey;

    .line 101
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "LATIN_ERA"

    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/history/internal/HistoricAttribute;->LATIN_ERA:Lnet/time4j/engine/AttributeKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
