surface
wall
(
    /* 
    * Surface Properties 
    * 
    * Wp: Weight of phong
    * WId: Weight of indirect diffuse
    */
    float Ka=1, Kd=3, Kr=0.0, Kt=0.0, Kc=0.0, Wp=0.75, WId=1.4;

    /* Texture For the wall */
    string tex="textures/wood.tex";
)

{
  /*
  * Get unit vector along the direction of shading normal and incident ray
  */
  normal uShN = normalize(N);
  vector uI = normalize(I);

  Ci += (
          Cs * Wp * (Kr * trace(P, vector reflect(uI, uShN)) + Ka * ambient() + Kd * diffuse(uShN)) +
          WId * indirectdiffuse(P, uShN, 1000) + 
          Kc * photonmap("caustics.cpm", P, N, "estimator", 400)
        );
  
  color texture_color = texture(tex);
  Ci = (
          Ci[0] * texture_color[0], 
          Ci[1] * texture_color[1],
          Ci[2] * texture_color[2]
        );

  Oi = Os;
}
