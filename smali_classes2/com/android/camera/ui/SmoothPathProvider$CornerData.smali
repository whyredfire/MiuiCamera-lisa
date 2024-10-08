.class public Lcom/android/camera/ui/SmoothPathProvider$CornerData;
.super Ljava/lang/Object;
.source "SmoothPathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SmoothPathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CornerData"
.end annotation


# static fields
.field public static final BOTTOM_LEFT:I = 0x3

.field public static final BOTTOM_RIGHT:I = 0x2

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x1


# instance fields
.field public bezierAnchorHorizontal:[Landroid/graphics/PointF;

.field public bezierAnchorVertical:[Landroid/graphics/PointF;

.field public radius:F

.field public rect:Landroid/graphics/RectF;

.field public smoothForHorizontal:D

.field public smoothForVertical:D

.field public swapAngle:F

.field public thetaForHorizontal:D

.field public thetaForVertical:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/PointF;

    .line 2
    iput-object v1, p0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public build(FLandroid/graphics/RectF;FFDFI)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move/from16 v6, p7

    move/from16 v7, p1

    move/from16 v8, p8

    .line 1
    iput v7, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v9

    .line 4
    iget v10, v1, Landroid/graphics/RectF;->left:F

    .line 5
    iget v11, v1, Landroid/graphics/RectF;->top:F

    .line 6
    iget v12, v1, Landroid/graphics/RectF;->right:F

    .line 7
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 8
    iget v13, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    invoke-static {v7, v13, v4, v5, v6}, Lcom/android/camera/ui/SmoothPathProvider;->access$000(FFDF)D

    move-result-wide v13

    iput-wide v13, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    .line 9
    iget v7, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    invoke-static {v9, v7, v4, v5, v6}, Lcom/android/camera/ui/SmoothPathProvider;->access$100(FFDF)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->smoothForVertical:D

    .line 10
    iget-wide v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    invoke-static {v4, v5}, Lcom/android/camera/ui/SmoothPathProvider;->access$200(D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    .line 11
    iget-wide v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->smoothForVertical:D

    invoke-static {v4, v5}, Lcom/android/camera/ui/SmoothPathProvider;->access$300(D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForVertical:D

    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v13, v4

    .line 12
    iget-wide v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    sub-double/2addr v13, v4

    invoke-static {v13, v14}, Lcom/android/camera/ui/SmoothPathProvider;->access$400(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->swapAngle:F

    .line 13
    iget-wide v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget-wide v13, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    invoke-static {v4, v5, v13, v14}, Lcom/android/camera/ui/SmoothPathProvider;->access$500(DD)D

    move-result-wide v4

    .line 14
    iget v9, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    iget-wide v13, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    invoke-static {v9, v13, v14}, Lcom/android/camera/ui/SmoothPathProvider;->access$600(FD)D

    move-result-wide v13

    .line 15
    iget v9, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    move/from16 p1, v12

    move-wide/from16 p5, v13

    iget-wide v12, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    invoke-static {v9, v12, v13}, Lcom/android/camera/ui/SmoothPathProvider;->access$700(FD)D

    move-result-wide v12

    .line 16
    iget v9, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    iget-wide v14, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    invoke-static {v9, v14, v15}, Lcom/android/camera/ui/SmoothPathProvider;->access$800(FD)D

    move-result-wide v14

    .line 17
    iget v9, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v16, v14

    iget-wide v14, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    invoke-static {v9, v14, v15}, Lcom/android/camera/ui/SmoothPathProvider;->access$900(FD)D

    move-result-wide v14

    .line 18
    invoke-static {v4, v5, v14, v15}, Lcom/android/camera/ui/SmoothPathProvider;->access$1000(DD)D

    move-result-wide v4

    move-wide/from16 v18, v4

    .line 19
    iget-wide v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->smoothForVertical:D

    mul-double/2addr v4, v6

    iget-wide v6, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/ui/SmoothPathProvider;->access$1100(DD)D

    move-result-wide v4

    .line 20
    iget v6, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v20, v14

    iget-wide v14, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v6, v14, v15}, Lcom/android/camera/ui/SmoothPathProvider;->access$1200(FD)D

    move-result-wide v6

    .line 21
    iget v9, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    iget-wide v14, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v9, v14, v15}, Lcom/android/camera/ui/SmoothPathProvider;->access$1300(FD)D

    move-result-wide v14

    .line 22
    iget v9, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v22, v14

    iget-wide v14, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v9, v14, v15}, Lcom/android/camera/ui/SmoothPathProvider;->access$1400(FD)D

    move-result-wide v14

    .line 23
    iget v9, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v24, v6

    iget-wide v6, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v9, v6, v7}, Lcom/android/camera/ui/SmoothPathProvider;->access$1500(FD)D

    move-result-wide v6

    .line 24
    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/ui/SmoothPathProvider;->access$1600(DD)D

    move-result-wide v4

    const/high16 v26, 0x40000000    # 2.0f

    if-nez v8, :cond_0

    add-float/2addr v10, v2

    add-float/2addr v11, v3

    .line 25
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    mul-float v3, v2, v26

    add-float/2addr v3, v10

    mul-float v2, v2, v26

    add-float/2addr v2, v11

    invoke-direct {v1, v10, v11, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    .line 26
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    move-wide/from16 v27, v4

    float-to-double v3, v10

    move/from16 p1, v10

    add-double v9, p5, v3

    double-to-float v8, v9

    float-to-double v9, v11

    add-double/2addr v12, v9

    double-to-float v12, v12

    invoke-direct {v2, v8, v12}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v8, 0x0

    aput-object v2, v1, v8

    .line 27
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    add-double v12, v16, v3

    double-to-float v8, v12

    invoke-direct {v2, v8, v11}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 28
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    add-double v12, v16, v20

    move-wide/from16 v29, v6

    add-double v5, v12, v3

    double-to-float v5, v5

    invoke-direct {v2, v5, v11}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 29
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    add-double v12, v12, v18

    add-double/2addr v12, v3

    double-to-float v5, v12

    invoke-direct {v2, v5, v11}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 30
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    add-double v6, v14, v29

    add-double v11, v6, v27

    add-double/2addr v11, v9

    double-to-float v5, v11

    move/from16 v8, p1

    invoke-direct {v2, v8, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    aput-object v2, v1, v5

    .line 31
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    add-double/2addr v6, v9

    double-to-float v5, v6

    invoke-direct {v2, v8, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 32
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    add-double/2addr v14, v9

    double-to-float v5, v14

    invoke-direct {v2, v8, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 33
    iget-object v0, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    add-double v6, v24, v3

    double-to-float v2, v6

    add-double v14, v22, v9

    double-to-float v3, v14

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    const/4 v4, 0x1

    if-ne v8, v4, :cond_1

    add-float/2addr v11, v3

    .line 34
    new-instance v1, Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    mul-float v4, v3, v26

    sub-float v4, p1, v4

    sub-float/2addr v4, v2

    sub-float v6, p1, v2

    mul-float v3, v3, v26

    add-float/2addr v3, v11

    invoke-direct {v1, v4, v11, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    .line 35
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    move/from16 v4, p1

    float-to-double v7, v4

    sub-double v9, v7, v16

    sub-double v16, v9, v20

    sub-double v18, v16, v18

    move/from16 p4, v6

    float-to-double v5, v2

    move-wide/from16 v31, v14

    sub-double v14, v18, v5

    double-to-float v2, v14

    invoke-direct {v3, v2, v11}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 36
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    sub-double v3, v16, v5

    double-to-float v3, v3

    invoke-direct {v2, v3, v11}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 37
    iget-object v2, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    sub-double/2addr v9, v5

    double-to-float v4, v9

    invoke-direct {v3, v4, v11}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 38
    iget-object v2, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    sub-double v9, v7, p5

    sub-double/2addr v9, v5

    double-to-float v4, v9

    float-to-double v9, v11

    add-double/2addr v12, v9

    double-to-float v11, v12

    invoke-direct {v3, v4, v11}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 39
    iget-object v2, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    sub-double v7, v7, v24

    sub-double/2addr v7, v5

    double-to-float v4, v7

    add-double v14, v22, v9

    double-to-float v5, v14

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 40
    iget-object v2, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    add-double v14, v31, v9

    double-to-float v4, v14

    move/from16 v12, p4

    invoke-direct {v3, v12, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x1

    aput-object v3, v2, v1

    .line 41
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    add-double v14, v31, v29

    add-double v3, v14, v9

    double-to-float v3, v3

    invoke-direct {v2, v12, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v6, 0x2

    aput-object v2, v1, v6

    .line 42
    iget-object v0, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    add-double v14, v14, v27

    add-double/2addr v14, v9

    double-to-float v2, v14

    invoke-direct {v1, v12, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    goto/16 :goto_0

    :cond_1
    move/from16 v4, p1

    move-wide/from16 v31, v14

    const/4 v6, 0x2

    if-ne v8, v6, :cond_2

    .line 43
    new-instance v6, Landroid/graphics/RectF;

    iget v7, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    mul-float v8, v7, v26

    sub-float v8, v4, v8

    sub-float/2addr v8, v2

    mul-float v7, v7, v26

    sub-float v7, v1, v7

    sub-float/2addr v7, v3

    sub-float v9, v4, v2

    sub-float v10, v1, v3

    invoke-direct {v6, v8, v7, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    .line 44
    iget-object v6, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    float-to-double v14, v4

    sub-double v33, v14, p5

    move-object v8, v6

    float-to-double v5, v2

    move/from16 p1, v9

    move/from16 p8, v10

    sub-double v9, v33, v5

    double-to-float v2, v9

    float-to-double v9, v1

    sub-double v11, v9, v12

    move-wide/from16 v33, v5

    float-to-double v4, v3

    sub-double/2addr v11, v4

    double-to-float v1, v11

    invoke-direct {v7, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    aput-object v7, v8, v1

    .line 45
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    sub-double v6, v14, v16

    sub-double v11, v6, v33

    double-to-float v3, v11

    move/from16 v8, p8

    invoke-direct {v2, v3, v8}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 46
    iget-object v2, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    sub-double v6, v6, v20

    sub-double v11, v6, v33

    double-to-float v11, v11

    invoke-direct {v3, v11, v8}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v11, 0x2

    aput-object v3, v2, v11

    .line 47
    iget-object v2, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    sub-double v6, v6, v18

    sub-double v6, v6, v33

    double-to-float v6, v6

    invoke-direct {v3, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v6, 0x3

    aput-object v3, v2, v6

    .line 48
    iget-object v2, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    sub-double v6, v9, v31

    sub-double v11, v6, v29

    sub-double v16, v11, v27

    move-object v8, v2

    sub-double v1, v16, v4

    double-to-float v1, v1

    move/from16 v2, p1

    invoke-direct {v3, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    aput-object v3, v8, v1

    .line 49
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    sub-double/2addr v11, v4

    double-to-float v8, v11

    invoke-direct {v3, v2, v8}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v8, 0x1

    aput-object v3, v1, v8

    .line 50
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    sub-double/2addr v6, v4

    double-to-float v6, v6

    invoke-direct {v3, v2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v3, v1, v2

    .line 51
    iget-object v0, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    sub-double v14, v14, v24

    sub-double v14, v14, v33

    double-to-float v2, v14

    sub-double v9, v9, v22

    sub-double/2addr v9, v4

    double-to-float v3, v9

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v8, v4, :cond_3

    add-float/2addr v10, v2

    .line 52
    new-instance v2, Landroid/graphics/RectF;

    iget v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->radius:F

    mul-float v6, v4, v26

    sub-float v6, v1, v6

    sub-float/2addr v6, v3

    mul-float v4, v4, v26

    add-float/2addr v4, v10

    sub-float v7, v1, v3

    invoke-direct {v2, v10, v6, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    .line 53
    iget-object v2, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    add-double v14, v16, v20

    add-double v8, v14, v18

    float-to-double v5, v10

    add-double/2addr v8, v5

    double-to-float v8, v8

    invoke-direct {v4, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v8, 0x0

    aput-object v4, v2, v8

    .line 54
    iget-object v2, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    add-double/2addr v14, v5

    double-to-float v8, v14

    invoke-direct {v4, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v8, 0x1

    aput-object v4, v2, v8

    .line 55
    iget-object v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v8, Landroid/graphics/PointF;

    add-double v14, v16, v5

    double-to-float v9, v14

    invoke-direct {v8, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v7, 0x2

    aput-object v8, v4, v7

    .line 56
    iget-object v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    add-double v8, p5, v5

    double-to-float v8, v8

    float-to-double v14, v1

    sub-double v11, v14, v12

    float-to-double v2, v3

    sub-double/2addr v11, v2

    double-to-float v9, v11

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v8, 0x3

    aput-object v7, v4, v8

    .line 57
    iget-object v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    add-double v5, v24, v5

    double-to-float v5, v5

    sub-double v8, v14, v22

    sub-double/2addr v8, v2

    double-to-float v6, v8

    invoke-direct {v7, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    aput-object v7, v4, v5

    .line 58
    iget-object v4, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    sub-double v14, v14, v31

    sub-double v6, v14, v2

    double-to-float v6, v6

    invoke-direct {v5, v10, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x1

    aput-object v5, v4, v1

    .line 59
    iget-object v1, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    sub-double v14, v14, v29

    sub-double v5, v14, v2

    double-to-float v5, v5

    invoke-direct {v4, v10, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 60
    iget-object v0, v0, Lcom/android/camera/ui/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    sub-double v14, v14, v27

    sub-double/2addr v14, v2

    double-to-float v2, v14

    invoke-direct {v1, v10, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    :cond_3
    :goto_0
    return-void
.end method
