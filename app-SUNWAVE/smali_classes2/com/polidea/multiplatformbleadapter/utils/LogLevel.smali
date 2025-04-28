.class public Lcom/polidea/multiplatformbleadapter/utils/LogLevel;
.super Ljava/lang/Object;
.source "LogLevel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromLogLevel(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const-string p0, "None"

    return-object p0

    :cond_0
    const-string p0, "Error"

    return-object p0

    :cond_1
    const-string p0, "Warning"

    return-object p0

    :cond_2
    const-string p0, "Info"

    return-object p0

    :cond_3
    const-string p0, "Debug"

    return-object p0

    :cond_4
    const-string p0, "Verbose"

    return-object p0
.end method

.method public static toLogLevel(Ljava/lang/String;)I
    .locals 6

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Verbose"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "Error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "Debug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "None"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "Info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v5

    goto :goto_1

    :sswitch_5
    const-string v0, "Warning"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    return v1

    :cond_3
    return v3

    :cond_4
    return v4

    :cond_5
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x59c1b884 -> :sswitch_5
        0x22d8ce -> :sswitch_4
        0x252358 -> :sswitch_3
        0x3eda633 -> :sswitch_2
        0x401e1e8 -> :sswitch_1
        0x78261162 -> :sswitch_0
    .end sparse-switch
.end method
