surface
bb8
(
    /* 
    * Surface Properties 
    * 
    * Wp: Weight of phong
    * WId: Weight of indirect diffuse
    */
    float Ka=1, Kd=3, Kc=0.0, Wp=0.75, WId=2;

    string tex="textures/bb8.tex";
)

{
  normal uShN = normalize(N);

  Ci += (
          Cs * Wp * (Ka * ambient() + Kd * diffuse(uShN)) +
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
