.class public Lcom/xiaomi/Video2GifEditer/OpenGlRender;
.super Ljava/lang/Object;
.source "OpenGlRender.java"


# static fields
.field public static TAG:Ljava/lang/String; = "OpenGlRender"


# instance fields
.field public mAttribtexture:I

.field public mAttribvertex:I

.field public mTextureUniformU:I

.field public mTextureUniformV:I

.field public mTextureUniformY:I

.field public mTextureVertices_buffer:[B

.field public mTexture_u:I

.field public mTexture_v:I

.field public mTexture_y:I

.field public mVertexVertices_buffer:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p0, Lcom/xiaomi/Video2GifEditer/OpenGlRender;->TAG:Ljava/lang/String;

    const-string v0, "construction"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native RenderFrameJni()V
.end method

.method public static native SetCurrentGLContextJni()V
.end method

.method public static native SetOpengGlRenderParamsJni(IIIIIIII[B[B)V
.end method


# virtual methods
.method public RenderFrame()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/OpenGlRender;->RenderFrameJni()V

    return-void
.end method

.method public SetOpengGlRenderParams(IIIIIIII[B[B)V
    .locals 1

    .line 1
    sget-object p0, Lcom/xiaomi/Video2GifEditer/OpenGlRender;->TAG:Ljava/lang/String;

    const-string v0, "SetOpengGlRenderParams"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static/range {p1 .. p10}, Lcom/xiaomi/Video2GifEditer/OpenGlRender;->SetOpengGlRenderParamsJni(IIIIIIII[B[B)V

    return-void
.end method
