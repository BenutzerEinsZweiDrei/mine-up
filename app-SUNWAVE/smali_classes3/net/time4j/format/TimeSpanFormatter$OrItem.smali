.class Lnet/time4j/format/TimeSpanFormatter$OrItem;
.super Lnet/time4j/format/TimeSpanFormatter$FormatItem;
.source "TimeSpanFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/TimeSpanFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
        "TU;>;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1081
    new-instance v0, Lnet/time4j/format/TimeSpanFormatter$OrItem;

    invoke-direct {v0}, Lnet/time4j/format/TimeSpanFormatter$OrItem;-><init>()V

    sput-object v0, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1086
    invoke-direct {p0, v0}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;-><init>(I)V

    return-void
.end method

.method static getInstance()Lnet/time4j/format/TimeSpanFormatter$FormatItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;"
        }
    .end annotation

    .line 1095
    sget-object v0, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    return-object v0
.end method


# virtual methods
.method getMinWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method parse(Ljava/util/Map;Ljava/lang/CharSequence;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)I"
        }
    .end annotation

    return p3
.end method

.method print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "-TU;>;",
            "Ljava/lang/Appendable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method update(I)Lnet/time4j/format/TimeSpanFormatter$FormatItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;"
        }
    .end annotation

    return-object p0
.end method
