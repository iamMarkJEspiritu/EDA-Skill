;This Script create Shapes by selecting the reference shape(s) and indicating the layer_name and layer_type

procedure(generateShape(d_lay,cvID,x,taypo)
	if(x~>objType == "rect"
	then
		dbCreateRect(cvID list(d_lay taypo) x~>bBox)
	else
		dbCreatePolygon(cvID list(d_lay taypo) x~>points)
	)	
)
procedure(createShape()
	cv = geGetWindowCellView()
	foreach(sobj geGetSelSet()
		generateShape("metal1",cv,sobj,"drawing")
		;generateShape([layer_name],cv,sobj,[layer_type])
	)
)
