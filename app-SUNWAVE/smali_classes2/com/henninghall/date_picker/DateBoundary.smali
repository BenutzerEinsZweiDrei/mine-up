.class public Lcom/henninghall/date_picker/DateBoundary;
.super Ljava/lang/Object;
.source "DateBoundary.java"


# instance fields
.field private date:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static {p2, p1}, Lcom/henninghall/date_picker/Utils;->isoToCalendar(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/henninghall/date_picker/Utils;->getTruncatedCalendarOrNull(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/henninghall/date_picker/DateBoundary;->date:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method protected get()Ljava/util/Calendar;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/henninghall/date_picker/DateBoundary;->date:Ljava/util/Calendar;

    return-object v0
.end method
