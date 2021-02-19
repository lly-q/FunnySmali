.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImageFileName:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mRandom:Ljava/util/Random;

.field private final mScreenshotId:Ljava/lang/String;

.field private final mSmartActionsEnabled:Z

.field private final mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 186
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 183
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRandom:Ljava/util/Random;

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 190
    iput-object v9, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 192
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 193
    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v11, 0x1

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    .line 196
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "[\\\\/:*?\"<>|\\s]+"

    const-string v5, "_"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object v1, v4, v11

    const-string v0, "Screenshot_%s_%s.png"

    .line 197
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array v1, v11, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Screenshot_%s.png"

    .line 200
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    :goto_0
    new-array v0, v11, [Ljava/lang/Object;

    .line 203
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Screenshot_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    const-string v0, "systemui"

    const-string v1, "enable_screenshot_notification_smart_actions"

    .line 206
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    .line 208
    iget-boolean v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    if-eqz v0, :cond_1

    .line 210
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 211
    invoke-virtual {v0, v8, v1, v3}, Lcom/android/systemui/SystemUIFactory;->createScreenshotNotificationSmartActionsProvider(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    goto :goto_1

    .line 215
    :cond_1
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;-><init>()V

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    .line 219
    :goto_1
    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 220
    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 221
    iget v12, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 222
    iget v3, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    .line 223
    iget v4, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 225
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 226
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v1, 0x3e800000    # 0.25f

    .line 227
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 228
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 229
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    const v15, 0x40ffffff    # 7.9999995f

    .line 232
    iget v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    sub-int v0, v3, v0

    div-int/2addr v0, v2

    int-to-float v0, v0

    iget v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    sub-int v1, v4, v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 233
    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    const v6, 0x40ffffff    # 7.9999995f

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move-object v4, v14

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v16

    int-to-float v0, v12

    .line 237
    iget v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    iget v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 238
    invoke-virtual {v14, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 239
    iget v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float v2, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-virtual {v14, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 241
    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move v2, v12

    move v3, v12

    move-object v4, v14

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v1, p3

    .line 244
    iput-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 248
    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 249
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v3

    iput-object v3, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 252
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    invoke-direct {v3, v8, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v4, Lcom/android/systemui/R$string;->screenshot_saving_title:I

    .line 254
    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$drawable;->stat_notify_image:I

    .line 255
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "progress"

    .line 256
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 257
    invoke-virtual {v3, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 258
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x106001c

    .line 259
    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iput-object v3, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 261
    iget-object v3, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v3, v11}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 263
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    invoke-direct {v3, v8, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v5, Lcom/android/systemui/R$string;->screenshot_saving_title:I

    .line 265
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$drawable;->stat_notify_image:I

    .line 266
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 267
    invoke-virtual {v3, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 268
    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 270
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 271
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 272
    iget-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v11}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 273
    iget-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v1, v11}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 275
    iget-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 276
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 275
    invoke-virtual {v1, v11, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 286
    iget-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 288
    iget-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    return-void
.end method

.method private static addIntentExtras(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "android:screenshot_action_type"

    .line 318
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android:screenshot_id"

    .line 319
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android:smart_actions_enabled"

    .line 320
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private buildSmartActions(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 297
    invoke-virtual {v1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "action_type"

    const-string v4, "Smart Action"

    .line 298
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/systemui/screenshot/GlobalScreenshot$SmartActionsReceiver;

    invoke-direct {v4, p2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const-string v6, "android:screenshot_action_intent"

    .line 302
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 304
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    invoke-static {v5, v4, v3, v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->addIntentExtras(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 305
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRandom:Ljava/util/Random;

    .line 306
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const/high16 v5, 0x10000000

    .line 305
    invoke-static {p2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 309
    new-instance v4, Landroid/app/Notification$Action$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget-object v1, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {v4, v5, v1, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v1, 0x1

    .line 310
    invoke-virtual {v4, v1}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 309
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 346
    new-instance p0, Landroid/graphics/Picture;

    invoke-direct {p0}, Landroid/graphics/Picture;-><init>()V

    .line 347
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p2

    .line 348
    invoke-virtual {p2, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 349
    invoke-virtual {p2, p1, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 350
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 351
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getUserHandleOfForegroundApplication(Landroid/content/Context;)I
    .locals 2

    .line 327
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->getLastResumedActivityUserId()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SaveImageInBackgroundTask"

    const-string v1, "getUserHandleOfForegroundApplication: "

    .line 329
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p0

    return p0
.end method

.method private isManagedProfile(Landroid/content/Context;)Z
    .locals 1

    .line 335
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 336
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getUserHandleOfForegroundApplication(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 337
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 164
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .line 356
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, -0x2

    .line 362
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 364
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v2, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 365
    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 366
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    iget-boolean v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    .line 371
    invoke-direct {p0, v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isManagedProfile(Landroid/content/Context;)Z

    move-result v6

    .line 370
    invoke-static {v1, p1, v4, v5, v6}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getSmartActionsFuture(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;ZZ)Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    .line 374
    new-instance v1, Landroid/provider/MediaStore$PendingParams;

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    const-string v7, "image/png"

    invoke-direct {v1, v4, v6, v7}, Landroid/provider/MediaStore$PendingParams;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/provider/MediaStore$PendingParams;->setPrimaryDirectory(Ljava/lang/String;)V

    .line 377
    sget-object v4, Landroid/os/Environment;->DIRECTORY_SCREENSHOTS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/provider/MediaStore$PendingParams;->setSecondaryDirectory(Ljava/lang/String;)V

    .line 379
    invoke-static {v2, v1}, Landroid/provider/MediaStore;->createPending(Landroid/content/Context;Landroid/provider/MediaStore$PendingParams;)Landroid/net/Uri;

    move-result-object v7

    .line 380
    invoke-static {v2, v7}, Landroid/provider/MediaStore;->openPending(Landroid/content/Context;Landroid/net/Uri;)Landroid/provider/MediaStore$PendingSession;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    :try_start_1
    invoke-virtual {v1}, Landroid/provider/MediaStore$PendingSession;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 383
    :try_start_2
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p1, v6, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    if-eqz v4, :cond_1

    .line 386
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 387
    :cond_1
    invoke-virtual {v1}, Landroid/provider/MediaStore$PendingSession;->publish()Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 392
    :try_start_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 395
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object v1, p0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->populateNotificationActions(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;Ljava/util/concurrent/CompletableFuture;Landroid/app/Notification$Builder;)V

    .line 397
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iput-object v7, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 398
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 399
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 384
    :cond_2
    :try_start_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to compress"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    .line 382
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v4, :cond_3

    .line 386
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 389
    :try_start_9
    invoke-virtual {v1}, Landroid/provider/MediaStore$PendingSession;->abandon()V

    .line 390
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 392
    :goto_1
    :try_start_a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v1

    const-string v2, "SaveImageInBackgroundTask"

    const-string v3, "unable to save screenshot"

    .line 403
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 405
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    sget v1, Lcom/android/systemui/R$string;->screenshot_failed_to_save_text:I

    iput v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    :goto_2
    if-eqz p1, :cond_4

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 164
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1

    .line 566
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 567
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 568
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 571
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 164
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 9

    .line 517
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    if-eqz v0, :cond_0

    .line 519
    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1, v1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    goto/16 :goto_0

    .line 523
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 524
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 527
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v2, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v3, "image/png"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10000001

    .line 529
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 535
    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    sget v5, Lcom/android/systemui/R$string;->screenshot_saved_title:I

    .line 536
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->screenshot_saved_text:I

    .line 537
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v5, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/4 v6, 0x0

    .line 538
    invoke-static {v5, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 539
    invoke-virtual {v4, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 540
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const v7, 0x106001c

    .line 541
    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 543
    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    sget v8, Lcom/android/systemui/R$string;->screenshot_saved_title:I

    .line 544
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    sget v8, Lcom/android/systemui/R$string;->screenshot_saved_text:I

    .line 545
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v4, v4, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 546
    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 548
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 549
    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 551
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/16 v0, 0x20

    .line 552
    invoke-virtual {p1, v0, v6}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 554
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 555
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 554
    invoke-virtual {p1, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 557
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 558
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    return-void
.end method

.method populateNotificationActions(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;Ljava/util/concurrent/CompletableFuture;Landroid/app/Notification$Builder;)V
    .locals 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;>;",
            "Landroid/app/Notification$Builder;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    .line 426
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const-string v5, "Screenshot (%s)"

    .line 427
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 428
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "image/png"

    .line 429
    invoke-virtual {v7, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.STREAM"

    .line 430
    invoke-virtual {v7, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 433
    new-instance v10, Landroid/content/ClipData;

    new-instance v11, Landroid/content/ClipDescription;

    const-string v12, "text/plain"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "content"

    invoke-direct {v11, v13, v12}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v12, Landroid/content/ClipData$Item;

    invoke-direct {v12, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v10, v11, v12}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 436
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const-string v10, "android.intent.extra.SUBJECT"

    .line 437
    invoke-virtual {v7, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {v7, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 440
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/android/systemui/screenshot/GlobalScreenshot$TargetChosenReceiver;

    invoke-direct {v5, v1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x50000000

    invoke-static {v1, v8, v5, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 444
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    const/4 v11, 0x0

    .line 443
    invoke-static {v7, v11, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v5

    const v7, 0x10008000

    .line 445
    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 446
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 449
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionProxyReceiver;

    invoke-direct {v7, v1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "android:screenshot_action_intent"

    .line 451
    invoke-virtual {v7, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    const-string v7, "android:screenshot_disallow_enter_pip"

    .line 452
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    iget-object v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    const-string v12, "android:screenshot_id"

    .line 453
    invoke-virtual {v5, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-boolean v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    const-string v13, "android:smart_actions_enabled"

    .line 454
    invoke-virtual {v5, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/high16 v14, 0x10000000

    .line 449
    invoke-static {v1, v8, v5, v14, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 457
    new-instance v7, Landroid/app/Notification$Action$Builder;

    sget v15, Lcom/android/systemui/R$drawable;->ic_screenshot_share:I

    const v8, 0x1040680

    .line 459
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v15, v8, v5}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 460
    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 464
    sget v5, Lcom/android/systemui/R$string;->config_stitchEditor:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 465
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.EDIT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 467
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 469
    :cond_0
    invoke-virtual {v7, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-virtual {v7, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 471
    invoke-virtual {v7, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v5, 0x2

    .line 472
    invoke-virtual {v7, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 475
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionProxyReceiver;

    invoke-direct {v5, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    invoke-virtual {v5, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    .line 478
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const-string v8, "android:screenshot_cancel_notification"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    iget-object v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    .line 479
    invoke-virtual {v5, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-boolean v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    .line 480
    invoke-virtual {v5, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 475
    invoke-static {v1, v6, v5, v14, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 483
    new-instance v6, Landroid/app/Notification$Action$Builder;

    sget v7, Lcom/android/systemui/R$drawable;->ic_screenshot_edit:I

    const v8, 0x104065a

    .line 485
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 486
    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 489
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/systemui/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;

    invoke-direct {v5, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "android:screenshot_uri_id"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    .line 492
    invoke-virtual {v3, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-boolean v5, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    .line 493
    invoke-virtual {v3, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const/4 v5, 0x0

    .line 489
    invoke-static {v1, v5, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 496
    new-instance v5, Landroid/app/Notification$Action$Builder;

    sget v6, Lcom/android/systemui/R$drawable;->ic_screenshot_delete:I

    const v7, 0x10401f8

    .line 498
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 499
    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 501
    iget-boolean v2, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x3e8

    const-string v3, "systemui"

    const-string v5, "screenshot_notification_smart_actions_timeout_ms"

    .line 502
    invoke-static {v3, v5, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 506
    iget-object v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    move-object/from16 v6, p4

    invoke-static {v3, v6, v2, v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getSmartActions(Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;ILcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;)Ljava/util/List;

    move-result-object v2

    .line 508
    invoke-direct {v0, v2, v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->buildSmartActions(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 510
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_2
    return-void
.end method
