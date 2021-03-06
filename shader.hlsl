cbuffer CBuffer0
{
	float red_fraction;		// 4 bytes
	float3 packing;			// 3x4 bytes = 12 bytes
}

struct VOut
{
	float4 position : SV_Position;
	float4 color: Color;

};
VOut VShader(float4 position : POSITION, float4 color : COLOR)
{
	VOut output;

	output.position = position;
	output.color = color;

	return output;
}

float4 PShader(float4 position : SV_POSITION, float4 color : COLOR):SV_TARGET
{
	return color;
}