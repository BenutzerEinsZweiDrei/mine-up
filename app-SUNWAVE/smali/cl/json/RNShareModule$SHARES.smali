.class final enum Lcl/json/RNShareModule$SHARES;
.super Ljava/lang/Enum;
.source "RNShareModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/json/RNShareModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SHARES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcl/json/RNShareModule$SHARES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcl/json/RNShareModule$SHARES;

.field public static final enum email:Lcl/json/RNShareModule$SHARES;

.field public static final enum facebook:Lcl/json/RNShareModule$SHARES;

.field public static final enum facebookstories:Lcl/json/RNShareModule$SHARES;

.field public static final enum generic:Lcl/json/RNShareModule$SHARES;

.field public static final enum googleplus:Lcl/json/RNShareModule$SHARES;

.field public static final enum instagram:Lcl/json/RNShareModule$SHARES;

.field public static final enum instagramstories:Lcl/json/RNShareModule$SHARES;

.field public static final enum linkedin:Lcl/json/RNShareModule$SHARES;

.field public static final enum messenger:Lcl/json/RNShareModule$SHARES;

.field public static final enum pagesmanager:Lcl/json/RNShareModule$SHARES;

.field public static final enum pinterest:Lcl/json/RNShareModule$SHARES;

.field public static final enum sms:Lcl/json/RNShareModule$SHARES;

.field public static final enum snapchat:Lcl/json/RNShareModule$SHARES;

.field public static final enum telegram:Lcl/json/RNShareModule$SHARES;

.field public static final enum twitter:Lcl/json/RNShareModule$SHARES;

.field public static final enum viber:Lcl/json/RNShareModule$SHARES;

.field public static final enum whatsapp:Lcl/json/RNShareModule$SHARES;

.field public static final enum whatsappbusiness:Lcl/json/RNShareModule$SHARES;


