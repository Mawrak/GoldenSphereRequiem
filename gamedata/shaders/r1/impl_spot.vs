#include "common.h"

vf_spot main(v_lmap v)
{
    vf_spot o;
    o.hpos = mul(m_VP, v.P);
    o.tc0 = unpack_tc_base(v.uv0, v.T.w, v.B.w);
    
    // Calculate base spot color
    
    o.color = calc_spot(o.tc1, o.tc2, v.P, unpack_normal(v.N));
    
    // Apply brightness boost (adjust multiplier as needed)
    //o.color.rgb *= 10.0;  // Increased brightness multiplier
    
    
    
    o.color.rgb = float3 (1, 0.8, 0.8);
    
    

    
    
    // Force lightmap UVs to sample white (ignore actual lightmap)
    // Use texture coordinates that always sample white (0,0) UV
    //o.tc1 = float4(0, 0, 0, 0);
    
    return o;
}