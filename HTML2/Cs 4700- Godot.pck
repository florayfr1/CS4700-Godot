GDPC                                                                               <   res://.import/ball.PNG-b20f67788a6e2d09ee62b611b57bdbb9.stex�B      �I      �"3`� �J��v��&D   res://.import/brick_blue.png-07a92ea5182e1570d387bf71f995b415.stex   �      /      �M���k~ �����D   res://.import/brick_green.png-ddca2274d7e05628f5afceb76a080a01.stex В      �&      �̸*H��� ɕP3�D   res://.import/brick_pink.png-565bc85c5b5c7838e32b5ad5cb56d1d9.stex  `�      �&      �̸*H��� ɕP3�<   res://.import/icon.png-c3d958876317c5b9ff9d73fef1b6123f.stex�      U      -��`�0��x�5�[@   res://.import/paddle.png-d3f7c4a6bd36c30bec1ddd77e29f8a87.stex   �      '      0�����H�s�)�   res://Bricks/Brick.gd.remap p�      '       �ΤS�,��J&�Q�~   res://Bricks/Brick.gdc  	      �      4�Ux<y�͐����Y   res://Bricks/Brick1.tscn�
      8      ���E~��PK�k�o5�    res://Environment/Brick_set.tscn�      �      q���k��5D�r���$   res://Environment/PlayerParts.tscn  p      �      �W>���E#���)    res://Environment/brick_set.tres       �      �Öɘ{����=y�O$   res://Environment/player_parts.tres  !      q      ��_�'�8�/P�V��   res://Game 1/MainScene.tscn �$      �
      ���p����*��}��   res://Player'/Ball.gd.remap ��      (       �}�e�y4��C^$��   res://Player'/Ball.gdc  p/      =      i��hO�H��
X�]]   res://Player'/Ball.tscn �6      �      (�<�+f�H� �T.:r$   res://Player'/PContainer.gd.remap   ��      .       T(����H���fZg�   res://Player'/PContainer.gdcP9      �       RIy4ˮ���B��='
    res://Player'/PContainer.tres    :      �       Zl��	�����t�    res://Player'/Player.gd.remap    �      *       !�*�qf�Ӧ���ݎv   res://Player'/Player.gdc�:      R      `/b�WN��V��Qv�   res://Player'/Player.tscn    A      �      �|Jr,�h4�iE�6X   res://art/ball.PNG.import   p�      �      c��d�m�j,�6ܵ    res://art/brick_blue.png.import 0�      �      �dN*���̇h�H���    res://art/brick_green.png.import��      �      k�2��K�n:8�;��A    res://art/brick_pink.png.import P�      �      {.��&��{j{e��a   res://art/icon.png.import   p�      �      a��)�ܰ��?���T�   res://art/paddle.png.import 0�      �      o�&�W^R�q8�ð   res://default_env.tres  ��      �       um�`�N��<*ỳ�8   res://project.binary0�      �      �oII��'[��	��4W        GDSC            5      ���������τ򶶶�   �����Ŷ�   �����϶�   �������׶���   ��������������Ŷ   ���������Ӷ�            brick                                                                    	      
                                       %      )      /      3      3YYYYYYY;�  YY0�  PQV�  �  P�  R�  QYYYYY0�  PQV�  �  �  &�  
