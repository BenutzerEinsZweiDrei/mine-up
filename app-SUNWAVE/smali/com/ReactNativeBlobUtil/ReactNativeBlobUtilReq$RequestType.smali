.class final enum Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;
.super Ljava/lang/Enum;
.source "ReactNativeBlobUtilReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

.field public static final enum AsIs:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

.field public static final enum Form:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

.field public static final enum Others:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

.field public static final enum SingleFile:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

.field public static final enum WithoutBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;


# direct methods
.method private static synthetic $values()[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 80
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->Form:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->SingleFile:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->AsIs:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->WithoutBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->Others:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    const-string v1, "Form"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->Form:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 82
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    const-string v1, "SingleFile"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->SingleFile:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 83
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    const-string v1, "AsIs"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->AsIs:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 84
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    const-string v1, "WithoutBody"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->WithoutBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 85
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    const-string v1, "Others"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->Others:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 80
    invoke-static {}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->$values()[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    move-result-object v0

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->$VALUES:[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;
    .locals 1

    .line 80
    const-class v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;
    .locals 1

    .line 80
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->$VALUES:[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    invoke-virtual {v0}, [Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    return-object v0
.end method
