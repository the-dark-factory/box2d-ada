pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with box2d_id_h;
with box2d_math_functions_h;
with Interfaces.C.Extensions;
with utypes_uuint64_t_h;
with System;
with Interfaces.C.Strings;
with utypes_uuint32_t_h;
with box2d_collision_h;

package box2d_types_h is

   B2_DEFAULT_CATEGORY_BITS : constant := 1;  --  /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:14
   --  unsupported macro: B2_DEFAULT_MASK_BITS UINT64_MAX

   --  skipped function type b2TaskCallback

   --  skipped function type b2EnqueueTaskCallback

   --  skipped function type b2FinishTaskCallback

   --  skipped function type b2FrictionCallback

   --  skipped function type b2RestitutionCallback

   type b2RayResult is record
      shapeId : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:50
      point : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:51
      normal : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:52
      fraction : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:53
      nodeVisits : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:54
      leafVisits : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:55
      hit : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:48

   type b2Capacity is record
      staticShapeCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:65
      dynamicShapeCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:68
      staticBodyCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:71
      dynamicBodyCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:74
      contactCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:77
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:62

   type b2WorldDef is record
      gravity : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:86
      restitutionThreshold : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:90
      hitEventThreshold : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:93
      contactHertz : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:96
      contactDampingRatio : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:100
      contactSpeed : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:105
      maximumLinearSpeed : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:108
      frictionCallback : access function
           (arg1 : float;
            arg2 : utypes_uuint64_t_h.uint64_t;
            arg3 : float;
            arg4 : utypes_uuint64_t_h.uint64_t) return float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:111
      restitutionCallback : access function
           (arg1 : float;
            arg2 : utypes_uuint64_t_h.uint64_t;
            arg3 : float;
            arg4 : utypes_uuint64_t_h.uint64_t) return float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:114
      enableSleep : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:117
      enableContinuous : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:120
      enableContactSoftening : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:123
      workerCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:132
      enqueueTask : access function
           (arg1 : access procedure (arg1 : System.Address);
            arg2 : System.Address;
            arg3 : System.Address) return System.Address;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:135
      finishTask : access procedure (arg1 : System.Address; arg2 : System.Address);  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:138
      userTaskContext : System.Address;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:141
      userData : System.Address;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:144
      recordingPath : Interfaces.C.Strings.chars_ptr;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:148
      capacity : aliased b2Capacity;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:151
      internalValue : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:154
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:83

   function b2DefaultWorldDef return b2WorldDef  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultWorldDef";

   type b2BodyType is 
     (b2_staticBody,
      b2_kinematicBody,
      b2_dynamicBody,
      b2_bodyTypeCount)
   with Convention => C;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:164

   type b2MotionLocks is record
      linearX : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:183
      linearY : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:186
      angularZ : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:189
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:180

   type b2BodyDef is record
      c_type : aliased b2BodyType;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:200
      position : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:205
      rotation : aliased box2d_math_functions_h.b2Rot;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:208
      linearVelocity : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:211
      angularVelocity : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:214
      linearDamping : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:221
      angularDamping : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:227
      gravityScale : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:230
      sleepThreshold : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:233
      name : Interfaces.C.Strings.chars_ptr;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:236
      userData : System.Address;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:239
      motionLocks : aliased b2MotionLocks;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:243
      enableSleep : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:246
      isAwake : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:249
      isBullet : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:265
      isEnabled : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:268
      allowFastRotation : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:272
      enableContactRecycling : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:276
      internalValue : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:279
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:197

   function b2DefaultBodyDef return b2BodyDef  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultBodyDef";

   type b2Filter is record
      categoryBits : aliased utypes_uuint64_t_h.uint64_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:303
      maskBits : aliased utypes_uuint64_t_h.uint64_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:312
      groupIndex : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:320
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:289

   function b2DefaultFilter return b2Filter  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultFilter";

   type b2QueryFilter is record
      categoryBits : aliased utypes_uuint64_t_h.uint64_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:334
      maskBits : aliased utypes_uuint64_t_h.uint64_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:338
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:331

   function b2DefaultQueryFilter return b2QueryFilter  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultQueryFilter";

   type b2ShapeType is 
     (b2_circleShape,
      b2_capsuleShape,
      b2_segmentShape,
      b2_polygonShape,
      b2_chainSegmentShape,
      b2_shapeTypeCount)
   with Convention => C;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:347

   type b2SurfaceMaterial is record
      friction : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:373
      restitution : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:377
      rollingResistance : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:380
      tangentSpeed : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:383
      userMaterialId : aliased utypes_uuint64_t_h.uint64_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:387
      customColor : aliased utypes_uuint32_t_h.uint32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:390
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:370

   function b2DefaultSurfaceMaterial return b2SurfaceMaterial  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:395
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultSurfaceMaterial";

   type b2ShapeDef is record
      userData : System.Address;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:405
      material : aliased b2SurfaceMaterial;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:408
      density : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:413
      filter : aliased b2Filter;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:416
      enableCustomFiltering : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:419
      isSensor : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:426
      enableSensorEvents : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:430
      enableContactEvents : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:434
      enableHitEvents : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:438
      enablePreSolveEvents : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:442
      invokeContactCreation : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:447
      updateBodyMass : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:451
      internalValue : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:454
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:402

   function b2DefaultShapeDef return b2ShapeDef  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:459
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultShapeDef";

   type b2ChainDef is record
      userData : System.Address;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:479
      points : access constant box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:482
      count : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:485
      materials : access constant b2SurfaceMaterial;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:488
      materialCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:493
      filter : aliased b2Filter;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:496
      isLoop : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:499
      enableSensorEvents : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:502
      internalValue : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:505
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:476

   function b2DefaultChainDef return b2ChainDef  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:510
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultChainDef";

   type b2Profile is record
      step : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:516
      pairs : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:517
      collide : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:518
      solve : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:519
      solverSetup : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:520
      constraints : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:521
      prepareConstraints : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:522
      integrateVelocities : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:523
      warmStart : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:524
      solveImpulses : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:525
      integratePositions : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:526
      relaxImpulses : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:527
      applyRestitution : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:528
      storeImpulses : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:529
      splitIslands : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:530
      transforms : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:531
      sensorHits : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:532
      jointEvents : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:533
      hitEvents : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:534
      refit : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:535
      bullets : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:536
      sleepIslands : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:537
      sensors : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:538
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:514

   type anon_array2369 is array (0 .. 23) of aliased int;
   type b2Counters is record
      bodyCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:544
      shapeCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:545
      contactCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:546
      jointCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:547
      islandCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:548
      stackUsed : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:549
      staticTreeHeight : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:550
      treeHeight : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:551
      byteCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:552
      taskCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:553
      colorCounts : aliased anon_array2369;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:554
      awakeContactCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:557
      recycledContactCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:560
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:542

   type b2JointType is 
     (b2_distanceJoint,
      b2_filterJoint,
      b2_motorJoint,
      b2_prismaticJoint,
      b2_revoluteJoint,
      b2_weldJoint,
      b2_wheelJoint)
   with Convention => C;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:569

   type b2JointDef is record
      userData : System.Address;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:587
      bodyIdA : aliased box2d_id_h.b2BodyId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:590
      bodyIdB : aliased box2d_id_h.b2BodyId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:593
      localFrameA : aliased box2d_math_functions_h.b2Transform;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:596
      localFrameB : aliased box2d_math_functions_h.b2Transform;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:599
      forceThreshold : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:602
      torqueThreshold : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:605
      constraintHertz : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:608
      constraintDampingRatio : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:611
      drawScale : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:614
      collideConnected : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:617
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:584

   type b2DistanceJointDef is record
      base : aliased b2JointDef;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:628
      length : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:631
      enableSpring : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:635
      lowerSpringForce : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:638
      upperSpringForce : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:641
      hertz : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:644
      dampingRatio : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:647
      enableLimit : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:650
      minLength : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:653
      maxLength : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:656
      enableMotor : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:659
      maxMotorForce : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:662
      motorSpeed : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:665
      internalValue : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:668
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:625

   function b2DefaultDistanceJointDef return b2DistanceJointDef  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:673
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultDistanceJointDef";

   type b2MotorJointDef is record
      base : aliased b2JointDef;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:681
      linearVelocity : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:684
      maxVelocityForce : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:687
      angularVelocity : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:690
      maxVelocityTorque : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:693
      linearHertz : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:696
      linearDampingRatio : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:699
      maxSpringForce : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:702
      angularHertz : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:705
      angularDampingRatio : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:708
      maxSpringTorque : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:711
      internalValue : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:714
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:678

   function b2DefaultMotorJointDef return b2MotorJointDef  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:719
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultMotorJointDef";

   type b2FilterJointDef is record
      base : aliased b2JointDef;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:727
      internalValue : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:730
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:724

   function b2DefaultFilterJointDef return b2FilterJointDef  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:735
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultFilterJointDef";

   type b2PrismaticJointDef is record
      base : aliased b2JointDef;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:744
      enableSpring : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:747
      hertz : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:750
      dampingRatio : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:753
      targetTranslation : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:757
      enableLimit : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:760
      lowerTranslation : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:763
      upperTranslation : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:766
      enableMotor : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:769
      maxMotorForce : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:772
      motorSpeed : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:775
      internalValue : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:778
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:741

   function b2DefaultPrismaticJointDef return b2PrismaticJointDef  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:783
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultPrismaticJointDef";

   type b2RevoluteJointDef is record
      base : aliased b2JointDef;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:791
      targetAngle : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:795
      enableSpring : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:798
      hertz : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:801
      dampingRatio : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:804
      enableLimit : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:807
      lowerAngle : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:810
      upperAngle : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:813
      enableMotor : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:816
      maxMotorTorque : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:819
      motorSpeed : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:822
      internalValue : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:825
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:788

   function b2DefaultRevoluteJointDef return b2RevoluteJointDef  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:830
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultRevoluteJointDef";

   type b2WeldJointDef is record
      base : aliased b2JointDef;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:840
      linearHertz : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:843
      angularHertz : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:846
      linearDampingRatio : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:849
      angularDampingRatio : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:852
      internalValue : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:855
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:837

   function b2DefaultWeldJointDef return b2WeldJointDef  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:860
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultWeldJointDef";

   type b2WheelJointDef is record
      base : aliased b2JointDef;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:869
      enableSpring : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:872
      hertz : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:875
      dampingRatio : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:878
      enableLimit : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:881
      lowerTranslation : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:884
      upperTranslation : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:887
      enableMotor : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:890
      maxMotorTorque : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:893
      motorSpeed : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:896
      internalValue : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:899
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:866

   function b2DefaultWheelJointDef return b2WheelJointDef  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:904
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultWheelJointDef";

   type b2ExplosionDef is record
      maskBits : aliased utypes_uuint64_t_h.uint64_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:912
      position : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:915
      radius : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:918
      falloff : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:921
      impulsePerLength : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:926
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:909

   function b2DefaultExplosionDef return b2ExplosionDef  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:931
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultExplosionDef";

   type b2SensorBeginTouchEvent is record
      sensorShapeId : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:954
      visitorShapeId : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:957
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:951

   type b2SensorEndTouchEvent is record
      sensorShapeId : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:969
      visitorShapeId : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:974
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:964

   type b2SensorEvents is record
      beginEvents : access b2SensorBeginTouchEvent;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:984
      endEvents : access b2SensorEndTouchEvent;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:987
      beginCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:990
      endCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:993
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:981

   type b2ContactBeginTouchEvent is record
      shapeIdA : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1000
      shapeIdB : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1003
      contactId : aliased box2d_id_h.b2ContactId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1007
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:997

   type b2ContactEndTouchEvent is record
      shapeIdA : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1019
      shapeIdB : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1024
      contactId : aliased box2d_id_h.b2ContactId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1029
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1014

   type b2ContactHitEvent is record
      shapeIdA : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1037
      shapeIdB : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1040
      contactId : aliased box2d_id_h.b2ContactId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1045
      point : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1050
      normal : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1053
      approachSpeed : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1056
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1034

   type b2ContactEvents is record
      beginEvents : access b2ContactBeginTouchEvent;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1065
      endEvents : access b2ContactEndTouchEvent;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1068
      hitEvents : access b2ContactHitEvent;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1071
      beginCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1074
      endCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1077
      hitCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1080
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1062

   type b2BodyMoveEvent is record
      userData : System.Address;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1095
      transform : aliased box2d_math_functions_h.b2Transform;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1096
      bodyId : aliased box2d_id_h.b2BodyId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1097
      fellAsleep : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1098
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1093

   type b2BodyEvents is record
      moveEvents : access b2BodyMoveEvent;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1107
      moveCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1110
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1104

   type b2JointEvent is record
      jointId : aliased box2d_id_h.b2JointId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1118
      userData : System.Address;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1121
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1115

   type b2JointEvents is record
      jointEvents : access b2JointEvent;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1130
      count : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1133
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1127

   type b2ContactData is record
      contactId : aliased box2d_id_h.b2ContactId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1141
      shapeIdA : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1142
      shapeIdB : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1143
      manifold : aliased box2d_collision_h.b2Manifold;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1144
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1139

   --  skipped function type b2CustomFilterFcn

   --  skipped function type b2PreSolveFcn

   --  skipped function type b2OverlapResultFcn

   --  skipped function type b2CastResultFcn

   --  skipped function type b2PlaneResultFcn

   subtype b2HexColor is unsigned;
   b2HexColor_b2_colorAliceBlue : constant b2HexColor := 15792383;
   b2HexColor_b2_colorAntiqueWhite : constant b2HexColor := 16444375;
   b2HexColor_b2_colorAqua : constant b2HexColor := 65535;
   b2HexColor_b2_colorAquamarine : constant b2HexColor := 8388564;
   b2HexColor_b2_colorAzure : constant b2HexColor := 15794175;
   b2HexColor_b2_colorBeige : constant b2HexColor := 16119260;
   b2HexColor_b2_colorBisque : constant b2HexColor := 16770244;
   b2HexColor_b2_colorBlack : constant b2HexColor := 0;
   b2HexColor_b2_colorBlanchedAlmond : constant b2HexColor := 16772045;
   b2HexColor_b2_colorBlue : constant b2HexColor := 255;
   b2HexColor_b2_colorBlueViolet : constant b2HexColor := 9055202;
   b2HexColor_b2_colorBrown : constant b2HexColor := 10824234;
   b2HexColor_b2_colorBurlywood : constant b2HexColor := 14596231;
   b2HexColor_b2_colorCadetBlue : constant b2HexColor := 6266528;
   b2HexColor_b2_colorChartreuse : constant b2HexColor := 8388352;
   b2HexColor_b2_colorChocolate : constant b2HexColor := 13789470;
   b2HexColor_b2_colorCoral : constant b2HexColor := 16744272;
   b2HexColor_b2_colorCornflowerBlue : constant b2HexColor := 6591981;
   b2HexColor_b2_colorCornsilk : constant b2HexColor := 16775388;
   b2HexColor_b2_colorCrimson : constant b2HexColor := 14423100;
   b2HexColor_b2_colorCyan : constant b2HexColor := 65535;
   b2HexColor_b2_colorDarkBlue : constant b2HexColor := 139;
   b2HexColor_b2_colorDarkCyan : constant b2HexColor := 35723;
   b2HexColor_b2_colorDarkGoldenRod : constant b2HexColor := 12092939;
   b2HexColor_b2_colorDarkGray : constant b2HexColor := 11119017;
   b2HexColor_b2_colorDarkGreen : constant b2HexColor := 25600;
   b2HexColor_b2_colorDarkKhaki : constant b2HexColor := 12433259;
   b2HexColor_b2_colorDarkMagenta : constant b2HexColor := 9109643;
   b2HexColor_b2_colorDarkOliveGreen : constant b2HexColor := 5597999;
   b2HexColor_b2_colorDarkOrange : constant b2HexColor := 16747520;
   b2HexColor_b2_colorDarkOrchid : constant b2HexColor := 10040012;
   b2HexColor_b2_colorDarkRed : constant b2HexColor := 9109504;
   b2HexColor_b2_colorDarkSalmon : constant b2HexColor := 15308410;
   b2HexColor_b2_colorDarkSeaGreen : constant b2HexColor := 9419919;
   b2HexColor_b2_colorDarkSlateBlue : constant b2HexColor := 4734347;
   b2HexColor_b2_colorDarkSlateGray : constant b2HexColor := 3100495;
   b2HexColor_b2_colorDarkTurquoise : constant b2HexColor := 52945;
   b2HexColor_b2_colorDarkViolet : constant b2HexColor := 9699539;
   b2HexColor_b2_colorDeepPink : constant b2HexColor := 16716947;
   b2HexColor_b2_colorDeepSkyBlue : constant b2HexColor := 49151;
   b2HexColor_b2_colorDimGray : constant b2HexColor := 6908265;
   b2HexColor_b2_colorDodgerBlue : constant b2HexColor := 2003199;
   b2HexColor_b2_colorFireBrick : constant b2HexColor := 11674146;
   b2HexColor_b2_colorFloralWhite : constant b2HexColor := 16775920;
   b2HexColor_b2_colorForestGreen : constant b2HexColor := 2263842;
   b2HexColor_b2_colorFuchsia : constant b2HexColor := 16711935;
   b2HexColor_b2_colorGainsboro : constant b2HexColor := 14474460;
   b2HexColor_b2_colorGhostWhite : constant b2HexColor := 16316671;
   b2HexColor_b2_colorGold : constant b2HexColor := 16766720;
   b2HexColor_b2_colorGoldenRod : constant b2HexColor := 14329120;
   b2HexColor_b2_colorGray : constant b2HexColor := 8421504;
   b2HexColor_b2_colorGreen : constant b2HexColor := 32768;
   b2HexColor_b2_colorGreenYellow : constant b2HexColor := 11403055;
   b2HexColor_b2_colorHoneyDew : constant b2HexColor := 15794160;
   b2HexColor_b2_colorHotPink : constant b2HexColor := 16738740;
   b2HexColor_b2_colorIndianRed : constant b2HexColor := 13458524;
   b2HexColor_b2_colorIndigo : constant b2HexColor := 4915330;
   b2HexColor_b2_colorIvory : constant b2HexColor := 16777200;
   b2HexColor_b2_colorKhaki : constant b2HexColor := 15787660;
   b2HexColor_b2_colorLavender : constant b2HexColor := 15132410;
   b2HexColor_b2_colorLavenderBlush : constant b2HexColor := 16773365;
   b2HexColor_b2_colorLawnGreen : constant b2HexColor := 8190976;
   b2HexColor_b2_colorLemonChiffon : constant b2HexColor := 16775885;
   b2HexColor_b2_colorLightBlue : constant b2HexColor := 11393254;
   b2HexColor_b2_colorLightCoral : constant b2HexColor := 15761536;
   b2HexColor_b2_colorLightCyan : constant b2HexColor := 14745599;
   b2HexColor_b2_colorLightGoldenRodYellow : constant b2HexColor := 16448210;
   b2HexColor_b2_colorLightGray : constant b2HexColor := 13882323;
   b2HexColor_b2_colorLightGreen : constant b2HexColor := 9498256;
   b2HexColor_b2_colorLightPink : constant b2HexColor := 16758465;
   b2HexColor_b2_colorLightSalmon : constant b2HexColor := 16752762;
   b2HexColor_b2_colorLightSeaGreen : constant b2HexColor := 2142890;
   b2HexColor_b2_colorLightSkyBlue : constant b2HexColor := 8900346;
   b2HexColor_b2_colorLightSlateGray : constant b2HexColor := 7833753;
   b2HexColor_b2_colorLightSteelBlue : constant b2HexColor := 11584734;
   b2HexColor_b2_colorLightYellow : constant b2HexColor := 16777184;
   b2HexColor_b2_colorLime : constant b2HexColor := 65280;
   b2HexColor_b2_colorLimeGreen : constant b2HexColor := 3329330;
   b2HexColor_b2_colorLinen : constant b2HexColor := 16445670;
   b2HexColor_b2_colorMagenta : constant b2HexColor := 16711935;
   b2HexColor_b2_colorMaroon : constant b2HexColor := 8388608;
   b2HexColor_b2_colorMediumAquaMarine : constant b2HexColor := 6737322;
   b2HexColor_b2_colorMediumBlue : constant b2HexColor := 205;
   b2HexColor_b2_colorMediumOrchid : constant b2HexColor := 12211667;
   b2HexColor_b2_colorMediumPurple : constant b2HexColor := 9662683;
   b2HexColor_b2_colorMediumSeaGreen : constant b2HexColor := 3978097;
   b2HexColor_b2_colorMediumSlateBlue : constant b2HexColor := 8087790;
   b2HexColor_b2_colorMediumSpringGreen : constant b2HexColor := 64154;
   b2HexColor_b2_colorMediumTurquoise : constant b2HexColor := 4772300;
   b2HexColor_b2_colorMediumVioletRed : constant b2HexColor := 13047173;
   b2HexColor_b2_colorMidnightBlue : constant b2HexColor := 1644912;
   b2HexColor_b2_colorMintCream : constant b2HexColor := 16121850;
   b2HexColor_b2_colorMistyRose : constant b2HexColor := 16770273;
   b2HexColor_b2_colorMoccasin : constant b2HexColor := 16770229;
   b2HexColor_b2_colorNavajoWhite : constant b2HexColor := 16768685;
   b2HexColor_b2_colorNavy : constant b2HexColor := 128;
   b2HexColor_b2_colorOldLace : constant b2HexColor := 16643558;
   b2HexColor_b2_colorOlive : constant b2HexColor := 8421376;
   b2HexColor_b2_colorOliveDrab : constant b2HexColor := 7048739;
   b2HexColor_b2_colorOrange : constant b2HexColor := 16753920;
   b2HexColor_b2_colorOrangeRed : constant b2HexColor := 16729344;
   b2HexColor_b2_colorOrchid : constant b2HexColor := 14315734;
   b2HexColor_b2_colorPaleGoldenRod : constant b2HexColor := 15657130;
   b2HexColor_b2_colorPaleGreen : constant b2HexColor := 10025880;
   b2HexColor_b2_colorPaleTurquoise : constant b2HexColor := 11529966;
   b2HexColor_b2_colorPaleVioletRed : constant b2HexColor := 14381203;
   b2HexColor_b2_colorPapayaWhip : constant b2HexColor := 16773077;
   b2HexColor_b2_colorPeachPuff : constant b2HexColor := 16767673;
   b2HexColor_b2_colorPeru : constant b2HexColor := 13468991;
   b2HexColor_b2_colorPink : constant b2HexColor := 16761035;
   b2HexColor_b2_colorPlum : constant b2HexColor := 14524637;
   b2HexColor_b2_colorPowderBlue : constant b2HexColor := 11591910;
   b2HexColor_b2_colorPurple : constant b2HexColor := 8388736;
   b2HexColor_b2_colorRebeccaPurple : constant b2HexColor := 6697881;
   b2HexColor_b2_colorRed : constant b2HexColor := 16711680;
   b2HexColor_b2_colorRosyBrown : constant b2HexColor := 12357519;
   b2HexColor_b2_colorRoyalBlue : constant b2HexColor := 4286945;
   b2HexColor_b2_colorSaddleBrown : constant b2HexColor := 9127187;
   b2HexColor_b2_colorSalmon : constant b2HexColor := 16416882;
   b2HexColor_b2_colorSandyBrown : constant b2HexColor := 16032864;
   b2HexColor_b2_colorSeaGreen : constant b2HexColor := 3050327;
   b2HexColor_b2_colorSeaShell : constant b2HexColor := 16774638;
   b2HexColor_b2_colorSienna : constant b2HexColor := 10506797;
   b2HexColor_b2_colorSilver : constant b2HexColor := 12632256;
   b2HexColor_b2_colorSkyBlue : constant b2HexColor := 8900331;
   b2HexColor_b2_colorSlateBlue : constant b2HexColor := 6970061;
   b2HexColor_b2_colorSlateGray : constant b2HexColor := 7372944;
   b2HexColor_b2_colorSnow : constant b2HexColor := 16775930;
   b2HexColor_b2_colorSpringGreen : constant b2HexColor := 65407;
   b2HexColor_b2_colorSteelBlue : constant b2HexColor := 4620980;
   b2HexColor_b2_colorTan : constant b2HexColor := 13808780;
   b2HexColor_b2_colorTeal : constant b2HexColor := 32896;
   b2HexColor_b2_colorThistle : constant b2HexColor := 14204888;
   b2HexColor_b2_colorTomato : constant b2HexColor := 16737095;
   b2HexColor_b2_colorTurquoise : constant b2HexColor := 4251856;
   b2HexColor_b2_colorViolet : constant b2HexColor := 15631086;
   b2HexColor_b2_colorWheat : constant b2HexColor := 16113331;
   b2HexColor_b2_colorWhite : constant b2HexColor := 16777215;
   b2HexColor_b2_colorWhiteSmoke : constant b2HexColor := 16119285;
   b2HexColor_b2_colorYellow : constant b2HexColor := 16776960;
   b2HexColor_b2_colorYellowGreen : constant b2HexColor := 10145074;
   b2HexColor_b2_colorBox2DRed : constant b2HexColor := 14430514;
   b2HexColor_b2_colorBox2DBlue : constant b2HexColor := 3190463;
   b2HexColor_b2_colorBox2DGreen : constant b2HexColor := 9226532;
   b2HexColor_b2_colorBox2DYellow : constant b2HexColor := 16772748;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1211

   function b2GetGraphColor (index : int) return b2HexColor  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1363
   with Import => True, 
        Convention => C, 
        External_Name => "b2GetGraphColor";

   type b2DebugDraw is record
      DrawPolygonFcn : access procedure
           (arg1 : access constant box2d_math_functions_h.b2Vec2;
            arg2 : int;
            arg3 : b2HexColor;
            arg4 : System.Address);  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1371
      DrawSolidPolygonFcn : access procedure
           (arg1 : box2d_math_functions_h.b2Transform;
            arg2 : access constant box2d_math_functions_h.b2Vec2;
            arg3 : int;
            arg4 : float;
            arg5 : b2HexColor;
            arg6 : System.Address);  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1374
      DrawCircleFcn : access procedure
           (arg1 : box2d_math_functions_h.b2Vec2;
            arg2 : float;
            arg3 : b2HexColor;
            arg4 : System.Address);  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1378
      DrawSolidCircleFcn : access procedure
           (arg1 : box2d_math_functions_h.b2Transform;
            arg2 : float;
            arg3 : b2HexColor;
            arg4 : System.Address);  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1381
      DrawSolidCapsuleFcn : access procedure
           (arg1 : box2d_math_functions_h.b2Vec2;
            arg2 : box2d_math_functions_h.b2Vec2;
            arg3 : float;
            arg4 : b2HexColor;
            arg5 : System.Address);  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1384
      DrawLineFcn : access procedure
           (arg1 : box2d_math_functions_h.b2Vec2;
            arg2 : box2d_math_functions_h.b2Vec2;
            arg3 : b2HexColor;
            arg4 : System.Address);  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1387
      DrawTransformFcn : access procedure (arg1 : box2d_math_functions_h.b2Transform; arg2 : System.Address);  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1390
      DrawPointFcn : access procedure
           (arg1 : box2d_math_functions_h.b2Vec2;
            arg2 : float;
            arg3 : b2HexColor;
            arg4 : System.Address);  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1393
      DrawStringFcn : access procedure
           (arg1 : box2d_math_functions_h.b2Vec2;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : b2HexColor;
            arg4 : System.Address);  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1396
      drawingBounds : aliased box2d_math_functions_h.b2AABB;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1399
      forceScale : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1402
      jointScale : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1405
      drawContacts : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1408
      drawAnchorA : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1411
      drawShapes : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1414
      drawChainNormals : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1417
      drawJoints : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1420
      drawJointExtras : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1423
      drawBounds : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1426
      drawMass : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1429
      drawBodyNames : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1432
      drawGraphColors : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1435
      drawContactFeatures : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1438
      drawContactNormals : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1441
      drawContactForces : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1444
      drawFrictionForces : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1447
      drawIslands : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1450
      context : System.Address;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1453
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1368

   function b2DefaultDebugDraw return b2DebugDraw  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/types.h:1458
   with Import => True, 
        Convention => C, 
        External_Name => "b2DefaultDebugDraw";

end box2d_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
