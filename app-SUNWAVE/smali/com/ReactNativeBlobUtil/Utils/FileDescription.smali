.class public Lcom/ReactNativeBlobUtil/Utils/FileDescription;
.super Ljava/lang/Object;
.source "FileDescription.java"


# instance fields
.field public mimeType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public partentFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/ReactNativeBlobUtil/Utils/FileDescription;->name:Ljava/lang/String;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 12
    :goto_0
    iput-object p3, p0, Lcom/ReactNativeBlobUtil/Utils/FileDescription;->partentFolder:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/ReactNativeBlobUtil/Utils/FileDescription;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFullPath()Ljava/lang/String;
    .locals 3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/Utils/FileDescription;->partentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/Utils/FileDescription;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/ReactNativeBlobUtil/Utils/FileDescription;->mimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ReactNativeBlobUtil/Utils/MimeType;->getFullFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
