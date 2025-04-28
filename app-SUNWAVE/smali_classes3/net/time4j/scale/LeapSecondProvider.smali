.class public interface abstract Lnet/time4j/scale/LeapSecondProvider;
.super Ljava/lang/Object;
.source "LeapSecondProvider.java"


# virtual methods
.method public abstract getDateOfEvent(III)Lnet/time4j/base/GregorianDate;
.end method

.method public abstract getDateOfExpiration()Lnet/time4j/base/GregorianDate;
.end method

.method public abstract getLeapSecondTable()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/time4j/base/GregorianDate;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract supportsNegativeLS()Z
.end method
