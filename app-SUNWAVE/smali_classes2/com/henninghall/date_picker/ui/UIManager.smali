.class public Lcom/henninghall/date_picker/ui/UIManager;
.super Ljava/lang/Object;
.source "UIManager.java"


# instance fields
.field private fadingOverlay:Lcom/henninghall/date_picker/ui/FadingOverlay;

.field private final rootView:Landroid/view/View;

.field private final state:Lcom/henninghall/date_picker/State;

.field private wheelScroller:Lcom/henninghall/date_picker/ui/WheelScroller;

.field private wheels:Lcom/henninghall/date_picker/ui/Wheels;


# direct methods
.method public constructor <init>(Lcom/henninghall/date_picker/State;Landroid/view/View;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/henninghall/date_picker/ui/WheelScroller;

    invoke-direct {v0}, Lcom/henninghall/date_picker/ui/WheelScroller;-><init>()V

    iput-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheelScroller:Lcom/henninghall/date_picker/ui/WheelScroller;

    .line 26
    iput-object p1, p0, Lcom/henninghall/date_picker/ui/UIManager;->state:Lcom/henninghall/date_picker/State;

    .line 27
    iput-object p2, p0, Lcom/henninghall/date_picker/ui/UIManager;->rootView:Landroid/view/View;

    .line 28
    new-instance v0, Lcom/henninghall/date_picker/ui/Wheels;

    invoke-direct {v0, p1, p2}, Lcom/henninghall/date_picker/ui/Wheels;-><init>(Lcom/henninghall/date_picker/State;Landroid/view/View;)V

    iput-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    .line 29
    invoke-direct {p0}, Lcom/henninghall/date_picker/ui/UIManager;->addOnChangeListener()V

    return-void
.end method

.method private addOnChangeListener()V
    .locals 4

    .line 81
    new-instance v0, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;

    iget-object v1, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    iget-object v2, p0, Lcom/henninghall/date_picker/ui/UIManager;->state:Lcom/henninghall/date_picker/State;

    iget-object v3, p0, Lcom/henninghall/date_picker/ui/UIManager;->rootView:Landroid/view/View;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/henninghall/date_picker/ui/WheelChangeListenerImpl;-><init>(Lcom/henninghall/date_picker/ui/Wheels;Lcom/henninghall/date_picker/State;Lcom/henninghall/date_picker/ui/UIManager;Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    new-instance v2, Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener;

    invoke-direct {v2, v0}, Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener;-><init>(Lcom/henninghall/date_picker/ui/WheelChangeListener;)V

    invoke-virtual {v1, v2}, Lcom/henninghall/date_picker/ui/Wheels;->applyOnAll(Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;)V

    return-void
.end method


# virtual methods
.method animateToDate(Ljava/util/Calendar;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    new-instance v1, Lcom/henninghall/date_picker/wheelFunctions/SetDate;

    invoke-direct {v1, p1}, Lcom/henninghall/date_picker/wheelFunctions/SetDate;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0, v1}, Lcom/henninghall/date_picker/ui/Wheels;->applyOnInVisible(Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;)V

    .line 77
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    new-instance v1, Lcom/henninghall/date_picker/wheelFunctions/AnimateToDate;

    invoke-direct {v1, p1}, Lcom/henninghall/date_picker/wheelFunctions/AnimateToDate;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0, v1}, Lcom/henninghall/date_picker/ui/Wheels;->applyOnVisible(Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;)V

    return-void
.end method

.method getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 68
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/ui/Wheels;->getFormatPattern()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/henninghall/date_picker/ui/UIManager;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v2}, Lcom/henninghall/date_picker/State;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method getDisplayValueString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/ui/Wheels;->getDisplayValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scroll(II)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    iget-object v1, p0, Lcom/henninghall/date_picker/ui/UIManager;->state:Lcom/henninghall/date_picker/State;

    iget-object v1, v1, Lcom/henninghall/date_picker/State;->derived:Lcom/henninghall/date_picker/DerivedData;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/DerivedData;->getOrderedVisibleWheels()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/henninghall/date_picker/models/WheelType;

    invoke-virtual {v0, p1}, Lcom/henninghall/date_picker/ui/Wheels;->getWheel(Lcom/henninghall/date_picker/models/WheelType;)Lcom/henninghall/date_picker/wheels/Wheel;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheelScroller:Lcom/henninghall/date_picker/ui/WheelScroller;

    invoke-virtual {v0, p1, p2}, Lcom/henninghall/date_picker/ui/WheelScroller;->scroll(Lcom/henninghall/date_picker/wheels/Wheel;I)V

    return-void
