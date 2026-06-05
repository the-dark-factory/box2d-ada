pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with box2d_types_h;
with box2d_id_h;
with Interfaces.C.Extensions;
with box2d_math_functions_h;
with System;
with box2d_collision_h;
with utypes_uuint64_t_h;
with Interfaces.C.Strings;
with utypes_uuint32_t_h;

package box2d_box2d_h is

   function b2CreateWorld (def : access constant box2d_types_h.b2WorldDef) return box2d_id_h.b2WorldId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateWorld";

   procedure b2DestroyWorld (worldId : box2d_id_h.b2WorldId)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "b2DestroyWorld";

   function b2World_IsValid (id : box2d_id_h.b2WorldId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_IsValid";

   procedure b2World_Step
     (worldId : box2d_id_h.b2WorldId;
      timeStep : float;
      subStepCount : int)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_Step";

   procedure b2World_Draw (worldId : box2d_id_h.b2WorldId; draw : access box2d_types_h.b2DebugDraw)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_Draw";

   function b2World_GetBodyEvents (worldId : box2d_id_h.b2WorldId) return box2d_types_h.b2BodyEvents  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetBodyEvents";

   function b2World_GetSensorEvents (worldId : box2d_id_h.b2WorldId) return box2d_types_h.b2SensorEvents  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetSensorEvents";

   function b2World_GetContactEvents (worldId : box2d_id_h.b2WorldId) return box2d_types_h.b2ContactEvents  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetContactEvents";

   function b2World_GetJointEvents (worldId : box2d_id_h.b2WorldId) return box2d_types_h.b2JointEvents  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetJointEvents";

   function b2World_OverlapAABB
     (worldId : box2d_id_h.b2WorldId;
      aabb : box2d_math_functions_h.b2AABB;
      filter : box2d_types_h.b2QueryFilter;
      fcn : access function (arg1 : box2d_id_h.b2ShapeId; arg2 : System.Address) return Extensions.bool;
      context : System.Address) return box2d_collision_h.b2TreeStats  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_OverlapAABB";

   function b2World_OverlapShape
     (worldId : box2d_id_h.b2WorldId;
      proxy : access constant box2d_collision_h.b2ShapeProxy;
      filter : box2d_types_h.b2QueryFilter;
      fcn : access function (arg1 : box2d_id_h.b2ShapeId; arg2 : System.Address) return Extensions.bool;
      context : System.Address) return box2d_collision_h.b2TreeStats  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_OverlapShape";

   function b2World_CastRay
     (worldId : box2d_id_h.b2WorldId;
      origin : box2d_math_functions_h.b2Vec2;
      translation : box2d_math_functions_h.b2Vec2;
      filter : box2d_types_h.b2QueryFilter;
      fcn : access function
        (arg1 : box2d_id_h.b2ShapeId;
         arg2 : box2d_math_functions_h.b2Vec2;
         arg3 : box2d_math_functions_h.b2Vec2;
         arg4 : float;
         arg5 : System.Address) return float;
      context : System.Address) return box2d_collision_h.b2TreeStats  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_CastRay";

   function b2World_CastRayClosest
     (worldId : box2d_id_h.b2WorldId;
      origin : box2d_math_functions_h.b2Vec2;
      translation : box2d_math_functions_h.b2Vec2;
      filter : box2d_types_h.b2QueryFilter) return box2d_types_h.b2RayResult  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_CastRayClosest";

   function b2World_CastShape
     (worldId : box2d_id_h.b2WorldId;
      proxy : access constant box2d_collision_h.b2ShapeProxy;
      translation : box2d_math_functions_h.b2Vec2;
      filter : box2d_types_h.b2QueryFilter;
      fcn : access function
        (arg1 : box2d_id_h.b2ShapeId;
         arg2 : box2d_math_functions_h.b2Vec2;
         arg3 : box2d_math_functions_h.b2Vec2;
         arg4 : float;
         arg5 : System.Address) return float;
      context : System.Address) return box2d_collision_h.b2TreeStats  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_CastShape";

   function b2World_CastMover
     (worldId : box2d_id_h.b2WorldId;
      mover : access constant box2d_collision_h.b2Capsule;
      translation : box2d_math_functions_h.b2Vec2;
      filter : box2d_types_h.b2QueryFilter) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_CastMover";

   procedure b2World_CollideMover
     (worldId : box2d_id_h.b2WorldId;
      mover : access constant box2d_collision_h.b2Capsule;
      filter : box2d_types_h.b2QueryFilter;
      fcn : access function
        (arg1 : box2d_id_h.b2ShapeId;
         arg2 : access constant box2d_collision_h.b2PlaneResult;
         arg3 : System.Address) return Extensions.bool;
      context : System.Address)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_CollideMover";

   procedure b2World_EnableSleeping (worldId : box2d_id_h.b2WorldId; flag : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_EnableSleeping";

   function b2World_IsSleepingEnabled (worldId : box2d_id_h.b2WorldId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_IsSleepingEnabled";

   procedure b2World_EnableContinuous (worldId : box2d_id_h.b2WorldId; flag : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_EnableContinuous";

   function b2World_IsContinuousEnabled (worldId : box2d_id_h.b2WorldId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_IsContinuousEnabled";

   procedure b2World_SetRestitutionThreshold (worldId : box2d_id_h.b2WorldId; value : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SetRestitutionThreshold";

   function b2World_GetRestitutionThreshold (worldId : box2d_id_h.b2WorldId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetRestitutionThreshold";

   procedure b2World_SetHitEventThreshold (worldId : box2d_id_h.b2WorldId; value : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SetHitEventThreshold";

   function b2World_GetHitEventThreshold (worldId : box2d_id_h.b2WorldId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetHitEventThreshold";

   procedure b2World_SetCustomFilterCallback
     (worldId : box2d_id_h.b2WorldId;
      fcn : access function
        (arg1 : box2d_id_h.b2ShapeId;
         arg2 : box2d_id_h.b2ShapeId;
         arg3 : System.Address) return Extensions.bool;
      context : System.Address)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SetCustomFilterCallback";

   procedure b2World_SetPreSolveCallback
     (worldId : box2d_id_h.b2WorldId;
      fcn : access function
        (arg1 : box2d_id_h.b2ShapeId;
         arg2 : box2d_id_h.b2ShapeId;
         arg3 : box2d_math_functions_h.b2Vec2;
         arg4 : box2d_math_functions_h.b2Vec2;
         arg5 : System.Address) return Extensions.bool;
      context : System.Address)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SetPreSolveCallback";

   procedure b2World_SetGravity (worldId : box2d_id_h.b2WorldId; gravity : box2d_math_functions_h.b2Vec2)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SetGravity";

   function b2World_GetGravity (worldId : box2d_id_h.b2WorldId) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetGravity";

   procedure b2World_Explode (worldId : box2d_id_h.b2WorldId; explosionDef : access constant box2d_types_h.b2ExplosionDef)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_Explode";

   procedure b2World_SetContactTuning
     (worldId : box2d_id_h.b2WorldId;
      hertz : float;
      dampingRatio : float;
      pushSpeed : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SetContactTuning";

   procedure b2World_SetContactRecycleDistance (worldId : box2d_id_h.b2WorldId; recycleDistance : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SetContactRecycleDistance";

   function b2World_GetContactRecycleDistance (worldId : box2d_id_h.b2WorldId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetContactRecycleDistance";

   procedure b2World_SetMaximumLinearSpeed (worldId : box2d_id_h.b2WorldId; maximumLinearSpeed : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SetMaximumLinearSpeed";

   function b2World_GetMaximumLinearSpeed (worldId : box2d_id_h.b2WorldId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetMaximumLinearSpeed";

   procedure b2World_EnableWarmStarting (worldId : box2d_id_h.b2WorldId; flag : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_EnableWarmStarting";

   function b2World_IsWarmStartingEnabled (worldId : box2d_id_h.b2WorldId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_IsWarmStartingEnabled";

   function b2World_GetAwakeBodyCount (worldId : box2d_id_h.b2WorldId) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetAwakeBodyCount";

   function b2World_GetProfile (worldId : box2d_id_h.b2WorldId) return box2d_types_h.b2Profile  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetProfile";

   function b2World_GetCounters (worldId : box2d_id_h.b2WorldId) return box2d_types_h.b2Counters  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetCounters";

   function b2World_GetMaxCapacity (worldId : box2d_id_h.b2WorldId) return box2d_types_h.b2Capacity  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetMaxCapacity";

   procedure b2World_SetUserData (worldId : box2d_id_h.b2WorldId; userData : System.Address)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SetUserData";

   function b2World_GetUserData (worldId : box2d_id_h.b2WorldId) return System.Address  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetUserData";

   procedure b2World_SetFrictionCallback (worldId : box2d_id_h.b2WorldId; callback : access function
        (arg1 : float;
         arg2 : utypes_uuint64_t_h.uint64_t;
         arg3 : float;
         arg4 : utypes_uuint64_t_h.uint64_t) return float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SetFrictionCallback";

   procedure b2World_SetRestitutionCallback (worldId : box2d_id_h.b2WorldId; callback : access function
        (arg1 : float;
         arg2 : utypes_uuint64_t_h.uint64_t;
         arg3 : float;
         arg4 : utypes_uuint64_t_h.uint64_t) return float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SetRestitutionCallback";

   procedure b2World_SetWorkerCount (worldId : box2d_id_h.b2WorldId; count : int)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SetWorkerCount";

   function b2World_GetWorkerCount (worldId : box2d_id_h.b2WorldId) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_GetWorkerCount";

   procedure b2World_DumpMemoryStats (worldId : box2d_id_h.b2WorldId)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_DumpMemoryStats";

   procedure b2World_RebuildStaticTree (worldId : box2d_id_h.b2WorldId)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_RebuildStaticTree";

   procedure b2World_EnableSpeculative (worldId : box2d_id_h.b2WorldId; flag : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_EnableSpeculative";

   procedure b2World_SaveRecording (worldId : box2d_id_h.b2WorldId; path : Interfaces.C.Strings.chars_ptr)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_SaveRecording";

   procedure b2World_StopRecording (worldId : box2d_id_h.b2WorldId)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "b2World_StopRecording";

   function b2ValidateReplayFile (path : Interfaces.C.Strings.chars_ptr; workerCount : int) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "b2ValidateReplayFile";

   type b2RecPlayer is null record;   -- incomplete struct

   type b2RecPlayerInfo is record
      frameCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:244
      workerCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:245
      timeStep : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:246
      subStepCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:247
      buildHash : aliased utypes_uuint32_t_h.uint32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:248
      wallClock : aliased utypes_uuint64_t_h.uint64_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:249
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:242

   function b2RecPlayer_Create (path : Interfaces.C.Strings.chars_ptr; workerCount : int) return access b2RecPlayer  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_Create";

   function b2RecPlayer_StepFrame (player : access b2RecPlayer) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_StepFrame";

   function b2RecPlayer_GetWorldId (player : access constant b2RecPlayer) return box2d_id_h.b2WorldId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_GetWorldId";

   procedure b2RecPlayer_Restart (player : access b2RecPlayer)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_Restart";

   procedure b2RecPlayer_SeekFrame (player : access b2RecPlayer; targetFrame : int)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_SeekFrame";

   function b2RecPlayer_GetFrame (player : access constant b2RecPlayer) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_GetFrame";

   function b2RecPlayer_GetInfo (player : access constant b2RecPlayer) return b2RecPlayerInfo  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_GetInfo";

   function b2RecPlayer_GetBuildHash (player : access constant b2RecPlayer) return utypes_uuint32_t_h.uint32_t  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_GetBuildHash";

   function b2RecPlayer_IsAtEnd (player : access constant b2RecPlayer) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_IsAtEnd";

   function b2RecPlayer_HasDiverged (player : access constant b2RecPlayer) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_HasDiverged";

   function b2RecPlayer_GetDivergeFrame (player : access constant b2RecPlayer) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_GetDivergeFrame";

   procedure b2RecPlayer_Destroy (player : access b2RecPlayer)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_Destroy";

   procedure b2RecPlayer_DrawFrameQueries
     (player : access b2RecPlayer;
      draw : access box2d_types_h.b2DebugDraw;
      queryIndex : int)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_DrawFrameQueries";

   type b2RecQueryType is 
     (b2_recQueryOverlapAABB,
      b2_recQueryOverlapShape,
      b2_recQueryCastRay,
      b2_recQueryCastShape,
      b2_recQueryCollideMover,
      b2_recQueryCastRayClosest,
      b2_recQueryCastMover,
      b2_recQueryShapeTestPoint,
      b2_recQueryShapeRayCast)
   with Convention => C;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:302

   type b2RecQueryInfo is record
      c_type : aliased b2RecQueryType;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:318
      filter : aliased box2d_types_h.b2QueryFilter;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:319
      aabb : aliased box2d_math_functions_h.b2AABB;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:320
      origin : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:321
      translation : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:322
      shape : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:323
      hitCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:324
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:316

   type b2RecQueryHit is record
      shape : aliased box2d_id_h.b2ShapeId;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:330
      point : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:331
      normal : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:332
      fraction : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:333
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:328

   function b2RecPlayer_GetFrameQueryCount (player : access constant b2RecPlayer) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:337
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_GetFrameQueryCount";

   function b2RecPlayer_GetFrameQuery (player : access constant b2RecPlayer; index : int) return b2RecQueryInfo  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_GetFrameQuery";

   function b2RecPlayer_GetFrameQueryHit
     (player : access constant b2RecPlayer;
      queryIndex : int;
      hitIndex : int) return b2RecQueryHit  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_GetFrameQueryHit";

   function b2RecPlayer_GetBodyCount (player : access constant b2RecPlayer) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_GetBodyCount";

   function b2RecPlayer_GetBodyId (player : access constant b2RecPlayer; index : int) return box2d_id_h.b2BodyId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "b2RecPlayer_GetBodyId";

   function b2CreateBody (worldId : box2d_id_h.b2WorldId; def : access constant box2d_types_h.b2BodyDef) return box2d_id_h.b2BodyId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateBody";

   procedure b2DestroyBody (bodyId : box2d_id_h.b2BodyId)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "b2DestroyBody";

   function b2Body_IsValid (id : box2d_id_h.b2BodyId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_IsValid";

   function b2Body_GetType (bodyId : box2d_id_h.b2BodyId) return box2d_types_h.b2BodyType  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetType";

   procedure b2Body_SetType (bodyId : box2d_id_h.b2BodyId; c_type : box2d_types_h.b2BodyType)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:383
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetType";

   procedure b2Body_SetName (bodyId : box2d_id_h.b2BodyId; name : Interfaces.C.Strings.chars_ptr)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetName";

   function b2Body_GetName (bodyId : box2d_id_h.b2BodyId) return Interfaces.C.Strings.chars_ptr  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:389
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetName";

   procedure b2Body_SetUserData (bodyId : box2d_id_h.b2BodyId; userData : System.Address)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:392
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetUserData";

   function b2Body_GetUserData (bodyId : box2d_id_h.b2BodyId) return System.Address  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:395
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetUserData";

   function b2Body_GetPosition (bodyId : box2d_id_h.b2BodyId) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:398
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetPosition";

   function b2Body_GetRotation (bodyId : box2d_id_h.b2BodyId) return box2d_math_functions_h.b2Rot  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:401
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetRotation";

   function b2Body_GetTransform (bodyId : box2d_id_h.b2BodyId) return box2d_math_functions_h.b2Transform  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:404
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetTransform";

   procedure b2Body_SetTransform
     (bodyId : box2d_id_h.b2BodyId;
      position : box2d_math_functions_h.b2Vec2;
      rotation : box2d_math_functions_h.b2Rot)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:409
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetTransform";

   function b2Body_GetLocalPoint (bodyId : box2d_id_h.b2BodyId; worldPoint : box2d_math_functions_h.b2Vec2) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:412
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetLocalPoint";

   function b2Body_GetWorldPoint (bodyId : box2d_id_h.b2BodyId; localPoint : box2d_math_functions_h.b2Vec2) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetWorldPoint";

   function b2Body_GetLocalVector (bodyId : box2d_id_h.b2BodyId; worldVector : box2d_math_functions_h.b2Vec2) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:418
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetLocalVector";

   function b2Body_GetWorldVector (bodyId : box2d_id_h.b2BodyId; localVector : box2d_math_functions_h.b2Vec2) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetWorldVector";

   function b2Body_GetLinearVelocity (bodyId : box2d_id_h.b2BodyId) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetLinearVelocity";

   function b2Body_GetAngularVelocity (bodyId : box2d_id_h.b2BodyId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetAngularVelocity";

   procedure b2Body_SetLinearVelocity (bodyId : box2d_id_h.b2BodyId; linearVelocity : box2d_math_functions_h.b2Vec2)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:430
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetLinearVelocity";

   procedure b2Body_SetAngularVelocity (bodyId : box2d_id_h.b2BodyId; angularVelocity : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:433
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetAngularVelocity";

   procedure b2Body_SetTargetTransform
     (bodyId : box2d_id_h.b2BodyId;
      target : box2d_math_functions_h.b2Transform;
      timeStep : float;
      wake : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:443
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetTargetTransform";

   function b2Body_GetLocalPointVelocity (bodyId : box2d_id_h.b2BodyId; localPoint : box2d_math_functions_h.b2Vec2) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:446
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetLocalPointVelocity";

   function b2Body_GetWorldPointVelocity (bodyId : box2d_id_h.b2BodyId; worldPoint : box2d_math_functions_h.b2Vec2) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:449
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetWorldPointVelocity";

   procedure b2Body_ApplyForce
     (bodyId : box2d_id_h.b2BodyId;
      force : box2d_math_functions_h.b2Vec2;
      point : box2d_math_functions_h.b2Vec2;
      wake : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:458
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_ApplyForce";

   procedure b2Body_ApplyForceToCenter
     (bodyId : box2d_id_h.b2BodyId;
      force : box2d_math_functions_h.b2Vec2;
      wake : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:465
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_ApplyForceToCenter";

   procedure b2Body_ApplyTorque
     (bodyId : box2d_id_h.b2BodyId;
      torque : float;
      wake : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:472
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_ApplyTorque";

   procedure b2Body_ClearForces (bodyId : box2d_id_h.b2BodyId)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:478
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_ClearForces";

   procedure b2Body_ApplyLinearImpulse
     (bodyId : box2d_id_h.b2BodyId;
      impulse : box2d_math_functions_h.b2Vec2;
      point : box2d_math_functions_h.b2Vec2;
      wake : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:490
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_ApplyLinearImpulse";

   procedure b2Body_ApplyLinearImpulseToCenter
     (bodyId : box2d_id_h.b2BodyId;
      impulse : box2d_math_functions_h.b2Vec2;
      wake : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:499
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_ApplyLinearImpulseToCenter";

   procedure b2Body_ApplyAngularImpulse
     (bodyId : box2d_id_h.b2BodyId;
      impulse : float;
      wake : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:508
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_ApplyAngularImpulse";

   function b2Body_GetMass (bodyId : box2d_id_h.b2BodyId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:511
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetMass";

   function b2Body_GetRotationalInertia (bodyId : box2d_id_h.b2BodyId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:514
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetRotationalInertia";

   function b2Body_GetLocalCenterOfMass (bodyId : box2d_id_h.b2BodyId) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:517
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetLocalCenterOfMass";

   function b2Body_GetWorldCenterOfMass (bodyId : box2d_id_h.b2BodyId) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:520
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetWorldCenterOfMass";

   procedure b2Body_SetMassData (bodyId : box2d_id_h.b2BodyId; massData : box2d_collision_h.b2MassData)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:525
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetMassData";

   function b2Body_GetMassData (bodyId : box2d_id_h.b2BodyId) return box2d_collision_h.b2MassData  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:528
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetMassData";

   procedure b2Body_ApplyMassFromShapes (bodyId : box2d_id_h.b2BodyId)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:536
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_ApplyMassFromShapes";

   procedure b2Body_SetLinearDamping (bodyId : box2d_id_h.b2BodyId; linearDamping : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:539
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetLinearDamping";

   function b2Body_GetLinearDamping (bodyId : box2d_id_h.b2BodyId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:542
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetLinearDamping";

   procedure b2Body_SetAngularDamping (bodyId : box2d_id_h.b2BodyId; angularDamping : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:545
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetAngularDamping";

   function b2Body_GetAngularDamping (bodyId : box2d_id_h.b2BodyId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:548
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetAngularDamping";

   procedure b2Body_SetGravityScale (bodyId : box2d_id_h.b2BodyId; gravityScale : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:552
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetGravityScale";

   function b2Body_GetGravityScale (bodyId : box2d_id_h.b2BodyId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:555
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetGravityScale";

   function b2Body_IsAwake (bodyId : box2d_id_h.b2BodyId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:558
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_IsAwake";

   procedure b2Body_SetAwake (bodyId : box2d_id_h.b2BodyId; awake : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:563
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetAwake";

   procedure b2Body_WakeTouching (bodyId : box2d_id_h.b2BodyId)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:566
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_WakeTouching";

   procedure b2Body_EnableSleep (bodyId : box2d_id_h.b2BodyId; enableSleep : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:569
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_EnableSleep";

   function b2Body_IsSleepEnabled (bodyId : box2d_id_h.b2BodyId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:572
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_IsSleepEnabled";

   procedure b2Body_SetSleepThreshold (bodyId : box2d_id_h.b2BodyId; sleepThreshold : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:575
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetSleepThreshold";

   function b2Body_GetSleepThreshold (bodyId : box2d_id_h.b2BodyId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:578
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetSleepThreshold";

   function b2Body_IsEnabled (bodyId : box2d_id_h.b2BodyId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:581
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_IsEnabled";

   procedure b2Body_Disable (bodyId : box2d_id_h.b2BodyId)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:584
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_Disable";

   procedure b2Body_Enable (bodyId : box2d_id_h.b2BodyId)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:587
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_Enable";

   procedure b2Body_SetMotionLocks (bodyId : box2d_id_h.b2BodyId; locks : box2d_types_h.b2MotionLocks)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:590
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetMotionLocks";

   function b2Body_GetMotionLocks (bodyId : box2d_id_h.b2BodyId) return box2d_types_h.b2MotionLocks  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:593
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetMotionLocks";

   procedure b2Body_SetBullet (bodyId : box2d_id_h.b2BodyId; flag : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:597
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_SetBullet";

   function b2Body_IsBullet (bodyId : box2d_id_h.b2BodyId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:600
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_IsBullet";

   procedure b2Body_EnableContactRecycling (bodyId : box2d_id_h.b2BodyId; flag : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:607
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_EnableContactRecycling";

   function b2Body_IsContactRecyclingEnabled (bodyId : box2d_id_h.b2BodyId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:610
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_IsContactRecyclingEnabled";

   procedure b2Body_EnableContactEvents (bodyId : box2d_id_h.b2BodyId; flag : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:615
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_EnableContactEvents";

   procedure b2Body_EnableHitEvents (bodyId : box2d_id_h.b2BodyId; flag : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:619
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_EnableHitEvents";

   function b2Body_GetWorld (bodyId : box2d_id_h.b2BodyId) return box2d_id_h.b2WorldId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:622
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetWorld";

   function b2Body_GetShapeCount (bodyId : box2d_id_h.b2BodyId) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:625
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetShapeCount";

   function b2Body_GetShapes
     (bodyId : box2d_id_h.b2BodyId;
      shapeArray : access box2d_id_h.b2ShapeId;
      capacity : int) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:629
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetShapes";

   function b2Body_GetJointCount (bodyId : box2d_id_h.b2BodyId) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:632
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetJointCount";

   function b2Body_GetJoints
     (bodyId : box2d_id_h.b2BodyId;
      jointArray : access box2d_id_h.b2JointId;
      capacity : int) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:636
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetJoints";

   function b2Body_GetContactCapacity (bodyId : box2d_id_h.b2BodyId) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:639
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetContactCapacity";

   function b2Body_GetContactData
     (bodyId : box2d_id_h.b2BodyId;
      contactData : access box2d_types_h.b2ContactData;
      capacity : int) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:645
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_GetContactData";

   function b2Body_ComputeAABB (bodyId : box2d_id_h.b2BodyId) return box2d_math_functions_h.b2AABB  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:649
   with Import => True, 
        Convention => C, 
        External_Name => "b2Body_ComputeAABB";

   function b2CreateCircleShape
     (bodyId : box2d_id_h.b2BodyId;
      def : access constant box2d_types_h.b2ShapeDef;
      circle : access constant box2d_collision_h.b2Circle) return box2d_id_h.b2ShapeId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:663
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateCircleShape";

   function b2CreateSegmentShape
     (bodyId : box2d_id_h.b2BodyId;
      def : access constant box2d_types_h.b2ShapeDef;
      segment : access constant box2d_collision_h.b2Segment) return box2d_id_h.b2ShapeId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:668
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateSegmentShape";

   function b2CreateChainSegmentShape
     (bodyId : box2d_id_h.b2BodyId;
      def : access constant box2d_types_h.b2ShapeDef;
      chainSegment : access constant box2d_collision_h.b2ChainSegment) return box2d_id_h.b2ShapeId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:675
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateChainSegmentShape";

   function b2CreateCapsuleShape
     (bodyId : box2d_id_h.b2BodyId;
      def : access constant box2d_types_h.b2ShapeDef;
      capsule : access constant box2d_collision_h.b2Capsule) return box2d_id_h.b2ShapeId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:680
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateCapsuleShape";

   function b2CreatePolygonShape
     (bodyId : box2d_id_h.b2BodyId;
      def : access constant box2d_types_h.b2ShapeDef;
      polygon : access constant box2d_collision_h.b2Polygon) return box2d_id_h.b2ShapeId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:685
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreatePolygonShape";

   procedure b2DestroyShape (shapeId : box2d_id_h.b2ShapeId; updateBodyMass : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:690
   with Import => True, 
        Convention => C, 
        External_Name => "b2DestroyShape";

   function b2Shape_IsValid (id : box2d_id_h.b2ShapeId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:693
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_IsValid";

   function b2Shape_GetType (shapeId : box2d_id_h.b2ShapeId) return box2d_types_h.b2ShapeType  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:696
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetType";

   function b2Shape_GetBody (shapeId : box2d_id_h.b2ShapeId) return box2d_id_h.b2BodyId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:699
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetBody";

   function b2Shape_GetWorld (shapeId : box2d_id_h.b2ShapeId) return box2d_id_h.b2WorldId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:702
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetWorld";

   function b2Shape_IsSensor (shapeId : box2d_id_h.b2ShapeId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:707
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_IsSensor";

   procedure b2Shape_SetUserData (shapeId : box2d_id_h.b2ShapeId; userData : System.Address)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:710
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_SetUserData";

   function b2Shape_GetUserData (shapeId : box2d_id_h.b2ShapeId) return System.Address  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:714
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetUserData";

   procedure b2Shape_SetDensity
     (shapeId : box2d_id_h.b2ShapeId;
      density : float;
      updateBodyMass : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:719
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_SetDensity";

   function b2Shape_GetDensity (shapeId : box2d_id_h.b2ShapeId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:722
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetDensity";

   procedure b2Shape_SetFriction (shapeId : box2d_id_h.b2ShapeId; friction : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:725
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_SetFriction";

   function b2Shape_GetFriction (shapeId : box2d_id_h.b2ShapeId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:728
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetFriction";

   procedure b2Shape_SetRestitution (shapeId : box2d_id_h.b2ShapeId; restitution : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:731
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_SetRestitution";

   function b2Shape_GetRestitution (shapeId : box2d_id_h.b2ShapeId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:734
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetRestitution";

   procedure b2Shape_SetUserMaterial (shapeId : box2d_id_h.b2ShapeId; material : utypes_uuint64_t_h.uint64_t)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:737
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_SetUserMaterial";

   function b2Shape_GetUserMaterial (shapeId : box2d_id_h.b2ShapeId) return utypes_uuint64_t_h.uint64_t  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:740
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetUserMaterial";

   procedure b2Shape_SetSurfaceMaterial (shapeId : box2d_id_h.b2ShapeId; surfaceMaterial : access constant box2d_types_h.b2SurfaceMaterial)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:743
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_SetSurfaceMaterial";

   function b2Shape_GetSurfaceMaterial (shapeId : box2d_id_h.b2ShapeId) return box2d_types_h.b2SurfaceMaterial  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:746
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetSurfaceMaterial";

   function b2Shape_GetFilter (shapeId : box2d_id_h.b2ShapeId) return box2d_types_h.b2Filter  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:749
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetFilter";

   procedure b2Shape_SetFilter (shapeId : box2d_id_h.b2ShapeId; filter : box2d_types_h.b2Filter)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:755
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_SetFilter";

   procedure b2Shape_EnableSensorEvents (shapeId : box2d_id_h.b2ShapeId; flag : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:759
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_EnableSensorEvents";

   function b2Shape_AreSensorEventsEnabled (shapeId : box2d_id_h.b2ShapeId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:762
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_AreSensorEventsEnabled";

   procedure b2Shape_EnableContactEvents (shapeId : box2d_id_h.b2ShapeId; flag : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:767
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_EnableContactEvents";

   function b2Shape_AreContactEventsEnabled (shapeId : box2d_id_h.b2ShapeId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:770
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_AreContactEventsEnabled";

   procedure b2Shape_EnablePreSolveEvents (shapeId : box2d_id_h.b2ShapeId; flag : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:775
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_EnablePreSolveEvents";

   function b2Shape_ArePreSolveEventsEnabled (shapeId : box2d_id_h.b2ShapeId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:778
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_ArePreSolveEventsEnabled";

   procedure b2Shape_EnableHitEvents (shapeId : box2d_id_h.b2ShapeId; flag : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:782
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_EnableHitEvents";

   function b2Shape_AreHitEventsEnabled (shapeId : box2d_id_h.b2ShapeId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:785
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_AreHitEventsEnabled";

   function b2Shape_TestPoint (shapeId : box2d_id_h.b2ShapeId; point : box2d_math_functions_h.b2Vec2) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:788
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_TestPoint";

   function b2Shape_RayCast (shapeId : box2d_id_h.b2ShapeId; input : access constant box2d_collision_h.b2RayCastInput) return box2d_collision_h.b2CastOutput  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:791
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_RayCast";

   function b2Shape_GetCircle (shapeId : box2d_id_h.b2ShapeId) return box2d_collision_h.b2Circle  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:794
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetCircle";

   function b2Shape_GetSegment (shapeId : box2d_id_h.b2ShapeId) return box2d_collision_h.b2Segment  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:797
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetSegment";

   function b2Shape_GetChainSegment (shapeId : box2d_id_h.b2ShapeId) return box2d_collision_h.b2ChainSegment  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:801
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetChainSegment";

   function b2Shape_GetCapsule (shapeId : box2d_id_h.b2ShapeId) return box2d_collision_h.b2Capsule  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:804
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetCapsule";

   function b2Shape_GetPolygon (shapeId : box2d_id_h.b2ShapeId) return box2d_collision_h.b2Polygon  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:807
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetPolygon";

   procedure b2Shape_SetCircle (shapeId : box2d_id_h.b2ShapeId; circle : access constant box2d_collision_h.b2Circle)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:812
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_SetCircle";

   procedure b2Shape_SetCapsule (shapeId : box2d_id_h.b2ShapeId; capsule : access constant box2d_collision_h.b2Capsule)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:817
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_SetCapsule";

   procedure b2Shape_SetSegment (shapeId : box2d_id_h.b2ShapeId; segment : access constant box2d_collision_h.b2Segment)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:820
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_SetSegment";

   procedure b2Shape_SetPolygon (shapeId : box2d_id_h.b2ShapeId; polygon : access constant box2d_collision_h.b2Polygon)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:825
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_SetPolygon";

   procedure b2Shape_SetChainSegment (shapeId : box2d_id_h.b2ShapeId; chainSegment : access constant box2d_collision_h.b2ChainSegment)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:831
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_SetChainSegment";

   function b2Shape_GetParentChain (shapeId : box2d_id_h.b2ShapeId) return box2d_id_h.b2ChainId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:835
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetParentChain";

   function b2Shape_GetContactCapacity (shapeId : box2d_id_h.b2ShapeId) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:838
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetContactCapacity";

   function b2Shape_GetContactData
     (shapeId : box2d_id_h.b2ShapeId;
      contactData : access box2d_types_h.b2ContactData;
      capacity : int) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:844
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetContactData";

   function b2Shape_GetSensorCapacity (shapeId : box2d_id_h.b2ShapeId) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:850
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetSensorCapacity";

   function b2Shape_GetSensorData
     (shapeId : box2d_id_h.b2ShapeId;
      visitorIds : access box2d_id_h.b2ShapeId;
      capacity : int) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:859
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetSensorData";

   function b2Shape_GetAABB (shapeId : box2d_id_h.b2ShapeId) return box2d_math_functions_h.b2AABB  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:862
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetAABB";

   function b2Shape_ComputeMassData (shapeId : box2d_id_h.b2ShapeId) return box2d_collision_h.b2MassData  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:865
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_ComputeMassData";

   function b2Shape_GetClosestPoint (shapeId : box2d_id_h.b2ShapeId; target : box2d_math_functions_h.b2Vec2) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:869
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_GetClosestPoint";

   procedure b2Shape_ApplyWind
     (shapeId : box2d_id_h.b2ShapeId;
      wind : box2d_math_functions_h.b2Vec2;
      drag : float;
      lift : float;
      wake : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:879
   with Import => True, 
        Convention => C, 
        External_Name => "b2Shape_ApplyWind";

   function b2CreateChain (bodyId : box2d_id_h.b2BodyId; def : access constant box2d_types_h.b2ChainDef) return box2d_id_h.b2ChainId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:885
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateChain";

   procedure b2DestroyChain (chainId : box2d_id_h.b2ChainId)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:888
   with Import => True, 
        Convention => C, 
        External_Name => "b2DestroyChain";

   function b2Chain_GetWorld (chainId : box2d_id_h.b2ChainId) return box2d_id_h.b2WorldId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:891
   with Import => True, 
        Convention => C, 
        External_Name => "b2Chain_GetWorld";

   function b2Chain_GetSegmentCount (chainId : box2d_id_h.b2ChainId) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:894
   with Import => True, 
        Convention => C, 
        External_Name => "b2Chain_GetSegmentCount";

   function b2Chain_GetSegments
     (chainId : box2d_id_h.b2ChainId;
      segmentArray : access box2d_id_h.b2ShapeId;
      capacity : int) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:898
   with Import => True, 
        Convention => C, 
        External_Name => "b2Chain_GetSegments";

   function b2Chain_GetSurfaceMaterialCount (chainId : box2d_id_h.b2ChainId) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:901
   with Import => True, 
        Convention => C, 
        External_Name => "b2Chain_GetSurfaceMaterialCount";

   procedure b2Chain_SetSurfaceMaterial
     (chainId : box2d_id_h.b2ChainId;
      material : access constant box2d_types_h.b2SurfaceMaterial;
      materialIndex : int)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:905
   with Import => True, 
        Convention => C, 
        External_Name => "b2Chain_SetSurfaceMaterial";

   function b2Chain_GetSurfaceMaterial (chainId : box2d_id_h.b2ChainId; materialIndex : int) return box2d_types_h.b2SurfaceMaterial  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:908
   with Import => True, 
        Convention => C, 
        External_Name => "b2Chain_GetSurfaceMaterial";

   function b2Chain_IsValid (id : box2d_id_h.b2ChainId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:911
   with Import => True, 
        Convention => C, 
        External_Name => "b2Chain_IsValid";

   procedure b2DestroyJoint (jointId : box2d_id_h.b2JointId; wakeAttached : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:922
   with Import => True, 
        Convention => C, 
        External_Name => "b2DestroyJoint";

   function b2Joint_IsValid (id : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:925
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_IsValid";

   function b2Joint_GetType (jointId : box2d_id_h.b2JointId) return box2d_types_h.b2JointType  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:928
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetType";

   function b2Joint_GetBodyA (jointId : box2d_id_h.b2JointId) return box2d_id_h.b2BodyId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:931
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetBodyA";

   function b2Joint_GetBodyB (jointId : box2d_id_h.b2JointId) return box2d_id_h.b2BodyId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:934
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetBodyB";

   function b2Joint_GetWorld (jointId : box2d_id_h.b2JointId) return box2d_id_h.b2WorldId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:937
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetWorld";

   procedure b2Joint_SetLocalFrameA (jointId : box2d_id_h.b2JointId; localFrame : box2d_math_functions_h.b2Transform)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:940
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_SetLocalFrameA";

   function b2Joint_GetLocalFrameA (jointId : box2d_id_h.b2JointId) return box2d_math_functions_h.b2Transform  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:943
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetLocalFrameA";

   procedure b2Joint_SetLocalFrameB (jointId : box2d_id_h.b2JointId; localFrame : box2d_math_functions_h.b2Transform)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:946
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_SetLocalFrameB";

   function b2Joint_GetLocalFrameB (jointId : box2d_id_h.b2JointId) return box2d_math_functions_h.b2Transform  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:949
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetLocalFrameB";

   procedure b2Joint_SetCollideConnected (jointId : box2d_id_h.b2JointId; shouldCollide : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:952
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_SetCollideConnected";

   function b2Joint_GetCollideConnected (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:955
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetCollideConnected";

   procedure b2Joint_SetUserData (jointId : box2d_id_h.b2JointId; userData : System.Address)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:958
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_SetUserData";

   function b2Joint_GetUserData (jointId : box2d_id_h.b2JointId) return System.Address  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:961
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetUserData";

   procedure b2Joint_WakeBodies (jointId : box2d_id_h.b2JointId)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:964
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_WakeBodies";

   function b2Joint_GetConstraintForce (jointId : box2d_id_h.b2JointId) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:967
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetConstraintForce";

   function b2Joint_GetConstraintTorque (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:970
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetConstraintTorque";

   function b2Joint_GetLinearSeparation (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:973
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetLinearSeparation";

   function b2Joint_GetAngularSeparation (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:976
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetAngularSeparation";

   procedure b2Joint_SetConstraintTuning
     (jointId : box2d_id_h.b2JointId;
      hertz : float;
      dampingRatio : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:982
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_SetConstraintTuning";

   procedure b2Joint_GetConstraintTuning
     (jointId : box2d_id_h.b2JointId;
      hertz : access float;
      dampingRatio : access float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:985
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetConstraintTuning";

   procedure b2Joint_SetForceThreshold (jointId : box2d_id_h.b2JointId; threshold : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:988
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_SetForceThreshold";

   function b2Joint_GetForceThreshold (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:991
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetForceThreshold";

   procedure b2Joint_SetTorqueThreshold (jointId : box2d_id_h.b2JointId; threshold : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:994
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_SetTorqueThreshold";

   function b2Joint_GetTorqueThreshold (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:997
   with Import => True, 
        Convention => C, 
        External_Name => "b2Joint_GetTorqueThreshold";

   function b2CreateDistanceJoint (worldId : box2d_id_h.b2WorldId; def : access constant box2d_types_h.b2DistanceJointDef) return box2d_id_h.b2JointId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1007
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateDistanceJoint";

   procedure b2DistanceJoint_SetLength (jointId : box2d_id_h.b2JointId; length : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1012
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_SetLength";

   function b2DistanceJoint_GetLength (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1015
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_GetLength";

   procedure b2DistanceJoint_EnableSpring (jointId : box2d_id_h.b2JointId; enableSpring : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1018
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_EnableSpring";

   function b2DistanceJoint_IsSpringEnabled (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1021
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_IsSpringEnabled";

   procedure b2DistanceJoint_SetSpringForceRange
     (jointId : box2d_id_h.b2JointId;
      lowerForce : float;
      upperForce : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1024
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_SetSpringForceRange";

   procedure b2DistanceJoint_GetSpringForceRange
     (jointId : box2d_id_h.b2JointId;
      lowerForce : access float;
      upperForce : access float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1027
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_GetSpringForceRange";

   procedure b2DistanceJoint_SetSpringHertz (jointId : box2d_id_h.b2JointId; hertz : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1030
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_SetSpringHertz";

   procedure b2DistanceJoint_SetSpringDampingRatio (jointId : box2d_id_h.b2JointId; dampingRatio : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1033
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_SetSpringDampingRatio";

   function b2DistanceJoint_GetSpringHertz (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1036
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_GetSpringHertz";

   function b2DistanceJoint_GetSpringDampingRatio (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1039
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_GetSpringDampingRatio";

   procedure b2DistanceJoint_EnableLimit (jointId : box2d_id_h.b2JointId; enableLimit : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1043
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_EnableLimit";

   function b2DistanceJoint_IsLimitEnabled (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1046
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_IsLimitEnabled";

   procedure b2DistanceJoint_SetLengthRange
     (jointId : box2d_id_h.b2JointId;
      minLength : float;
      maxLength : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1049
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_SetLengthRange";

   function b2DistanceJoint_GetMinLength (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1052
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_GetMinLength";

   function b2DistanceJoint_GetMaxLength (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1055
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_GetMaxLength";

   function b2DistanceJoint_GetCurrentLength (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1058
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_GetCurrentLength";

   procedure b2DistanceJoint_EnableMotor (jointId : box2d_id_h.b2JointId; enableMotor : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1061
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_EnableMotor";

   function b2DistanceJoint_IsMotorEnabled (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1064
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_IsMotorEnabled";

   procedure b2DistanceJoint_SetMotorSpeed (jointId : box2d_id_h.b2JointId; motorSpeed : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1067
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_SetMotorSpeed";

   function b2DistanceJoint_GetMotorSpeed (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1070
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_GetMotorSpeed";

   procedure b2DistanceJoint_SetMaxMotorForce (jointId : box2d_id_h.b2JointId; force : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1073
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_SetMaxMotorForce";

   function b2DistanceJoint_GetMaxMotorForce (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1076
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_GetMaxMotorForce";

   function b2DistanceJoint_GetMotorForce (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1079
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceJoint_GetMotorForce";

   function b2CreateMotorJoint (worldId : box2d_id_h.b2WorldId; def : access constant box2d_types_h.b2MotorJointDef) return box2d_id_h.b2JointId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1097
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateMotorJoint";

   procedure b2MotorJoint_SetLinearVelocity (jointId : box2d_id_h.b2JointId; velocity : box2d_math_functions_h.b2Vec2)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1100
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_SetLinearVelocity";

   function b2MotorJoint_GetLinearVelocity (jointId : box2d_id_h.b2JointId) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1103
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_GetLinearVelocity";

   procedure b2MotorJoint_SetAngularVelocity (jointId : box2d_id_h.b2JointId; velocity : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1106
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_SetAngularVelocity";

   function b2MotorJoint_GetAngularVelocity (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1109
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_GetAngularVelocity";

   procedure b2MotorJoint_SetMaxVelocityForce (jointId : box2d_id_h.b2JointId; maxForce : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1112
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_SetMaxVelocityForce";

   function b2MotorJoint_GetMaxVelocityForce (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1115
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_GetMaxVelocityForce";

   procedure b2MotorJoint_SetMaxVelocityTorque (jointId : box2d_id_h.b2JointId; maxTorque : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1118
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_SetMaxVelocityTorque";

   function b2MotorJoint_GetMaxVelocityTorque (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1121
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_GetMaxVelocityTorque";

   procedure b2MotorJoint_SetLinearHertz (jointId : box2d_id_h.b2JointId; hertz : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1124
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_SetLinearHertz";

   function b2MotorJoint_GetLinearHertz (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1127
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_GetLinearHertz";

   procedure b2MotorJoint_SetLinearDampingRatio (jointId : box2d_id_h.b2JointId; damping : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1130
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_SetLinearDampingRatio";

   function b2MotorJoint_GetLinearDampingRatio (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1133
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_GetLinearDampingRatio";

   procedure b2MotorJoint_SetAngularHertz (jointId : box2d_id_h.b2JointId; hertz : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1136
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_SetAngularHertz";

   function b2MotorJoint_GetAngularHertz (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1139
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_GetAngularHertz";

   procedure b2MotorJoint_SetAngularDampingRatio (jointId : box2d_id_h.b2JointId; damping : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1142
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_SetAngularDampingRatio";

   function b2MotorJoint_GetAngularDampingRatio (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1145
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_GetAngularDampingRatio";

   procedure b2MotorJoint_SetMaxSpringForce (jointId : box2d_id_h.b2JointId; maxForce : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1148
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_SetMaxSpringForce";

   function b2MotorJoint_GetMaxSpringForce (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1151
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_GetMaxSpringForce";

   procedure b2MotorJoint_SetMaxSpringTorque (jointId : box2d_id_h.b2JointId; maxTorque : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1154
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_SetMaxSpringTorque";

   function b2MotorJoint_GetMaxSpringTorque (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1157
   with Import => True, 
        Convention => C, 
        External_Name => "b2MotorJoint_GetMaxSpringTorque";

   function b2CreateFilterJoint (worldId : box2d_id_h.b2WorldId; def : access constant box2d_types_h.b2FilterJointDef) return box2d_id_h.b2JointId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1172
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateFilterJoint";

   function b2CreatePrismaticJoint (worldId : box2d_id_h.b2WorldId; def : access constant box2d_types_h.b2PrismaticJointDef) return box2d_id_h.b2JointId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1187
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreatePrismaticJoint";

   procedure b2PrismaticJoint_EnableSpring (jointId : box2d_id_h.b2JointId; enableSpring : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1190
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_EnableSpring";

   function b2PrismaticJoint_IsSpringEnabled (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1193
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_IsSpringEnabled";

   procedure b2PrismaticJoint_SetSpringHertz (jointId : box2d_id_h.b2JointId; hertz : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1198
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_SetSpringHertz";

   function b2PrismaticJoint_GetSpringHertz (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1201
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_GetSpringHertz";

   procedure b2PrismaticJoint_SetSpringDampingRatio (jointId : box2d_id_h.b2JointId; dampingRatio : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1204
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_SetSpringDampingRatio";

   function b2PrismaticJoint_GetSpringDampingRatio (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1207
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_GetSpringDampingRatio";

   procedure b2PrismaticJoint_SetTargetTranslation (jointId : box2d_id_h.b2JointId; translation : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1210
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_SetTargetTranslation";

   function b2PrismaticJoint_GetTargetTranslation (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1213
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_GetTargetTranslation";

   procedure b2PrismaticJoint_EnableLimit (jointId : box2d_id_h.b2JointId; enableLimit : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1216
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_EnableLimit";

   function b2PrismaticJoint_IsLimitEnabled (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1219
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_IsLimitEnabled";

   function b2PrismaticJoint_GetLowerLimit (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1222
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_GetLowerLimit";

   function b2PrismaticJoint_GetUpperLimit (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1225
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_GetUpperLimit";

   procedure b2PrismaticJoint_SetLimits
     (jointId : box2d_id_h.b2JointId;
      lower : float;
      upper : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1228
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_SetLimits";

   procedure b2PrismaticJoint_EnableMotor (jointId : box2d_id_h.b2JointId; enableMotor : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1231
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_EnableMotor";

   function b2PrismaticJoint_IsMotorEnabled (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1234
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_IsMotorEnabled";

   procedure b2PrismaticJoint_SetMotorSpeed (jointId : box2d_id_h.b2JointId; motorSpeed : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1237
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_SetMotorSpeed";

   function b2PrismaticJoint_GetMotorSpeed (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1240
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_GetMotorSpeed";

   procedure b2PrismaticJoint_SetMaxMotorForce (jointId : box2d_id_h.b2JointId; force : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1243
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_SetMaxMotorForce";

   function b2PrismaticJoint_GetMaxMotorForce (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1246
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_GetMaxMotorForce";

   function b2PrismaticJoint_GetMotorForce (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1249
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_GetMotorForce";

   function b2PrismaticJoint_GetTranslation (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1252
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_GetTranslation";

   function b2PrismaticJoint_GetSpeed (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1255
   with Import => True, 
        Convention => C, 
        External_Name => "b2PrismaticJoint_GetSpeed";

   function b2CreateRevoluteJoint (worldId : box2d_id_h.b2WorldId; def : access constant box2d_types_h.b2RevoluteJointDef) return box2d_id_h.b2JointId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1270
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateRevoluteJoint";

   procedure b2RevoluteJoint_EnableSpring (jointId : box2d_id_h.b2JointId; enableSpring : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1273
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_EnableSpring";

   function b2RevoluteJoint_IsSpringEnabled (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1276
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_IsSpringEnabled";

   procedure b2RevoluteJoint_SetSpringHertz (jointId : box2d_id_h.b2JointId; hertz : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1279
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_SetSpringHertz";

   function b2RevoluteJoint_GetSpringHertz (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1282
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_GetSpringHertz";

   procedure b2RevoluteJoint_SetSpringDampingRatio (jointId : box2d_id_h.b2JointId; dampingRatio : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1285
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_SetSpringDampingRatio";

   function b2RevoluteJoint_GetSpringDampingRatio (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1288
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_GetSpringDampingRatio";

   procedure b2RevoluteJoint_SetTargetAngle (jointId : box2d_id_h.b2JointId; angle : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1291
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_SetTargetAngle";

   function b2RevoluteJoint_GetTargetAngle (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1294
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_GetTargetAngle";

   function b2RevoluteJoint_GetAngle (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1298
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_GetAngle";

   procedure b2RevoluteJoint_EnableLimit (jointId : box2d_id_h.b2JointId; enableLimit : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1301
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_EnableLimit";

   function b2RevoluteJoint_IsLimitEnabled (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1304
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_IsLimitEnabled";

   function b2RevoluteJoint_GetLowerLimit (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1307
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_GetLowerLimit";

   function b2RevoluteJoint_GetUpperLimit (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1310
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_GetUpperLimit";

   procedure b2RevoluteJoint_SetLimits
     (jointId : box2d_id_h.b2JointId;
      lower : float;
      upper : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1314
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_SetLimits";

   procedure b2RevoluteJoint_EnableMotor (jointId : box2d_id_h.b2JointId; enableMotor : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1317
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_EnableMotor";

   function b2RevoluteJoint_IsMotorEnabled (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1320
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_IsMotorEnabled";

   procedure b2RevoluteJoint_SetMotorSpeed (jointId : box2d_id_h.b2JointId; motorSpeed : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1323
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_SetMotorSpeed";

   function b2RevoluteJoint_GetMotorSpeed (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1326
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_GetMotorSpeed";

   function b2RevoluteJoint_GetMotorTorque (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1329
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_GetMotorTorque";

   procedure b2RevoluteJoint_SetMaxMotorTorque (jointId : box2d_id_h.b2JointId; torque : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1332
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_SetMaxMotorTorque";

   function b2RevoluteJoint_GetMaxMotorTorque (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1335
   with Import => True, 
        Convention => C, 
        External_Name => "b2RevoluteJoint_GetMaxMotorTorque";

   function b2CreateWeldJoint (worldId : box2d_id_h.b2WorldId; def : access constant box2d_types_h.b2WeldJointDef) return box2d_id_h.b2JointId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1352
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateWeldJoint";

   procedure b2WeldJoint_SetLinearHertz (jointId : box2d_id_h.b2JointId; hertz : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1355
   with Import => True, 
        Convention => C, 
        External_Name => "b2WeldJoint_SetLinearHertz";

   function b2WeldJoint_GetLinearHertz (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1358
   with Import => True, 
        Convention => C, 
        External_Name => "b2WeldJoint_GetLinearHertz";

   procedure b2WeldJoint_SetLinearDampingRatio (jointId : box2d_id_h.b2JointId; dampingRatio : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1361
   with Import => True, 
        Convention => C, 
        External_Name => "b2WeldJoint_SetLinearDampingRatio";

   function b2WeldJoint_GetLinearDampingRatio (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1364
   with Import => True, 
        Convention => C, 
        External_Name => "b2WeldJoint_GetLinearDampingRatio";

   procedure b2WeldJoint_SetAngularHertz (jointId : box2d_id_h.b2JointId; hertz : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1367
   with Import => True, 
        Convention => C, 
        External_Name => "b2WeldJoint_SetAngularHertz";

   function b2WeldJoint_GetAngularHertz (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1370
   with Import => True, 
        Convention => C, 
        External_Name => "b2WeldJoint_GetAngularHertz";

   procedure b2WeldJoint_SetAngularDampingRatio (jointId : box2d_id_h.b2JointId; dampingRatio : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1373
   with Import => True, 
        Convention => C, 
        External_Name => "b2WeldJoint_SetAngularDampingRatio";

   function b2WeldJoint_GetAngularDampingRatio (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1376
   with Import => True, 
        Convention => C, 
        External_Name => "b2WeldJoint_GetAngularDampingRatio";

   function b2CreateWheelJoint (worldId : box2d_id_h.b2WorldId; def : access constant box2d_types_h.b2WheelJointDef) return box2d_id_h.b2JointId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1392
   with Import => True, 
        Convention => C, 
        External_Name => "b2CreateWheelJoint";

   procedure b2WheelJoint_EnableSpring (jointId : box2d_id_h.b2JointId; enableSpring : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1395
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_EnableSpring";

   function b2WheelJoint_IsSpringEnabled (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1398
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_IsSpringEnabled";

   procedure b2WheelJoint_SetSpringHertz (jointId : box2d_id_h.b2JointId; hertz : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1401
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_SetSpringHertz";

   function b2WheelJoint_GetSpringHertz (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1404
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_GetSpringHertz";

   procedure b2WheelJoint_SetSpringDampingRatio (jointId : box2d_id_h.b2JointId; dampingRatio : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1407
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_SetSpringDampingRatio";

   function b2WheelJoint_GetSpringDampingRatio (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1410
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_GetSpringDampingRatio";

   procedure b2WheelJoint_EnableLimit (jointId : box2d_id_h.b2JointId; enableLimit : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1413
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_EnableLimit";

   function b2WheelJoint_IsLimitEnabled (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1416
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_IsLimitEnabled";

   function b2WheelJoint_GetLowerLimit (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1419
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_GetLowerLimit";

   function b2WheelJoint_GetUpperLimit (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1422
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_GetUpperLimit";

   procedure b2WheelJoint_SetLimits
     (jointId : box2d_id_h.b2JointId;
      lower : float;
      upper : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1425
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_SetLimits";

   procedure b2WheelJoint_EnableMotor (jointId : box2d_id_h.b2JointId; enableMotor : Extensions.bool)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1428
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_EnableMotor";

   function b2WheelJoint_IsMotorEnabled (jointId : box2d_id_h.b2JointId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1431
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_IsMotorEnabled";

   procedure b2WheelJoint_SetMotorSpeed (jointId : box2d_id_h.b2JointId; motorSpeed : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1434
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_SetMotorSpeed";

   function b2WheelJoint_GetMotorSpeed (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1437
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_GetMotorSpeed";

   procedure b2WheelJoint_SetMaxMotorTorque (jointId : box2d_id_h.b2JointId; torque : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1440
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_SetMaxMotorTorque";

   function b2WheelJoint_GetMaxMotorTorque (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1443
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_GetMaxMotorTorque";

   function b2WheelJoint_GetMotorTorque (jointId : box2d_id_h.b2JointId) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1446
   with Import => True, 
        Convention => C, 
        External_Name => "b2WheelJoint_GetMotorTorque";

   function b2Contact_IsValid (id : box2d_id_h.b2ContactId) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1459
   with Import => True, 
        Convention => C, 
        External_Name => "b2Contact_IsValid";

   function b2Contact_GetData (contactId : box2d_id_h.b2ContactId) return box2d_types_h.b2ContactData  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/box2d.h:1462
   with Import => True, 
        Convention => C, 
        External_Name => "b2Contact_GetData";

end box2d_box2d_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
