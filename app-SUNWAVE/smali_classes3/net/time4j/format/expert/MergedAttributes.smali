.class final Lnet/time4j/format/expert/MergedAttributes;
.super Ljava/lang/Object;
.source "MergedAttributes.java"

# interfaces
.implements Lnet/time4j/engine/AttributeQuery;


# instance fields
.field private final inner:Lnet/time4j/engine/AttributeQuery;

.field private final outer:Lnet/time4j/engine/AttributeQuery;


# direct methods
.method constructor <init>(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/AttributeQuery;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lnet/time4j/format/expert/MergedAttributes;->outer:Lnet/time4j/engine/AttributeQuery;

    .line 49
    iput-object p2, p0, Lnet/time4j/format/expert/MergedAttributes;->inner:Lnet/time4j/engine/AttributeQuery;

    return-void
.end method


# virtual methods
.method public contains(Lnet/time4j/engine/AttributeKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "*>;)Z"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lnet/time4j/format/expert/MergedAttributes;->outer:Lnet/time4j/engine/AttributeQuery;

    invoke-interface {v0, p1}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/time4j/format/expert/MergedAttributes;->inner:Lnet/time4j/engine/AttributeQuery;

    invoke-interface {v0, p1}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

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

.method public get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/AttributeKey<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lnet/time4j/format/expert/MergedAttributes;->outer:Lnet/time4j/engine/AttributeQuery;

    invoke-interface {v0, p1}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lnet/time4j/format/expert/MergedAttributes;->outer:Lnet/time4j/engine/AttributeQuery;

    invoke-interface {v0, p1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/MergedAttributes;->inner:Lnet/time4j/engine/AttributeQuery;

    invoke-interface {v0, p1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/AttributeKey<",
            "TA;>;TA;)TA;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lnet/time4j/format/expert/MergedAttributes;->outer:Lnet/time4j/engine/AttributeQuery;

    invoke-interface {v0, p1}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object p2, p0, Lnet/time4j/format/expert/MergedAttributes;->outer:Lnet/time4j/engine/AttributeQuery;

    invoke-interface {p2, p1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/MergedAttributes;->inner:Lnet/time4j/engine/AttributeQuery;

    invoke-interface {v0, p1, p2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