.end method

.method public setWheelsToDate()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    new-instance v1, Lcom/henninghall/date_picker/wheelFunctions/SetDate;

    iget-object v2, p0, Lcom/henninghall/date_picker/ui/UIManager;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v2}, Lcom/henninghall/date_picker/State;->getDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/henninghall/date_picker/wheelFunctions/SetDate;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0, v1}, Lcom/henninghall/date_picker/ui/Wheels;->applyOnAll(Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;)V

    return-void
.end method

.method public updateDisplayValues()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    new-instance v1, Lcom/henninghall/date_picker/wheelFunctions/Refresh;

    invoke-direct {v1}, Lcom/henninghall/date_picker/wheelFunctions/Refresh;-><init>()V

    invoke-virtual {v0, v1}, Lcom/henninghall/date_picker/ui/Wheels;->applyOnAll(Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;)V

    return-void
.end method

.method public updateDividerHeight()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/ui/Wheels;->updateDividerHeight()V

    return-void
.end method

.method public updateFadeToColor()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->state:Lcom/henninghall/date_picker/State;

    iget-object v0, v0, Lcom/henninghall/date_picker/State;->derived:Lcom/henninghall/date_picker/DerivedData;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/DerivedData;->hasNativeStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/henninghall/date_picker/ui/FadingOverlay;

    iget-object v1, p0, Lcom/henninghall/date_picker/ui/UIManager;->state:Lcom/henninghall/date_picker/State;

    iget-object v2, p0, Lcom/henninghall/date_picker/ui/UIManager;->rootView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/henninghall/date_picker/ui/FadingOverlay;-><init>(Lcom/henninghall/date_picker/State;Landroid/view/View;)V

    iput-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->fadingOverlay:Lcom/henninghall/date_picker/ui/FadingOverlay;

    .line 43
    invoke-virtual {v0}, Lcom/henninghall/date_picker/ui/FadingOverlay;->updateColor()V

    return-void
.end method

.method public updateHeight()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/ui/Wheels;->updateHeight()V

    return-void
.end method

.method public updateLastSelectedDate(Ljava/util/Calendar;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0, p1}, Lcom/henninghall/date_picker/State;->setLastSelectedDate(Ljava/util/Calendar;)V

    return-void
.end method

.method public updateTextColor()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    new-instance v1, Lcom/henninghall/date_picker/wheelFunctions/TextColor;

    iget-object v2, p0, Lcom/henninghall/date_picker/ui/UIManager;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v2}, Lcom/henninghall/date_picker/State;->getTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/henninghall/date_picker/wheelFunctions/TextColor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/henninghall/date_picker/ui/Wheels;->applyOnAll(Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;)V

    return-void
.end method

.method public updateWheelOrder()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/ui/Wheels;->updateWheelOrder()V

    return-void
.end method

.method public updateWheelPadding()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    new-instance v1, Lcom/henninghall/date_picker/wheelFunctions/HorizontalPadding;

    invoke-direct {v1}, Lcom/henninghall/date_picker/wheelFunctions/HorizontalPadding;-><init>()V

    invoke-virtual {v0, v1}, Lcom/henninghall/date_picker/ui/Wheels;->applyOnVisible(Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;)V

    return-void
.end method

.method public updateWheelVisibility()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/UIManager;->wheels:Lcom/henninghall/date_picker/ui/Wheels;

    new-instance v1, Lcom/henninghall/date_picker/wheelFunctions/UpdateVisibility;

    invoke-direct {v1}, Lcom/henninghall/date_picker/wheelFunctions/UpdateVisibility;-><init>()V

    invoke-virtual {v0, v1}, Lcom/henninghall/date_picker/ui/Wheels;->applyOnAll(Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;)V

    return-void
.end method
