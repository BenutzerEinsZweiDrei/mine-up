.class public Lcom/henninghall/date_picker/Formats;
.super Ljava/lang/Object;
.source "Formats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henninghall/date_picker/Formats$FormatNotFoundException;,
        Lcom/henninghall/date_picker/Formats$Format;
    }
.end annotation


# static fields
.field public static defaultFormat:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/henninghall/date_picker/Formats$Format;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/EnumMap<",
            "Lcom/henninghall/date_picker/Formats$Format;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EEE, MMM d"

    const-string v1, "d"

    const-string v2, "y"

    .line 8
    invoke-static {v0, v1, v2}, Lcom/henninghall/date_picker/Formats;->mapOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;

    move-result-object v0

    sput-object v0, Lcom/henninghall/date_picker/Formats;->defaultFormat:Ljava/util/EnumMap;

    .line 23
    new-instance v0, Lcom/henninghall/date_picker/Formats$1;

    invoke-direct {v0}, Lcom/henninghall/date_picker/Formats$1;-><init>()V

    sput-object v0, Lcom/henninghall/date_picker/Formats;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    .locals 0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/henninghall/date_picker/Formats;->mapOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Lcom/henninghall/date_picker/Formats$Format;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henninghall/date_picker/Formats$FormatNotFoundException;
        }
    .end annotation

    .line 16
    :try_start_0
    sget-object v0, Lcom/henninghall/date_picker/Formats;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, ","

    const-string v0, ""

    .line 17
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 19
    :catch_0
    new-instance p0, Lcom/henninghall/date_picker/Formats$FormatNotFoundException;

    invoke-direct {p0}, Lcom/henninghall/date_picker/Formats$FormatNotFoundException;-><init>()V

    throw p0
.end method

.method private static mapOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumMap<",
            "Lcom/henninghall/date_picker/Formats$Format;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/henninghall/date_picker/Formats$2;

    const-class v1, Lcom/henninghall/date_picker/Formats$Format;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/henninghall/date_picker/Formats$2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
