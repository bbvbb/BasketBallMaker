-- ************************************************
-- * BasketBallMaker v1.0.0
-- * Powered by 沐风课堂 (http://www.bbvbb.com/)
-- * Date: 2017-02-04
-- ************************************************

try (
--------- General Parameters ---------
rollout PGeneral "Parameters"
(
	groupbox groupboxParameters "Parameters" width:152 height:70 pos:[10,5]
		spinner sizeNum "Radius：" width:90 height:16 range:[1.0,1000.0,123.0] type:#float pos:[45,25]
		colorPicker cpA "Color：" fieldWidth:16 height:16 color:[222,49,15] pos:[45,46]
	
	groupbox groupboxGeneration "Generation" width:152 height:85 pos:[10,78]
		button btnGenerate "Generate" width:120 height:24 pos:[26,98]
		progressbar progBar width:130 height:6 value:0 pos:[20,128]
		label progLabel " Ready..." style_sunkenedge:true width:130 height:16 offset:[0,-3]

-- 生成按钮
on btnGenerate pressed do
	(
	startTime = timeStamp()
	progBar.value  = 0.00 * 100 --0%
	progLabel.text = " Building..."
	bei = sizeNum.value/123
	
basketball = Sphere radius:sizeNum.value smooth:on segs:16 chop:0 slice:off sliceFrom:0 sliceTo:0 mapcoords:on recenter:off pos:[0,0,0] isSelected:on
basketball.wirecolor = cpA.color
macros.run "Modifier Stack" "Convert_to_Poly"
	progBar.value  = 0.10 * 100 --10%
subobjectLevel = 2
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
	progBar.value  = 0.20 * 100 --20%
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
	progBar.value  = 0.30 * 100 --30%
	progBar.value  = 0.40 * 100 --40%
subobjectLevel = 2
basketball.EditablePoly.SetSelection #Edge #{29, 33, 37, 41}
basketball.EditablePoly.SelectEdgeLoop ()
basketball.edgeChamfer = 8*bei
basketball.EditablePoly.buttonOp #Chamfer
	progBar.value  = 0.50 * 100 --50%
subobjectLevel = 4
basketball.EditablePoly.SetSelection #Face #{121..198}
	progBar.value  = 0.60 * 100 --60%
basketball.bevelType = 1
basketball.bevelHeight = -3*bei
actionMan.executeAction 0 "419"
basketball.bevelOutline = -5*bei
basketball.EditablePoly.buttonOp #Bevel
	progBar.value  = 0.70 * 100 --70%
basketball.extrusionType = 1
basketball.faceExtrudeHeight = 1*bei
basketball.EditablePoly.buttonOp #Extrude
basketball.EditablePoly.buttonOp #Extrude
	progBar.value  = 0.80 * 100 --80%
subobjectLevel = 0
modPanel.addModToSelection (meshsmooth ()) ui:on
basketball.modifiers[#MeshSmooth].iterations = 2
basketball.modifiers[#MeshSmooth].subdivMethod = 1
	progBar.value  = 0.90 * 100 --90%
converttopoly basketball

	endTime = timeStamp()
	progBar.value  = 1.00 * 100 --100%
	progLabel.text =  (" Total time：" + (((endTime - startTime) / 1000.0) as string) + " s")
	)
)

--------- Powered by ---------
rollout PPower "Powered by bbvbb.com"
(
	HyperLink helpLink "Help" width:22 height:15 address:"http://www.bbvbb.com/software.php?mod=basketballmaker" pos:[10,10]
	HyperLink siteLink "Bbvbb.com" width:161 height:15 address:"http://www.bbvbb.com/" across:2 pos:[40,10]
)

	mainWindow = newRolloutFloater "BasketBallMaker v1.0.0" 184 215
	addRollOut PGeneral mainWindow
	addRollOut PPower mainWindow
	PPower.open = false
) catch (messagebox "Something bad happened.  Canceling...")