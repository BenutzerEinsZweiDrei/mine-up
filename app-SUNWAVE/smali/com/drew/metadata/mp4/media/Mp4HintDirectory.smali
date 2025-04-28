.class public Lcom/drew/metadata/mp4/media/Mp4HintDirectory;
.super Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;
.source "Mp4HintDirectory.java"


# static fields
.field public static final TAG_AVERAGE_BITRATE:I = 0x68

.field public static final TAG_AVERAGE_PDU_SIZE:I = 0x66

.field public static final TAG_MAX_BITRATE:I = 0x67

.field public static final TAG_MAX_PDU_SIZE:I = 0x65

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

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/mp4/media/Mp4HintDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 44
    invoke-static {v0}, Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;->addMp4MediaTags(Ljava/util/HashMap;)V

    const/16 v1, 0x65

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Max PDU Size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x66

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Average PDU Size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x67

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Max Bitrate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x68

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Average Bitrate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/drew/metadata/mp4/media/Mp4MediaDirectory;-><init>()V

    .line 36
    new-instance v0, Lcom/drew/metadata/mp4/media/Mp4HintDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/mp4/media/Mp4HintDescriptor;-><init>(Lcom/drew/metadata/mp4/media/Mp4HintDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/mp4/media/Mp4HintDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MP4 Hint"

    return-object v0
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

    .line 62
    sget-object v0, Lcom/drew/metadata/mp4/media/Mp4HintDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
