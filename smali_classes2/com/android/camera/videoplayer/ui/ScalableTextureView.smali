.class public abstract Lcom/android/camera/videoplayer/ui/ScalableTextureView;
.super Landroid/view/TextureView;
.source "ScalableTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/videoplayer/ui/ScalableTextureView$ScaleType;
    }
.end annotation


# static fields
.field public static final SHOW_LOGS:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mContentHeight:Ljava/lang/Integer;

.field public mContentRotation:F

.field public mContentScaleMultiplier:F

.field public mContentScaleX:F

.field public mContentScaleY:F

.field public mContentWidth:Ljava/lang/Integer;

.field public mContentX:I

.field public mContentY:I

.field public mPivotPointX:F

.field public mPivotPointY:F

.field public mScaleType:Lcom/android/camera/videoplayer/ui/ScalableTextureView$ScaleType;

.field public final mTransformMatrix:Landroid/graphics/Matrix;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointX:F

    .line 3
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleX:F

    .line 5
    iput v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleY:F

    .line 6
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentRotation:F

    .line 7
    iput v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleMultiplier:F

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentX:I

    .line 9
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentY:I

    .line 10
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointX:F

    .line 13
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointY:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 14
    iput p2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleX:F

    .line 15
    iput p2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleY:F

    .line 16
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentRotation:F

    .line 17
    iput p2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleMultiplier:F

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentX:I

    .line 19
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentY:I

    .line 20
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointX:F

    .line 23
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointY:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 24
    iput p2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleX:F

    .line 25
    iput p2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleY:F

    .line 26
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentRotation:F

    .line 27
    iput p2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleMultiplier:F

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentX:I

    .line 29
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentY:I

    .line 30
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointX:F

    .line 33
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointY:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 34
    iput p2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleX:F

    .line 35
    iput p2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleY:F

    .line 36
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentRotation:F

    .line 37
    iput p2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleMultiplier:F

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentX:I

    .line 39
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentY:I

    .line 40
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private updateMatrixScaleRotate()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleX:F

    iget v2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleMultiplier:F

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleY:F

    mul-float/2addr v3, v2

    iget v2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointX:F

    iget v4, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointY:F

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentRotation:F

    iget v2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointX:F

    iget v3, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private updateMatrixTranslate()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleX:F

    iget v1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleMultiplier:F

    mul-float/2addr v0, v1

    .line 2
    iget v2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleY:F

    mul-float/2addr v2, v1

    .line 3
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointX:F

    iget v4, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointY:F

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public centralizeContent()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->getScaledContentWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->getScaledContentHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentX:I

    .line 6
    iput v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentY:I

    .line 7
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->updateMatrixScaleRotate()V

    return-void
.end method

.method public getContentAspectRatio()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getContentHeight()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public getContentScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleMultiplier:F

    return p0
.end method

.method public final getContentWidth()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getContentX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentX:I

    int-to-float p0, p0

    return p0
.end method

.method public final getContentY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentY:I

    int-to-float p0, p0

    return p0
.end method

.method public getPivotX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointX:F

    return p0
.end method

.method public getPivotY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointY:F

    return p0
.end method

.method public getRotation()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentRotation:F

    return p0
.end method

.method public getScaledContentHeight()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleY:F

    iget v1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleMultiplier:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getScaledContentWidth()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleX:F

    iget v1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleMultiplier:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->updateTextureViewSize()V

    :cond_0
    return-void
.end method