�  V�  �  PQY` [gd_scene load_steps=5 format=2]

[ext_resource path="res://art/brick_blue.png" type="Texture" id=1]
[ext_resource path="res://Bricks/Brick.gd" type="Script" id=2]

[sub_resource type="SpriteFrames" id=1]
animations = [ {
"frames": [ ExtResource( 1 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 65.3324, 15.3848 )

[node name="Brick1" type="StaticBody2D"]
position = Vector2( 64.406, 15.6844 )
script = ExtResource( 2 )
__meta__ = {
"_edit_group_": true
}

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
position = Vector2( 3.05176e-05, 0 )
scale = Vector2( 0.409992, 0.53971 )
frames = SubResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0.33371, -0.33371 )
shape = SubResource( 2 )
        [gd_scene load_steps=5 format=2]

[ext_resource path="res://art/brick_green.png" type="Texture" id=1]
[ext_resource path="res://art/brick_blue.png" type="Texture" id=2]
[ext_resource path="res://art/brick_pink.png" type="Texture" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 621.472, 335.381 )

[node name="Brick" type="Node2D"]

[node name="brick_green" type="Sprite" parent="."]
position = Vector2( 33.5955, 32.6705 )
scale = Vector2( 0.964924, 1 )
texture = ExtResource( 1 )
vframes = 15
hframes = 32
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="brick_green"]
position = Vector2( 135.723, -13.6138 )
scale = Vector2( 0.05, 0.1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="brick_green/StaticBody2D"]
position = Vector2( -2671.59, 144.03 )
shape = SubResource( 1 )

[node name="brick_blue" type="Sprite" parent="."]
position = Vector2( 142.72, 37.9678 )
scale = Vector2( 0.964924, 1 )
texture = ExtResource( 2 )
vframes = 15
hframes = 32
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="brick_blue"]
position = Vector2( 135.723, -13.6138 )
scale = Vector2( 0.05, 0.1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="brick_blue/StaticBody2D"]
position = Vector2( -2671.59, 144.03 )
shape = SubResource( 1 )

[node name="brick_pink" type="Sprite" parent="."]
position = Vector2( 263.499, 37.9678 )
scale = Vector2( 0.964924, 1 )
texture = ExtResource( 3 )
vframes = 15
hframes = 32
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="brick_pink"]
position = Vector2( 135.723, -13.6138 )
scale = Vector2( 0.05, 0.1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="brick_pink/StaticBody2D"]
position = Vector2( -2671.59, 144.03 )
shape = SubResource( 1 )
[gd_scene load_steps=2 format=2]

[ext_resource path="res://art/paddle.png" type="Texture" id=1]

[node name="PlayerParts" type="Node2D"]

[node name="paddle_left" type="Sprite" parent="."]
position = Vector2( 45.0992, 53.6985 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 0, 0, 32, 96 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="paddle_left"]
__meta__ = {
"_edit_group_": true
}

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="paddle_left/StaticBody2D"]
polygon = PoolVector2Array( 15.0806, -46.9808, -14.8856, -46.9808, -14.1364, 46.6634, 15.8297, 46.6634 )
  [gd_resource type="TileSet" load_steps=5 format=2]

[ext_resource path="res://art/brick_green.png" type="Texture" id=1]
[ext_resource path="res://art/brick_blue.png" type="Texture" id=2]
[ext_resource path="res://art/brick_pink.png" type="Texture" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 621.472, 335.381 )

[resource]
0/name = "brick_green"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 63 )
0/tile_mode = 0
0/occluder_offset = Vector2( 32, 31.6667 )
0/navigation_offset = Vector2( 32, 31.6667 )
0/shape_offset = Vector2( 34.1434, 32.4559 )
0/shape_transform = Transform2D( 0.05, 0, 0, 0.1, 34.1434, 32.4559 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 0.05, 0, 0, 0.1, 34.1434, 32.4559 )
} ]
0/z_index = 0
1/name = "brick_blue"
1/texture = ExtResource( 2 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 0, 0, 64, 63 )
1/tile_mode = 0
1/occluder_offset = Vector2( 32, 31.6667 )
1/navigation_offset = Vector2( 32, 31.6667 )
1/shape_offset = Vector2( 34.1434, 32.4559 )
1/shape_transform = Transform2D( 0.05, 0, 0, 0.1, 34.1434, 32.4559 )
1/shape = SubResource( 1 )
1/shape_one_way = false
1/shape_one_way_margin = 1.0
1/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 0.05, 0, 0, 0.1, 34.1434, 32.4559 )
} ]
1/z_index = 0
2/name = "brick_pink"
2/texture = ExtResource( 3 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 0, 0, 64, 63 )
2/tile_mode = 0
2/occluder_offset = Vector2( 32, 31.6667 )
2/navigation_offset = Vector2( 32, 31.6667 )
2/shape_offset = Vector2( 34.1434, 32.4559 )
2/shape_transform = Transform2D( 0.05, 0, 0, 0.1, 34.1434, 32.4559 )
2/shape = SubResource( 1 )
2/shape_one_way = false
2/shape_one_way_margin = 1.0
2/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 0.05, 0, 0, 0.1, 34.1434, 32.4559 )
} ]
2/z_index = 0
    [gd_resource type="TileSet" load_steps=3 format=2]

[ext_resource path="res://art/paddle.png" type="Texture" id=1]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 15.8297, 46.6634, -14.1364, 46.6634, -14.8856, -46.9808, 15.0806, -46.9808 )

[resource]
0/name = "paddle_left"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 32, 96 )
0/tile_mode = 0
0/occluder_offset = Vector2( 16, 48 )
0/navigation_offset = Vector2( 16, 48 )
0/shape_offset = Vector2( 16, 48 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 16, 48 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16, 48 )
} ]
0/z_index = 0
               [gd_scene load_steps=6 format=2]

[ext_resource path="res://Player'/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Player'/Player.gd" type="Script" id=2]
[ext_resource path="res://Environment/brick_set.tres" type="TileSet" id=3]
[ext_resource path="res://Player'/Ball.tscn" type="PackedScene" id=4]
[ext_resource path="res://Bricks/Brick1.tscn" type="PackedScene" id=5]

[node name="MainScene" type="Node2D"]

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 510.112, 665.457 )
script = ExtResource( 2 )

[node name="Wall" type="TileMap" parent="."]
mode = 2
tile_set = ExtResource( 3 )
cell_size = Vector2( 32, 32 )
format = 1
tile_data = PoolIntArray( 0, 2, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 2, 0, 65536, 2, 0, 65551, 2, 0, 131072, 2, 0, 131087, 2, 0, 196608, 2, 0, 196623, 2, 0, 262144, 2, 0, 262159, 2, 0, 327680, 2, 0, 327695, 2, 0, 393216, 2, 0, 393231, 2, 0, 458752, 2, 0, 458767, 2, 0, 524288, 2, 0, 524303, 2, 0, 589824, 2, 0, 589839, 2, 0, 655360, 2, 0, 655375, 2, 0, 720896, 2, 0, 720911, 2, 0 )

[node name="Ball" parent="." instance=ExtResource( 4 )]
position = Vector2( 495.175, 562.158 )

[node name="Brick17" parent="." instance=ExtResource( 5 )]
position = Vector2( 885, 270 )

[node name="Brick1" parent="." instance=ExtResource( 5 )]
position = Vector2( 135, 170 )

[node name="Brick2" parent="." instance=ExtResource( 5 )]
position = Vector2( 285, 170 )

[node name="Brick3" parent="." instance=ExtResource( 5 )]
position = Vector2( 435, 170 )

[node name="Brick4" parent="." instance=ExtResource( 5 )]
position = Vector2( 585, 170 )

[node name="Brick5" parent="." instance=ExtResource( 5 )]
position = Vector2( 735, 170 )

[node name="Brick8" parent="." instance=ExtResource( 5 )]
position = Vector2( 350, 220 )

[node name="Brick9" parent="." instance=ExtResource( 5 )]
position = Vector2( 500, 220 )

[node name="Brick10" parent="." instance=ExtResource( 5 )]
position = Vector2( 650, 220 )

[node name="Brick11" parent="." instance=ExtResource( 5 )]
position = Vector2( 800, 220 )

[node name="Brick12" parent="." instance=ExtResource( 5 )]
position = Vector2( 135, 270 )

[node name="Brick13" parent="." instance=ExtResource( 5 )]
position = Vector2( 285, 270 )

[node name="Brick14" parent="." instance=ExtResource( 5 )]
position = Vector2( 435, 270 )

[node name="Brick15" parent="." instance=ExtResource( 5 )]
position = Vector2( 585, 270 )

[node name="Brick16" parent="." instance=ExtResource( 5 )]
position = Vector2( 735, 270 )

[node name="Brick7" parent="." instance=ExtResource( 5 )]
position = Vector2( 200, 220 )

[node name="Brick6" parent="." instance=ExtResource( 5 )]
position = Vector2( 885, 170 )
         GDSC   "      /        ������������τ�   ����Ҷ��   ����������Ķ   ����Ҷ��   ��������ض��   ����������Ѷ   ���������Ӷ�   �������Ӷ���   ���������������Ŷ���   ����׶��   ����¶��   ���������������������Ҷ�   �����������Ķ���   ���������Ҷ�   �������϶���   ��������ض��   ���������������Ӷ���   �������Ķ���   �����Ķ�   �����Ӷ�   �����ڶ�   ζ��   ��������������������ζ��   �������׶���   ��������������Ŷ   �����������������؄򶶶�   ��������ζ��   �������ض���   ��������������ض   ������¶   �����������޶���   �����������ض���   �������Ӷ���   �����������Ӷ���   �        res://Player'/PContainer.tres         res://Game 1/MainScene.tscn       ?                   BallVisible       throw                   brick      	   hit brick            	   Game over                      	      
                  !      &   	   '   
   0      1      8      A      E      F      K      M      N      R      S      [      d      l      m      s      }      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +     ,     -     .     /   3YY8;�  YY:�  ?P�  QY;�  �  Y;�  �  P�  R�  QY;�  �  YY5;�  �  P�  Q�  Y0�  P�	  QV�  &�
  T�  P�  QV�  �  �  �  �  &�  V�  .�  �  �  PQ�  �  �  �  T�  PQ�  ;�  �  �  �	  �  ;�  �  P�  Q�  �  &�  �	  V�  &�  T�  �  T�  V�  �  �  T�  P�  T�  Q�  �  T�  �  P�  QY�  (V�  �?  P�  T�  T�  P�
  QQ�  &�  T�  T�  P�
  QV�  �?  P�  Q�  �  T�  T�  PQ�  �  �  T�  P�  T�  Q�  Y0�  P�  V�  QV�  ;�  �  T�  T�  �  T�  T�  T�  �  ;�  �  �  T�  �  .P�  �  Q�  �  Y0�  PQV�  &�  T�  PQV�  �?  P�  Q�  �   PQT�!  P�  Q�  Y`   [gd_scene load_steps=4 format=2]

