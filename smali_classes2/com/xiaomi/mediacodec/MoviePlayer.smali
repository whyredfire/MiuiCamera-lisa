.class public Lcom/xiaomi/mediacodec/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mediacodec/MoviePlayer$SpeedControlCallback;,
        Lcom/xiaomi/mediacodec/MoviePlayer$PlayTask;,
        Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;,
        Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;,
        Lcom/xiaomi/mediacodec/MoviePlayer$PlayerFeedback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MoviePlayer"

.field public static final VERBOSE:Z = false


# instance fields
.field public mAudioFromate:Landroid/media/MediaFormat;

.field public mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field public mDurationUs:J

.field public mEndOfDecoder:Z

.field public mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

.field public volatile mIsPause:Z

.field public volatile mIsStopRequested:Z

.field public volatile mLoop:Z

.field public mMaxAudioSize:I

.field public mMaxSize:I

.field public mOutputFrames:J

.field public mOutputSurface:Landroid/view/Surface;

.field public volatile mSeekMode:I

.field public volatile mSeekPosMS:J

.field public volatile mSeeking:Z

.field public mSourceFile:Ljava/io/File;

.field public mStartTime:J

.field public mVideoFromate:Landroid/media/MediaFormat;

.field public mVideoHeight:I

.field public volatile mVideoOnly:Z

.field public mVideoWidth:I

.field public final mWaitEvent:Ljava/lang/Object;

.field public mWrittenPresentationTimeUs:J

.field public maudioTrack:I

