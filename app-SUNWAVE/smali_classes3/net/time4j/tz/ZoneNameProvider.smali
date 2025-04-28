.class public interface abstract Lnet/time4j/tz/ZoneNameProvider;
.super Ljava/lang/Object;
.source "ZoneNameProvider.java"


# virtual methods
.method public abstract getDisplayName(Ljava/lang/String;Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getPreferredIDs(Ljava/util/Locale;Z)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStdFormatPattern(ZLjava/util/Locale;)Ljava/lang/String;
.end method
