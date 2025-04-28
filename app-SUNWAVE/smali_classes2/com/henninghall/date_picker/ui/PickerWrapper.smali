.class Lcom/henninghall/date_picker/ui/PickerWrapper;
.super Ljava/lang/Object;
.source "PickerWrapper.java"


# instance fields
.field private final view:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget v0, Lcom/henninghall/date_picker/R$id;->pickerWrapper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/henninghall/date_picker/ui/PickerWrapper;->view:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method addPicker(Landroid/view/View;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/PickerWrapper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method addPicker(Landroid/view/View;I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/PickerWrapper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method removeAll()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/henninghall/date_picker/ui/PickerWrapper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method
