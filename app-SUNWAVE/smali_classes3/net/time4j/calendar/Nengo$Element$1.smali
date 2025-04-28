.class Lnet/time4j/calendar/Nengo$Element$1;
.super Ljava/lang/Object;
.source "Nengo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/Nengo$Element;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/Nengo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/time4j/calendar/Nengo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/calendar/Nengo$Element;


# direct methods
.method constructor <init>(Lnet/time4j/calendar/Nengo$Element;)V
    .locals 0

    .line 1536
    iput-object p1, p0, Lnet/time4j/calendar/Nengo$Element$1;->this$0:Lnet/time4j/calendar/Nengo$Element;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1536
    check-cast p1, Lnet/time4j/calendar/Nengo;

    check-cast p2, Lnet/time4j/calendar/Nengo;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/Nengo$Element$1;->compare(Lnet/time4j/calendar/Nengo;Lnet/time4j/calendar/Nengo;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/calendar/Nengo;Lnet/time4j/calendar/Nengo;)I
    .locals 4

    .line 1539
    invoke-static {p1}, Lnet/time4j/calendar/Nengo;->access$1300(Lnet/time4j/calendar/Nengo;)J

    move-result-wide v0

    invoke-static {p2}, Lnet/time4j/calendar/Nengo;->access$1300(Lnet/time4j/calendar/Nengo;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/Nengo;->access$1300(Lnet/time4j/calendar/Nengo;)J

    move-result-wide v0

    invoke-static {p2}, Lnet/time4j/calendar/Nengo;->access$1300(Lnet/time4j/calendar/Nengo;)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
