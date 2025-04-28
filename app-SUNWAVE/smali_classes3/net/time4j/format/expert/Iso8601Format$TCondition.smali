.class Lnet/time4j/format/expert/Iso8601Format$TCondition;
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
    name = "TCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoCondition<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/format/expert/Iso8601Format$1;)V
    .locals 0

    .line 765
    invoke-direct {p0}, Lnet/time4j/format/expert/Iso8601Format$TCondition;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Character;)Z
    .locals 1

    .line 773
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 765
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/Iso8601Format$TCondition;->test(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method
