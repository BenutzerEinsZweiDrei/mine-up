.class public final Lcom/beefe/picker/util/MIUIUtils;
.super Ljava/lang/Object;
.source "MIUIUtils.java"


# static fields
.field private static final KEY_MIUI_INTERNAL_STORAGE:Ljava/lang/String; = "ro.miui.internal.storage"

.field private static final KEY_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMIUI()Z
    .locals 4

    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-static {}, Lcom/beefe/picker/util/BuildProperties;->newInstance()Lcom/beefe/picker/util/BuildProperties;

    move-result-object v1

    const-string v2, "ro.miui.ui.version.code"

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/beefe/picker/util/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "ro.miui.ui.version.name"

    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/beefe/picker/util/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "ro.miui.internal.storage"

    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/beefe/picker/util/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method
