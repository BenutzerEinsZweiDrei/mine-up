.class public final enum Lcom/henninghall/date_picker/models/Variant;
.super Ljava/lang/Enum;
.source "Variant.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/henninghall/date_picker/models/Variant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/henninghall/date_picker/models/Variant;

.field public static final enum iosClone:Lcom/henninghall/date_picker/models/Variant;

.field public static final enum nativeAndroid:Lcom/henninghall/date_picker/models/Variant;


# direct methods
.method private static synthetic $values()[Lcom/henninghall/date_picker/models/Variant;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/henninghall/date_picker/models/Variant;

    .line 3
    sget-object v1, Lcom/henninghall/date_picker/models/Variant;->iosClone:Lcom/henninghall/date_picker/models/Variant;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/henninghall/date_picker/models/Variant;->nativeAndroid:Lcom/henninghall/date_picker/models/Variant;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/henninghall/date_picker/models/Variant;

    const-string v1, "iosClone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/henninghall/date_picker/models/Variant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/henninghall/date_picker/models/Variant;->iosClone:Lcom/henninghall/date_picker/models/Variant;

    new-instance v0, Lcom/henninghall/date_picker/models/Variant;

    const-string v1, "nativeAndroid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/henninghall/date_picker/models/Variant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/henninghall/date_picker/models/Variant;->nativeAndroid:Lcom/henninghall/date_picker/models/Variant;

    .line 3
    invoke-static {}, Lcom/henninghall/date_picker/models/Variant;->$values()[Lcom/henninghall/date_picker/models/Variant;

    move-result-object v0

    sput-object v0, Lcom/henninghall/date_picker/models/Variant;->$VALUES:[Lcom/henninghall/date_picker/models/Variant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/henninghall/date_picker/models/Variant;
    .locals 1

    .line 3
    const-class v0, Lcom/henninghall/date_picker/models/Variant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/henninghall/date_picker/models/Variant;

    return-object p0
.end method

.method public static values()[Lcom/henninghall/date_picker/models/Variant;
    .locals 1

    .line 3
    sget-object v0, Lcom/henninghall/date_picker/models/Variant;->$VALUES:[Lcom/henninghall/date_picker/models/Variant;

    invoke-virtual {v0}, [Lcom/henninghall/date_picker/models/Variant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/henninghall/date_picker/models/Variant;

    return-object v0
.end method