.field public final semp:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputFrames:J

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mEndOfDecoder:Z

    .line 5
    iput-wide v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mStartTime:J

    .line 6
    iput-boolean v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mLoop:Z

    .line 7
    iput-boolean v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsPause:Z

    .line 8
    iput-wide v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    .line 9
    iput-boolean v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeeking:Z

    .line 10
    iput-boolean v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoOnly:Z

    const/4 v3, 0x2

    .line 11
    iput v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekMode:I

    .line 12
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    .line 13
    new-instance v3, Ljava/util/concurrent/Semaphore;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->semp:Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    .line 14
    iput-object v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mAudioFromate:Landroid/media/MediaFormat;

    .line 15
    iput-object v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoFromate:Landroid/media/MediaFormat;

    .line 16
    iput v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxSize:I

    .line 17
    iput v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxAudioSize:I

    .line 18
    iput-wide v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->maudioTrack:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/view/Surface;Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;JZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "rotation-degrees"

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputFrames:J

    const/4 v3, 0x0

    .line 23
    iput-boolean v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mEndOfDecoder:Z

    .line 24
    iput-wide v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mStartTime:J

    .line 25
    iput-boolean v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mLoop:Z

    .line 26
    iput-boolean v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsPause:Z

    .line 27
    iput-wide v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    .line 28
    iput-boolean v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeeking:Z

    .line 29
    iput-boolean v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoOnly:Z

    const/4 v4, 0x2

    .line 30
    iput v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekMode:I

    .line 31
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    .line 32
    new-instance v4, Ljava/util/concurrent/Semaphore;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->semp:Ljava/util/concurrent/Semaphore;

    const/4 v4, 0x0

    .line 33
    iput-object v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mAudioFromate:Landroid/media/MediaFormat;

    .line 34
    iput-object v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoFromate:Landroid/media/MediaFormat;

    .line 35
    iput v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxSize:I

    .line 36
    iput v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxAudioSize:I

    .line 37
    iput-wide v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->maudioTrack:I

    .line 39
    iput-object p1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    .line 40
    iput-wide p4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    .line 41
    iput-boolean p6, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoOnly:Z

    if-nez p3, :cond_0

    .line 42
    new-instance p3, Lcom/xiaomi/mediacodec/MoviePlayer$SpeedControlCallback;

    invoke-direct {p3, p0}, Lcom/xiaomi/mediacodec/MoviePlayer$SpeedControlCallback;-><init>(Lcom/xiaomi/mediacodec/MoviePlayer;)V

    .line 43
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "  == "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputSurface:Landroid/view/Surface;

    .line 45
    iput-object p3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    .line 46
    :try_start_0
    new-instance p2, Landroid/media/MediaExtractor;

    invoke-direct {p2}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 48
    iget-boolean p3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoOnly:Z

    if-nez p3, :cond_1

    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Need audio format when mVideoOnly "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoOnly:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const-string p3, "audio"

    .line 50
    invoke-static {p2, p3}, Lcom/xiaomi/mediacodec/MoviePlayer;->selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result p3

    if-eq p3, v1, :cond_1

    .line 51
    invoke-virtual {p2, p3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mAudioFromate:Landroid/media/MediaFormat;

    .line 52
    iget-object p4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    invoke-interface {p4, p3}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->onAudioFormat(Landroid/media/MediaFormat;)V

    .line 53
    :cond_1
    invoke-static {p2}, Lcom/xiaomi/mediacodec/MoviePlayer;->selectTrack(Landroid/media/MediaExtractor;)I

    move-result p3

    if-ltz p3, :cond_3

    .line 54
    invoke-virtual {p2, p3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 55
    invoke-virtual {p2, p3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p3

    .line 56
    iput-object p3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoFromate:Landroid/media/MediaFormat;

    .line 57
    sput v3, Lcom/xiaomi/mediacodec/GlUtil;->mPictureRotation:I

    .line 58
    invoke-virtual {p3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 59
    invoke-virtual {p3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p4

    sput p4, Lcom/xiaomi/mediacodec/GlUtil;->mPictureRotation:I

    :cond_2
    const-string p4, "width"

    .line 60
    invoke-virtual {p3, p4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoWidth:I

    const-string p4, "height"

    .line 61
    invoke-virtual {p3, p4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoHeight:I

    .line 62
    iget p4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoWidth:I

    sput p4, Lcom/xiaomi/mediacodec/GlUtil;->mWidht:I

    .line 63
    sput p3, Lcom/xiaomi/mediacodec/GlUtil;->mHeight:I

    .line 64
    invoke-direct {p0}, Lcom/xiaomi/mediacodec/MoviePlayer;->getMetadata()V

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " MoviePlayer play url "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " width "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoWidth:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoHeight:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " rotation "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/xiaomi/mediacodec/GlUtil;->mPictureRotation:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {p2}, Landroid/media/MediaExtractor;->release()V

    return-void

    .line 67
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No video track found in "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v4, p2

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v4, :cond_4

    .line 68
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_4
    throw p0
.end method

.method private doExtract(Landroid/media/MediaExtractor;ILandroid/media/MediaCodec;Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v11, p3

    .line 1
    invoke-virtual/range {p3 .. p3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 2
    iget-wide v4, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v4, v13

    const/4 v15, 0x0

    invoke-virtual {v2, v4, v5, v15}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const-wide/16 v16, -0x1

    move/from16 v18, v15

    move/from16 v19, v18

    move-wide/from16 v4, v16

    :goto_0
    const/4 v0, 0x1

    if-nez v18, :cond_1b

    .line 3
    iget-boolean v6, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsStopRequested:Z

    if-eqz v6, :cond_0

    const-string v2, "Stop requested"

    .line 4
    invoke-static {v2}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 5
    :cond_0
    iget-boolean v6, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsPause:Z

    if-eqz v6, :cond_1

    .line 6
    iget-object v6, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    monitor-enter v6

    .line 7
    :try_start_0
    iget-object v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    const-wide/16 v7, 0xa

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 8
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " found InterruptedException exception at doExtract "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 9
    :goto_1
    monitor-exit v6

    goto :goto_0

    :goto_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 10
    :cond_1
    iget-boolean v6, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeeking:Z

    if-eqz v6, :cond_2

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doExtract seekTo: mSeekPos: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " seekMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 12
    iget-wide v6, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    mul-long/2addr v6, v13

    iget v8, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekMode:I

    invoke-virtual {v2, v6, v7, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 13
    iput-boolean v15, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeeking:Z

    .line 14
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v6

    .line 15
    iget v7, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->maudioTrack:I

    if-ne v6, v7, :cond_4

    .line 16
    new-instance v6, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;

    invoke-direct {v6, v1}, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;-><init>(Lcom/xiaomi/mediacodec/MoviePlayer;)V

    .line 17
    iget v7, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxAudioSize:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, v6, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v2, v7, v15}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v22

    if-lez v22, :cond_4

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v7

    iget v8, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->maudioTrack:I

    if-ne v7, v8, :cond_4

    .line 20
    iget-boolean v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoOnly:Z

    if-nez v0, :cond_3

    .line 21
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, v6, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    const/16 v21, 0x0

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v23

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v25

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v25}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 23
    iget-object v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    invoke-interface {v0, v6}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->onAudioFrame(Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;)V

    .line 24
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_0

    :cond_4
    const-wide/16 v8, 0x2710

    const-wide/16 v6, 0x0

    if-nez v19, :cond_a

    .line 25
    invoke-virtual {v11, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    if-ltz v10, :cond_a

    cmp-long v20, v4, v16

    if-nez v20, :cond_5

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    :cond_5
    move-wide/from16 v20, v4

    .line 27
    aget-object v4, v12, v10

    .line 28
    invoke-virtual {v2, v4, v15}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v22

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-ltz v22, :cond_9

    .line 30
    iget-boolean v4, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsStopRequested:Z

    if-eqz v4, :cond_6

    goto :goto_3

    .line 31
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v4

    if-eq v4, v3, :cond_7

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WEIRD: got sample from track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MoviePlayer"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 34
    iget-wide v8, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mStartTime:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_8

    .line 35
    iput-wide v4, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mStartTime:J

    :cond_8
    const/4 v8, 0x0

    const/16 v25, 0x0

    move-wide/from16 v26, v4

    move-object/from16 v4, p3

    move v5, v10

    move-wide v9, v6

    move v6, v8

    move/from16 v7, v22

    const-wide/16 v13, 0x2710

    move-wide/from16 v8, v26

    move/from16 v10, v25

    .line 36
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_4

    :cond_9
    :goto_3
    move-wide v13, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v19, 0x4

    move-object/from16 v4, p3

    move v5, v10

    move/from16 v10, v19

    .line 38
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const-string v4, "sent input EOS"

    .line 39
    invoke-static {v4}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    move/from16 v19, v0

    :goto_4
    move-wide/from16 v4, v20

    goto :goto_5

    :cond_a
    move-wide v13, v8

    :goto_5
    if-nez v18, :cond_1a

    .line 40
    iget-object v6, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v11, v6, v13, v14}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b

    const-string v0, "no output from decoder available"

    .line 41
    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_b
    const/4 v7, -0x3

    if-ne v6, v7, :cond_c

    goto/16 :goto_d

    :cond_c
    const/4 v7, -0x2

    if-ne v6, v7, :cond_12

    .line 42
    invoke-virtual/range {p3 .. p3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "== AMEDIACODEC_INFO_OUTPUT_FORMAT_CHANGED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decoder output format changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const-string v6, "crop-top"

    .line 45
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "crop-top"

    .line 46
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Crop-top:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    move/from16 v23, v6

    goto :goto_6

    :cond_d
    move/from16 v23, v15

    :goto_6
    const-string v6, "crop-bottom"

    .line 48
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "crop-bottom"

    .line 49
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 50
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Crop-bottom:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    move/from16 v25, v6

    goto :goto_7

    :cond_e
    move/from16 v25, v15

    :goto_7
    const-string v6, "crop-left"

    .line 51
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "crop-left"

    .line 52
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Crop-left:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    move/from16 v24, v6

    goto :goto_8

    :cond_f
    move/from16 v24, v15

    :goto_8
    const-string v6, "crop-right"

    .line 54
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "crop-right"

    .line 55
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Crop-right:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    move/from16 v26, v6

    goto :goto_9

    :cond_10
    move/from16 v26, v15

    :goto_9
    const-string v6, "width"

    .line 57
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    const-string v7, "height"

    .line 58
    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 59
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "width :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const-string v8, "color-format"

    .line 60
    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "color-format"

    .line 61
    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Color format:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "color-format"

    invoke-virtual {v0, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    :cond_11
    const-string v8, "stride"

    .line 63
    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    const-string v9, "slice-height"

    .line 64
    invoke-virtual {v0, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 65
    iget-object v9, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    move-object/from16 v20, v9

    move/from16 v21, v6

    move/from16 v22, v7

    invoke-interface/range {v20 .. v26}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->onVideoCrop(IIIIII)V

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " stride:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " height stride:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_12
    if-ltz v6, :cond_19

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_13

    .line 67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 68
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startup lag "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v9, v4

    long-to-double v4, v9

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v9

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    move-wide v4, v7

    .line 69
    :cond_13
    iget-object v9, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_15

    const-string v9, "output EOS"

    .line 70
    invoke-static {v9}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 71
    iget-boolean v9, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mLoop:Z

    if-nez v9, :cond_14

    .line 72
    iget-object v9, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    invoke-interface {v9}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->onDecoderFinished()V

    const-string v9, "output EOS onDecoderFinished!"

    .line 73
    invoke-static {v9}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    :cond_14
    move/from16 v18, v0

    .line 74
    :cond_15
    iget-object v9, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v13, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v13, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mWrittenPresentationTimeUs:J

    .line 75
    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v9, :cond_16

    goto :goto_a

    :cond_16
    move v0, v15

    .line 76
    :goto_a
    invoke-virtual {v11, v6, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    iget-wide v9, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputFrames:J

    const-wide/16 v13, 0x1

    add-long/2addr v9, v13

    iput-wide v9, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputFrames:J

    .line 79
    iget-object v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    iget-wide v9, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    cmp-long v6, v9, v7

    if-nez v6, :cond_17

    move-wide v9, v7

    goto :goto_b

    :cond_17
    iget-wide v13, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mWrittenPresentationTimeUs:J

    const-wide/16 v20, 0x64

    mul-long v13, v13, v20

    div-long v9, v13, v9

    :goto_b
    long-to-int v6, v9

    invoke-interface {v0, v6}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->onVideoFrame(I)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVideoFrame mDurationUs: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " mWrittenPresentationTimeUs: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mWrittenPresentationTimeUs:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " stop:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsStopRequested:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    if-nez v18, :cond_18

    .line 81
    :try_start_2
    iget-object v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    :catch_1
    const-string v0, "semp faild!"

    .line 82
    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 83
    :cond_18
    :goto_c
    iget-boolean v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mLoop:Z

    if-eqz v0, :cond_1a

    const-string v0, "Reached EOS, looping"

    .line 84
    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 85
    invoke-virtual {v2, v7, v8, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/media/MediaCodec;->flush()V

    .line 87
    invoke-interface/range {p4 .. p4}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->loopReset()V

    move/from16 v18, v15

    move/from16 v19, v18

    goto :goto_d

    .line 88
    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_d
    const-wide/16 v13, 0x3e8

    goto/16 :goto_0

    .line 89
    :cond_1b
    :goto_e
    iput-boolean v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mEndOfDecoder:Z

    const-string v0, " end of decoder "

    .line 90
    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method private getMetadata()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/16 v1, 0x17

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/mediacodec/GlUtil;->locationString:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/mediacodec/GlUtil;->locationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/xiaomi/mediacodec/GlUtil;->locationString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Lcom/xiaomi/mediacodec/MoviePlayer;->ISO6709LocationParser(Ljava/lang/String;)[F

    move-result-object v1

    sput-object v1, Lcom/xiaomi/mediacodec/GlUtil;->location:[F

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse the location metadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/mediacodec/GlUtil;->locationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x9

    .line 9
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v1, -0x1

    .line 10
    iput-wide v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    iget-wide v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->onStreamDuration(J)V

    .line 12
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duration (us): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public static selectTrack(Landroid/media/MediaExtractor;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 3
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I
    .locals 5

    .line 5
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 7
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public ISO6709LocationParser(Ljava/lang/String;)[F
    .locals 4

    const-string p0, "([+\\-][0-9.]+)([+\\-][0-9.]+)"

    .line 1
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 7
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    aput p0, v1, p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_1
    return-object v0
.end method

.method public frameReceived()V
    .locals 1

    const-string v0, "MoviePlayer frameReceived: semp.release() "

    .line 1
    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public getAudioFromate()Landroid/media/MediaFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mAudioFromate:Landroid/media/MediaFormat;

    return-object p0
.end method

.method public getOneFrame()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mEndOfDecoder:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getVideoDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    return-wide v0
.end method

.method public getVideoFromate()Landroid/media/MediaFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoFromate:Landroid/media/MediaFormat;

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoHeight:I

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoWidth:I

    return p0
.end method

.method public play()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "find exception at mPlayer stop:"

    .line 1
    iget-object v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 4
    invoke-static {v2}, Lcom/xiaomi/mediacodec/MoviePlayer;->selectTrack(Landroid/media/MediaExtractor;)I

    move-result v3

    if-ltz v3, :cond_2

    const-string v4, "audio"

    .line 5
    invoke-static {v2, v4}, Lcom/xiaomi/mediacodec/MoviePlayer;->selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->maudioTrack:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, -0x1

    const-string v6, "max-input-size"

    if-eq v4, v5, :cond_0

    .line 6
    :try_start_2
    invoke-virtual {v2, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxAudioSize:I

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " get audio input size  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxAudioSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 9
    iget v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->maudioTrack:I

    invoke-virtual {v2, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 10
    :cond_0
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 11
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 12
    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxSize:I

    const-string v5, "mime"

    .line 13
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :try_start_3
    iget-object v6, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputSurface:Landroid/view/Surface;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v1, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 16
    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    .line 17
    iget-object v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    invoke-direct {p0, v2, v3, v5, v4}, Lcom/xiaomi/mediacodec/MoviePlayer;->doExtract(Landroid/media/MediaExtractor;ILandroid/media/MediaCodec;Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_1

    .line 18
    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaCodec;->flush()V

    .line 19
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    .line 20
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 21
    iget-object v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 22
    iput-object v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputSurface:Landroid/view/Surface;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    .line 24
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 25
    throw p0

    :catch_1
    move-exception v3

    goto :goto_2

    .line 26
    :cond_2
    :try_start_5
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No video track found in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v1

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v5, v1

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v2, v1

    move-object v5, v2

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v2, v1

    move-object v5, v2

    .line 27
    :goto_2
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find exception at mPlayer play:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 28
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v3

    :goto_3
    if-eqz v5, :cond_3

    .line 29
    :try_start_7
    invoke-virtual {v5}, Landroid/media/MediaCodec;->flush()V

    .line 30
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    .line 31
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 32
    iget-object v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 33
    iput-object v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputSurface:Landroid/view/Surface;

    goto :goto_4

    :catch_4
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 34
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    .line 35
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 36
    throw p0

    :cond_4
    :goto_6
    throw v3

    .line 37
    :cond_5
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPause()V
    .locals 1

    const-string v0, "MoviePlayer requestPause! "

    .line 1
    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsPause:Z

    return-void
.end method

.method public requestResume()V
    .locals 1

    const-string v0, "MoviePlayer requestResume! "

    .line 1
    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsPause:Z

    .line 3
    iget-object v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestStop()V
    .locals 1

    const-string v0, "MoviePlayer requestStop! "

    .line 1
    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsStopRequested:Z

    .line 3
    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    const-string p0, "MoviePlayer requestStop: semp.release() "

    .line 4
    invoke-static {p0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public seekTo(JI)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoviePlayer seekTo: msec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seekMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    iput-wide p1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeeking:Z

    const/4 p2, 0x2

    if-nez p3, :cond_0

    .line 4
    iput p2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekMode:I

    goto :goto_0

    :cond_0
    if-ne p3, p2, :cond_1

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekMode:I

    :cond_1
    :goto_0
    return p1
.end method

.method public setLoopMode(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoviePlayer setLoopMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mLoop:Z

    return-void
.end method
