.class public interface abstract Lnet/time4j/format/TextProvider;
.super Ljava/lang/Object;
.source "TextProvider.java"


# virtual methods
.method public abstract eras(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;)[Ljava/lang/String;
.end method

.method public abstract getAvailableLocales()[Ljava/util/Locale;
.end method

.method public abstract getSupportedCalendarTypes()[Ljava/lang/String;
.end method

.method public abstract meridiems(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
.end method

.method public abstract months(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)[Ljava/lang/String;
.end method

.method public abstract quarters(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
.end method

.method public abstract supportsCalendarType(Ljava/lang/String;)Z
.end method

.method public abstract supportsLanguage(Ljava/util/Locale;)Z
.end method

.method public abstract weekdays(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
.end method