[ext_resource path="res://art/ball.PNG" type="Texture" id=1]
[ext_resource path="res://Player'/Ball.gd" type="Script" id=2]

[sub_resource type="CircleShape2D" id=1]
radius = 16.4946

[node name="Ball" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="ball" type="Sprite" parent="."]
position = Vector2( 21.6764, 22.2387 )
scale = Vector2( 0.05, 0.05 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 21.5181, 21.8529 )
shape = SubResource( 1 )

[node name="BallVisible" type="VisibilityNotifier2D" parent="."]
position = Vector2( 21.5, 22.5 )
               GDSC                  �������Ӷ���   ���������Ķ�   �����Ķ�   �����������޶���                                         3Y2�  YY;�  Y;�  Y`         [gd_resource type="Resource" load_steps=2 format=2]

[ext_resource path="res://Player'/PContainer.gd" type="Script" id=1]

[resource]
script = ExtResource( 1 )
GDSC         .   �      ������������τ�   �������϶���   ��������   �����������ض���   �������ض���   ������������޶��   ���������ƶ�   �������Ӷ���   ����������Ķ   ����������������޶��   �����϶�   �����������Ķ���   �����Ķ�   �����������޶���   �����޶�   ��������ڶ��   �������������¶�   �������ڶ���   ߶��   ���������������Ŷ���   ����׶��   ����϶��   ����¶��   ����������������Ҷ��   ζ��   �������������Ӷ�   �������ض���   ϶��   �     �               playerParts       res://Player'/PContainer.tres                   $   Error: length must be greater than 2                	   move_left      
   move_right     �                     
                                 	   %   
   -      .      3      4      :      ?      E      M      T      ]      ^      _      d      i      j      u      v      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   3YY;�  �  T�  Y;�  Y;�  �  YY8;�  �  YY5;�  �  P�  QY:�  ?P�  QYY:�	  �  YY0�
  PQV�  �  P�  Q�  �  T�  �  �  T�  �  �	  Y0�  P�  QV�  @P�  �  R�  Q�  �  �  ;�  �  �  ;�  �  �  �  �  T�  P�  R�  R�  Q�  �  )�  �K  P�  R�  �	  QV�  �  �	  �  �  T�  P�  R�  R�  Q�  �  �  �	  �  �  T�  P�  R�  R�  Q�  Y0�  P�  QV�  �  PQ�  &�  T�  P�
  QV�  �  T�  �  �  '�  T�  P�  QV�  �  T�  �  �  �  P�  QY�  �  �  T�#  P�  T�  R�  QYY0�  PQV�  �  T�  �  Y`              [gd_scene load_steps=2 format=2]

[ext_resource path="res://Environment/player_parts.tres" type="TileSet" id=1]

[node name="Player" type="KinematicBody2D"]
position = Vector2( 155.786, 22.5949 )
scale = Vector2( 0.5, 0.5 )
__meta__ = {
"_edit_group_": true
}

