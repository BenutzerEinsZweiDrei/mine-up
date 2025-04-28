.class Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;
.super Ljava/lang/Object;
.source "LocalizedGMTProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/expert/LocalizedGMTProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation


# instance fields
.field private final end:I

.field private final pattern:Ljava/lang/String;

.field private final separator:Ljava/lang/String;

.field private final start:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p1, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->pattern:Ljava/lang/String;

    .line 735
    iput-object p2, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->separator:Ljava/lang/String;

    .line 736
    iput p3, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->start:I

    .line 737
    iput p4, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->end:I

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)Ljava/lang/String;
    .locals 0

    .line 715
    iget-object p0, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)I
    .locals 0

    .line 715
    iget p0, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->start:I

    return p0
.end method

.method static synthetic access$200(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)I
    .locals 0

    .line 715
    iget p0, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->end:I

    return p0
.end method

.method static synthetic access$300(Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;)Ljava/lang/String;
    .locals 0

    .line 715
    iget-object p0, p0, Lnet/time4j/format/expert/LocalizedGMTProcessor$Info;->separator:Ljava/lang/String;

    return-object p0
.end method
