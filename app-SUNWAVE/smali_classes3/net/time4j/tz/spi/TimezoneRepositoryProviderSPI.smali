.class public Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;
.super Ljava/lang/Object;
.source "TimezoneRepositoryProviderSPI.java"

# interfaces
.implements Lnet/time4j/tz/ZoneModelProvider;
.implements Lnet/time4j/scale/LeapSecondProvider;


# instance fields
.field private final aliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final expires:Lnet/time4j/PlainDate;

.field private final leapsecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/base/GregorianDate;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final location:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, ""

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getMinimum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lnet/time4j/PlainDate;

    .line 82
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 83
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "net.time4j.scale.leapseconds.path"

    .line 86
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    iput-object v8, v1, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->leapsecs:Ljava/util/Map;

    goto :goto_1

    .line 90
    :cond_1
    new-instance v8, Ljava/util/LinkedHashMap;

    const/16 v9, 0x32

    invoke-direct {v8, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v8, v1, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->leapsecs:Ljava/util/Map;

    :goto_1
    const-string v8, "net.time4j.tz.repository.path"

    .line 94
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "net.time4j.tz.repository.version"

    .line 96
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "tzdata"

    if-nez v9, :cond_2

    const-string v9, "tzdata.repository"

    goto :goto_2

    .line 102
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".repository"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 106
    :goto_2
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tzrepo/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_5

    .line 109
    :try_start_1
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v13}, Ljava/io/File;->isAbsolute()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 112
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 113
    invoke-virtual {v13}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v8

    goto :goto_3

    .line 115
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Path to tz-repository not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_4
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v8

    invoke-static {}, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->getReference()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v10, v9, v13}, Lnet/time4j/base/ResourceLoader;->locate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v8, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v3

    goto/16 :goto_c

    .line 121
    :cond_5
    :try_start_2
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v8

    invoke-static {}, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->getReference()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v10, v9, v12}, Lnet/time4j/base/ResourceLoader;->locate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    if-eqz v8, :cond_6

    .line 125
    :try_start_3
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v9

    invoke-virtual {v9, v8, v6}, Lnet/time4j/base/ResourceLoader;->load(Ljava/net/URI;Z)Ljava/io/InputStream;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    :try_start_4
    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v8, v2

    move-object/from16 v16, v8

    goto/16 :goto_a

    :cond_6
    move-object v8, v2

    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_8

    .line 131
    :try_start_5
    invoke-static {}, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->getReference()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 135
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 136
    invoke-virtual {v10, v7}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 137
    invoke-virtual {v10}, Ljava/net/URLConnection;->connect()V

    .line 138
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 139
    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 133
    :cond_7
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Classloader cannot access tz-repository: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_8
    :goto_5
    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 144
    invoke-static {v9, v8}, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->checkMagicLabel(Ljava/io/DataInputStream;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    .line 146
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 148
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    move v14, v7

    :goto_6
    if-ge v14, v12, :cond_b

    .line 151
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15

    .line 152
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 153
    new-array v11, v7, [B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/4 v2, 0x0

    :cond_9
    sub-int v3, v7, v2

    .line 157
    :try_start_6
    invoke-virtual {v9, v11, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    if-gt v7, v2, :cond_9

    .line 163
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {v4, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/4 v7, 0x0

    goto :goto_6

    .line 159
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incomplete data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 167
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_c

    .line 170
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 171
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 172
    invoke-interface {v5, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    if-nez v0, :cond_e

    .line 176
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v0, :cond_d

    .line 179
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 180
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 181
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    .line 182
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v12

    .line 184
    iget-object v13, v1, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->leapsecs:Ljava/util/Map;

    .line 185
    invoke-static {v2, v3, v11}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v2

    .line 186
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 184
    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 189
    :cond_d
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 190
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 191
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 192
    invoke-static {v0, v2, v3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :cond_e
    move-object/from16 v3, v17

    :goto_9
    if-eqz v6, :cond_f

    .line 202
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_f
    move-object v2, v10

    const/4 v11, 0x0

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v11, v6

    goto :goto_f

    :catch_4
    move-exception v0

    move-object/from16 v16, v2

    :goto_a
    move-object/from16 v17, v3

    :goto_b
    move-object v11, v6

    goto :goto_d

    :catchall_1
    move-exception v0

    const/4 v11, 0x0

    goto :goto_f

    :catch_5
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v8, v16

    :goto_c
    const/4 v11, 0x0

    .line 198
    :goto_d
    :try_start_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ERROR] TZ-repository not available. => "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v11, :cond_10

    .line 202
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    :cond_10
    move-object v11, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    :goto_e
    if-nez v11, :cond_11

    .line 213
    iput-object v2, v1, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->version:Ljava/lang/String;

    .line 214
    iput-object v8, v1, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->location:Ljava/lang/String;

    .line 215
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->data:Ljava/util/Map;

    .line 216
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->aliases:Ljava/util/Map;

    .line 217
    iput-object v3, v1, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->expires:Lnet/time4j/PlainDate;

    return-void

    .line 210
    :cond_11
    throw v11

    :catchall_2
    move-exception v0

    :goto_f
    if-eqz v11, :cond_12

    .line 202
    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 205
    :catch_7
    :cond_12
    throw v0
.end method

.method private static checkMagicLabel(Ljava/io/DataInputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 336
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 337
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 338
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 339
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 340
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    const/16 v5, 0x74

    if-ne v0, v5, :cond_0

    const/16 v0, 0x7a

    if-ne v1, v0, :cond_0

    const/16 v0, 0x72

    if-ne v2, v0, :cond_0

    const/16 v0, 0x65

    if-ne v3, v0, :cond_0

    const/16 v0, 0x70

    if-ne v4, v0, :cond_0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_0

    return-void

    .line 350
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid tz-repository: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getReference()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "test.environment"

    .line 357
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "net.time4j.tz.spi.RepositoryTest"

    .line 359
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 361
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 365
    :cond_0
    const-class v0, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;

    return-object v0
.end method


# virtual methods
.method public getAliases()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->aliases:Ljava/util/Map;

    return-object v0
.end method

.method public getAvailableIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDateOfEvent(III)Lnet/time4j/PlainDate;
    .locals 0

    .line 312
    invoke-static {p1, p2, p3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDateOfEvent(III)Lnet/time4j/base/GregorianDate;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->getDateOfEvent(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public getDateOfExpiration()Lnet/time4j/PlainDate;
    .locals 1

    .line 319
    iget-object v0, p0, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->expires:Lnet/time4j/PlainDate;

    return-object v0
.end method

.method public bridge synthetic getDateOfExpiration()Lnet/time4j/base/GregorianDate;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->getDateOfExpiration()Lnet/time4j/PlainDate;

    move-result-object v0

    return-object v0
.end method

.method public getFallback()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getLeapSecondTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/time4j/base/GregorianDate;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->leapsecs:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "TZDB"

    return-object v0
.end method

.method public getSpecificZoneNameRepository()Lnet/time4j/tz/ZoneNameProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->version:Ljava/lang/String;

    return-object v0
.end method

.method public load(Ljava/lang/String;)Lnet/time4j/tz/TransitionHistory;
    .locals 2

    .line 241
    :try_start_0
    iget-object v0, p0, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_0

    .line 243
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 244
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/TransitionHistory;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public supportsNegativeLS()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->leapsecs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TZ-REPOSITORY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/tz/spi/TimezoneRepositoryProviderSPI;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