[node name="playerParts" type="TileMap" parent="."]
tile_set = ExtResource( 1 )
cell_size = Vector2( 32, 84 )
collision_use_parent = true
format = 1
      GDST�  �          �I  PNG �PNG

   IHDR  �  �   "}�:   sRGB ���    IDATx���y��uy����3K&�B�]�EdS�\к[���V��Z}Z�i�S[[��ZQ[���Z�Vk�j��BXa'	$!����s�!�,��������J�0�ΙI�s�s�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$P#u�T3��~����Z{yc܏���%ib@�{�z�����9�̝����qָ��g�׶�n�دF���_78�ؽc�~�����دoC��?<��mc�~��د�l�����F��⒴gIu�5�I��v��	, f3�~�X�%����_3o�g��3��W;dw�=��4yg����������=B��!"(���6"\?�#�z������ <4�k��GxlȖ��38K���	q���ۧ�}D�] ,'��C���%���L"0�$�p�}5�=FU�o�!����G� }���w�z��qz=��ZR�T�/}I��M��v�E�8>88؏�3�q��{?���g�p=:�6@�X? �=��5�*�ֱ����vv�T�����������R� Bo?� G�G'�s��j������[D���7��'����{�G�/Y�&�/"����Z�>E�cGk�"G�C��[��H�bh��l'���-������D�n�P��=�O��$��"��S&�m��e��D{���b���o�jJ��h��1qR��8��Ďˉ�_o����������n��88	XH���_��U��"�7�a�W�
`%p�걅m!�@-I�����<�g�".�	<xqaov�o��%��(���pp3p�؏+��z��{틈��~����������c���S���9��-"(oV�W��7���^ڧҒ4%~ђ�	}<:(� �O�_<�߼��<�����ҷWW����7%J҄�EL�d��?�[/�A��D�P�*�v�^C�t��ҷ���oB�GZ�n�EM��4�1�zz9p.ѧ|q��ު'���q�����NbzG{1�Z$=�_�$�����Ɏ5�G ��g���v�*hϖ^C̒��!q�p-q��,	����0~qH7��zp�T��b�eU_�X�r'�"H_Gl?\Ȏ6HK5�@IM��b?��D����ȸ��hD�6B櫁�!z�ұ��h(�&�R�t�E�F�!FŝO��t�I��"�M����+·���gGK�(��T}�/����g /$�`�C�:K��Q�m��?�I��ۗ
m�*��,UW��wpppq�o�`H�Ҟұ�&���"���p-�"�R�t�����!V[/&&d��^�N��}5�5�z�xe�rH��P���I�K�����DL��q����o
��m;�T"g��ڳ���`�xъq4��DRq��JL縖q7��(I�cp�ʧA��;������I8:N*����ۉ��".���	�Thg���V��ĺ�󁋁�q"�TV-�u��r�*��6"\��+MҮ��bk�d�G��{.p"q�,�:F���_���\�O��B18K�Ӟ��p<���ӈr�.K��^�r#1�{����-%gp����XP2�w"�2�L<]��j�8���b��V` C����Y*�^���K�#�tYRh������Ы�Zʝ�YJ��"&c��8X��1$��Vb
�7��w �h������|u����^Ol��OY�����LL丛ϣ�����|�g/\�8O�%MO{��׀O�"z�]�-e��,e�A�$�%�Ӊ�``��y���ޟn"�}oƋ�R���l�C�����ޖ�9I� ~��u�ڋ�R�E\�vXޗ'�R�,b��$�m ����`1#�-M�_̥�k�#4�	�
����(I3�|�g�;.J���4ubiɾ�)��Of��-I�3JL�x?1�nq*�i���.M^�XN�O,-yp6n��T��m�{��R%���Y��v`^L\��}�\��Y��f�聾��Dx�oH{dp����'�ˀ���fI�0L��"@?���]28K{�El�;����k�55�>�,��me�~U/��u�ǉK��0<K��_�Ү����^�X�f����?M� ���p?0��%���v� ��C�����,H� ��XA\ � �38K���a^L�`~p�Ɩ&�S���N�>�X�[8TS��H� ~�c���--����&.F����O�U+��:�#.�=���"��%I��"����KTЪ���A\�;
x%�r`nʂ$�d���\C��۞�")�j�N�}� �#�2.�SfI��.�������j<yV��U]�|b�߇�֌E�]I��nb��Ӊ��u�6�D���14���_���іџ� I��Q�z�]�7�*#I+�:�gUU���>�-��<bu�$�����3��{7���8�NapV���N%��_���$)/������y%;��H�fpV�4��~�o�<��HR
��s�C�-�<}V��U�5�� �'z�%I�4���K�ͬ� ��Y%epV�5�y���ہ�ڋ��T�Ĳ���{��g�J�ଲj_�[L\�{p:~NKRQ5���/ � n%���,J�C�ʨ,�.^,�SfI*�&p�Ա����g���Ye��\�����?I*�;�R-'z���g��Ye�$z�O> �d�%I��$�]D����
��2�%��KL�X����T%���c����gó
��"k�� �����"IRV�����м
O�U0gU�X��2�� }{�%�����+ر�[J�ଢi�K�
�{�%�nړ7�l&�>��A%fpV�4��O>A�8�9*I�� ����m높1��(z��?!���s�%I����4`5� Ѻ�JY������I�q���3�V$I*�p q�������ଔz���\���2� (Iڽ����!�ԍ�xqP928+�q�|�g��@I��t_?�!�܋�ʉ�Yy�fg�
t'�H�TF��g����xqP38+/��m)��r�[m^ �$MUp1��&`-�=+Cg�e&p$�����Y����� F��	<b�2`pVfO�\�����j�|~Ѯ�؄�YfpV�z���+�w�bk�$);}��D[�
`�=����Jp(�&bjƂ��H��8���~#�0Ѻ!M��Y�����x)�%I��R�b`1uc [74Mgu�"��'�3p��$)���Eā�
`N��4��)M"4�&q�|�3K��k�����AM��Y�0����[�7 Ӗ#Iңtˈ�盁��PҊTJgMG��_^�x	q�Y���i K��ہ���l߳&�଩j��|�xo?�$��f���m�[1<k�Κ�E��O�N�g�$�E��kp-��4��28k�z���r�}�~I��$ij�����K��Ҡ�����!.��Xj27m9�$MK��;�d������28k�ī���K���jh�B� +��M��=�1Κ�����G����$�z��y�,Ez��f.��� ��IRU��'.�lǓg�cp��t�M. &g,������%�6f7���cp֮4���3���-G��\u��76#I+R!��+K�g F�I�T7��;��cx�=����!֑��`N�r$IJ�\���\kg��C�����-G��Bh '���Rj�ଶC�?.#.FH����n��Җ�����:Н�I�
k!1q�v�bQ�j��\o����{�ˀ~>H��gs���ۉ�灴�(O��jˁ���bI�&jp.���^\�]�z�� f4���M$I�������;�-��8�s���>���Y����'N�n��\y�z�N><	C�$I��K��D߳�����M��OL\�$IU�CL�X�	lÞ�J28��l��#c?z�,IRg� g'Ϸ'φ�18W�L�bz��Y����g�oƶ��18W[x��t͒$e��8y^���\)���N".���Y���t��!��� �mT����fˀ���I�R�&�6�'.��\����'�h���Y��T�=ϫpIJ%���8���ch�$)�>b��Ĵ����hZ���O��wch�$�(f��X	�-GSep��&p��R͒$��Lb��}�K��\~`����gI�T<��3�+���m�����z���V�e��$���'�W#i��d�ʫX �x�%IR�-N�Vcx.�sy-~x31�F�$���8���aϥ`p.�."4��h��O[�$I����C���Ѵ�ho��� n�^JLИ��I�4����*"<�]����2���a`i�Z$I��5���l�mc+���28��l�4����k�$I�� �'B�
`��B28�C8
���ĵH���k�6Vw �Ӗ�]18_8�h�8�J�TU����M�z����1���C���í��$U�b�������\l�����J�����|X�c�
�0V\�WN��"I�򵄸�t%��s!���A��|
�N��Y�$����~DxvAJ����;���ĵH����!��s"<+!�s��@>��4$I������f`S�r���\��b�O��ch�$I������N�H��\���űs�$����y%��8�V���0x1�6�]C�$ig��Y�������ԏ�9���L��y~�r$IR��N �G�xV��i�� /K\�$I*�������6Zi˩�s:��A�_'�^�$I�X�
L\Km�ә����q�$I�� �nn�I�0��1��+`F�Z$IR9uO~��˂�38�8�,1�N�$i�����lL\K���� ���X��I�T���5��ĵT��9?M� �ρg�e@I��9�WC�k�,7��x�"|�%IRgu&f<�32�s>f#��,H\�$I��~b?ď�G��u��9{=D��{���"I��� b!ʕ��ĵT�G�ٛ�8'u!�$�^M��ԅT��9;`���j�(I���|x"��([5��M�p� �(q-�$�^fG��'��2��h/9yp<�6K���D�u�)����s�5�->�^�ϱ$IJ�A|��F�`0m9�g�s�� '�O�<K�$���8sߴy�Y=�����!�k�$I�OL��&n��sg��\�}͒$�8�����RZ�w�Lb��04K��biM,c��t�|�:����n`i�Z$I�v�X|�8un�-�|��� ��8O�%IRq=X����I�Uczī�����,I����91���_����4��$�E�$i"z��(�lJ\K����I��{7�=m�$Ieq8���L��S�<8C�$I*��G�r�Z����tG&�E�$i*z�����R
������͒$���Wb��^٪1y3�	/��,I�ʭ\FLٰec/<q��n����ĵH�$u�b'�����O�'��^MLӐ$I����SRd牛El|�hH��j��F?�nت11`�����k�$I��\`�-`(q-����5�o[��h��$I����3SRD罛A��{�hH��j�����"28�Y����`I�Z$I��p"q`؋���bp޽�	�੉k�$I�Kx%�g;?��w�	<�q�,I�T��Ί+�G�R�8�Z�x��H��zzp
���]k'7K}�$IRu���3���+`!q���ĵH�$��/��H\Kr��>�L�R���uH�$�� �����4�����WX�$Iu�W�גT�_9�� �� G'�E�$�H~x5ώ�ޡ	|��I�$��*�YD�s+q-I��U�8��o$��I�$��N�f�.$�s��~O�%I�v��+�`j����y�{�M���D�$I����f��P�Zr�s|���͒$I{� ^NlV��l�~�;iG %��H�$i�� ۀ�S��tu?q�!�j��I��y%��ju[���N������E�k�$I*��d���ϵP��D��!��$I*�_'F��&O��7��&p���H�$MG?�k1`�����Z�%D��$I������ԅ䡎=��ļ�w3�"I�TfM`_���ĵd��'��׎�(I��鹐8u�|�F݂s8x5��J�$����+����۽ͿELԐ$IRg<8�M]H�����o#<����$I��|�;��R��:����5��$I��B`	>��Kp�"z�/��LI���� �%�
V2o�!87�~��Q�oH�$%� �	M��VN�s/p�4*��G�$� � ��J]H���~{�%I���^I�˨܁e��r�m�$I�����T�׹���A�M>Ѭ.I���u�I�f�Z:����X��͒$Iy[�O�:WF���|����ԅH�$�L�{Ķ��`V98Dl��Է$I�JbpZ�]����m� 8,q-�$Iu����pV��Y���N���ĥ�*��$I����d�P���,��s���!I�Tw�D�s%.	V18�~�
��H�$�T88�
d����(����$I��/�%�cڪ���"}4�$I�|�Թԣ�����槥.D�$I��x%\�����I]�$I��x.�Н��)�Jp��%> ���$IRE\B�<�RU���E��ԅH�$i��Q��.d���^Lu~?�$IUt"pz�"��
A�A| �I]�$I��h1ȡ��ז=8w��K��FI��
k ���J7>�����Awj�B$I�4!��g۞K���yp1�O�B$I�4!=�3��S2Ye��O���|��$IR͜E�����{���']�$I��<�8-Mx.sp^�.%�>#I�Tc��R�,W���0u�$I����s���R(kpn#�JwS�$I@�Q{9%Z�]���, �N�zb$I��ˉ.�R�:�18�OL]�$I���x0/u!Q��<����@I���{6pP�"&���y_�llӐ$I�������g���>�XJ�iF�$I��\D��:���]X <���-I���;��(ؓ��=)[ =�hӐ$IRu��F�G�)87�g�%I�T�D��>�ٓ��&�
�RJ�8.I��I{<1n��Y�,��8���*�$IҤ��f�.dw��g�$�PI�$UOxn�(Kp��Gy�$I��KL�(d�F�h71���ԅH�$)S���18O�l���)I���j � ���B)Cp^<'u�$I��R���p�B)Cp>�M"I����#FnwG��s�8�*_�(I����� �M]�Ί���v2m�$IR&�`����8�x�$I�T}D���ԅ�W��|�#I��L4�����9u.rp�#���ɒ$IRn���FQ�s���ԅH�$)�>�����yp1��'I��\4��s���58�Υ��I�$){�"
�E���t	�$I�$����5�S��}�q��ԅH�$)�n�λ5�h/bm�$I�O�8q�C.	1�.���I�$�"�`F�B��O �]K�$IMb�Z�xE
��8��(I�$5���ũ)Zp�GgI�$�mb9^RE
�]ērl�B$I�T(���$��\��|1UC�$Ijk9q6	�k%87���(�JEI�$�I�>�i�b��$I�vm)�����>rI�$ig=���iO �V$I���5���$ʰE	�����I�$�!��$�W���M�7��I�$�R"3&KW��|,�#I��B�Π�'Ώ� ��%I�Th��۵=q��L1j�$IR� Fd�\��M`pT�:$I�Ts��۵������$IR9� N ��s�:8� �c�$I�&�8�й?pJ=��$�)I��RZF�l�eS�0�hՐ$I�&j6ѵ�k�s���M�^��I�$�O/�~�/�M�{����	k�$IR�4���<4up>��D$I�Tjb$]��)�s�J���I�$�Ӿ���E0Upn���=�$���    IDATI�ʭ���[�B�����O$I�45��q�%ep~97tK�$�2�����y>`
M�B�,�$I*�#�E(�H\Ċ�#�b�$I��n>p9�9��]�>�	[�$I��G��lpnKqc�$I�����s��`��#���$I�*�8��N���U���-I��j9�� ��ݹ�y&���+I���G���7������$I�4]���T08,$�jH�$I��KE�s/J�$�s��� ��}�I	W�$I�� f�������1��� I�$M��8�l�wp�	��cNFQ�$I�vo>�\�R�y�j@�$Iꔙ�T(87�1t�lv�$IRm4���	��čG'jH�$��ړ52͙y��aT�$I�j�2�l�38� ��<I�$u��D�sf��308K�$)s��Y>@��yq�Q�$I�^��, ��� ����x�$I�FQ�5��������yq�,I���*j�m�ΙM��+8w3���!I���H�sp�}�R�o9H�$ibD��� ���K�8UQ�$I�&n0'�w�Wp��`@�$IRvf�(���g��$I����$2g���<`~N�%I��z�Ad�L�����$�~I�$���?%?q�Cƻ�%I�T{]Dpnf�γ��o@�$I� 'St\��8'jH�$){�Q��| gI�$eo���{�߀�Y�$IY�#�iny�>��!I��|��s�m�γ���$I��V�vcqh[��܏�O$I���ĩs)��7I�$UGQ�u����<��"�7�Ǒ$I���Ŕ087��ܝ��H�$I�s?b�[G��g��@I�$�g1���g��8SU�۠�$I��y��Ĺ	,����E�K�$IS� �jt|�v�yqƏ!I�$�W���M�8{�+I����!v�tT'�32~I�$i��d09���G��$I������;�:8�G�$IR^�ĩsGe�{ɠ1[�$I�P�ѾM28��:8�cp�$I����覄��ɠhI�$iz(���dp�Q�$Iڃ.Jx��G��H�$Iy���w�up���Y�$I�j���ΣU��,I���u�ᬛ����C�$I�Aܳ+Չs�S"I���*]��LΒ$I�_?%l�08K�$)o�t��]��y��$I��W�ˁ����(�nuI�$M_�.�d��%I��]��t����h��_�$I�Y��o.Up��Y�$I��*8����O�=Β$I����nY�"o,rm�$I���N�ì��`��_�$Iڕ.Jv���@I�$�0Jɂs/�K�$���$IRu��ܬ��vG'I���5(Yp�VI�$�o���&gI�$�o���0��r�$IRu5�p��:8o���O��ג$I�բd���%�$I�R���DH�$)�,8w<�K�$I`��$I�4#�,8w�����(I�T][����<.v|��$I���(����PƏ!I�$����ǎ�:8o�qt�$I��%�x�,I��|����,8��$IR�6u��1�Αt�$I����#8d��$I�x���N��<z�mՐ$IR�F���~�Y�!`sƏ!I�$�7L	{�����$IR^��A�C�y�r�$IR~��A�C��y[5$I���픰Uc���艳$I���H�<N�;��E�$Iڃ��"�����y-��E�K�$IS�%�3�Frx��h�.@�$I��C*:*����H�$)?���6��%�Ǒ$I��S�F;����18K�$UMQ�;v�<q���8�$I�OQ�S�筸v[�$I�"N�;.��<HF�K�$I;�DFm�y�(n�$I���aJ���>��$I�������qy�Qb{KQ��H�$�:6��`����f2X{(I�$���X����o@�$I�"Z���x�y�8���,I�TE���n'F�u\�b_��%I�����OF�in_~�����K�$I�4@�jd"��< ܙ�cI�$������38�Jq�a$I�T~�S��<
܍��%I����mY��<���5$I���q�.�Qt�_pn�dI�$egx�;�<q^l���$I�T/C�}T�����Y�$I�Ab�[�3D�ƃ8YC�$I���Ț�,?�|���r�$IR6�g� y�A�F2| I��ں�g8C��y�g9K�$��Z�Md<�8��1"$�W�$I��Q���!3y���*DI�$�S��;�xE��y+�"�ǔ$IR�m"f8W*8o�Ǒt�$I���ΆL��G���$I�:�fbgH�R���gI�$i�ZDp�t��	��r~\I�$U�1�.�]!)����:DI�$i����`pnm����$I��o��P��1g�V\�-I���[?�V��<LL�ȼ�[�$I�wѮ�y7C��|3�ޖ$I�����z��:N�G��tk<�$I��c��
g��.+�$I��n;p-�ѐ�T�y�/J�$i� z�+}�<���^H�$���&:r�*8�/f�S\�$I�4
��'��
�-b�ཉ_�$I�6 \O�w�Rg������$I�&o5pW��28o���$I�&�W�#y>`��< ���((I�$MT����˥�-�>`M�$I�T>CĠ�\'�����+� I��r��F�-����V��s�$I���F�����y;1�E(�$I��p�)�N�G�U���uH�$�F����J�!B󭩋�$IR)l$�7���[�༅'b��$I��澱�Z�m���cwI�$iw��7�x�"�a�v`]�B$I�Th�ā�^���"B�-��$IR�=�Hl��]�3ĭ�+�W�$IҮ�D�Hr7�(�y�c�s�$IҮ�W��I%8�kS"I��B$:��7Cq�s�x��?8�N�$I���8qN���	��~���$Iz������)8o'�߷�.D�$I�2|�c��;�H�y��7u!�$I*�M�5DpN�H��E�k���%I���=��e��ɚ�%I�T87���.\�����ԅH�$���I���x�y��9u!�$I*�M�(@+oтs�n�-\�-I�$�9�F(Zp��]�!�1u!�$IJj�8Pݔ�(fp%nNސ�I�$%����k��+jp^G�'�e�$IR2� P�LX��Ѯq%��,I���!�i�K]H[Q�s��/u!�$IJb �6�%u!mE� k���$I���5ۅY�W���:�E�$I��"f7o$������P�J]�$I�r5|��f(vpX\AAnRJ�$)+��)�B���MD����$I��cb�F�O���?J]�$I�r1@�%ނ�yRF�G�Q$�z�$I������M��!.	~��"�$IR&F����.dW��G��;R"I��L_!��NY��D��$I����g�=��)Cpn��`!�DI�$M[�.q��P����!��k�U��$IR6(�ғ�������5$I���Zb�Ia�)8o�H4�K�$�:Zĥ��-=�L�yX\��I�$u�#ĥ���ٓ2��d~�ђ$I*��s�-����P��1U���ԅH�$�#��o�S�7e�C�-D�$I��o�`K�B��l�y�h��/"DK�$��~��ٮl�����t��$I�&l;�mbjZ�������n�_)�,I��ݺ�>%�te����
nI���j�L��>�586$I�T>[����������$(I�T>��D�9���W ��!I��� >A�R�7C���01Y���	�$I7�Q��f(wpnm�&��K�$��Z�����Q����_\��I�$M�Z��y[�B&���`5�)Jv�/I�TC-��ĥ�ҵ�V!8o�E,E�$IRqm�
�O]�TT!8����d}2�$I5s#�Sb�F�T!8� _&��%I�T<�D^�@d�ҩJp%Z5���I�$���ψ�\��f�Np����mC�$I�1
�'p[�B��J�y�8u�n�B$I��(��hS2U
��P>G	�J�$UT���v3�������?V�.D�$I@�'&i�����j�y��F�Jz[S�$�b���c���[D`�qsS�$I��"#����n�H^�H�$��MDm)�쬪���3��ԅH�$��0�YbTp%3����U��Q�&tI�����*%��1^U�s��_"�J�$)?��ǁS�IU����,I���<@�6oO]H'U98C�6���(I����@���x��a�>���,I���{�������[��r`S�Z$I����#qpY�I�U=8��%I���������n�s��u�`K�Z$I��j�4q�\���:g��
����$I�����\كʺg��ˉ���$I�q!�n*z��
�ہ_ _I]�$IRŬ����6��)8�����p$IR�������mu
��ۈS�ʾ�$I��*����ud�n�vL�X��I���k���P��f�gp ��SgI�������:�1&��ĐnI�$M�0�`��+u��;��)��@K�$u�u������58�>ܕ�I���>
<H�!�������\��$IR\|�ؓQ���:�qQ�K�:nI�$��6�]�w�k���(��&�@w�Z$I���߁���j��|�ܶ	�:pu�B$I�
n��Q�VW�s�Rzx/q�,I���j�\%�%	[5B{����@#i5�$Ių�}b�I�N����� �KQ$I�v6
�����6��y�A�*��Ԭ�]�$i/n����Q[�Z�'�'����$I�����'�e��cü���G�$��_��w���5��B\�$I����+�ۨ�i3ت�+-"8��X�"I�TG��� 7 Ék)��c��O���$I�����-��!�{��،�*q�$Iy�����ۙ=λ7
�����E�$I�� o'z�=mcܽ��?O\�$IR^����w��g-�a�/�G�"I���Q��8E�1l�ػa`-0x2�H[�$IRfV�%&�yڼ�����"I���A�2�*<m�%��Ĵ����"|�$IR�����w� 8q#�<�C��Җ"I��Q�on�����r�ĵ��t�H\�$IR�� ���{���-]�Y��I����.�b����7y�������k�$I����k�in�[5&����fb0�$IR�� ��%��<q����R���$I*������p�Ƅ��n�8q>8�H���XO,:Y�-fp��q�|7�eV�r$I�&d�K����ĵ���yzZ���lِ$I�w���I18O� qY�`Y�Z$I��d��zlј4�sg 7� ��"I��+#�I���I28w���<��ϫ$I*����/�Sg[4����9C�m���Q8eC�$�}��!�h�$���Ν5Ll�9X��I�$��X|؞��rs
Dg��ǻH���ZD`��[4����k�����-�$)���ˈ���i28w^��w�88 m9�$��6}�����08gc�*�
��
J��|� � >lJ\Ke���V�����Z�$������E�cs�$N� 'a��$I����cr��R)��mn��K\�$I�������蹎38go���]\ ��-G�$U��i����s08�c���I8�wI��yWFL�r;`p�%z��c��$I���o �¾����3J|���S��iˑ$I�x9p5�kΔ+��5
���xe(I�4����yk�Z*�����A� � =iˑ$I%�"�g�	�/f����v`%Ѯ�|gI�4w� ��ˀ�08�3\���Y�$M�z�2�kΕ�9�Q`p+��{~�r$IRIo��}͹28�5B�$�<���I�Tp��?6`_s��鵈	w���D�$��O�?�����Ҋax�<�J���Z�X��9	�s1�G��Hl</J��"6^%����Ų�xyn�$Ia+�V���b%bp.�`p��{V�r$IRb#�'��e����3L�0�\�%�F�$����S�U�М����Z���FbƳ'I���'���4/�����w ���xYP��:��b׃���\l[�۳��`x�$� � \A��UA��o�x�y"p �gI��l�G��}V����=i�bLݢ��H�������X0�r!�ms�`N�r$IR��>N�����1J������I�T�������s�fp.��~���)@O�r$I�4��o-��عB38�� Ѳ���y�N[�$I��+��c�ע�08�������d�+m9�$i
n^:��'�%`p.���X���Y��2�x1r֓�08��&�Z`?`9�x�$��.~���K��\~ۀk�c��1<K�Td��?�ClV���o�h��pp0�gI��h�f�K�K��\��Z���4�u��,IRql� �7ͥep��G�� O�M\�$I
[��s_6&�E�`p��a�m�Z�T`1�<K����M����k�4���ۻ� ;������l��@�C@.rI
;E:ӛ3�L��N�V�ڢ�j�u�jg�����m�-�e�2E�*����D 䞘�@6��l�v�����Yh v�<�<��5sf7�e~���~���,x'��$<K���>|	x��h���	��{I�jg�,p�4��=�f�����fҶq&p@�Ǒ$�6F�� ��g���"��6<<��m�$͵1����d�*��\}�:���t�<K�4W�����\I�zh��t�mH���3
|���alϨ$�s}L��ɒ+ϒ$͎��'�+ȳ�Y�q4W��2����{Nې$i�F���	/V���~�i�ɨ���=�$I}k;	�_ �fU������|pY��AI���E�"���ܤ6��5�����Y����
\\l����08��$��|/p<p�gI�^�f���U#gl!��C���`�Ǒ$�'��܊���΂��������Y���>�L&i���*4H��wI��*���$��|�T�G�=��d0ҫm� /�Y�C�G��ҴH��w�04מ�Y��"���x8XX�$I�&�M�C�S�X��Q/08kWZd������9��RO$IR�L _!�k�*��׵��a�O��W�q$I�s��ed#�z�Ѭ)�ڝ1�ri��a8�Y�TM[���H�4�=�z��Y��6��|(p�gIR�<|��L�24��18k��0ų8g=K��_��鹀<�c{�^��Y{�A�����x0��I���5IX�-r�gG��Q�38kO�Hh^<�E*В$��I�J�b�L/�8�g�Q;�����Ӏ��=�$I�6
|�� �9M��Y3� ��GG�AIRo��	�Erw�Q�q�OΚ�Ir�f`o�$���$���Ih�Or	���#͆I2��>`�{^P�$I�hג��w#�G�����2��{>XZ�q$Ib�2�1r�}��㨟�5�FIx^���gIR9����K��a?�f�ହ��7�+��RO$I��)�|�l܊KM4Κ+`p�X�U�$Iu��~���O54kV�+t͵2��$�
�h���$͍�e�ߓ�O�GUc�Y�0Bz˾K�=��'I�MO\N~��R�:Ë��A.i�C֚��#�$I3�n��B&<ٚ�9apV7�ȼ�;����z"IR?��������Y�3gu[�T����� �eJ��WZ�3���6bk���ଲL�֍�^	,*�8��>�$�� ��	NRW�U���x88�nH�vm��E�d������z��M�2��$�ޔ$uM� �،[ UÉz�$iݸX�
,��$���e�Cd��iא���^�"7�W���À���$���b��ڟO`k�JdpV�i�_�m n֓u�^���h_.$˳^�*�z��Y���8���|^���Tu��_ �����!g�����:��ڰ�ϒTE��?"��/�lf�����$�5�ݤ��X��l�Y���E�����(�h�Y=��~2Nz���)+��:IRj ��!p����Q�Ig��	��z� p$�>;yC���Vு?֐{-V�����W�t��lNb��$��	����%�]f��`�P��&����;����H��Z6�%M�b[���g���""�z  	JIDAT>�no<X�1��^1|�0pi��ʬ�c�P�� G���O��:I*S�>��j`f�1+Ϊ�b��V�6�}4p �%Q��m��'�����&TU���|0pYۺO�'��z�n>MZ�FpZ�*�ପ�G���~8/J�\h�� � ^�Ь�18�. ˀs��$�S��,I��%�_�ˀ���r�#�{�U`x����O�ђ�7f��b�(p���S�YqV�#�6�'��?�Z��Dx��1_�Lz��J38�ΆH���d��*�-�$��Yb�9�k�`N�PM�����xp1p�?Kҫ��� �G�4̪�kR��w���ד��q��˥$��)�J��ב��Վ�@z�y����7H;�?+��<L���J.�Mb`V��]+��W�*?��U-|6�]XC�ud�\�䛣�C$0�\D�@�%UQ��`�
�x���5�<��K���� }(p�AR�v��*hO�&_"�2��,��Y�����L�8��DKR�ikIX����VRa�-C�����I���u�����^eJ���0p9�d�����v��,�� ��<�>�L�@K�M-`p)��<LF�9)C�&��43$</!#�V���k�%����w5���WdKo��Y�]CdỀ���I�h��W�m�1,K3bp�f�@���\"<��@�7J�	�A�߀ۀg�-x�O�1����S�>�u��Ɵ=I���\�B�3&0,K�Ƈ��������o>X�$U�v�n�o�GHK��K�Yfp��gjz%p>�@�}В�Lx��\���0�c�9cp��3�(����q����������mǐ���,���D��̂^�������)�c'��w	����q�R��`�z���q�3�
}��gU��iǸ�/ҿ��T��_�J��X�M$D������Ju� ��x�l���,�̇�Ի�6��7�~XA�В��Ef-�x�L�őrR�08K�a�L�88�T��!KU�x.I33|�o�v���=c�cH=��,��A�s;x��i�-���%i�&Hu�z��Iuy+�R�38K���K��I+ǹ�Rᛰ
-��YTr���k�f?��R08K�P�C
�E6��\(�_⹤�� �|xx�A.Za����Y����kp�#�O����g^�qҫ�-ҷ���\�s����|�J�T�r,"��Ȇ�_ ��K��_�--RY�pp���%?��RE����a	� ' �HO�i$D�w4�/�H�&RY�p/iŘ =��-Kcp��X��p8��ǁ�$X�w4��a��&��#=�ctF�Ya�*��,�W1�n�T��N��	�K�=|�P��Ho�S$,_�����7��e�6| J�NO�|r���Ȣ�sۯ��_�=Cu�^"}�_%-��_ێ�0���!(iWɦ�Ť��Hr��ݤGz_���h�6���ͤ��(�W~��Ij38Kڝ��c	iw ��123z9	پ���L�m}�n �ַ����I�t��Tq�poRy^�������=`�Yu}�U�L��m���[>�$�T�����#����c�V9���c����IP&��Ūkò�i�A&i�M�EE�md��;�Z��8;Z���++ʷ�O[�_w���38K�kE�.z��
�M��MB�<�ڽ�O#��5�w�;�'HHގAY�08K궩���u�o&���O. .�3���z**�#����2&�>`	ɣ8�BR�0�T�"/l�����[H�>8
8��~��QM-|G��d�RE^<K�.v��<��ɒ���,�Y�HPދ\<ܟ����I�z?:a�؆���$�����f���'!y�5֓����I��#�U�"�i��88�������ci������+��M��I��q�^�x���-��b�ΤI�I>D$U� ����\D\JZ<V��G�
u���K��{���S�qk�J�v�7�m{I�:}�#$ O� 71(K�#>$$U��0<�T��P�/Y%�������o��H�^H���~�nM�8��b��o���ɖ�'�V���<��o'��BR�T��_���xj���	׋H�.�>�!�\��~�%$\/k��E�{>��zS{��z:H�U�S^SG�ax�N/���M�s$$�DBr�Yo��*j��%Ւ�Y�vo`�k�W�t��2:�z���ş��z������]�mH�->�l�y��ձ�GH��h��_E�x	�;�_/��8���axj���X��08KR�^��]i���$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I����?ӈ�o�:S}    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ball.PNG-b20f67788a6e2d09ee62b611b57bdbb9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/ball.PNG"
dest_files=[ "res://.import/ball.PNG-b20f67788a6e2d09ee62b611b57bdbb9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDST?  :             PNG �PNG

   IHDR  ?   :   I~��   sRGB ���   �IDATx���A�  ��1�X�"���4�S�O�\�����%�B�{�ʽP�^�r/T���U�*�B�{�ʽP�^�r/T���U�*�B�{�ʽP�^�r/T���U�*�B�{�ʽP�^�r/T���U�*�B�{�ʽP�^�r/T���U�*�B�{�ʽP�^�r/T���U�*�B�{�ʽP�^�r/T���UE�m�L�    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/brick_blue.png-07a92ea5182e1570d387bf71f995b415.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/brick_blue.png"
dest_files=[ "res://.import/brick_blue.png-07a92ea5182e1570d387bf71f995b415.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST   �          �&  PNG �PNG

   IHDR     �   |3w�   sRGB ���    IDATx���A�  �0�-��*&��^������       �ڼ        �3        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �               �k�d    �[��+�                  `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �             ��Ϫ  {IDAT           `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        ` �
��h�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/brick_green.png-ddca2274d7e05628f5afceb76a080a01.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/brick_green.png"
dest_files=[ "res://.import/brick_green.png-ddca2274d7e05628f5afceb76a080a01.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST   �          �&  PNG �PNG

   IHDR     �   |3w�   sRGB ���    IDATx���A�  �0�-��*&��^������       �ڼ        �3        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �                  �                 0        @�                `        �               �k�d    �[��+�                  `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �             ��Ϫ  {IDAT           `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        `@        �                        ` �
��h�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/brick_pink.png-565bc85c5b5c7838e32b5ad5cb56d1d9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/brick_pink.png"
dest_files=[ "res://.import/brick_pink.png-565bc85c5b5c7838e32b5ad5cb56d1d9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-c3d958876317c5b9ff9d73fef1b6123f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/icon.png"
dest_files=[ "res://.import/icon.png-c3d958876317c5b9ff9d73fef1b6123f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDSTo  ^             PNG �PNG

   IHDR  o   ^   ��d�   sRGB ���   �IDATx���1    �Om	O�                                                                                                                                                                          x�� �¿    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/paddle.png-d3f7c4a6bd36c30bec1ddd77e29f8a87.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/paddle.png"
dest_files=[ "res://.import/paddle.png-d3f7c4a6bd36c30bec1ddd77e29f8a87.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [remap]

path="res://Bricks/Brick.gdc"
         [remap]

path="res://Player\'/Ball.gdc"
        [remap]

path="res://Player\'/PContainer.gdc"
  [remap]

path="res://Player\'/Player.gdc"
      ECFG      _global_script_classes�                     class      
   PContainer        language      GDScript      path      res://Player'/PContainer.gd       base      Resource   _global_script_class_icons$            
   PContainer            application/config/name         Cs 4700- Godot     application/run/main_scene$         res://Game 1/MainScene.tscn    debug/settings/fps/force_fps      <      display/window/size/width           display/window/size/height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/move_left`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_right`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/throw`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      7   rendering/quality/2d/use_nvidia_rect_flicker_workaround         #   rendering/quality/2d/use_pixel_snap         )   rendering/environment/default_environment          res://default_env.tres             