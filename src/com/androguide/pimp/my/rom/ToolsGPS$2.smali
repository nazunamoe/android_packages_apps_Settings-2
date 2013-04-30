.class Lcom/androguide/pimp/my/rom/ToolsGPS$2;
.super Ljava/lang/Object;
.source "ToolsGPS.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsGPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsGPS;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 114
    const v0, 0x7f04005d

    if-ne p2, v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x1

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const v0, 0x7f04005f

    if-ne p2, v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x2

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto :goto_0

    .line 122
    :cond_2
    const v0, 0x7f040060

    if-ne p2, v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x3

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto :goto_0

    .line 126
    :cond_3
    const v0, 0x7f0400cf

    if-ne p2, v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x4

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto :goto_0

    .line 131
    :cond_4
    const v0, 0x7f0400d0

    if-ne p2, v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x5

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto :goto_0

    .line 136
    :cond_5
    const v0, 0x7f0400d1

    if-ne p2, v0, :cond_6

    .line 138
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x6

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto :goto_0

    .line 141
    :cond_6
    const v0, 0x7f0400d2

    if-ne p2, v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x7

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto :goto_0

    .line 146
    :cond_7
    const v0, 0x7f0400d3

    if-ne p2, v0, :cond_8

    .line 148
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x8

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto :goto_0

    .line 151
    :cond_8
    const v0, 0x7f0400d4

    if-ne p2, v0, :cond_9

    .line 153
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x9

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto :goto_0

    .line 156
    :cond_9
    const v0, 0x7f0400d5

    if-ne p2, v0, :cond_a

    .line 158
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0xa

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto :goto_0

    .line 161
    :cond_a
    const v0, 0x7f0400d6

    if-ne p2, v0, :cond_b

    .line 163
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0xb

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto :goto_0

    .line 166
    :cond_b
    const v0, 0x7f0400d7

    if-ne p2, v0, :cond_c

    .line 168
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0xc

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto :goto_0

    .line 171
    :cond_c
    const v0, 0x7f0400d8

    if-ne p2, v0, :cond_d

    .line 173
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0xd

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 176
    :cond_d
    const v0, 0x7f0400d9

    if-ne p2, v0, :cond_e

    .line 178
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0xe

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 181
    :cond_e
    const v0, 0x7f0400da

    if-ne p2, v0, :cond_f

    .line 183
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0xf

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 186
    :cond_f
    const v0, 0x7f0400db

    if-ne p2, v0, :cond_10

    .line 188
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x10

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 191
    :cond_10
    const v0, 0x7f0400dc

    if-ne p2, v0, :cond_11

    .line 193
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x11

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 197
    :cond_11
    const v0, 0x7f0400dd

    if-ne p2, v0, :cond_12

    .line 199
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x12

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 203
    :cond_12
    const v0, 0x7f0400de

    if-ne p2, v0, :cond_13

    .line 205
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x13

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 208
    :cond_13
    const v0, 0x7f0400df

    if-ne p2, v0, :cond_14

    .line 210
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x14

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 213
    :cond_14
    const v0, 0x7f0400e0

    if-ne p2, v0, :cond_15

    .line 215
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x15

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 218
    :cond_15
    const v0, 0x7f0400e1

    if-ne p2, v0, :cond_16

    .line 220
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x16

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 223
    :cond_16
    const v0, 0x7f0400e2

    if-ne p2, v0, :cond_17

    .line 225
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x17

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 228
    :cond_17
    const v0, 0x7f0400e3

    if-ne p2, v0, :cond_18

    .line 230
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x18

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 233
    :cond_18
    const v0, 0x7f0400e4

    if-ne p2, v0, :cond_19

    .line 235
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x19

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 238
    :cond_19
    const v0, 0x7f0400e5

    if-ne p2, v0, :cond_1a

    .line 240
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x1a

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 243
    :cond_1a
    const v0, 0x7f0400e6

    if-ne p2, v0, :cond_1b

    .line 245
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x1b

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 248
    :cond_1b
    const v0, 0x7f0400e7

    if-ne p2, v0, :cond_1c

    .line 250
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x1c

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 253
    :cond_1c
    const v0, 0x7f0400e8

    if-ne p2, v0, :cond_1d

    .line 255
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x1d

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 258
    :cond_1d
    const v0, 0x7f0400e9

    if-ne p2, v0, :cond_1e

    .line 260
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x1e

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 263
    :cond_1e
    const v0, 0x7f0400ea

    if-ne p2, v0, :cond_1f

    .line 265
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x1f

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 268
    :cond_1f
    const v0, 0x7f0400eb

    if-ne p2, v0, :cond_20

    .line 270
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x20

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 273
    :cond_20
    const v0, 0x7f0400ec

    if-ne p2, v0, :cond_21

    .line 275
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x21

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 278
    :cond_21
    const v0, 0x7f0400ed

    if-ne p2, v0, :cond_22

    .line 280
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x22

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 283
    :cond_22
    const v0, 0x7f0400ee

    if-ne p2, v0, :cond_23

    .line 285
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x23

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 288
    :cond_23
    const v0, 0x7f0400ef

    if-ne p2, v0, :cond_24

    .line 290
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x24

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 293
    :cond_24
    const v0, 0x7f0400f0

    if-ne p2, v0, :cond_25

    .line 295
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x25

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 297
    :cond_25
    const v0, 0x7f0400f1

    if-ne p2, v0, :cond_26

    .line 299
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x26

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 302
    :cond_26
    const v0, 0x7f0400f2

    if-ne p2, v0, :cond_27

    .line 304
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x27

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 307
    :cond_27
    const v0, 0x7f0400f3

    if-ne p2, v0, :cond_28

    .line 309
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x28

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 312
    :cond_28
    const v0, 0x7f0400f4

    if-ne p2, v0, :cond_29

    .line 314
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x29

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 317
    :cond_29
    const v0, 0x7f0400f5

    if-ne p2, v0, :cond_2a

    .line 319
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x2a

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 322
    :cond_2a
    const v0, 0x7f0400f6

    if-ne p2, v0, :cond_2b

    .line 324
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x2b

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 327
    :cond_2b
    const v0, 0x7f0400f7

    if-ne p2, v0, :cond_2c

    .line 329
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x2c

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 332
    :cond_2c
    const v0, 0x7f0400f8

    if-ne p2, v0, :cond_2d

    .line 334
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x2d

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 337
    :cond_2d
    const v0, 0x7f0400f9

    if-ne p2, v0, :cond_2e

    .line 339
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x2e

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 342
    :cond_2e
    const v0, 0x7f0400fa

    if-ne p2, v0, :cond_2f

    .line 344
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x2f

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 347
    :cond_2f
    const v0, 0x7f0400fb

    if-ne p2, v0, :cond_30

    .line 349
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x30

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 352
    :cond_30
    const v0, 0x7f0400fc

    if-ne p2, v0, :cond_31

    .line 354
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x31

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 357
    :cond_31
    const v0, 0x7f0400fd

    if-ne p2, v0, :cond_32

    .line 359
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x32

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 362
    :cond_32
    const v0, 0x7f0400fe

    if-ne p2, v0, :cond_33

    .line 364
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x33

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 367
    :cond_33
    const v0, 0x7f0400ff

    if-ne p2, v0, :cond_34

    .line 369
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x34

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 372
    :cond_34
    const v0, 0x7f040100

    if-ne p2, v0, :cond_35

    .line 374
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x35

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 377
    :cond_35
    const v0, 0x7f040101

    if-ne p2, v0, :cond_36

    .line 379
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x36

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 382
    :cond_36
    const v0, 0x7f040102

    if-ne p2, v0, :cond_37

    .line 384
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x37

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 387
    :cond_37
    const v0, 0x7f040103

    if-ne p2, v0, :cond_38

    .line 389
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x38

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 392
    :cond_38
    const v0, 0x7f040104

    if-ne p2, v0, :cond_39

    .line 394
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x39

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 397
    :cond_39
    const v0, 0x7f040105

    if-ne p2, v0, :cond_3a

    .line 399
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x3a

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 402
    :cond_3a
    const v0, 0x7f040106

    if-ne p2, v0, :cond_3b

    .line 404
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x3b

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 407
    :cond_3b
    const v0, 0x7f040107

    if-ne p2, v0, :cond_3c

    .line 409
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x3c

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 412
    :cond_3c
    const v0, 0x7f040108

    if-ne p2, v0, :cond_3d

    .line 414
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x3d

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 417
    :cond_3d
    const v0, 0x7f040109

    if-ne p2, v0, :cond_3e

    .line 419
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x3e

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 422
    :cond_3e
    const v0, 0x7f04010a

    if-ne p2, v0, :cond_3f

    .line 424
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x3f

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 427
    :cond_3f
    const v0, 0x7f04010b

    if-ne p2, v0, :cond_40

    .line 429
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x40

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 432
    :cond_40
    const v0, 0x7f04010c

    if-ne p2, v0, :cond_41

    .line 434
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x41

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 437
    :cond_41
    const v0, 0x7f04010d

    if-ne p2, v0, :cond_42

    .line 439
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x42

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 442
    :cond_42
    const v0, 0x7f04010e

    if-ne p2, v0, :cond_43

    .line 444
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x43

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 447
    :cond_43
    const v0, 0x7f04010f

    if-ne p2, v0, :cond_44

    .line 449
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x44

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 452
    :cond_44
    const v0, 0x7f040111

    if-ne p2, v0, :cond_45

    .line 454
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x45

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 457
    :cond_45
    const v0, 0x7f040112

    if-ne p2, v0, :cond_46

    .line 459
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x47

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 462
    :cond_46
    const v0, 0x7f040113

    if-ne p2, v0, :cond_47

    .line 464
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x48

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 467
    :cond_47
    const v0, 0x7f040114

    if-ne p2, v0, :cond_48

    .line 469
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x49

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 472
    :cond_48
    const v0, 0x7f040115

    if-ne p2, v0, :cond_49

    .line 474
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x4a

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 477
    :cond_49
    const v0, 0x7f040116

    if-ne p2, v0, :cond_4a

    .line 479
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x4b

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 482
    :cond_4a
    const v0, 0x7f040117

    if-ne p2, v0, :cond_4b

    .line 484
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x4c

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 487
    :cond_4b
    const v0, 0x7f040118

    if-ne p2, v0, :cond_4c

    .line 489
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x4d

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 492
    :cond_4c
    const v0, 0x7f040119

    if-ne p2, v0, :cond_4d

    .line 494
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x4e

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0

    .line 497
    :cond_4d
    const v0, 0x7f04011a

    if-ne p2, v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/16 v1, 0x4f

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    goto/16 :goto_0
.end method
