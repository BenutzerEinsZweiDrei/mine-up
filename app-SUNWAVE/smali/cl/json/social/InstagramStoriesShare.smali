.class public Lcl/json/social/InstagramStoriesShare;
.super Lcl/json/social/SingleShareIntent;
.source "InstagramStoriesShare.java"


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "com.instagram.android"

.field private static final PLAY_STORE_LINK:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=com.instagram.android"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcl/json/social/SingleShareIntent;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 25
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.instagram.share.ADD_TO_STORY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcl/json/social/InstagramStoriesShare;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private shareStory(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 13

    const-string v0, "backgroundImage"

    .line 52
    invoke-static {v0, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    const-string v2, "stickerImage"

    const-string v3, "backgroundVideo"

    if-nez v1, :cond_1

    invoke-static {v3, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-static {v2, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid background or sticker assets provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1
    :goto_0
    iget-object v1, p0, Lcl/json/social/InstagramStoriesShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "Something went wrong"

    aput-object v0, p1, v5

    .line 60
    invoke-static {v5, p1}, Lcl/json/social/TargetChosenReceiver;->sendCallback(Z[Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_2
    iget-object v6, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    const-string v7, "bottom_background_color"

    const-string v8, "#906df4"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v6, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    const-string/jumbo v8, "top_background_color"

    const-string v9, "#837DF4"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "attributionURL"

    .line 67
    invoke-static {v6, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 68
    iget-object v9, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "content_url"

    invoke-virtual {v9, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v6, "backgroundTopColor"

    .line 71
    invoke-static {v6, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 72
    iget-object v9, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v6, "backgroundBottomColor"

    .line 75
    invoke-static {v6, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 76
    iget-object v8, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :cond_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string/jumbo v7, "useInternalStorage"

    .line 80
    invoke-static {v7, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 81
    invoke-interface {p1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 84
    :cond_6
    invoke-static {v0, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 85
    invoke-static {v3, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v5, v4

    .line 84
    :cond_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 91
    invoke-static {v0, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v7

    const-string v8, "image/jpeg"

    if-eqz v7, :cond_9

    .line 92
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 93
    :cond_9
    invoke-static {v3, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 94
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "video/*"

    move-object v8, v0

    move-object v9, v3

    goto :goto_2

    :cond_a
    const-string v0, ""

    :goto_1
    move-object v9, v8

    move-object v8, v0

    .line 98
    :goto_2
    new-instance v0, Lcl/json/ShareFile;

    iget-object v12, p0, Lcl/json/social/InstagramStoriesShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v10, "background"

    move-object v7, v0

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Lcl/json/ShareFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 100
    iget-object v3, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Lcl/json/ShareFile;->getURI()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0}, Lcl/json/ShareFile;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    :cond_b
    invoke-static {v2, p1}, Lcl/json/social/InstagramStoriesShare;->hasValidKey(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 105
    new-instance v0, Lcl/json/ShareFile;

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, p0, Lcl/json/social/InstagramStoriesShare;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v9, "image/png"

    const-string v10, "sticker"

    move-object v7, v0

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Lcl/json/ShareFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 107
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c

    .line 108
    iget-object p1, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    const-string v2, "image/*"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :cond_c
    iget-object p1, p0, Lcl/json/social/InstagramStoriesShare;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Lcl/json/ShareFile;->getURI()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "interactive_asset_uri"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    invoke-virtual {v0}, Lcl/json/ShareFile;->getURI()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "com.instagram.android"

    invoke-virtual {v1, v0, p1, v4}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_d
    return-void
.end method


# virtual methods
.method protected getDefaultWebLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .locals 1

    const-string v0, "com.instagram.android"

    return-object v0
.end method

.method protected getPlayStoreLink()Ljava/lang/String;
    .locals 1

    const-string v0, "https://play.google.com/store/apps/details?id=com.instagram.android"

    return-object v0
.end method

.method public open(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcl/json/social/SingleShareIntent;->open(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 31
    invoke-direct {p0, p1}, Lcl/json/social/InstagramStoriesShare;->shareStory(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 33
    invoke-virtual {p0, p1}, Lcl/json/social/InstagramStoriesShare;->openIntentChooser(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method