.method public final setContentHeight(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    return-void
.end method

.method public setContentScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleMultiplier:F

    .line 2
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->updateMatrixScaleRotate()V

    return-void
.end method

.method public final setContentWidth(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    return-void
.end method

.method public final setContentX(F)V
    .locals 2

    float-to-int p1, p1

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->getScaledContentWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentX:I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->updateMatrixTranslate()V

    return-void
.end method

.method public final setContentY(F)V
    .locals 2

    float-to-int p1, p1

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->getScaledContentHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentY:I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->updateMatrixTranslate()V

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointX:F

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointY:F

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentRotation:F

    .line 2
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->updateMatrixScaleRotate()V

    return-void
.end method

.method public setScaleType(Lcom/android/camera/videoplayer/ui/ScalableTextureView$ScaleType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mScaleType:Lcom/android/camera/videoplayer/ui/ScalableTextureView$ScaleType;

    return-void
.end method

.method public updateTextureViewSize()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 4
    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    .line 5
    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    .line 6
    sget-object v4, Lcom/android/camera/videoplayer/ui/ScalableTextureView$1;->$SwitchMap$com$android$camera$videoplayer$ui$ScalableTextureView$ScaleType:[I

    iget-object v5, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mScaleType:Lcom/android/camera/videoplayer/ui/ScalableTextureView$ScaleType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    if-eq v4, v5, :cond_5

    if-eq v4, v8, :cond_0

    if-eq v4, v7, :cond_0

    if-eq v4, v6, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v4, v2, v0

    if-lez v4, :cond_1

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    div-float/2addr v2, v0

    div-float/2addr v3, v1

    goto :goto_3

    :cond_1
    cmpg-float v4, v2, v0

    if-gez v4, :cond_2

    cmpg-float v4, v3, v1

    if-gez v4, :cond_2

    div-float v2, v0, v2

    div-float v3, v1, v3

    move v12, v3

    move v3, v2

    move v2, v12

    goto :goto_3

    :cond_2
    cmpl-float v4, v0, v2

    if-lez v4, :cond_3

    div-float v2, v0, v2

    div-float v3, v1, v3

    div-float v3, v2, v3

    goto :goto_2

    :cond_3
    cmpl-float v4, v1, v3

    if-lez v4, :cond_4

    div-float v3, v1, v3

    div-float v2, v0, v2

    div-float v2, v3, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v9

    move v3, v2

    goto :goto_3

    :cond_5
    cmpl-float v4, v0, v1

    if-lez v4, :cond_6

    mul-float/2addr v2, v1

    mul-float/2addr v3, v0

    div-float/2addr v2, v3

    :goto_1
    move v3, v9

    goto :goto_3

    :cond_6
    mul-float/2addr v3, v0

    mul-float/2addr v2, v1

    div-float/2addr v3, v2

    :goto_2
    move v2, v9

    .line 7
    :goto_3
    sget-object v4, Lcom/android/camera/videoplayer/ui/ScalableTextureView$1;->$SwitchMap$com$android$camera$videoplayer$ui$ScalableTextureView$ScaleType:[I

    iget-object v10, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mScaleType:Lcom/android/camera/videoplayer/ui/ScalableTextureView$ScaleType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v4, v4, v10

    const/4 v10, 0x0

    if-eq v4, v5, :cond_a

    if-eq v4, v8, :cond_9

    if-eq v4, v7, :cond_8

    if-ne v4, v6, :cond_7

    move v4, v10

    goto :goto_4

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pivotPointX, pivotPointY for ScaleType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mScaleType:Lcom/android/camera/videoplayer/ui/ScalableTextureView$ScaleType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " are not defined"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/high16 v4, 0x40000000    # 2.0f

    div-float v10, v0, v4

    div-float v4, v1, v4

    goto :goto_4

    :cond_9
    move v10, v0

    move v4, v1

    goto :goto_4

    .line 9
    :cond_a
    iget v10, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointX:F

    .line 10
    iget v4, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointY:F

    .line 11
    :goto_4
    sget-object v5, Lcom/android/camera/videoplayer/ui/ScalableTextureView$1;->$SwitchMap$com$android$camera$videoplayer$ui$ScalableTextureView$ScaleType:[I

    iget-object v11, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mScaleType:Lcom/android/camera/videoplayer/ui/ScalableTextureView$ScaleType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v5, v5, v11

    if-eq v5, v8, :cond_b

    if-eq v5, v7, :cond_b

    if-eq v5, v6, :cond_b

    goto :goto_5

    .line 12
    :cond_b
    iget-object v5, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_c

    mul-float v1, v0, v2

    div-float v9, v0, v1

    goto :goto_5

    :cond_c
    mul-float v0, v1, v3

    div-float v9, v1, v0

    :goto_5
    mul-float/2addr v2, v9

    .line 13
    iput v2, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleX:F

    mul-float/2addr v9, v3

    .line 14
    iput v9, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mContentScaleY:F

    .line 15
    iput v10, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointX:F

    .line 16
    iput v4, p0, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->mPivotPointY:F

    .line 17
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->updateMatrixScaleRotate()V

    return-void

    .line 18
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "null content size"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
