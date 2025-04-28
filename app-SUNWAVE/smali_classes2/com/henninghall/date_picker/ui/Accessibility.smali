.class public Lcom/henninghall/date_picker/ui/Accessibility;
.super Ljava/lang/Object;
.source "Accessibility.java"


# static fields
.field private static mLocale:Ljava/util/Locale;

.field private static final systemManager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    sget-object v0, Lcom/henninghall/date_picker/DatePickerPackage;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 22
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    sput-object v0, Lcom/henninghall/date_picker/ui/Accessibility;->systemManager:Landroid/view/accessibility/AccessibilityManager;

    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/henninghall/date_picker/ui/Accessibility;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static announce(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 119
    invoke-static {}, Lcom/henninghall/date_picker/ui/Accessibility;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/henninghall/date_picker/ui/Accessibility;->isSpokenFeedbackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static buildEvent(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 165
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public static getContentDescription(Lcom/henninghall/date_picker/pickers/Picker;)Ljava/lang/String;
    .locals 2

    .line 156
    invoke-interface {p0}, Lcom/henninghall/date_picker/pickers/Picker;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-interface {p0}, Lcom/henninghall/date_picker/pickers/Picker;->getValue()I

    move-result v1

    .line 158
    invoke-static {p0, v1}, Lcom/henninghall/date_picker/ui/Accessibility;->pickerValueToDisplayedValue(Lcom/henninghall/date_picker/pickers/Picker;I)Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-static {v0}, Lcom/henninghall/date_picker/ui/Accessibility;->getContentDescriptionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getContentDescriptionLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 152
    invoke-static {}, Lcom/henninghall/date_picker/ui/Accessibility;->getLocale()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_description"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/henninghall/date_picker/Utils;->getLocalisedStringFromResources(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocale()Ljava/util/Locale;
    .locals 1

    .line 31
    sget-object v0, Lcom/henninghall/date_picker/ui/Accessibility;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method private static hasAccessibilityFeatureTypeEnabled(I)Z
    .locals 1

    .line 104
    sget-object v0, Lcom/henninghall/date_picker/ui/Accessibility;->systemManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 106
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAccessibilityEnabled()Z
    .locals 1

    .line 86
    sget-object v0, Lcom/henninghall/date_picker/ui/Accessibility;->systemManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSpokenFeedbackEnabled()Z
    .locals 1

    const/4 v0, 0x1

    .line 97
    invoke-static {v0}, Lcom/henninghall/date_picker/ui/Accessibility;->hasAccessibilityFeatureTypeEnabled(I)Z

    move-result v0

    return v0
.end method

.method private static pickerValueToDisplayedValue(Lcom/henninghall/date_picker/pickers/Picker;I)Ljava/lang/String;
    .locals 0

    .line 130
    invoke-interface {p0}, Lcom/henninghall/date_picker/pickers/Picker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object p0

    .line 131
    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    return-object p0

    .line 137
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sendEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 173
    sget-object v0, Lcom/henninghall/date_picker/ui/Accessibility;->systemManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendValueChangedEvent(Lcom/henninghall/date_picker/pickers/Picker;I)V
    .locals 2

    .line 144
    invoke-interface {p0}, Lcom/henninghall/date_picker/pickers/Picker;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/henninghall/date_picker/ui/Accessibility;->buildEvent(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 145
    invoke-static {p0, p1}, Lcom/henninghall/date_picker/ui/Accessibility;->pickerValueToDisplayedValue(Lcom/henninghall/date_picker/pickers/Picker;I)Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-static {v0}, Lcom/henninghall/date_picker/ui/Accessibility;->sendEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 27
    sput-object p0, Lcom/henninghall/date_picker/ui/Accessibility;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public static setRoleToSlider(Lcom/henninghall/date_picker/pickers/Picker;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const-string v0, "android.widget.SeekBar"

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 188
    invoke-static {p0}, Lcom/henninghall/date_picker/ui/Accessibility;->getContentDescription(Lcom/henninghall/date_picker/pickers/Picker;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x2000

    const/16 v1, 0x1000

    const/16 v2, 0x15

    if-lt p0, v2, :cond_0

    .line 193
    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const-string v2, "Increase value"

    invoke-direct {p0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 195
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const-string v2, "Decrease value"

    invoke-direct {v1, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 198
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 199
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_0
    return-void
.end method

.method public static shouldAllowScroll(Landroid/view/View;)Z
    .locals 2

    .line 43
    sget-object v0, Lcom/henninghall/date_picker/ui/Accessibility;->systemManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 46
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static startAccessibilityDelegate(Lcom/henninghall/date_picker/pickers/Picker;)V
    .locals 2

    .line 57
    invoke-interface {p0}, Lcom/henninghall/date_picker/pickers/Picker;->getView()Landroid/view/View;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/henninghall/date_picker/ui/Accessibility$1;

    invoke-direct {v1, p0}, Lcom/henninghall/date_picker/ui/Accessibility$1;-><init>(Lcom/henninghall/date_picker/pickers/Picker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method
