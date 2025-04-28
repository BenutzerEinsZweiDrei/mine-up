.class final enum Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;
.super Ljava/lang/Enum;
.source "ReactNativeBlobUtilReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ResponseFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

.field public static final enum Auto:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

.field public static final enum BASE64:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

.field public static final enum UTF8:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;


# direct methods
.method private static synthetic $values()[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    .line 93
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->Auto:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->UTF8:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->BASE64:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 94
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    const-string v1, "Auto"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->Auto:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    .line 95
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    const-string v1, "UTF8"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->UTF8:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    .line 96
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    const-string v1, "BASE64"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->BASE64:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    .line 93
    invoke-static {}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->$values()[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    move-result-object v0

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->$VALUES:[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;
    .locals 1

    .line 93
    const-class v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    return-object p0
.end method

.method public static values()[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;
    .locals 1

    .line 93
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->$VALUES:[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    invoke-virtual {v0}, [Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    return-object v0
.end method
