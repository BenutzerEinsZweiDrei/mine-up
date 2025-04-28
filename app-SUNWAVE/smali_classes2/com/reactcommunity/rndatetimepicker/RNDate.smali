.class public Lcom/reactcommunity/rndatetimepicker/RNDate;
.super Ljava/lang/Object;
.source "RNDate.java"


# instance fields
.field private now:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/reactcommunity/rndatetimepicker/RNDate;->now:Ljava/util/Calendar;

    if-eqz p1, :cond_0

    const-string v0, "value"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/reactcommunity/rndatetimepicker/RNDate;->set(J)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "timeZoneOffsetInMinutes"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/reactcommunity/rndatetimepicker/RNDate;->now:Ljava/util/Calendar;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/RNDate;->now:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v2, 0xea60

    mul-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public day()I
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/RNDate;->now:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public hour()I
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/RNDate;->now:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public minute()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/RNDate;->now:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public month()I
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/RNDate;->now:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public set(J)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/RNDate;->now:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public year()I
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/RNDate;->now:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method
