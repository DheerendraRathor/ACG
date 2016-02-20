surface
metal
(
    float Ka=1,
          Ks=3,
          Kd=0.5,
          Kr=0.8,
          Kt=0,
          roughness=.1;
    color specularcolor=1
)
{

  // Get unit shading normal and incident ray
  normal uShN = normalize(N);
  vector uI = normalize(I);

  Ci += Cs * 
          (
            Kr * trace(P, vector reflect(uI, uShN)) +  // Reflected component
            Ka * ambient() +   // Ambient component
            Kd * diffuse(uShN) +    // Diffuse component
            Ks * specular(normalize(faceforward(uShN, uI, Ng)), -uI, roughness)  // Specular component
          );
  Ci *= Os;
  Oi = Os;
}
