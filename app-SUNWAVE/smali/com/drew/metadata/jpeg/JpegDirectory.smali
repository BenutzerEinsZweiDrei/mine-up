.class public Lcom/drew/metadata/jpeg/JpegDirectory;
.super Lcom/drew/metadata/Directory;
.source "JpegDirectory.java"


# static fields
.field public static final TAG_COMPONENT_DATA_1:I = 0x6

.field public static final TAG_COMPONENT_DATA_2:I = 0x7

.field public static final TAG_COMPONENT_DATA_3:I = 0x8

.field public static final TAG_COMPONENT_DATA_4:I = 0x9

.field public static final TAG_COMPRESSION_TYPE:I = -0x3

.field public static final TAG_DATA_PRECISION:I = 0x0

.field public static final TAG_IMAGE_HEIGHT:I = 0x1

.field public static final TAG_IMAGE_WIDTH:I = 0x3

.field public static final TAG_NUMBER_OF_COMPONENTS:I = 0x5

.field protected static final _tagNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/jpeg/JpegDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, -0x3

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Compression Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Data Precision"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Image Width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Image Height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Number of Components"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Component 1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Component 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Component 3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Component 4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 84
    new-instance v0, Lcom/drew/metadata/jpeg/JpegDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/jpeg/JpegDescriptor;-><init>(Lcom/drew/metadata/jpeg/JpegDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    return-void
.end method


# virtual methods
.method public getComponent(I)Lcom/drew/metadata/jpeg/JpegComponent;
    .locals 0

    add-int/lit8 p1, p1, 0x6

    .line 110
    invoke-virtual {p0, p1}, Lcom/drew/metadata/jpeg/JpegDirectory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/drew/metadata/jpeg/JpegComponent;

    return-object p1
.end method

.method public getImageHeight()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegDirectory;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getImageWidth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 115
    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegDirectory;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "JPEG"

    return-object v0
.end method

.method public getNumberOfComponents()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 125
    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegDirectory;->getInt(I)I

    move-result v0

    return v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/drew/metadata/jpeg/JpegDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
