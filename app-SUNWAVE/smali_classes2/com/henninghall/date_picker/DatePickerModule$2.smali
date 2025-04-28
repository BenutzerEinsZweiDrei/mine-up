.class Lcom/henninghall/date_picker/DatePickerModule$2;
.super Ljava/lang/Object;
.source "DatePickerModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henninghall/date_picker/DatePickerModule;->createDialog(Lcom/facebook/react/bridge/ReadableMap;Lcom/henninghall/date_picker/PickerView;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henninghall/date_picker/DatePickerModule;

.field final synthetic val$onCancel:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/henninghall/date_picker/DatePickerModule;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/henninghall/date_picker/DatePickerModule$2;->this$0:Lcom/henninghall/date_picker/DatePickerModule;

    iput-object p2, p0, Lcom/henninghall/date_picker/DatePickerModule$2;->val$onCancel:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 63
    iget-object p2, p0, Lcom/henninghall/date_picker/DatePickerModule$2;->val$onCancel:Lcom/facebook/react/bridge/Callback;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 64
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
