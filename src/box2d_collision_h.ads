pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with box2d_math_functions_h;
with Interfaces.C.Extensions;
with utypes_uuint8_t_h;
with utypes_uuint16_t_h;
with sys_utypes_uint32_t_h;
with utypes_uuint64_t_h;
with System;

package box2d_collision_h is

   B2_MAX_POLYGON_VERTICES : constant := 8;  --  /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:25

   type b2RayCastInput is record
      origin : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:31
      translation : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:34
      maxFraction : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:37
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:28

   type anon_array1972 is array (0 .. 7) of aliased box2d_math_functions_h.b2Vec2;
   type b2ShapeProxy is record
      points : aliased anon_array1972;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:45
      count : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:48
      radius : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:51
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:42

   type b2ShapeCastInput is record
      proxy : aliased b2ShapeProxy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:60
      translation : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:63
      maxFraction : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:66
      canEncroach : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:69
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:57

   type b2CastOutput is record
      normal : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:76
      point : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:79
      fraction : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:82
      iterations : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:85
      hit : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:88
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:73

   type b2MassData is record
      mass : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:95
      center : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:98
      rotationalInertia : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:101
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:92

   type b2Circle is record
      center : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:108
      radius : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:111
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:105

   type b2Capsule is record
      center1 : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:119
      center2 : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:122
      radius : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:125
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:116

   type b2Polygon is record
      vertices : aliased anon_array1972;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:137
      normals : aliased anon_array1972;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:140
      centroid : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:143
      radius : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:146
      count : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:149
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:134

   type b2Segment is record
      point1 : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:156
      point2 : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:159
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:153

   type b2ChainSegment is record
      ghost1 : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:168
      segment : aliased b2Segment;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:171
      ghost2 : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:174
      chainId : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:177
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:165

   function b2IsValidRay (input : access constant b2RayCastInput) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "b2IsValidRay";

   type b2Hull;
   function b2MakePolygon (hull : access constant b2Hull; radius : float) return b2Polygon  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakePolygon";

   function b2MakeOffsetPolygon
     (hull : access constant b2Hull;
      position : box2d_math_functions_h.b2Vec2;
      rotation : box2d_math_functions_h.b2Rot) return b2Polygon  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakeOffsetPolygon";

   function b2MakeOffsetRoundedPolygon
     (hull : access constant b2Hull;
      position : box2d_math_functions_h.b2Vec2;
      rotation : box2d_math_functions_h.b2Rot;
      radius : float) return b2Polygon  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakeOffsetRoundedPolygon";

   function b2MakeSquare (halfWidth : float) return b2Polygon  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakeSquare";

   function b2MakeBox (halfWidth : float; halfHeight : float) return b2Polygon  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakeBox";

   function b2MakeRoundedBox
     (halfWidth : float;
      halfHeight : float;
      radius : float) return b2Polygon  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakeRoundedBox";

   function b2MakeOffsetBox
     (halfWidth : float;
      halfHeight : float;
      center : box2d_math_functions_h.b2Vec2;
      rotation : box2d_math_functions_h.b2Rot) return b2Polygon  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakeOffsetBox";

   function b2MakeOffsetRoundedBox
     (halfWidth : float;
      halfHeight : float;
      center : box2d_math_functions_h.b2Vec2;
      rotation : box2d_math_functions_h.b2Rot;
      radius : float) return b2Polygon  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakeOffsetRoundedBox";

   function b2TransformPolygon (transform : box2d_math_functions_h.b2Transform; polygon : access constant b2Polygon) return b2Polygon  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "b2TransformPolygon";

   function b2ComputeCircleMass (shape : access constant b2Circle; density : float) return b2MassData  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "b2ComputeCircleMass";

   function b2ComputeCapsuleMass (shape : access constant b2Capsule; density : float) return b2MassData  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "b2ComputeCapsuleMass";

   function b2ComputePolygonMass (shape : access constant b2Polygon; density : float) return b2MassData  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "b2ComputePolygonMass";

   function b2ComputeCircleAABB (shape : access constant b2Circle; transform : box2d_math_functions_h.b2Transform) return box2d_math_functions_h.b2AABB  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "b2ComputeCircleAABB";

   function b2ComputeCapsuleAABB (shape : access constant b2Capsule; transform : box2d_math_functions_h.b2Transform) return box2d_math_functions_h.b2AABB  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "b2ComputeCapsuleAABB";

   function b2ComputePolygonAABB (shape : access constant b2Polygon; transform : box2d_math_functions_h.b2Transform) return box2d_math_functions_h.b2AABB  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "b2ComputePolygonAABB";

   function b2ComputeSegmentAABB (shape : access constant b2Segment; transform : box2d_math_functions_h.b2Transform) return box2d_math_functions_h.b2AABB  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "b2ComputeSegmentAABB";

   function b2PointInCircle (shape : access constant b2Circle; point : box2d_math_functions_h.b2Vec2) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "b2PointInCircle";

   function b2PointInCapsule (shape : access constant b2Capsule; point : box2d_math_functions_h.b2Vec2) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "b2PointInCapsule";

   function b2PointInPolygon (shape : access constant b2Polygon; point : box2d_math_functions_h.b2Vec2) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "b2PointInPolygon";

   function b2RayCastCircle (shape : access constant b2Circle; input : access constant b2RayCastInput) return b2CastOutput  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "b2RayCastCircle";

   function b2RayCastCapsule (shape : access constant b2Capsule; input : access constant b2RayCastInput) return b2CastOutput  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "b2RayCastCapsule";

   function b2RayCastSegment
     (shape : access constant b2Segment;
      input : access constant b2RayCastInput;
      oneSided : Extensions.bool) return b2CastOutput  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "b2RayCastSegment";

   function b2RayCastPolygon (shape : access constant b2Polygon; input : access constant b2RayCastInput) return b2CastOutput  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "b2RayCastPolygon";

   function b2ShapeCastCircle (shape : access constant b2Circle; input : access constant b2ShapeCastInput) return b2CastOutput  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "b2ShapeCastCircle";

   function b2ShapeCastCapsule (shape : access constant b2Capsule; input : access constant b2ShapeCastInput) return b2CastOutput  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "b2ShapeCastCapsule";

   function b2ShapeCastSegment (shape : access constant b2Segment; input : access constant b2ShapeCastInput) return b2CastOutput  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "b2ShapeCastSegment";

   function b2ShapeCastPolygon (shape : access constant b2Polygon; input : access constant b2ShapeCastInput) return b2CastOutput  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "b2ShapeCastPolygon";

   type b2Hull is record
      points : aliased anon_array1972;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:288
      count : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:291
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:285

   function b2ComputeHull (points : access constant box2d_math_functions_h.b2Vec2; count : int) return b2Hull  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:302
   with Import => True, 
        Convention => C, 
        External_Name => "b2ComputeHull";

   function b2ValidateHull (hull : access constant b2Hull) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "b2ValidateHull";

   type b2SegmentDistanceResult is record
      closest1 : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:326
      closest2 : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:329
      fraction1 : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:332
      fraction2 : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:335
      distanceSquared : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:338
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:323

   function b2SegmentDistance
     (p1 : box2d_math_functions_h.b2Vec2;
      q1 : box2d_math_functions_h.b2Vec2;
      p2 : box2d_math_functions_h.b2Vec2;
      q2 : box2d_math_functions_h.b2Vec2) return b2SegmentDistanceResult  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "b2SegmentDistance";

   type anon_array2081 is array (0 .. 2) of aliased utypes_uuint8_t_h.uint8_t;
   type b2SimplexCache is record
      count : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:351
      indexA : aliased anon_array2081;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:354
      indexB : aliased anon_array2081;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:357
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:348

   b2_emptySimplexCache : aliased constant b2SimplexCache  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "b2_emptySimplexCache";

   type b2DistanceInput is record
      proxyA : aliased b2ShapeProxy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:366
      proxyB : aliased b2ShapeProxy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:369
      transformA : aliased box2d_math_functions_h.b2Transform;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:372
      transformB : aliased box2d_math_functions_h.b2Transform;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:375
      useRadii : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:378
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:363

   type b2DistanceOutput is record
      pointA : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:384
      pointB : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:385
      normal : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:386
      distance : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:387
      iterations : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:388
      simplexCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:389
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:382

   type b2SimplexVertex is record
      wA : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:395
      wB : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:396
      w : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:397
      a : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:398
      indexA : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:399
      indexB : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:400
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:393

   type b2Simplex is record
      v1 : aliased b2SimplexVertex;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:406
      v2 : aliased b2SimplexVertex;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:406
      v3 : aliased b2SimplexVertex;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:406
      count : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:407
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:404

   function b2ShapeDistance
     (input : access constant b2DistanceInput;
      cache : access b2SimplexCache;
      simplexes : access b2Simplex;
      simplexCapacity : int) return b2DistanceOutput  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:413
   with Import => True, 
        Convention => C, 
        External_Name => "b2ShapeDistance";

   type b2ShapeCastPairInput is record
      proxyA : aliased b2ShapeProxy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:419
      proxyB : aliased b2ShapeProxy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:420
      transformA : aliased box2d_math_functions_h.b2Transform;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:421
      transformB : aliased box2d_math_functions_h.b2Transform;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:422
      translationB : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:423
      maxFraction : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:424
      canEncroach : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:425
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:417

   function b2ShapeCast (input : access constant b2ShapeCastPairInput) return b2CastOutput  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:430
   with Import => True, 
        Convention => C, 
        External_Name => "b2ShapeCast";

   function b2MakeProxy
     (points : access constant box2d_math_functions_h.b2Vec2;
      count : int;
      radius : float) return b2ShapeProxy  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:433
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakeProxy";

   function b2MakeOffsetProxy
     (points : access constant box2d_math_functions_h.b2Vec2;
      count : int;
      radius : float;
      position : box2d_math_functions_h.b2Vec2;
      rotation : box2d_math_functions_h.b2Rot) return b2ShapeProxy  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:436
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakeOffsetProxy";

   type b2Sweep is record
      localCenter : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:443
      c1 : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:444
      c2 : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:445
      q1 : aliased box2d_math_functions_h.b2Rot;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:446
      q2 : aliased box2d_math_functions_h.b2Rot;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:447
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:441

   function b2GetSweepTransform (sweep : access constant b2Sweep; time : float) return box2d_math_functions_h.b2Transform  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:451
   with Import => True, 
        Convention => C, 
        External_Name => "b2GetSweepTransform";

   type b2TOIInput is record
      proxyA : aliased b2ShapeProxy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:456
      proxyB : aliased b2ShapeProxy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:457
      sweepA : aliased b2Sweep;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:458
      sweepB : aliased b2Sweep;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:459
      maxFraction : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:460
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:454

   type b2TOIState is 
     (b2_toiStateUnknown,
      b2_toiStateFailed,
      b2_toiStateOverlapped,
      b2_toiStateHit,
      b2_toiStateSeparated)
   with Convention => C;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:464

   type b2TOIOutput is record
      state : aliased b2TOIState;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:477
      point : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:480
      normal : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:483
      fraction : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:486
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:474

   function b2TimeOfImpact (input : access constant b2TOIInput) return b2TOIOutput  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:493
   with Import => True, 
        Convention => C, 
        External_Name => "b2TimeOfImpact";

   type b2ManifoldPoint is record
      clipPoint : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:513
      anchorA : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:519
      anchorB : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:525
      separation : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:528
      baseSeparation : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:531
      normalImpulse : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:534
      tangentImpulse : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:537
      totalNormalImpulse : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:543
      normalVelocity : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:547
      id : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:550
      persisted : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:553
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:508

   type anon_array2139 is array (0 .. 1) of aliased b2ManifoldPoint;
   type b2Manifold is record
      normal : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:561
      rollingImpulse : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:564
      points : aliased anon_array2139;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:567
      pointCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:570
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:558

   function b2CollideCircles
     (circleA : access constant b2Circle;
      xfA : box2d_math_functions_h.b2Transform;
      circleB : access constant b2Circle;
      xfB : box2d_math_functions_h.b2Transform) return b2Manifold  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:575
   with Import => True, 
        Convention => C, 
        External_Name => "b2CollideCircles";

   function b2CollideCapsuleAndCircle
     (capsuleA : access constant b2Capsule;
      xfA : box2d_math_functions_h.b2Transform;
      circleB : access constant b2Circle;
      xfB : box2d_math_functions_h.b2Transform) return b2Manifold  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:578
   with Import => True, 
        Convention => C, 
        External_Name => "b2CollideCapsuleAndCircle";

   function b2CollideSegmentAndCircle
     (segmentA : access constant b2Segment;
      xfA : box2d_math_functions_h.b2Transform;
      circleB : access constant b2Circle;
      xfB : box2d_math_functions_h.b2Transform) return b2Manifold  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:582
   with Import => True, 
        Convention => C, 
        External_Name => "b2CollideSegmentAndCircle";

   function b2CollidePolygonAndCircle
     (polygonA : access constant b2Polygon;
      xfA : box2d_math_functions_h.b2Transform;
      circleB : access constant b2Circle;
      xfB : box2d_math_functions_h.b2Transform) return b2Manifold  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:586
   with Import => True, 
        Convention => C, 
        External_Name => "b2CollidePolygonAndCircle";

   function b2CollideCapsules
     (capsuleA : access constant b2Capsule;
      xfA : box2d_math_functions_h.b2Transform;
      capsuleB : access constant b2Capsule;
      xfB : box2d_math_functions_h.b2Transform) return b2Manifold  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:590
   with Import => True, 
        Convention => C, 
        External_Name => "b2CollideCapsules";

   function b2CollideSegmentAndCapsule
     (segmentA : access constant b2Segment;
      xfA : box2d_math_functions_h.b2Transform;
      capsuleB : access constant b2Capsule;
      xfB : box2d_math_functions_h.b2Transform) return b2Manifold  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:593
   with Import => True, 
        Convention => C, 
        External_Name => "b2CollideSegmentAndCapsule";

   function b2CollidePolygonAndCapsule
     (polygonA : access constant b2Polygon;
      xfA : box2d_math_functions_h.b2Transform;
      capsuleB : access constant b2Capsule;
      xfB : box2d_math_functions_h.b2Transform) return b2Manifold  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:597
   with Import => True, 
        Convention => C, 
        External_Name => "b2CollidePolygonAndCapsule";

   function b2CollidePolygons
     (polygonA : access constant b2Polygon;
      xfA : box2d_math_functions_h.b2Transform;
      polygonB : access constant b2Polygon;
      xfB : box2d_math_functions_h.b2Transform) return b2Manifold  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:601
   with Import => True, 
        Convention => C, 
        External_Name => "b2CollidePolygons";

   function b2CollideSegmentAndPolygon
     (segmentA : access constant b2Segment;
      xfA : box2d_math_functions_h.b2Transform;
      polygonB : access constant b2Polygon;
      xfB : box2d_math_functions_h.b2Transform) return b2Manifold  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:604
   with Import => True, 
        Convention => C, 
        External_Name => "b2CollideSegmentAndPolygon";

   function b2CollideChainSegmentAndCircle
     (segmentA : access constant b2ChainSegment;
      xfA : box2d_math_functions_h.b2Transform;
      circleB : access constant b2Circle;
      xfB : box2d_math_functions_h.b2Transform) return b2Manifold  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:608
   with Import => True, 
        Convention => C, 
        External_Name => "b2CollideChainSegmentAndCircle";

   function b2CollideChainSegmentAndCapsule
     (segmentA : access constant b2ChainSegment;
      xfA : box2d_math_functions_h.b2Transform;
      capsuleB : access constant b2Capsule;
      xfB : box2d_math_functions_h.b2Transform;
      cache : access b2SimplexCache) return b2Manifold  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:612
   with Import => True, 
        Convention => C, 
        External_Name => "b2CollideChainSegmentAndCapsule";

   function b2CollideChainSegmentAndPolygon
     (segmentA : access constant b2ChainSegment;
      xfA : box2d_math_functions_h.b2Transform;
      polygonB : access constant b2Polygon;
      xfB : box2d_math_functions_h.b2Transform;
      cache : access b2SimplexCache) return b2Manifold  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:616
   with Import => True, 
        Convention => C, 
        External_Name => "b2CollideChainSegmentAndPolygon";

   type b2TreeNode is null record;   -- incomplete struct

   type b2DynamicTree is record
      nodes : access b2TreeNode;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:644
      root : aliased sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:647
      nodeCount : aliased sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:650
      nodeCapacity : aliased sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:653
      freeList : aliased sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:656
      proxyCount : aliased sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:659
      leafIndices : access sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:662
      leafBoxes : access box2d_math_functions_h.b2AABB;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:665
      leafCenters : access box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:668
      binIndices : access sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:671
      rebuildCapacity : aliased sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:674
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:641

   type b2TreeStats is record
      nodeVisits : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:681
      leafVisits : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:684
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:678

   function b2DynamicTree_Create (proxyCapacity : int) return b2DynamicTree  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:688
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_Create";

   procedure b2DynamicTree_Destroy (tree : access b2DynamicTree)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:691
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_Destroy";

   function b2DynamicTree_CreateProxy
     (tree : access b2DynamicTree;
      aabb : box2d_math_functions_h.b2AABB;
      categoryBits : utypes_uuint64_t_h.uint64_t;
      userData : utypes_uuint64_t_h.uint64_t) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:694
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_CreateProxy";

   procedure b2DynamicTree_DestroyProxy (tree : access b2DynamicTree; proxyId : int)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:697
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_DestroyProxy";

   procedure b2DynamicTree_MoveProxy
     (tree : access b2DynamicTree;
      proxyId : int;
      aabb : box2d_math_functions_h.b2AABB)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:700
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_MoveProxy";

   procedure b2DynamicTree_EnlargeProxy
     (tree : access b2DynamicTree;
      proxyId : int;
      aabb : box2d_math_functions_h.b2AABB)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:703
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_EnlargeProxy";

   procedure b2DynamicTree_SetCategoryBits
     (tree : access b2DynamicTree;
      proxyId : int;
      categoryBits : utypes_uuint64_t_h.uint64_t)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:706
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_SetCategoryBits";

   function b2DynamicTree_GetCategoryBits (tree : access b2DynamicTree; proxyId : int) return utypes_uuint64_t_h.uint64_t  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:709
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_GetCategoryBits";

   --  skipped function type b2TreeQueryCallbackFcn

   function b2DynamicTree_Query
     (tree : access constant b2DynamicTree;
      aabb : box2d_math_functions_h.b2AABB;
      maskBits : utypes_uuint64_t_h.uint64_t;
      callback : access function
        (arg1 : int;
         arg2 : utypes_uuint64_t_h.uint64_t;
         arg3 : System.Address) return Extensions.bool;
      context : System.Address) return b2TreeStats  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:717
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_Query";

   function b2DynamicTree_QueryAll
     (tree : access constant b2DynamicTree;
      aabb : box2d_math_functions_h.b2AABB;
      callback : access function
        (arg1 : int;
         arg2 : utypes_uuint64_t_h.uint64_t;
         arg3 : System.Address) return Extensions.bool;
      context : System.Address) return b2TreeStats  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:723
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_QueryAll";

   --  skipped function type b2TreeRayCastCallbackFcn

   function b2DynamicTree_RayCast
     (tree : access constant b2DynamicTree;
      input : access constant b2RayCastInput;
      maskBits : utypes_uuint64_t_h.uint64_t;
      callback : access function
        (arg1 : access constant b2RayCastInput;
         arg2 : int;
         arg3 : utypes_uuint64_t_h.uint64_t;
         arg4 : System.Address) return float;
      context : System.Address) return b2TreeStats  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:746
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_RayCast";

   --  skipped function type b2TreeShapeCastCallbackFcn

   function b2DynamicTree_ShapeCast
     (tree : access constant b2DynamicTree;
      input : access constant b2ShapeCastInput;
      maskBits : utypes_uuint64_t_h.uint64_t;
      callback : access function
        (arg1 : access constant b2ShapeCastInput;
         arg2 : int;
         arg3 : utypes_uuint64_t_h.uint64_t;
         arg4 : System.Address) return float;
      context : System.Address) return b2TreeStats  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:767
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_ShapeCast";

   function b2DynamicTree_GetHeight (tree : access constant b2DynamicTree) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:771
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_GetHeight";

   function b2DynamicTree_GetAreaRatio (tree : access constant b2DynamicTree) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:774
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_GetAreaRatio";

   function b2DynamicTree_GetRootBounds (tree : access constant b2DynamicTree) return box2d_math_functions_h.b2AABB  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:777
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_GetRootBounds";

   function b2DynamicTree_GetProxyCount (tree : access constant b2DynamicTree) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:780
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_GetProxyCount";

   function b2DynamicTree_Rebuild (tree : access b2DynamicTree; fullBuild : Extensions.bool) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:783
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_Rebuild";

   function b2DynamicTree_GetByteCount (tree : access constant b2DynamicTree) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:786
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_GetByteCount";

   function b2DynamicTree_GetUserData (tree : access constant b2DynamicTree; proxyId : int) return utypes_uuint64_t_h.uint64_t  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:789
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_GetUserData";

   function b2DynamicTree_GetAABB (tree : access constant b2DynamicTree; proxyId : int) return box2d_math_functions_h.b2AABB  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:792
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_GetAABB";

   procedure b2DynamicTree_Validate (tree : access constant b2DynamicTree)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:795
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_Validate";

   procedure b2DynamicTree_ValidateNoEnlarged (tree : access constant b2DynamicTree)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:798
   with Import => True, 
        Convention => C, 
        External_Name => "b2DynamicTree_ValidateNoEnlarged";

   type b2PlaneResult is record
      plane : aliased box2d_math_functions_h.b2Plane;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:812
      point : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:815
      hit : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:818
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:809

   type b2CollisionPlane is record
      plane : aliased box2d_math_functions_h.b2Plane;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:826
      pushLimit : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:830
      push : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:833
      clipVelocity : aliased Extensions.bool;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:836
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:823

   type b2PlaneSolverResult is record
      translation : aliased box2d_math_functions_h.b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:843
      iterationCount : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:846
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:840

   function b2SolvePlanes
     (targetDelta : box2d_math_functions_h.b2Vec2;
      planes : access b2CollisionPlane;
      count : int) return b2PlaneSolverResult  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:853
   with Import => True, 
        Convention => C, 
        External_Name => "b2SolvePlanes";

   function b2ClipVector
     (vector : box2d_math_functions_h.b2Vec2;
      planes : access constant b2CollisionPlane;
      count : int) return box2d_math_functions_h.b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/collision.h:857
   with Import => True, 
        Convention => C, 
        External_Name => "b2ClipVector";

end box2d_collision_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
