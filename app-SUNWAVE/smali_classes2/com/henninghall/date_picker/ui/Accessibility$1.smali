.class Lcom/henninghall/date_picker/ui/Accessibility$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "Accessibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henninghall/date_picker/ui/Accessibility;->startAccessibilityDelegate(Lcom/henninghall/date_picker/pickers/Picker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fPicker:Lcom/henninghall/date_picker/pickers/Picker;


# direct methods
.method constructor <init>(Lcom/henninghall/date_picker/pickers/Picker;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/henninghall/date_picker/ui/Accessibility$1;->val$fPicker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/Accessibility$1;->val$fPicker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-interface {v0}, Lcom/henninghall/date_picker/pickers/Picker;->getValue()I

    move-result v0

    const/16 v1, 0x1000

    if-eq p2, v1, :cond_1

    const/16 v1, 0x2000

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/henninghall/date_picker/ui/Accessibility$1;->val$fPicker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-interface {v1}, Lcom/henninghall/date_picker/pickers/Picker;->isSpinning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/henninghall/date_picker/ui/Accessibility$1;->val$fPicker:Lcom/henninghall/date_picker/pickers/Picker;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lcom/henninghall/date_picker/pickers/Picker;->smoothScrollToValue(I)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/henninghall/date_picker/ui/Accessibility$1;->val$fPicker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-interface {v1}, Lcom/henninghall/date_picker/pickers/Picker;->isSpinning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/henninghall/date_picker/ui/Accessibility$1;->val$fPicker:Lcom/henninghall/date_picker/pickers/Picker;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Lcom/henninghall/date_picker/pickers/Picker;->smoothScrollToValue(I)V

    .line 80
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
