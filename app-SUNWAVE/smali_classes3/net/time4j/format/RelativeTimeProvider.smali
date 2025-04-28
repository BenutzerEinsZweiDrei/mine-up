.class public interface abstract Lnet/time4j/format/RelativeTimeProvider;
.super Ljava/lang/Object;
.source "RelativeTimeProvider.java"

# interfaces
.implements Lnet/time4j/format/UnitPatternProvider;


# virtual methods
.method public abstract getShortDayPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
.end method

.method public abstract getShortHourPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
.end method

.method public abstract getShortMinutePattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
.end method

.method public abstract getShortMonthPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
.end method

.method public abstract getShortSecondPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
.end method

.method public abstract getShortWeekPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
.end method

.method public abstract getShortYearPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
.end method

.method public abstract getTodayWord(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getTomorrowWord(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getYesterdayWord(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract labelForLast(Lnet/time4j/Weekday;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract labelForNext(Lnet/time4j/Weekday;Ljava/util/Locale;)Ljava/lang/String;
.end method
