.class Lcom/henninghall/date_picker/pickers/AndroidNative$2;
.super Ljava/lang/Object;
.source "AndroidNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henninghall/date_picker/pickers/AndroidNative;->changeValueByOne(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henninghall/date_picker/pickers/AndroidNative;

.field final synthetic val$increment:Z

.field final synthetic val$isLast:Z

.field final synthetic val$self:Lcom/henninghall/date_picker/pickers/AndroidNative;


# direct methods
.method constructor <init>(Lcom/henninghall/date_picker/pickers/AndroidNative;Lcom/henninghall/date_picker/pickers/AndroidNative;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/henninghall/date_picker/pickers/AndroidNative$2;->this$0:Lcom/henninghall/date_picker/pickers/AndroidNative;

    iput-object p2, p0, Lcom/henninghall/date_picker/pickers/AndroidNative$2;->val$self:Lcom/henninghall/date_picker/pickers/AndroidNative;

    iput-boolean p3, p0, Lcom/henninghall/date_picker/pickers/AndroidNative$2;->val$increment:Z

    iput-boolean p4, p0, Lcom/henninghall/date_picker/pickers/AndroidNative$2;->val$isLast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/henninghall/date_picker/pickers/AndroidNative$2;->this$0:Lcom/henninghall/date_picker/pickers/AndroidNative;

    iget-object v1, p0, Lcom/henninghall/date_picker/pickers/AndroidNative$2;->val$self:Lcom/henninghall/date_picker/pickers/AndroidNative;

    iget-boolean v2, p0, Lcom/henninghall/date_picker/pickers/AndroidNative$2;->val$increment:Z

    invoke-static {v0, v1, v2}, Lcom/henninghall/date_picker/pickers/AndroidNative;->access$100(Lcom/henninghall/date_picker/pickers/AndroidNative;Landroid/widget/NumberPicker;Z)V

    .line 161
    iget-boolean v0, p0, Lcom/henninghall/date_picker/pickers/AndroidNative$2;->val$isLast:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/henninghall/date_picker/pickers/AndroidNative$2;->this$0:Lcom/henninghall/date_picker/pickers/AndroidNative;

    invoke-static {v0}, Lcom/henninghall/date_picker/pickers/AndroidNative;->access$200(Lcom/henninghall/date_picker/pickers/AndroidNative;)V

    :cond_0
    return-void
.end method
