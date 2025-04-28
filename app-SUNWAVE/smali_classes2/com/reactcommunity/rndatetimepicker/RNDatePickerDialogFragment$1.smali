.class synthetic Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment$1;
.super Ljava/lang/Object;
.source "RNDatePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$reactcommunity$rndatetimepicker$RNDatePickerDisplay:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    invoke-static {}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->values()[Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment$1;->$SwitchMap$com$reactcommunity$rndatetimepicker$RNDatePickerDisplay:[I

    :try_start_0
    sget-object v1, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->CALENDAR:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    invoke-virtual {v1}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment$1;->$SwitchMap$com$reactcommunity$rndatetimepicker$RNDatePickerDisplay:[I

    sget-object v1, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->SPINNER:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    invoke-virtual {v1}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
