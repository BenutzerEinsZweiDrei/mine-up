.class public final enum Lcom/henninghall/date_picker/models/WheelType;
.super Ljava/lang/Enum;
.source "WheelType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/henninghall/date_picker/models/WheelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/henninghall/date_picker/models/WheelType;

.field public static final enum AM_PM:Lcom/henninghall/date_picker/models/WheelType;

.field public static final enum DATE:Lcom/henninghall/date_picker/models/WheelType;

.field public static final enum DAY:Lcom/henninghall/date_picker/models/WheelType;

.field public static final enum HOUR:Lcom/henninghall/date_picker/models/WheelType;

.field public static final enum MINUTE:Lcom/henninghall/date_picker/models/WheelType;

.field public static final enum MONTH:Lcom/henninghall/date_picker/models/WheelType;

.field public static final enum YEAR:Lcom/henninghall/date_picker/models/WheelType;


# direct methods
.method private static synthetic $values()[Lcom/henninghall/date_picker/models/WheelType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/henninghall/date_picker/models/WheelType;

    .line 3
    sget-object v1, Lcom/henninghall/date_picker/models/WheelType;->DAY:Lcom/henninghall/date_picker/models/WheelType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/henninghall/date_picker/models/WheelType;->DATE:Lcom/henninghall/date_picker/models/WheelType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/henninghall/date_picker/models/WheelType;->MONTH:Lcom/henninghall/date_picker/models/WheelType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/henninghall/date_picker/models/WheelType;->YEAR:Lcom/henninghall/date_picker/models/WheelType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/henninghall/date_picker/models/WheelType;->HOUR:Lcom/henninghall/date_picker/models/WheelType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/henninghall/date_picker/models/WheelType;->MINUTE:Lcom/henninghall/date_picker/models/WheelType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/henninghall/date_picker/models/WheelType;->AM_PM:Lcom/henninghall/date_picker/models/WheelType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/henninghall/date_picker/models/WheelType;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/henninghall/date_picker/models/WheelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/henninghall/date_picker/models/WheelType;->DAY:Lcom/henninghall/date_picker/models/WheelType;

    new-instance v0, Lcom/henninghall/date_picker/models/WheelType;

    const-string v1, "DATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/henninghall/date_picker/models/WheelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/henninghall/date_picker/models/WheelType;->DATE:Lcom/henninghall/date_picker/models/WheelType;

    new-instance v0, Lcom/henninghall/date_picker/models/WheelType;

    const-string v1, "MONTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/henninghall/date_picker/models/WheelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/henninghall/date_picker/models/WheelType;->MONTH:Lcom/henninghall/date_picker/models/WheelType;

    new-instance v0, Lcom/henninghall/date_picker/models/WheelType;

    const-string v1, "YEAR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/henninghall/date_picker/models/WheelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/henninghall/date_picker/models/WheelType;->YEAR:Lcom/henninghall/date_picker/models/WheelType;

    new-instance v0, Lcom/henninghall/date_picker/models/WheelType;

    const-string v1, "HOUR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/henninghall/date_picker/models/WheelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/henninghall/date_picker/models/WheelType;->HOUR:Lcom/henninghall/date_picker/models/WheelType;

    new-instance v0, Lcom/henninghall/date_picker/models/WheelType;

    const-string v1, "MINUTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/henninghall/date_picker/models/WheelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/henninghall/date_picker/models/WheelType;->MINUTE:Lcom/henninghall/date_picker/models/WheelType;

    new-instance v0, Lcom/henninghall/date_picker/models/WheelType;

    const-string v1, "AM_PM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/henninghall/date_picker/models/WheelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/henninghall/date_picker/models/WheelType;->AM_PM:Lcom/henninghall/date_picker/models/WheelType;

    .line 3
    invoke-static {}, Lcom/henninghall/date_picker/models/WheelType;->$values()[Lcom/henninghall/date_picker/models/WheelType;

    move-result-object v0

    sput-object v0, Lcom/henninghall/date_picker/models/WheelType;->$VALUES:[Lcom/henninghall/date_picker/models/WheelType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/henninghall/date_picker/models/WheelType;
    .locals 1

    .line 3
    const-class v0, Lcom/henninghall/date_picker/models/WheelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/henninghall/date_picker/models/WheelType;

    return-object p0
.end method

.method public static values()[Lcom/henninghall/date_picker/models/WheelType;
    .locals 1

    .line 3
    sget-object v0, Lcom/henninghall/date_picker/models/WheelType;->$VALUES:[Lcom/henninghall/date_picker/models/WheelType;

    invoke-virtual {v0}, [Lcom/henninghall/date_picker/models/WheelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/henninghall/date_picker/models/WheelType;

    return-object v0
.end method
