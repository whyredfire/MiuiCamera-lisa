.class public Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$1;
.super Ljava/lang/Object;
.source "LightingAnimateDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->animateMiddleChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;)Lcom/android/camera/ui/drawable/lighting/LightingPaintMask;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->access$100(Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;)Lcom/android/camera/ui/drawable/lighting/LightingPaintCircle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
