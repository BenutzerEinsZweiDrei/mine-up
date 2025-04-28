.class Lnet/time4j/format/expert/ChronoFormatter$Builder$1;
.super Ljava/lang/Object;
.source "ChronoFormatter.java"

# interfaces
.implements Lnet/time4j/engine/ChronoCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/format/expert/ChronoFormatter$Builder;->startOptionalSection(Lnet/time4j/engine/ChronoCondition;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
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
.field final synthetic this$0:Lnet/time4j/format/expert/ChronoFormatter$Builder;

.field final synthetic val$old:Lnet/time4j/engine/ChronoCondition;

.field final synthetic val$printCondition:Lnet/time4j/engine/ChronoCondition;


# direct methods
.method constructor <init>(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/ChronoCondition;Lnet/time4j/engine/ChronoCondition;)V
    .locals 0

    .line 6228
    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder$1;->this$0:Lnet/time4j/format/expert/ChronoFormatter$Builder;

    iput-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder$1;->val$old:Lnet/time4j/engine/ChronoCondition;

    iput-object p3, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder$1;->val$printCondition:Lnet/time4j/engine/ChronoCondition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 6228
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder$1;->test(Lnet/time4j/engine/ChronoDisplay;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/engine/ChronoDisplay;)Z
    .locals 1

    .line 6231
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder$1;->val$old:Lnet/time4j/engine/ChronoCondition;

    .line 6232
    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoCondition;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder$1;->val$printCondition:Lnet/time4j/engine/ChronoCondition;

    .line 6233
    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoCondition;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
