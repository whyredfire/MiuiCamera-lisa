.class public final LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final OooO00o:I = 0x3b9aca00

.field public static final OooO0O0:Landroid/graphics/PathMeasure;

.field public static final OooO0OO:Landroid/graphics/Path;

.field public static final OooO0Oo:Landroid/graphics/Path;

.field public static final OooO0o:F

.field public static final OooO0o0:[F

.field public static OooO0oO:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0O0:Landroid/graphics/PathMeasure;

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0OO:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0Oo:Landroid/graphics/Path;

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 4
    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0o0:[F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0o:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    sput v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0oO:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o()F
    .locals 2

    .line 45
    sget v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0oO:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0oO:F

    .line 47
    :cond_0
    sget v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0oO:F

    return v0
.end method

.method public static OooO00o(Landroid/content/Context;)F
    .locals 4

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "animator_duration_scale"

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static OooO00o(Landroid/graphics/Matrix;)F
    .locals 6

    .line 8
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0o0:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v3, 0x1

    .line 9
    aput v1, v0, v3

    .line 10
    sget v1, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0o:F

    const/4 v4, 0x2

    aput v1, v0, v4

    const/4 v5, 0x3

    .line 11
    aput v1, v0, v5

    .line 12
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 13
    sget-object p0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0o0:[F

    aget v0, p0, v4

    aget v1, p0, v2

    sub-float/2addr v0, v1

    .line 14
    aget v1, p0, v5

    aget p0, p0, v3

    sub-float/2addr v1, p0

    float-to-double v2, v0

    float-to-double v0, v1

    .line 15
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static OooO00o(FFFF)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-eqz v1, :cond_0

    const/16 v1, 0x20f

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int p0, v1

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    :goto_0
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :cond_1
    cmpl-float p1, p2, v0

    if-eqz p1, :cond_2

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    :cond_2
    cmpl-float p1, p3, v0

    if-eqz p1, :cond_3

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float/2addr p0, p3

    float-to-int p0, p0

    :cond_3
    return p0
.end method

.method public static OooO00o(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 52
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public static OooO00o(Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 4

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 63
    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    new-instance v2, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO00o;

    invoke-direct {v2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO00o;-><init>()V

    const/4 v3, 0x1

    .line 66
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, -0xffff01

    .line 67
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static OooO00o(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 8

    .line 1
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 2
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float v2, p0, p2

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget p0, p3, Landroid/graphics/PointF;->x:F

    add-float v3, v5, p0

    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget p0, p3, Landroid/graphics/PointF;->y:F

    add-float v4, v6, p0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 5
    :cond_1
    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-object v7
.end method

.method public static OooO00o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    const/16 v0, 0x1f

    .line 55
    invoke-static {p0, p1, p2, v0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public static OooO00o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V
    .locals 3

    const-string v0, "Utils#saveLayer"

    .line 56
    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 60
    :goto_0
    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public static OooO00o(Landroid/graphics/Path;FFF)V
    .locals 7

    const-string v0, "applyTrimPathIfNeeded"

    .line 21
    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 22
    sget-object v1, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0O0:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 23
    sget-object v1, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0O0:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    cmpl-float v3, p2, v4

    if-nez v3, :cond_0

    .line 24
    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void

    :cond_0
    cmpg-float v3, v1, v2

    if-ltz v3, :cond_9

    sub-float v3, p2, p1

    sub-float/2addr v3, v2

    .line 25
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v2, v5

    if-gez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    mul-float/2addr p1, v1

    mul-float/2addr p2, v1

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p3, v1

    add-float/2addr v2, p3

    add-float/2addr p1, p3

    cmpl-float p2, v2, v1

    if-ltz p2, :cond_2

    cmpl-float p2, p1, v1

    if-ltz p2, :cond_2

    .line 28
    invoke-static {v2, v1}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FF)I

    move-result p2

    int-to-float v2, p2

    .line 29
    invoke-static {p1, v1}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_2
    cmpg-float p2, v2, v4

    if-gez p2, :cond_3

    .line 30
    invoke-static {v2, v1}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FF)I

    move-result p2

    int-to-float v2, p2

    :cond_3
    cmpg-float p2, p1, v4

    if-gez p2, :cond_4

    .line 31
    invoke-static {p1, v1}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_4
    cmpl-float p2, v2, p1

    if-nez p2, :cond_5

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 33
    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void

    :cond_5
    if-ltz p2, :cond_6

    sub-float/2addr v2, v1

    .line 34
    :cond_6
    sget-object p2, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0OO:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 35
    sget-object p2, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0O0:Landroid/graphics/PathMeasure;

    sget-object p3, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0OO:Landroid/graphics/Path;

    const/4 v3, 0x1

    invoke-virtual {p2, v2, p1, p3, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float p2, p1, v1

    if-lez p2, :cond_7

    .line 36
    sget-object p2, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0Oo:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 37
    sget-object p2, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0O0:Landroid/graphics/PathMeasure;

    rem-float/2addr p1, v1

    sget-object p3, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0Oo:Landroid/graphics/Path;

    invoke-virtual {p2, v4, p1, p3, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 38
    sget-object p1, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0OO:Landroid/graphics/Path;

    sget-object p2, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0Oo:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_7
    cmpg-float p1, v2, v4

    if-gez p1, :cond_8

    .line 39
    sget-object p1, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0Oo:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 40
    sget-object p1, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0O0:Landroid/graphics/PathMeasure;

    add-float/2addr v2, v1

    sget-object p2, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0Oo:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v1, p2, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 41
    sget-object p1, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0OO:Landroid/graphics/Path;

    sget-object p2, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0Oo:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 42
    :cond_8
    :goto_0
    sget-object p1, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0OO:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 43
    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void

    .line 44
    :cond_9
    :goto_1
    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public static OooO00o(Landroid/graphics/Path;LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0Oo()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;->OooOO0()F

    move-result v0

    .line 18
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0O0()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v1

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    invoke-virtual {v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;->OooOO0()F

    move-result v1

    .line 19
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOo00;->OooO0OO()LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object p1

    check-cast p1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;->OooOO0()F

    move-result p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr p1, v2

    .line 20
    invoke-static {p0, v0, v1, p1}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Path;FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static OooO00o(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 6
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static OooO00o(IIIIII)Z
    .locals 2

    const/4 v0, 0x0

    if-ge p0, p3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-le p0, p3, :cond_1

    return v1

    :cond_1
    if-ge p1, p4, :cond_2

    return v0

    :cond_2
    if-le p1, p4, :cond_3

    return v1

    :cond_3
    if-lt p2, p5, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public static OooO00o(Ljava/lang/Throwable;)Z
    .locals 1

    .line 54
    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/ProtocolException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/net/UnknownServiceException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static OooO0O0(Landroid/graphics/Matrix;)Z
    .locals 6

    .line 1
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0o0:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v3, 0x1

    .line 2
    aput v1, v0, v3

    const v1, 0x471212bb

    const/4 v4, 0x2

    .line 3
    aput v1, v0, v4

    const v1, 0x471a973c

    const/4 v5, 0x3

    .line 4
    aput v1, v0, v5

    .line 5
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 6
    sget-object p0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO0o0:[F

    aget v0, p0, v2

    aget v1, p0, v4

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    aget v0, p0, v3

    aget p0, p0, v5

    cmpl-float p0, v0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v3
.end method
