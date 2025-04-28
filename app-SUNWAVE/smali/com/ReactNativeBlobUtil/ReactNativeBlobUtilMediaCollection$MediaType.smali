.class public final enum Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;
.super Ljava/lang/Enum;
.source "ReactNativeBlobUtilMediaCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

.field public static final enum Audio:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

.field public static final enum Download:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

.field public static final enum Image:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

.field public static final enum Video:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;


# direct methods
.method private static synthetic $values()[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    .line 28
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->Audio:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->Image:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->Video:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->Download:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    const-string v1, "Audio"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->Audio:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    .line 30
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    const-string v1, "Image"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->Image:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    .line 31
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    const-string v1, "Video"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->Video:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    .line 32
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    const-string v1, "Download"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->Download:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    .line 28
    invoke-static {}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->$values()[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    move-result-object v0

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->$VALUES:[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;
    .locals 1

    .line 28
    const-class v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;
    .locals 1

    .line 28
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->$VALUES:[Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    invoke-virtual {v0}, [Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    return-object v0
.end method