# direct methods
.method private static synthetic $values()[Lcl/json/RNShareModule$SHARES;
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Lcl/json/RNShareModule$SHARES;

    .line 67
    sget-object v1, Lcl/json/RNShareModule$SHARES;->facebook:Lcl/json/RNShareModule$SHARES;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->facebookstories:Lcl/json/RNShareModule$SHARES;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->generic:Lcl/json/RNShareModule$SHARES;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->pagesmanager:Lcl/json/RNShareModule$SHARES;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->twitter:Lcl/json/RNShareModule$SHARES;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->whatsapp:Lcl/json/RNShareModule$SHARES;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->whatsappbusiness:Lcl/json/RNShareModule$SHARES;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->instagram:Lcl/json/RNShareModule$SHARES;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->instagramstories:Lcl/json/RNShareModule$SHARES;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->googleplus:Lcl/json/RNShareModule$SHARES;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->email:Lcl/json/RNShareModule$SHARES;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->pinterest:Lcl/json/RNShareModule$SHARES;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->messenger:Lcl/json/RNShareModule$SHARES;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->snapchat:Lcl/json/RNShareModule$SHARES;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->sms:Lcl/json/RNShareModule$SHARES;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->linkedin:Lcl/json/RNShareModule$SHARES;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->telegram:Lcl/json/RNShareModule$SHARES;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcl/json/RNShareModule$SHARES;->viber:Lcl/json/RNShareModule$SHARES;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "facebook"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->facebook:Lcl/json/RNShareModule$SHARES;

    .line 69
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "facebookstories"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->facebookstories:Lcl/json/RNShareModule$SHARES;

    .line 70
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "generic"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->generic:Lcl/json/RNShareModule$SHARES;

    .line 71
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "pagesmanager"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->pagesmanager:Lcl/json/RNShareModule$SHARES;

    .line 72
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string/jumbo v1, "twitter"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->twitter:Lcl/json/RNShareModule$SHARES;

    .line 73
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string/jumbo v1, "whatsapp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->whatsapp:Lcl/json/RNShareModule$SHARES;

    .line 74
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string/jumbo v1, "whatsappbusiness"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->whatsappbusiness:Lcl/json/RNShareModule$SHARES;

    .line 75
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "instagram"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->instagram:Lcl/json/RNShareModule$SHARES;

    .line 76
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "instagramstories"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->instagramstories:Lcl/json/RNShareModule$SHARES;

    .line 77
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "googleplus"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->googleplus:Lcl/json/RNShareModule$SHARES;

    .line 78
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "email"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->email:Lcl/json/RNShareModule$SHARES;

    .line 79
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "pinterest"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->pinterest:Lcl/json/RNShareModule$SHARES;

    .line 80
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "messenger"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->messenger:Lcl/json/RNShareModule$SHARES;

    .line 81
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "snapchat"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->snapchat:Lcl/json/RNShareModule$SHARES;

    .line 82
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "sms"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->sms:Lcl/json/RNShareModule$SHARES;

    .line 83
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string v1, "linkedin"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->linkedin:Lcl/json/RNShareModule$SHARES;

    .line 84
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string/jumbo v1, "telegram"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->telegram:Lcl/json/RNShareModule$SHARES;

    .line 85
    new-instance v0, Lcl/json/RNShareModule$SHARES;

    const-string/jumbo v1, "viber"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareModule$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareModule$SHARES;->viber:Lcl/json/RNShareModule$SHARES;

    .line 67
    invoke-static {}, Lcl/json/RNShareModule$SHARES;->$values()[Lcl/json/RNShareModule$SHARES;

    move-result-object v0

    sput-object v0, Lcl/json/RNShareModule$SHARES;->$VALUES:[Lcl/json/RNShareModule$SHARES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getShareClass(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcl/json/social/ShareIntent;
    .locals 1

    .line 89
    invoke-static {p0}, Lcl/json/RNShareModule$SHARES;->valueOf(Ljava/lang/String;)Lcl/json/RNShareModule$SHARES;

    move-result-object p0

    .line 90
    sget-object v0, Lcl/json/RNShareModule$1;->$SwitchMap$cl$json$RNShareModule$SHARES:[I

    invoke-virtual {p0}, Lcl/json/RNShareModule$SHARES;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 126
    :pswitch_0
    new-instance p0, Lcl/json/social/ViberShare;

    invoke-direct {p0, p1}, Lcl/json/social/ViberShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 124
    :pswitch_1
    new-instance p0, Lcl/json/social/TelegramShare;

    invoke-direct {p0, p1}, Lcl/json/social/TelegramShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 122
    :pswitch_2
    new-instance p0, Lcl/json/social/LinkedinShare;

    invoke-direct {p0, p1}, Lcl/json/social/LinkedinShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 120
    :pswitch_3
    new-instance p0, Lcl/json/social/MessengerShare;

    invoke-direct {p0, p1}, Lcl/json/social/MessengerShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 118
    :pswitch_4
    new-instance p0, Lcl/json/social/SnapChatShare;

    invoke-direct {p0, p1}, Lcl/json/social/SnapChatShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 116
    :pswitch_5
    new-instance p0, Lcl/json/social/SMSShare;

    invoke-direct {p0, p1}, Lcl/json/social/SMSShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 114
    :pswitch_6
    new-instance p0, Lcl/json/social/PinterestShare;

    invoke-direct {p0, p1}, Lcl/json/social/PinterestShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 112
    :pswitch_7
    new-instance p0, Lcl/json/social/EmailShare;

    invoke-direct {p0, p1}, Lcl/json/social/EmailShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 110
    :pswitch_8
    new-instance p0, Lcl/json/social/GooglePlusShare;

    invoke-direct {p0, p1}, Lcl/json/social/GooglePlusShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 108
    :pswitch_9
    new-instance p0, Lcl/json/social/InstagramStoriesShare;

    invoke-direct {p0, p1}, Lcl/json/social/InstagramStoriesShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 106
    :pswitch_a
    new-instance p0, Lcl/json/social/InstagramShare;

    invoke-direct {p0, p1}, Lcl/json/social/InstagramShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 104
    :pswitch_b
    new-instance p0, Lcl/json/social/WhatsAppBusinessShare;

    invoke-direct {p0, p1}, Lcl/json/social/WhatsAppBusinessShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 102
    :pswitch_c
    new-instance p0, Lcl/json/social/WhatsAppShare;

    invoke-direct {p0, p1}, Lcl/json/social/WhatsAppShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 100
    :pswitch_d
    new-instance p0, Lcl/json/social/TwitterShare;

    invoke-direct {p0, p1}, Lcl/json/social/TwitterShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 98
    :pswitch_e
    new-instance p0, Lcl/json/social/FacebookPagesManagerShare;

    invoke-direct {p0, p1}, Lcl/json/social/FacebookPagesManagerShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 96
    :pswitch_f
    new-instance p0, Lcl/json/social/FacebookStoriesShare;

    invoke-direct {p0, p1}, Lcl/json/social/FacebookStoriesShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 94
    :pswitch_10
    new-instance p0, Lcl/json/social/FacebookShare;

    invoke-direct {p0, p1}, Lcl/json/social/FacebookShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 92
    :pswitch_11
    new-instance p0, Lcl/json/social/GenericShare;

    invoke-direct {p0, p1}, Lcl/json/social/GenericShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/json/RNShareModule$SHARES;
    .locals 1

    .line 67
    const-class v0, Lcl/json/RNShareModule$SHARES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcl/json/RNShareModule$SHARES;

    return-object p0
.end method

.method public static values()[Lcl/json/RNShareModule$SHARES;
    .locals 1

    .line 67
    sget-object v0, Lcl/json/RNShareModule$SHARES;->$VALUES:[Lcl/json/RNShareModule$SHARES;

    invoke-virtual {v0}, [Lcl/json/RNShareModule$SHARES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcl/json/RNShareModule$SHARES;

    return-object v0
.end method
