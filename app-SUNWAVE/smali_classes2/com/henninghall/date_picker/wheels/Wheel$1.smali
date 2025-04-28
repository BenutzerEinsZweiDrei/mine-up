.class synthetic Lcom/henninghall/date_picker/wheels/Wheel$1;
.super Ljava/lang/Object;
.source "Wheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henninghall/date_picker/wheels/Wheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$henninghall$date_picker$models$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    invoke-static {}, Lcom/henninghall/date_picker/models/Mode;->values()[Lcom/henninghall/date_picker/models/Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/henninghall/date_picker/wheels/Wheel$1;->$SwitchMap$com$henninghall$date_picker$models$Mode:[I

    :try_start_0
    sget-object v1, Lcom/henninghall/date_picker/models/Mode;->date:Lcom/henninghall/date_picker/models/Mode;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/models/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/henninghall/date_picker/wheels/Wheel$1;->$SwitchMap$com$henninghall$date_picker$models$Mode:[I

    sget-object v1, Lcom/henninghall/date_picker/models/Mode;->time:Lcom/henninghall/date_picker/models/Mode;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/models/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/henninghall/date_picker/wheels/Wheel$1;->$SwitchMap$com$henninghall$date_picker$models$Mode:[I

    sget-object v1, Lcom/henninghall/date_picker/models/Mode;->datetime:Lcom/henninghall/date_picker/models/Mode;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/models/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
