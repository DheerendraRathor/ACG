surface
wall
(
    float Ka=1,
          Kd=3,
          Kr=0.0,
          Kt=0.0,
          Kc=0.0,
          roughness=1.0;
    string tex="textures/wood.tex";
)
{
  normal uShN = normalize(N);
  vector uI = normalize(I);

  Ci += (
          Cs * 0.75 * (Kr * trace(P, vector reflect(uI, uShN)) + Ka * ambient() + Kd * diffuse(uShN)) +
          1.4 * indirectdiffuse(P, uShN, 1000) + 
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
