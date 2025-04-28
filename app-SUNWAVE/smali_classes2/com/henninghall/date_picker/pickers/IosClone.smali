.class public Lcom/henninghall/date_picker/pickers/IosClone;
.super Lcn/carbswang/android/numberpickerview/library/NumberPickerView;
.source "IosClone.java"

# interfaces
.implements Lcom/henninghall/date_picker/pickers/Picker;


# instance fields
.field private mOnValueChangeListenerInScrolling:Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListenerInScrolling;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/henninghall/date_picker/pickers/IosClone;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/henninghall/date_picker/pickers/IosClone;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/henninghall/date_picker/pickers/IosClone;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/henninghall/date_picker/pickers/IosClone;)Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListenerInScrolling;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/henninghall/date_picker/pickers/IosClone;->mOnValueChangeListenerInScrolling:Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListenerInScrolling;

    return-object p0
.end method

.method private init()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/henninghall/date_picker/pickers/IosClone;->initAccessibility()V

    .line 37
    invoke-direct {p0}, Lcom/henninghall/date_picker/pickers/IosClone;->initSetOnValueChangeListenerInScrolling()V

    return-void
.end method

.method private initAccessibility()V
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/henninghall/date_picker/ui/Accessibility;->startAccessibilityDelegate(Lcom/henninghall/date_picker/pickers/Picker;)V

    return-void
.end method

.method private initSetOnValueChangeListenerInScrolling()V
    .locals 1

    .line 47
    new-instance v0, Lcom/henninghall/date_picker/pickers/IosClone$1;

    invoke-direct {v0, p0, p0}, Lcom/henninghall/date_picker/pickers/IosClone$1;-><init>(Lcom/henninghall/date_picker/pickers/IosClone;Lcom/henninghall/date_picker/pickers/Picker;)V

    invoke-super {p0, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setOnValueChangeListenerInScrolling(Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerInScrolling;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public isSpinning()Z
    .locals 1

    .line 89
    invoke-super {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 104
    invoke-static {p0, p1}, Lcom/henninghall/date_picker/ui/Accessibility;->setRoleToSlider(Lcom/henninghall/date_picker/pickers/Picker;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 94
    invoke-static {p0}, Lcom/henninghall/date_picker/ui/Accessibility;->shouldAllowScroll(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-super {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnValueChangeListenerInScrolling(Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListenerInScrolling;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/henninghall/date_picker/pickers/IosClone;->mOnValueChangeListenerInScrolling:Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListenerInScrolling;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListener;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/henninghall/date_picker/pickers/IosClone$2;

    invoke-direct {v0, p0, p1}, Lcom/henninghall/date_picker/pickers/IosClone$2;-><init>(Lcom/henninghall/date_picker/pickers/IosClone;Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListener;)V

    invoke-super {p0, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setOnValueChangedListener(Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListener;)V

    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 3

    .line 61
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#70"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/henninghall/date_picker/pickers/IosClone;->setNormalTextColor(I)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/henninghall/date_picker/pickers/IosClone;->setSelectedTextColor(I)V

    return-void
.end method
