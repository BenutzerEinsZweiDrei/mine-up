.class Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;
.super Ljava/lang/Object;
.source "RNDatePickerDialogModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule;->open(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule;

.field final synthetic val$fragmentManager:Landroidx/fragment/app/FragmentManager;

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule;Landroidx/fragment/app/FragmentManager;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;->this$0:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule;

    iput-object p2, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object p3, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p4, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "RNDatePickerAndroid"

    .line 135
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;

    if-eqz v0, :cond_0

    .line 137
    iget-object v2, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;->this$0:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule;

    invoke-static {v1, v2}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule;->access$300(Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule;Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->update(Landroid/os/Bundle;)V

    return-void

    .line 142
    :cond_0
    new-instance v0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;

    invoke-direct {v0}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;-><init>()V

    .line 144
    iget-object v2, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v2, :cond_1

    .line 145
    iget-object v3, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;->this$0:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule;

    invoke-static {v3, v2}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule;->access$300(Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule;Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 148
    :cond_1
    new-instance v2, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$DatePickerDialogListener;

    iget-object v3, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;->this$0:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule;

    iget-object v4, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {v2, v3, v4}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$DatePickerDialogListener;-><init>(Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule;Lcom/facebook/react/bridge/Promise;)V

    .line 149
    invoke-virtual {v0, v2}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 150
    invoke-virtual {v0, v2}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 151
    invoke-virtual {v0, v2}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->setOnNeutralButtonActionListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogModule$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v2, v1}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
