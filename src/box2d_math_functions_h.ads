pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package box2d_math_functions_h is

   B2_PI : constant := 3.14159265359;  --  /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:79

   type b2Vec2 is record
      x : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:23
      y : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:23
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:20

   type b2CosSin is record
      cosine : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:31
      sine : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:32
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:28

   type b2Rot is record
      c : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:40
      s : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:40
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:37

   type b2Transform is record
      p : aliased b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:46
      q : aliased b2Rot;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:44

   type b2Mat22 is record
      cx : aliased b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:54
      cy : aliased b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:51

   type b2AABB is record
      lowerBound : aliased b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:60
      upperBound : aliased b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:58

   type b2Plane is record
      normal : aliased b2Vec2;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:67
      offset : aliased float;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:68
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:65

   b2Vec2_zero : aliased constant b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "b2Vec2_zero";

   b2Rot_identity : aliased constant b2Rot  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "b2Rot_identity";

   b2Transform_identity : aliased constant b2Transform  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "b2Transform_identity";

   b2Mat22_zero : aliased constant b2Mat22  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "b2Mat22_zero";

   function b2IsValidFloat (a : float) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "b2IsValidFloat";

   function b2IsValidVec2 (v : b2Vec2) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "b2IsValidVec2";

   function b2IsValidRotation (q : b2Rot) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "b2IsValidRotation";

   function b2IsValidTransform (t : b2Transform) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "b2IsValidTransform";

   function b2IsValidAABB (aabb : b2AABB) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "b2IsValidAABB";

   function b2IsValidPlane (a : b2Plane) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "b2IsValidPlane";

   function b2MinInt (a : int; b : int) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "b2MinInt";

   function b2MaxInt (a : int; b : int) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "b2MaxInt";

   function b2AbsInt (a : int) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "b2AbsInt";

   function b2ClampInt
     (a : int;
      lower : int;
      upper : int) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "b2ClampInt";

   function b2CeilingInt (numerator : int; denominator : int) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "b2CeilingInt";

   function b2MinFloat (a : float; b : float) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "b2MinFloat";

   function b2MaxFloat (a : float; b : float) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "b2MaxFloat";

   function b2AbsFloat (a : float) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "b2AbsFloat";

   function b2ClampFloat
     (a : float;
      lower : float;
      upper : float) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "b2ClampFloat";

   function b2Atan2 (y : float; x : float) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "b2Atan2";

   function b2ComputeCosSin (radians : float) return b2CosSin  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "b2ComputeCosSin";

   function b2Dot (a : b2Vec2; b : b2Vec2) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "b2Dot";

   function b2Cross (a : b2Vec2; b : b2Vec2) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "b2Cross";

   function b2CrossVS (v : b2Vec2; s : float) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "b2CrossVS";

   function b2CrossSV (s : float; v : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "b2CrossSV";

   function b2LeftPerp (v : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "b2LeftPerp";

   function b2RightPerp (v : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "b2RightPerp";

   function b2Add (a : b2Vec2; b : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "b2Add";

   function b2Sub (a : b2Vec2; b : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "b2Sub";

   function b2Neg (a : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "b2Neg";

   function b2Lerp
     (a : b2Vec2;
      b : b2Vec2;
      t : float) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "b2Lerp";

   function b2Mul (a : b2Vec2; b : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "b2Mul";

   function b2MulSV (s : float; v : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "b2MulSV";

   function b2MulAdd
     (a : b2Vec2;
      s : float;
      b : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "b2MulAdd";

   function b2MulSub
     (a : b2Vec2;
      s : float;
      b : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "b2MulSub";

   function b2Abs (a : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "b2Abs";

   function b2Min (a : b2Vec2; b : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "b2Min";

   function b2Max (a : b2Vec2; b : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "b2Max";

   function b2Clamp
     (v : b2Vec2;
      a : b2Vec2;
      b : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "b2Clamp";

   function b2Length (v : b2Vec2) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "b2Length";

   function b2Distance (a : b2Vec2; b : b2Vec2) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "b2Distance";

   function b2Normalize (v : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "b2Normalize";

   function b2IsNormalized (a : b2Vec2) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "b2IsNormalized";

   function b2GetLengthAndNormalize (length : access float; v : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "b2GetLengthAndNormalize";

   function b2NormalizeRot (q : b2Rot) return b2Rot  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "b2NormalizeRot";

   function b2IntegrateRotation (q1 : b2Rot; deltaAngle : float) return b2Rot  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "b2IntegrateRotation";

   function b2LengthSquared (v : b2Vec2) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:367
   with Import => True, 
        Convention => C, 
        External_Name => "b2LengthSquared";

   function b2DistanceSquared (a : b2Vec2; b : b2Vec2) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "b2DistanceSquared";

   function b2MakeRot (radians : float) return b2Rot  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:380
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakeRot";

   function b2MakeRotFromUnitVector (unitVector : b2Vec2) return b2Rot  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:387
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakeRotFromUnitVector";

   function b2ComputeRotationBetweenUnitVectors (v1 : b2Vec2; v2 : b2Vec2) return b2Rot  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "b2ComputeRotationBetweenUnitVectors";

   function b2IsNormalizedRot (q : b2Rot) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "b2IsNormalizedRot";

   function b2InvertRot (a : b2Rot) return b2Rot  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:405
   with Import => True, 
        Convention => C, 
        External_Name => "b2InvertRot";

   function b2NLerp
     (q1 : b2Rot;
      q2 : b2Rot;
      t : float) return b2Rot  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:413
   with Import => True, 
        Convention => C, 
        External_Name => "b2NLerp";

   function b2ComputeAngularVelocity
     (q1 : b2Rot;
      q2 : b2Rot;
      inv_h : float) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:431
   with Import => True, 
        Convention => C, 
        External_Name => "b2ComputeAngularVelocity";

   function b2Rot_GetAngle (q : b2Rot) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:448
   with Import => True, 
        Convention => C, 
        External_Name => "b2Rot_GetAngle";

   function b2Rot_GetXAxis (q : b2Rot) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:454
   with Import => True, 
        Convention => C, 
        External_Name => "b2Rot_GetXAxis";

   function b2Rot_GetYAxis (q : b2Rot) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:461
   with Import => True, 
        Convention => C, 
        External_Name => "b2Rot_GetYAxis";

   function b2MulRot (q : b2Rot; r : b2Rot) return b2Rot  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:468
   with Import => True, 
        Convention => C, 
        External_Name => "b2MulRot";

   function b2InvMulRot (a : b2Rot; b : b2Rot) return b2Rot  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:482
   with Import => True, 
        Convention => C, 
        External_Name => "b2InvMulRot";

   function b2RelativeAngle (a : b2Rot; b : b2Rot) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:495
   with Import => True, 
        Convention => C, 
        External_Name => "b2RelativeAngle";

   function b2UnwindAngle (radians : float) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:505
   with Import => True, 
        Convention => C, 
        External_Name => "b2UnwindAngle";

   function b2RotateVector (q : b2Rot; v : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:512
   with Import => True, 
        Convention => C, 
        External_Name => "b2RotateVector";

   function b2InvRotateVector (q : b2Rot; v : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:518
   with Import => True, 
        Convention => C, 
        External_Name => "b2InvRotateVector";

   function b2TransformPoint (t : b2Transform; p : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:524
   with Import => True, 
        Convention => C, 
        External_Name => "b2TransformPoint";

   function b2InvTransformPoint (t : b2Transform; p : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:533
   with Import => True, 
        Convention => C, 
        External_Name => "b2InvTransformPoint";

   function b2MulTransforms (A : b2Transform; B : b2Transform) return b2Transform  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:545
   with Import => True, 
        Convention => C, 
        External_Name => "b2MulTransforms";

   function b2InvMulTransforms (A : b2Transform; B : b2Transform) return b2Transform  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:556
   with Import => True, 
        Convention => C, 
        External_Name => "b2InvMulTransforms";

   function b2MulMV (A : b2Mat22; v : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:565
   with Import => True, 
        Convention => C, 
        External_Name => "b2MulMV";

   function b2GetInverse22 (A : b2Mat22) return b2Mat22  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:575
   with Import => True, 
        Convention => C, 
        External_Name => "b2GetInverse22";

   function b2Solve22 (A : b2Mat22; b : b2Vec2) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:593
   with Import => True, 
        Convention => C, 
        External_Name => "b2Solve22";

   function b2AABB_Contains (a : b2AABB; b : b2AABB) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:606
   with Import => True, 
        Convention => C, 
        External_Name => "b2AABB_Contains";

   function b2AABB_Center (a : b2AABB) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:617
   with Import => True, 
        Convention => C, 
        External_Name => "b2AABB_Center";

   function b2AABB_Extents (a : b2AABB) return b2Vec2  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:624
   with Import => True, 
        Convention => C, 
        External_Name => "b2AABB_Extents";

   function b2AABB_Union (a : b2AABB; b : b2AABB) return b2AABB  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:631
   with Import => True, 
        Convention => C, 
        External_Name => "b2AABB_Union";

   function b2AABB_Overlaps (a : b2AABB; b : b2AABB) return Extensions.bool  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:642
   with Import => True, 
        Convention => C, 
        External_Name => "b2AABB_Overlaps";

   function b2MakeAABB
     (points : access constant b2Vec2;
      count : int;
      radius : float) return b2AABB  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:649
   with Import => True, 
        Convention => C, 
        External_Name => "b2MakeAABB";

   function b2PlaneSeparation (plane : b2Plane; point : b2Vec2) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:667
   with Import => True, 
        Convention => C, 
        External_Name => "b2PlaneSeparation";

   function b2SpringDamper
     (hertz : float;
      dampingRatio : float;
      position : float;
      velocity : float;
      timeStep : float) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:677
   with Import => True, 
        Convention => C, 
        External_Name => "b2SpringDamper";

   procedure b2SetLengthUnitsPerMeter (lengthUnits : float)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:698
   with Import => True, 
        Convention => C, 
        External_Name => "b2SetLengthUnitsPerMeter";

   function b2GetLengthUnitsPerMeter return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/math_functions.h:701
   with Import => True, 
        Convention => C, 
        External_Name => "b2GetLengthUnitsPerMeter";

end box2d_math_functions_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
