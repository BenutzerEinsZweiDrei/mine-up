.class Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;
.super Ljava/lang/Object;
.source "Iso8601Format.java"

# interfaces
.implements Lnet/time4j/engine/ChronoCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/expert/Iso8601Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonZeroCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoCondition<",
        "Lnet/time4j/engine/ChronoDisplay;",
        ">;"
    }
.end annotation


# instance fields
.field private final element:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p1, p0, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;->element:Lnet/time4j/engine/ChronoElement;

    return-void
.end method


# virtual methods
.method or(Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;)Lnet/time4j/engine/ChronoCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;",
            ")",
            "Lnet/time4j/engine/ChronoCondition<",
            "Lnet/time4j/engine/ChronoDisplay;",
            ">;"
        }
    .end annotation

    .line 751
    new-instance v0, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition$1;

    invoke-direct {v0, p0, p1}, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition$1;-><init>(Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;)V

    return-object v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 724
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;->test(Lnet/time4j/engine/ChronoDisplay;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/engine/ChronoDisplay;)Z
    .locals 1

    .line 745
    iget-object v0, p0, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1, v0}, Lnet/time4j/engine/ChronoDisplay;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
