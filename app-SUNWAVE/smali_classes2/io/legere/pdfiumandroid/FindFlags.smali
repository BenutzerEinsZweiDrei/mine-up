.class public final enum Lio/legere/pdfiumandroid/FindFlags;
.super Ljava/lang/Enum;
.source "PdfTextPage.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/legere/pdfiumandroid/FindFlags;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/FindFlags;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "MatchCase",
        "MatchWholeWord",
        "Consecutive",
        "pdfiumandroid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/legere/pdfiumandroid/FindFlags;

.field public static final enum Consecutive:Lio/legere/pdfiumandroid/FindFlags;

.field public static final enum MatchCase:Lio/legere/pdfiumandroid/FindFlags;

.field public static final enum MatchWholeWord:Lio/legere/pdfiumandroid/FindFlags;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lio/legere/pdfiumandroid/FindFlags;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/legere/pdfiumandroid/FindFlags;

    sget-object v1, Lio/legere/pdfiumandroid/FindFlags;->MatchCase:Lio/legere/pdfiumandroid/FindFlags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/legere/pdfiumandroid/FindFlags;->MatchWholeWord:Lio/legere/pdfiumandroid/FindFlags;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/legere/pdfiumandroid/FindFlags;->Consecutive:Lio/legere/pdfiumandroid/FindFlags;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 418
    new-instance v0, Lio/legere/pdfiumandroid/FindFlags;

    const-string v1, "MatchCase"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/legere/pdfiumandroid/FindFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/legere/pdfiumandroid/FindFlags;->MatchCase:Lio/legere/pdfiumandroid/FindFlags;

    .line 419
    new-instance v0, Lio/legere/pdfiumandroid/FindFlags;

    const-string v1, "MatchWholeWord"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lio/legere/pdfiumandroid/FindFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/legere/pdfiumandroid/FindFlags;->MatchWholeWord:Lio/legere/pdfiumandroid/FindFlags;

    .line 420
    new-instance v0, Lio/legere/pdfiumandroid/FindFlags;

    const-string v1, "Consecutive"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lio/legere/pdfiumandroid/FindFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/legere/pdfiumandroid/FindFlags;->Consecutive:Lio/legere/pdfiumandroid/FindFlags;

    invoke-static {}, Lio/legere/pdfiumandroid/FindFlags;->$values()[Lio/legere/pdfiumandroid/FindFlags;

    move-result-object v0

    sput-object v0, Lio/legere/pdfiumandroid/FindFlags;->$VALUES:[Lio/legere/pdfiumandroid/FindFlags;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/legere/pdfiumandroid/FindFlags;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 415
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 416
    iput p3, p0, Lio/legere/pdfiumandroid/FindFlags;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/legere/pdfiumandroid/FindFlags;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/legere/pdfiumandroid/FindFlags;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/legere/pdfiumandroid/FindFlags;
    .locals 1

    const-class v0, Lio/legere/pdfiumandroid/FindFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 421
    check-cast p0, Lio/legere/pdfiumandroid/FindFlags;

    return-object p0
.end method

.method public static values()[Lio/legere/pdfiumandroid/FindFlags;
    .locals 1

    sget-object v0, Lio/legere/pdfiumandroid/FindFlags;->$VALUES:[Lio/legere/pdfiumandroid/FindFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 421
    check-cast v0, [Lio/legere/pdfiumandroid/FindFlags;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 416
    iget v0, p0, Lio/legere/pdfiumandroid/FindFlags;->value:I

    return v0
.end method
