.class public final Lnet/time4j/Duration$Formatter;
.super Lnet/time4j/format/TimeSpanFormatter;
.source "Duration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Formatter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lnet/time4j/IsoUnit;",
        ">",
        "Lnet/time4j/format/TimeSpanFormatter<",
        "TU;",
        "Lnet/time4j/Duration<",
        "TU;>;>;"
    }
.end annotation


# static fields
.field private static final JODA_PATTERN:Ljava/lang/String; = "\'P\'[-#################Y\'Y\'][-#################M\'M\'][-#################W\'W\'][-#################D\'D\'][\'T\'[-#################h\'H\'][-#################m\'M\'][-#################s\'S\'[.fffffffff]]]"


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4205
    invoke-direct {p0, p1, p2}, Lnet/time4j/format/TimeSpanFormatter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static ofJodaStyle()Lnet/time4j/Duration$Formatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 4239
    const-class v0, Lnet/time4j/IsoUnit;

    const-string v1, "\'P\'[-#################Y\'Y\'][-#################M\'M\'][-#################W\'W\'][-#################D\'D\'][\'T\'[-#################h\'H\'][-#################m\'M\'][-#################s\'S\'[.fffffffff]]]"

    invoke-static {v0, v1}, Lnet/time4j/Duration$Formatter;->ofPattern(Ljava/lang/Class;Ljava/lang/String;)Lnet/time4j/Duration$Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/Class;Ljava/lang/String;)Lnet/time4j/Duration$Formatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lnet/time4j/IsoUnit;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/Duration$Formatter<",
            "TU;>;"
        }
    .end annotation

    .line 4509
    new-instance v0, Lnet/time4j/Duration$Formatter;

    invoke-direct {v0, p0, p1}, Lnet/time4j/Duration$Formatter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;)Lnet/time4j/Duration$Formatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/Duration$Formatter<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 4263
    const-class v0, Lnet/time4j/IsoUnit;

    invoke-static {v0, p0}, Lnet/time4j/Duration$Formatter;->ofPattern(Ljava/lang/Class;Ljava/lang/String;)Lnet/time4j/Duration$Formatter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected convert(Ljava/util/Map;Z)Lnet/time4j/Duration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TU;",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .line 4516
    invoke-static {p1, p2}, Lnet/time4j/Duration;->access$500(Ljava/util/Map;Z)Lnet/time4j/Duration;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic convert(Ljava/util/Map;Z)Lnet/time4j/engine/TimeSpan;
    .locals 0

    .line 4190
    invoke-virtual {p0, p1, p2}, Lnet/time4j/Duration$Formatter;->convert(Ljava/util/Map;Z)Lnet/time4j/Duration;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getUnit(C)Ljava/lang/Object;
    .locals 0

    .line 4190
    invoke-virtual {p0, p1}, Lnet/time4j/Duration$Formatter;->getUnit(C)Lnet/time4j/IsoUnit;

    move-result-object p1

    return-object p1
.end method

.method protected getUnit(C)Lnet/time4j/IsoUnit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TU;"
        }
    .end annotation

    const/16 v0, 0x49

    if-eq p1, v0, :cond_8

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_7

    const/16 v0, 0x51

    if-eq p1, v0, :cond_6

    const/16 v0, 0x57

    if-eq p1, v0, :cond_5

    const/16 v0, 0x59

    if-eq p1, v0, :cond_4

    const/16 v0, 0x66

    if-eq p1, v0, :cond_3

    const/16 v0, 0x68

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x73

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 4564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported pattern symbol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4534
    :pswitch_0
    sget-object p1, Lnet/time4j/CalendarUnit;->DECADES:Lnet/time4j/CalendarUnit;

    goto :goto_0

    .line 4549
    :pswitch_1
    sget-object p1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    .line 4531
    :pswitch_2
    sget-object p1, Lnet/time4j/CalendarUnit;->CENTURIES:Lnet/time4j/CalendarUnit;

    goto :goto_0

    .line 4558
    :cond_0
    sget-object p1, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    goto :goto_0

    .line 4555
    :cond_1
    sget-object p1, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    goto :goto_0

    .line 4552
    :cond_2
    sget-object p1, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    goto :goto_0

    .line 4561
    :cond_3
    sget-object p1, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    goto :goto_0

    .line 4537
    :cond_4
    sget-object p1, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    .line 4546
    :cond_5
    sget-object p1, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    .line 4540
    :cond_6
    sget-object p1, Lnet/time4j/CalendarUnit;->QUARTERS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    .line 4543
    :cond_7
    sget-object p1, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    .line 4528
    :cond_8
    sget-object p1, Lnet/time4j/CalendarUnit;->MILLENNIA:Lnet/time4j/CalendarUnit;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
