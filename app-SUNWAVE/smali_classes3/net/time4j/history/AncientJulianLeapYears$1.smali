.class Lnet/time4j/history/AncientJulianLeapYears$1;
.super Ljava/lang/Object;
.source "AncientJulianLeapYears.java"

# interfaces
.implements Lnet/time4j/history/Calculus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/history/AncientJulianLeapYears;-><init>([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/history/AncientJulianLeapYears;


# direct methods
.method constructor <init>(Lnet/time4j/history/AncientJulianLeapYears;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/time4j/history/AncientJulianLeapYears$1;->this$0:Lnet/time4j/history/AncientJulianLeapYears;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMaximumDayOfMonth(II)I
    .locals 2

    packed-switch p2, :pswitch_data_0

    .line 204
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid month: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 p1, 0x1e

    return p1

    .line 202
    :pswitch_1
    invoke-direct {p0, p1}, Lnet/time4j/history/AncientJulianLeapYears$1;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    goto :goto_0

    :cond_0
    const/16 p1, 0x1c

    :goto_0
    return p1

    :pswitch_2
    const/16 p1, 0x1f

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getProlepticYear(Lnet/time4j/history/HistoricDate;)I
    .locals 1

    .line 209
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/time4j/history/HistoricEra;->annoDomini(I)I

    move-result p1

    return p1
.end method

.method private isLeapYear(I)Z
    .locals 1

    .line 213
    iget-object v0, p0, Lnet/time4j/history/AncientJulianLeapYears$1;->this$0:Lnet/time4j/history/AncientJulianLeapYears;

    invoke-static {v0}, Lnet/time4j/history/AncientJulianLeapYears;->access$200(Lnet/time4j/history/AncientJulianLeapYears;)[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public fromMJD(J)Lnet/time4j/history/HistoricDate;
    .locals 7

    const-wide/32 v0, -0xa50b5

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 132
    sget-object v0, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/history/CalendarAlgorithm;->fromMJD(J)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x7

    :goto_0
    const/16 v3, -0x2c

    if-lt v2, v3, :cond_6

    .line 136
    invoke-direct {p0, v2}, Lnet/time4j/history/AncientJulianLeapYears$1;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x16e

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x16d

    :goto_1
    sub-long/2addr v0, v3

    cmp-long v3, v0, p1

    if-gtz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    const/16 v4, 0xc

    if-gt v3, v4, :cond_5

    .line 143
    invoke-direct {p0, v2, v3}, Lnet/time4j/history/AncientJulianLeapYears$1;->getMaximumDayOfMonth(II)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v0

    cmp-long v6, v4, p1

    if-lez v6, :cond_4

    if-gtz v2, :cond_2

    .line 145
    sget-object v4, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    goto :goto_3

    :cond_2
    sget-object v4, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    :goto_3
    if-gtz v2, :cond_3

    rsub-int/lit8 v2, v2, 0x1

    :cond_3
    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-int p1, p1

    .line 147
    invoke-static {v4, v2, v3, p1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-wide v0, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 154
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not valid before 45 BC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaximumDayOfMonth(Lnet/time4j/history/HistoricDate;)I
    .locals 3

    .line 174
    invoke-static {}, Lnet/time4j/history/AncientJulianLeapYears;->access$000()Lnet/time4j/history/HistoricDate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 175
    sget-object v0, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    invoke-virtual {v0, p1}, Lnet/time4j/history/CalendarAlgorithm;->getMaximumDayOfMonth(Lnet/time4j/history/HistoricDate;)I

    move-result p1

    return p1

    .line 176
    :cond_0
    invoke-static {}, Lnet/time4j/history/AncientJulianLeapYears;->access$100()Lnet/time4j/history/HistoricDate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 179
    invoke-direct {p0, p1}, Lnet/time4j/history/AncientJulianLeapYears$1;->getProlepticYear(Lnet/time4j/history/HistoricDate;)I

    move-result v0

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lnet/time4j/history/AncientJulianLeapYears$1;->getMaximumDayOfMonth(II)I

    move-result p1

    return p1

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not valid before 45 BC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValid(Lnet/time4j/history/HistoricDate;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 160
    invoke-direct {p0, p1}, Lnet/time4j/history/AncientJulianLeapYears$1;->getProlepticYear(Lnet/time4j/history/HistoricDate;)I

    move-result v1

    const/16 v2, -0x2c

    if-lt v1, v2, :cond_1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 163
    sget-object v0, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    invoke-virtual {v0, p1}, Lnet/time4j/history/CalendarAlgorithm;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result p1

    return p1

    .line 165
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lnet/time4j/history/AncientJulianLeapYears$1;->getMaximumDayOfMonth(II)I

    move-result p1

    if-gt v2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public toMJD(Lnet/time4j/history/HistoricDate;)J
    .locals 6

    .line 109
    invoke-static {}, Lnet/time4j/history/AncientJulianLeapYears;->access$000()Lnet/time4j/history/HistoricDate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 110
    sget-object v0, Lnet/time4j/history/CalendarAlgorithm;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    invoke-virtual {v0, p1}, Lnet/time4j/history/CalendarAlgorithm;->toMJD(Lnet/time4j/history/HistoricDate;)J

    move-result-wide v0

    return-wide v0

    .line 111
    :cond_0
    invoke-static {}, Lnet/time4j/history/AncientJulianLeapYears;->access$100()Lnet/time4j/history/HistoricDate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result v0

    if-ltz v0, :cond_4

    const-wide/32 v0, -0xa50b5

    .line 115
    invoke-direct {p0, p1}, Lnet/time4j/history/AncientJulianLeapYears$1;->getProlepticYear(Lnet/time4j/history/HistoricDate;)I

    move-result v2

    const/4 v3, 0x7

    :goto_0
    if-lt v3, v2, :cond_2

    .line 117
    invoke-direct {p0, v3}, Lnet/time4j/history/AncientJulianLeapYears$1;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x16e

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x16d

    :goto_1
    sub-long/2addr v0, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 123
    :goto_2
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 124
    invoke-direct {p0, v2, v3}, Lnet/time4j/history/AncientJulianLeapYears$1;->getMaximumDayOfMonth(II)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    .line 112
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not valid before 45 BC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
