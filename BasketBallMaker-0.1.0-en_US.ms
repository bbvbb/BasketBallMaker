-- ************************************************
-- * BasketBallMaker v0.1.0
-- * Powered by 沐风课堂 (http://www.bbvbb.com/)
-- * Date: 2017-02-03
-- ************************************************

try (
--------- General Parameters ---------
rollout PGeneral "Parameters"
(
	groupbox groupboxGeneration "Generation" width:152 height:60 pos:[10,5]
		button btnGenerate "Generate" width:120 height:24 pos:[26,25]

-- 生成按钮
on btnGenerate pressed do
	(
basketball = Sphere radius:123 smooth:on segs:16 chop:0 slice:off sliceFrom:0 sliceTo:0 mapcoords:on recenter:off pos:[0,0,0] isSelected:on
basketball.wirecolor = color 222 49 15
macros.run "Modifier Stack" "Convert_to_Poly"
subobjectLevel = 2
basketball.EditablePoly.SetSelection #Edge #{3, 5, 7, 225, 227..228}
basketball.EditablePoly.SetSelection #Edge #{3, 5, 7, 27, 29, 31, 225, 227..228, 238..240}
basketball.EditablePoly.SetSelection #Edge #{3, 5, 7, 19, 21, 23, 27, 29, 31, 225, 227..228, 234..236, 238..240}
basketball.EditablePoly.SetSelection #Edge #{3, 5, 7, 11, 13, 15, 19, 21, 23, 27, 29, 31, 225, 227..228, 230..232, 234..236, 238..240}
basketball.EditablePoly.Remove ()
basketball.EditablePoly.divideEdge 6 0.575101 select:on
basketball.EditablePoly.divideEdge 217 0.5 select:on
basketball.EditablePoly.divideEdge 16 0.787551 select:on
basketball.EditablePoly.divideEdge 16 0.730241 select:on
basketball.EditablePoly.divideEdge 215 0.424898 select:on
basketball.EditablePoly.divideEdge 215 0.5 select:on
basketball.EditablePoly.divideEdge 213 0.787551 select:on
basketball.EditablePoly.divideEdge 213 0.73024 select:on
subobjectLevel = 1
basketball.EditablePoly.SetSelection #Vertex #{4}
basketball.EditablePoly.SetSelection #Vertex #{4, 115}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{115}
basketball.EditablePoly.SetSelection #Vertex #{8, 115}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{3}
basketball.EditablePoly.SetSelection #Vertex #{3, 116}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{116}
basketball.EditablePoly.SetSelection #Vertex #{9, 116}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{17}
basketball.EditablePoly.SetSelection #Vertex #{17, 117}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{117}
basketball.EditablePoly.SetSelection #Vertex #{11, 117}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{16}
basketball.EditablePoly.SetSelection #Vertex #{16, 118}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{118}
basketball.EditablePoly.SetSelection #Vertex #{12, 118}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{104}
basketball.EditablePoly.SetSelection #Vertex #{104, 119}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{119}
basketball.EditablePoly.SetSelection #Vertex #{108, 119}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{103}
basketball.EditablePoly.SetSelection #Vertex #{103, 120}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{120}
basketball.EditablePoly.SetSelection #Vertex #{109, 120}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{101}
basketball.EditablePoly.SetSelection #Vertex #{101, 121}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{121}
basketball.EditablePoly.SetSelection #Vertex #{111, 121}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{100}
basketball.EditablePoly.SetSelection #Vertex #{100, 122}
basketball.EditablePoly.ConnectVertices ()
basketball.EditablePoly.SetSelection #Vertex #{122}
basketball.EditablePoly.SetSelection #Vertex #{112, 122}
basketball.EditablePoly.ConnectVertices ()
subobjectLevel = 2
basketball.EditablePoly.SetSelection #Edge #{29}
basketball.EditablePoly.SetSelection #Edge #{29, 33}
basketball.EditablePoly.SetSelection #Edge #{29, 33, 37}
basketball.EditablePoly.SetSelection #Edge #{29, 33, 37, 41}
basketball.EditablePoly.SelectEdgeLoop ()
basketball.edgeChamfer = 8
basketball.EditablePoly.buttonOp #Chamfer
subobjectLevel = 4
basketball.EditablePoly.SetSelection #Face #{133}
basketball.EditablePoly.SetSelection #Face #{121..124, 128, 130, 133, 137, 141, 145, 149, 153, 157, 161, 165, 169, 173, 177, 180, 182..186}
basketball.EditablePoly.SetSelection #Face #{121..124, 128, 130, 133..134, 137, 141, 145, 149, 153, 157, 161, 165, 169, 173, 177, 180, 182..186}
basketball.EditablePoly.SetSelection #Face #{121..126, 128, 130, 132..134, 136..138, 140..142, 144..146, 148..150, 152..154, 156..158, 160..162, 164..166, 168..170, 172..174, 176..178, 180, 182..186, 191..198}
basketball.EditablePoly.SetSelection #Face #{121..126, 128, 130, 132..138, 140..142, 144..146, 148..150, 152..154, 156..158, 160..162, 164..166, 168..170, 172..174, 176..178, 180, 182..186, 191..198}
basketball.EditablePoly.SetSelection #Face #{121..198}
basketball.bevelType = 1
basketball.bevelHeight = -3
actionMan.executeAction 0 "419"
basketball.bevelOutline = -5
basketball.EditablePoly.buttonOp #Bevel
basketball.extrusionType = 1
basketball.faceExtrudeHeight = 1
basketball.EditablePoly.buttonOp #Extrude
basketball.EditablePoly.buttonOp #Extrude
subobjectLevel = 0
modPanel.addModToSelection (meshsmooth ()) ui:on
basketball.modifiers[#MeshSmooth].iterations = 2
basketball.modifiers[#MeshSmooth].subdivMethod = 1
	)
)

--------- Powered by ---------
rollout PPower "Powered by bbvbb.com"
(
	HyperLink helpLink "Help" width:22 height:15 address:"http://www.bbvbb.com/software.php?mod=basketballmaker" pos:[10,10]
	HyperLink siteLink "Bbvbb.com" width:161 height:15 address:"http://www.bbvbb.com/" across:2 pos:[40,10]
)

	mainWindow = newRolloutFloater "Snowflake v2.1.0" 184 118
	addRollOut PGeneral mainWindow
	addRollOut PPower mainWindow
	PPower.open = false
) catch (messagebox "Something bad happened.  Canceling...")