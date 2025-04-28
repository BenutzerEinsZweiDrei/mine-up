.class public Lcom/google/android/cameraview/CameraView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/cameraview/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/cameraview/CameraView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field autoFocus:Z

.field cameraId:Ljava/lang/String;

.field exposure:F

.field facing:I

.field flash:I

.field focusDepth:F

.field pictureSize:Lcom/google/android/cameraview/Size;

.field playSoundOnCapture:Z

.field playSoundOnRecord:Z

.field ratio:Lcom/google/android/cameraview/AspectRatio;

.field scanning:Z

.field whiteBalance:I

.field zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 824
    new-instance v0, Lcom/google/android/cameraview/CameraView$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/cameraview/CameraView$SavedState$1;-><init>()V

    .line 825
    invoke-static {v0}, Landroidx/core/os/ParcelableCompat;->newCreator(Landroidx/core/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/google/android/cameraview/CameraView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 3

    .line 786
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->facing:I

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->cameraId:Ljava/lang/String;

    .line 789
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/AspectRatio;

    iput-object v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->ratio:Lcom/google/android/cameraview/AspectRatio;

    .line 790
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->autoFocus:Z

    .line 791
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->flash:I

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->exposure:F

    .line 793
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->focusDepth:F

    .line 794
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->zoom:F

    .line 795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->whiteBalance:I

    .line 796
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->playSoundOnCapture:Z

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->playSoundOnRecord:Z

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/google/android/cameraview/CameraView$SavedState;->scanning:Z

    .line 799
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/cameraview/Size;

    iput-object p1, p0, Lcom/google/android/cameraview/CameraView$SavedState;->pictureSize:Lcom/google/android/cameraview/Size;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 803
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 808
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 809
    iget v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->facing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->cameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->ratio:Lcom/google/android/cameraview/AspectRatio;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 812
    iget-boolean v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->autoFocus:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 813
    iget v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->flash:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->exposure:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 815
    iget v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->focusDepth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 816
    iget v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->zoom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 817
    iget v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->whiteBalance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget-boolean v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->playSoundOnCapture:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 819
    iget-boolean v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->playSoundOnRecord:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 820
    iget-boolean v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->scanning:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 821
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$SavedState;->pictureSize:Lcom/google/android/cameraview/Size;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
