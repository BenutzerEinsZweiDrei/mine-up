.class public Lcl/json/social/FacebookStoriesShare;
.super Lcl/json/social/SingleShareIntent;
.source "FacebookStoriesShare.java"


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "com.facebook.katana"

.field private static final PLAY_STORE_LINK:Ljava/lang/String; = "market://details?id=com.facebook.katana"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcl/json/social/SingleShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 25
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.facebook.stories.ADD_TO_STORY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcl/json/social/FacebookStoriesShare;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private shareStory(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 13

    const-string v0, "appId"

    .line 52
    invoke-static {v0, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "backgroundImage"

    .line 56
    invoke-static {v1, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v2

    const-string v3, "stickerImage"

    const-string v4, "backgroundVideo"

    if-nez v2, :cond_1

    invoke-static {v4, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    invoke-static {v3, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid background or sticker assets provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    :goto_0
    iget-object v2, p0, Lcl/json/social/FacebookStoriesShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_2

    new-array p1, v5, [Ljava/lang/Object;

    const-string v0, "Something went wrong"

    aput-object v0, p1, v6

    .line 64
    invoke-static {v6, p1}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_2
    iget-object v7, p0, Lcl/json/social/FacebookStoriesShare;->intent:Landroid/content/Intent;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.facebook.platform.extra.APPLICATION_ID"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcl/json/social/FacebookStoriesShare;->intent:Landroid/content/Intent;

    const-string v7, "bottom_background_color"

    const-string v8, "#906df4"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcl/json/social/FacebookStoriesShare;->intent:Landroid/content/Intent;

    const-string/jumbo v8, "top_background_color"

    const-string v9, "#837DF4"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "attributionURL"

    .line 72
    invoke-static {v0, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 73
    iget-object v9, p0, Lcl/json/social/FacebookStoriesShare;->intent:Landroid/content/Intent;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "content_url"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v0, "backgroundTopColor"

    .line 76
    invoke-static {v0, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 77
    iget-object v9, p0, Lcl/json/social/FacebookStoriesShare;->intent:Landroid/content/Intent;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v0, "backgroundBottomColor"

    .line 80
    invoke-static {v0, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 81
    iget-object v8, p0, Lcl/json/social/FacebookStoriesShare;->intent:Landroid/content/Intent;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    :cond_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v7, "useInternalStorage"

    .line 85
    invoke-static {v7, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 86
    invoke-interface {p1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 89
    :cond_6
    invoke-static {v1, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 90
    invoke-static {v4, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v6, v5

    .line 89
    :cond_8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 92
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 95
    invoke-static {v1, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 96
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 97
    :cond_9
    invoke-static {v4, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 98
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_a
    const-string v1, ""

    :goto_1
    move-object v8, v1

    .line 101
    new-instance v1, Lcl/json/ShareFile;

    iget-object v12, p0, Lcl/json/social/FacebookStoriesShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v9, "image/jpeg"

    const-string v10, "background"

    move-object v7, v1

    move-object v11, v0

    invoke-direct/range {v7 .. v12}, Lcl/json/ShareFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 103
    iget-object v4, p0, Lcl/json/social/FacebookStoriesShare;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Lcl/json/ShareFile;->getURI()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1}, Lcl/json/ShareFile;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcl/json/social/FacebookStoriesShare;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    :cond_b
    invoke-static {v3, p1}, Lcl/json/social/FacebookStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 108
    new-instance v1, Lcl/json/ShareFile;

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, p0, Lcl/json/social/FacebookStoriesShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v9, "image/png"

    const-string v10, "sticker"

    move-object v7, v1

    move-object v11, v0

    invoke-direct/range {v7 .. v12}, Lcl/json/ShareFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 110
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c

    .line 111
    iget-object p1, p0, Lcl/json/social/FacebookStoriesShare;->intent:Landroid/content/Intent;

    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    :cond_c
    iget-object p1, p0, Lcl/json/social/FacebookStoriesShare;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Lcl/json/ShareFile;->getURI()Landroid/net/Uri;

    move-result-object v0

    const-string v3, "interactive_asset_uri"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v1}, Lcl/json/ShareFile;->getURI()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "com.facebook.katana"

    invoke-virtual {v2, v0, p1, v5}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_d
    return-void

    .line 53
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appId was not provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected getDefaultWebLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.katana"

    return-object v0
.end method

.method protected getPlayStoreLink()Ljava/lang/String;
    .locals 1

    const-string v0, "market://details?id=com.facebook.katana"

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcl/json/social/SingleShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 31
    invoke-direct {p0, p1}, Lcl/json/social/FacebookStoriesShare;->shareStory(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 33
    invoke-virtual {p0, p1}, Lcl/json/social/FacebookStoriesShare;->openIntentChooser(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method
