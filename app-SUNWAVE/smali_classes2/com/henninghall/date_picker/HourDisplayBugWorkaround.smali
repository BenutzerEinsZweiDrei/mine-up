.class public Lcom/henninghall/date_picker/HourDisplayBugWorkaround;
.super Ljava/lang/Object;
.source "HourDisplayBugWorkaround.java"


# instance fields
.field private final state:Lcom/henninghall/date_picker/State;


# direct methods
.method public constructor <init>(Lcom/henninghall/date_picker/State;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/henninghall/date_picker/HourDisplayBugWorkaround;->state:Lcom/henninghall/date_picker/State;

    return-void
.end method

.method private adjust(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private shouldApply(Ljava/lang/String;)Z
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/henninghall/date_picker/HourDisplayBugWorkaround;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getVariant()Lcom/henninghall/date_picker/models/Variant;

    move-result-object v0

    sget-object v1, Lcom/henninghall/date_picker/models/Variant;->nativeAndroid:Lcom/henninghall/date_picker/models/Variant;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return v2

    :cond_1
    return v0
.end method


# virtual methods
.method public adjustValueIfNecessary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/henninghall/date_picker/HourDisplayBugWorkaround;->shouldApply(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 35
    :cond_0
    invoke-direct {p0, p1}, Lcom/henninghall/date_picker/HourDisplayBugWorkaround;->adjust(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
