.class Lcom/henninghall/date_picker/PickerView$1;
.super Ljava/lang/Object;
.source "PickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henninghall/date_picker/PickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henninghall/date_picker/PickerView;


# direct methods
.method constructor <init>(Lcom/henninghall/date_picker/PickerView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/henninghall/date_picker/PickerView$1;->this$0:Lcom/henninghall/date_picker/PickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/henninghall/date_picker/PickerView$1;->this$0:Lcom/henninghall/date_picker/PickerView;

    .line 118
    invoke-virtual {v0}, Lcom/henninghall/date_picker/PickerView;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/henninghall/date_picker/PickerView$1;->this$0:Lcom/henninghall/date_picker/PickerView;

    .line 119
    invoke-virtual {v3}, Lcom/henninghall/date_picker/PickerView;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/henninghall/date_picker/PickerView;->measure(II)V

    .line 120
    iget-object v0, p0, Lcom/henninghall/date_picker/PickerView$1;->this$0:Lcom/henninghall/date_picker/PickerView;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/PickerView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/henninghall/date_picker/PickerView$1;->this$0:Lcom/henninghall/date_picker/PickerView;

    invoke-virtual {v2}, Lcom/henninghall/date_picker/PickerView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/henninghall/date_picker/PickerView$1;->this$0:Lcom/henninghall/date_picker/PickerView;

    invoke-virtual {v3}, Lcom/henninghall/date_picker/PickerView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/henninghall/date_picker/PickerView$1;->this$0:Lcom/henninghall/date_picker/PickerView;

    invoke-virtual {v4}, Lcom/henninghall/date_picker/PickerView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/henninghall/date_picker/PickerView;->layout(IIII)V

    return-void
.end method
