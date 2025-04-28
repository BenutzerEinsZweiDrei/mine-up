.class synthetic Lcom/henninghall/date_picker/DerivedData$1;
.super Ljava/lang/Object;
.source "DerivedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henninghall/date_picker/DerivedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$henninghall$date_picker$models$Mode:[I

.field static final synthetic $SwitchMap$com$henninghall$date_picker$models$Variant:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 114
    invoke-static {}, Lcom/henninghall/date_picker/models/Variant;->values()[Lcom/henninghall/date_picker/models/Variant;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/henninghall/date_picker/DerivedData$1;->$SwitchMap$com$henninghall$date_picker$models$Variant:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/henninghall/date_picker/models/Variant;->nativeAndroid:Lcom/henninghall/date_picker/models/Variant;

    invoke-virtual {v2}, Lcom/henninghall/date_picker/models/Variant;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/henninghall/date_picker/DerivedData$1;->$SwitchMap$com$henninghall$date_picker$models$Variant:[I

    sget-object v3, Lcom/henninghall/date_picker/models/Variant;->iosClone:Lcom/henninghall/date_picker/models/Variant;

    invoke-virtual {v3}, Lcom/henninghall/date_picker/models/Variant;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    :catch_1
    invoke-static {}, Lcom/henninghall/date_picker/models/Mode;->values()[Lcom/henninghall/date_picker/models/Mode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/henninghall/date_picker/DerivedData$1;->$SwitchMap$com$henninghall$date_picker$models$Mode:[I

    :try_start_2
    sget-object v3, Lcom/henninghall/date_picker/models/Mode;->datetime:Lcom/henninghall/date_picker/models/Mode;

    invoke-virtual {v3}, Lcom/henninghall/date_picker/models/Mode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/henninghall/date_picker/DerivedData$1;->$SwitchMap$com$henninghall$date_picker$models$Mode:[I

    sget-object v2, Lcom/henninghall/date_picker/models/Mode;->time:Lcom/henninghall/date_picker/models/Mode;

    invoke-virtual {v2}, Lcom/henninghall/date_picker/models/Mode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/henninghall/date_picker/DerivedData$1;->$SwitchMap$com$henninghall$date_picker$models$Mode:[I

    sget-object v1, Lcom/henninghall/date_picker/models/Mode;->date:Lcom/henninghall/date_picker/models/Mode;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/models/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
