.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintText.java"


# static fields
.field public static final RECORDING_ROUND_WIDTH:F = 0.265f


# instance fields
.field public isRecordingCircle:Z

.field public isRoundingCircle:Z

.field public mCurrentRoundRectRadius:F

.field public mRectF:Landroid/graphics/RectF;

.field public mRoundingProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mRoundingProgress:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->isRecordingCircle:Z

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    const v3, 0x3f0ccccd    # 0.55f

    mul-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->isRoundingCircle:Z

    if-eqz v0, :cond_2

    .line 6
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mRoundingProgress:F

    mul-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mCurrentRoundRectRadius:F

    mul-float/2addr v0, v1

    .line 8
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float v2, v1, v0

    add-float/2addr v1, v0

    .line 9
    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v4, v3, v0

    add-float/2addr v3, v0

    .line 10
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mRoundingProgress:F

    mul-float v3, v0, v2

    mul-float/2addr v0, v2

    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public initPaint(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public prepareRecord()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mCurrentRoundRectRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mRoundingProgress:F

    return-void
.end method

.method public resetRecordingState()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->isRecordingCircle:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->isRoundingCircle:Z

    return-void
.end method

.method public updateRecordValue(FZ)V
    .locals 4

    const v0, 0x3ee66666    # 0.45f

    const v1, 0x3f266666    # 0.65f

    const v2, 0x3e87ae14    # 0.265f

    if-eqz p2, :cond_1

    .line 1
    iget-boolean p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->isRoundingCircle:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    mul-float/2addr v0, p1

    sub-float/2addr v3, v0

    .line 2
    iput v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mRoundingProgress:F

    goto :goto_0

    :cond_0
    mul-float/2addr v1, p1

    sub-float/2addr v3, v1

    .line 3
    iput v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mRoundingProgress:F

    .line 4
    :goto_0
    iget p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    sub-float v0, p2, v2

    mul-float/2addr v0, p1

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mCurrentRoundRectRadius:F

    goto :goto_2

    .line 5
    :cond_1
    iget-boolean p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->isRoundingCircle:Z

    if-eqz p2, :cond_2

    const p2, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    .line 6
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mRoundingProgress:F

    goto :goto_1

    :cond_2
    const p2, 0x3eb33333    # 0.35f

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    .line 7
    iput v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mRoundingProgress:F

    .line 8
    :goto_1
    iget p2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    sub-float/2addr p2, v2

    mul-float/2addr p2, p1

    add-float/2addr p2, v2

    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintText;->mCurrentRoundRectRadius:F

    :goto_2
    return-void
.end method
