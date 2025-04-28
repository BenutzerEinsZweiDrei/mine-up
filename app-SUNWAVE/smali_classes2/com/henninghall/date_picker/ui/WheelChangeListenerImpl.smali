.class public Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;
.super Ljava/lang/Object;
.source "WheelChangeListenerImpl.java"

# interfaces
.implements Lcom/henninghall/date_picker/ui/WheelChangeListener;


# instance fields
.field private final rootView:Landroid/view/View;

.field private final state:Lcom/henninghall/date_picker/State;

.field private final uiManager:Lcom/henninghall/date_picker/ui/UIManager;

.field private final wheels:Lcom/henninghall/date_picker/ui/Wheels;


# direct methods
.method constructor <init>(Lcom/henninghall/date_picker/ui/Wheels;Lcom/henninghall/date_picker/State;Lcom/henninghall/date_picker/ui/UIManager;Landroid/view/View;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    .line 23
    iput-object p3, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    .line 24
    iput-object p2, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->state:Lcom/henninghall/date_picker/State;

    .line 25
    iput-object p4, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->rootView:Landroid/view/View;

    return-void
.end method

.method private dateExists()Z
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/ui/Wheels;->getDateTimeString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 73
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 74
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v2
.end method

.method private getClosestExistingDateInPast()Ljava/util/Calendar;
    .locals 4

    .line 97
    invoke-direct {p0}, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    invoke-virtual {v2, v1}, Lcom/henninghall/date_picker/ui/Wheels;->getDateTimeString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v3}, Lcom/henninghall/date_picker/State;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 105
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/ui/UIManager;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v1
.end method

.method private getSelectedDate()Ljava/util/Calendar;
    .locals 4

    .line 82
    invoke-direct {p0}, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/ui/Wheels;->getDateTimeString()Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v2}, Lcom/henninghall/date_picker/State;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 85
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    .line 87
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 88
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onChange(Lcom/henninghall/date_picker/wheels/Wheel;)V
    .locals 2

    .line 37
    iget-object p1, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    invoke-virtual {p1}, Lcom/henninghall/date_picker/ui/Wheels;->hasSpinningWheel()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->dateExists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 40
    invoke-direct {p0}, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->getClosestExistingDateInPast()Ljava/util/Calendar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v0, p1}, Lcom/henninghall/date_picker/ui/UIManager;->animateToDate(Ljava/util/Calendar;)V

    :cond_1
    return-void

    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->getSelectedDate()Ljava/util/Calendar;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getMinimumDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    iget-object p1, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {p1, v0}, Lcom/henninghall/date_picker/ui/UIManager;->animateToDate(Ljava/util/Calendar;)V

    return-void

    .line 56
    :cond_4
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getMaximumDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 57
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    iget-object p1, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {p1, v0}, Lcom/henninghall/date_picker/ui/UIManager;->animateToDate(Ljava/util/Calendar;)V

    return-void

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/ui/UIManager;->getDisplayValueString()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->uiManager:Lcom/henninghall/date_picker/ui/UIManager;

    invoke-virtual {v1, p1}, Lcom/henninghall/date_picker/ui/UIManager;->updateLastSelectedDate(Ljava/util/Calendar;)V

    .line 65
    iget-object v1, p0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;->rootView:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lcom/henninghall/date_picker/Emitter;->onDateChange(Ljava/util/Calendar;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
