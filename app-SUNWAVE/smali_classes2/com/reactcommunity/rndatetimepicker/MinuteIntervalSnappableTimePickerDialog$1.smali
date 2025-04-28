.class Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;
.super Ljava/lang/Object;
.source "MinuteIntervalSnappableTimePickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->correctEnteredMinutes(Landroid/widget/TimePicker;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;

.field final synthetic val$correctedMinutes:I

.field final synthetic val$hourOfDay:I

.field final synthetic val$view:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;Landroid/widget/TimePicker;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->this$0:Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;

    iput-object p2, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$view:Landroid/widget/TimePicker;

    iput p3, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$hourOfDay:I

    iput p4, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$correctedMinutes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$view:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$hourOfDay:I

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setHour(I)V

    .line 153
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$view:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$correctedMinutes:I

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setMinute(I)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$view:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$hourOfDay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 157
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$view:Landroid/widget/TimePicker;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 158
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$view:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$correctedMinutes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->this$0:Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;

    invoke-static {v0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->access$000(Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;->val$view:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 163
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 164
    check-cast v0, Landroid/widget/EditText;

    .line 165
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    :cond_1
    const-string v0, "RN-datetimepicker"

    const-string v1, "could not set selection on time picker, this is a known issue on some Huawei devices"

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
