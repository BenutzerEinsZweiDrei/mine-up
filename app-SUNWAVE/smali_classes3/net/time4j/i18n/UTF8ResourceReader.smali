.class Lnet/time4j/i18n/UTF8ResourceReader;
.super Ljava/io/Reader;
.source "UTF8ResourceReader.java"


# instance fields
.field private internal:Ljava/io/BufferedReader;

.field private final pis:Ljava/io/PushbackInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lnet/time4j/i18n/UTF8ResourceReader;->internal:Ljava/io/BufferedReader;

    .line 49
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lnet/time4j/i18n/UTF8ResourceReader;->pis:Ljava/io/PushbackInputStream;

    return-void
.end method

.method private init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lnet/time4j/i18n/UTF8ResourceReader;->internal:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 105
    iget-object v2, p0, Lnet/time4j/i18n/UTF8ResourceReader;->pis:Ljava/io/PushbackInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v0, :cond_1

    .line 107
    aget-byte v0, v1, v3

    const/16 v5, -0x11

    if-ne v0, v5, :cond_1

    aget-byte v0, v1, v4

    const/16 v5, -0x45

    if-ne v0, v5, :cond_1

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    const/16 v5, -0x41

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-nez v4, :cond_2

    if-lez v2, :cond_2

    .line 115
    iget-object v0, p0, Lnet/time4j/i18n/UTF8ResourceReader;->pis:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 118
    :cond_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lnet/time4j/i18n/UTF8ResourceReader;->pis:Ljava/io/PushbackInputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lnet/time4j/i18n/UTF8ResourceReader;->internal:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lnet/time4j/i18n/UTF8ResourceReader;->internal:Ljava/io/BufferedReader;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lnet/time4j/i18n/UTF8ResourceReader;->pis:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :goto_0
    return-void
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lnet/time4j/i18n/UTF8ResourceReader;->init()V

    .line 73
    iget-object v0, p0, Lnet/time4j/i18n/UTF8ResourceReader;->internal:Ljava/io/BufferedReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result p1

    return p1
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lnet/time4j/i18n/UTF8ResourceReader;->init()V

    .line 65
    iget-object v0, p0, Lnet/time4j/i18n/UTF8ResourceReader;->internal:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lnet/time4j/i18n/UTF8ResourceReader;->init()V

    .line 81
    iget-object v0, p0, Lnet/time4j/i18n/UTF8ResourceReader;->internal:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    return v0
.end method
