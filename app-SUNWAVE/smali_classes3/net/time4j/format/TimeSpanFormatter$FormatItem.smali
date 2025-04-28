.class abstract Lnet/time4j/format/TimeSpanFormatter$FormatItem;
.super Ljava/lang/Object;
.source "TimeSpanFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/TimeSpanFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FormatItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final reserved:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput p1, p0, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->reserved:I

    return-void
.end method


# virtual methods
.method abstract getMinWidth()I
.end method

.method getReserved()I
    .locals 1

    .line 604
    iget v0, p0, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->reserved:I

    return v0
.end method

.method isZero(Lnet/time4j/engine/TimeSpan;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "-TU;>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method abstract parse(Ljava/util/Map;Ljava/lang/CharSequence;I)I
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
.end method

.method abstract print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V
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
.end method

.method abstract update(I)Lnet/time4j/format/TimeSpanFormatter$FormatItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;"
        }
    .end annotation
.end method
