.class public interface abstract Lnet/time4j/engine/AttributeQuery;
.super Ljava/lang/Object;
.source "AttributeQuery.java"


# virtual methods
.method public abstract contains(Lnet/time4j/engine/AttributeKey;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/AttributeKey<",
            "TA;>;)TA;"
        }
    .end annotation
.end method

.method public abstract get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/AttributeKey<",
            "TA;>;TA;)TA;"
        }
    .end annotation
.end method
