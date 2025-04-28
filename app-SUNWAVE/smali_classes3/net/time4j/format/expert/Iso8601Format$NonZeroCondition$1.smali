.class Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition$1;
.super Ljava/lang/Object;
.source "Iso8601Format.java"

# interfaces
.implements Lnet/time4j/engine/ChronoCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;->or(Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;)Lnet/time4j/engine/ChronoCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;

.field final synthetic val$other:Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;


# direct methods
.method constructor <init>(Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition$1;->this$0:Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;

    iput-object p2, p0, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition$1;->val$other:Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 751
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition$1;->test(Lnet/time4j/engine/ChronoDisplay;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/engine/ChronoDisplay;)Z
    .locals 1

    .line 754
    iget-object v0, p0, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition$1;->this$0:Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;

    .line 755
    invoke-virtual {v0, p1}, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;->test(Lnet/time4j/engine/ChronoDisplay;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition$1;->val$other:Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;

    .line 756
    invoke-virtual {v0, p1}, Lnet/time4j/format/expert/Iso8601Format$NonZeroCondition;->test(Lnet/time4j/engine/ChronoDisplay;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
