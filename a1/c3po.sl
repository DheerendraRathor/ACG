surface
c3po
(
    /* Surface Properties */
    float Ka=1.1, Ks=0.5, Kd=2.5, Kr=0.6, roughness=0.6;
)

{

  /* 
  * Get unit along the direction of shading normal and incident ray
  */
  normal uShN = normalize(N);
  vector uI = normalize(I);

  Ci += Cs * (
                Kr * trace(P, vector reflect(uI, uShN)) +                                 // Reflected component
                Ka * ambient() +                                                          // Ambient component
                Kd * diffuse(uShN) +                                                      // Diffuse component
                Ks * specular(normalize(faceforward(uShN, uI, Ng)), -uI, roughness)       // Specular component
              );     
  Oi = Os;
}
