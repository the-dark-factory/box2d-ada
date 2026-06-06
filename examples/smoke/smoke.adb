with Ada.Text_IO;             use Ada.Text_IO;
with Ada.Command_Line;        use Ada.Command_Line;
with Interfaces.C;            use Interfaces.C;
with box2d_box2d_h;           use box2d_box2d_h;
with box2d_types_h;           use box2d_types_h;
with box2d_id_h;              use box2d_id_h;
with box2d_collision_h;       use box2d_collision_h;
with box2d_math_functions_h;  use box2d_math_functions_h;

--  box2d-ada smoke test: drop a dynamic box under gravity and confirm it
--  falls. Exercises the generated binding end-to-end against the real
--  libbox2d.a -- world, a body + a box shape (so it has mass), step the
--  solver, read the position back, destroy the world.
procedure Smoke is
   World_Def : aliased b2WorldDef := b2DefaultWorldDef;
   World     : b2WorldId;
   Body_Def  : aliased b2BodyDef := b2DefaultBodyDef;
   Bod       : b2BodyId;
   Box       : aliased b2Polygon;
   Shape_Def : aliased b2ShapeDef := b2DefaultShapeDef;
   Shape     : b2ShapeId;
   Start_Y, End_Y : float;
begin
   World_Def.gravity := (x => 0.0, y => -10.0);
   World := b2CreateWorld (World_Def'Access);

   Body_Def.c_type   := b2_dynamicBody;
   Body_Def.position := (x => 0.0, y => 100.0);
   Bod := b2CreateBody (World, Body_Def'Access);

   --  Give the body mass: a 1x1 box at density 1.
   Box := b2MakeBox (0.5, 0.5);
   Shape_Def.density := 1.0;
   Shape := b2CreatePolygonShape (Bod, Shape_Def'Access, Box'Access);

   Start_Y := b2Body_GetPosition (Bod).y;

   for I in 1 .. 90 loop          --  1.5 s at 60 Hz
      b2World_Step (World, 1.0 / 60.0, 4);
   end loop;

   End_Y := b2Body_GetPosition (Bod).y;

   New_Line;
   Put_Line ("box2d-ada smoke -- 1x1 dynamic box under gravity (a_y = -10)");
   Put_Line ("  start y =" & Start_Y'Image);
   Put_Line ("  end   y =" & End_Y'Image & "   (90 steps @ 60 Hz, 4 sub-steps)");
   Put_Line ("  free-fall predicts ~88.75 (drop of 1/2*a*t^2 = 11.25 over 1.5 s)");

   if End_Y < Start_Y - 1.0 then
      Put_Line ("  PASS -- the box fell through the real Box2D solver");
   else
      Put_Line ("  FAIL -- box did not fall (end y =" & End_Y'Image & ")");
      Set_Exit_Status (Failure);   --  make `alr test` / CI see the failure
   end if;

   b2DestroyWorld (World);
end Smoke;
