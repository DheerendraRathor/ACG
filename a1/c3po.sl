surface
c3po
(
    float Ka=1.1,
          Ks=0.5,
          Kd=2.5,
          Kr=0.6,
          Kt=0,
          roughness=0.6;
    color specularcolor=1
)
{

  // Get unit shading normal and incident ray
  normal uShN = normalize(N);
  vector uI = normalize(I);

  Ci += (Cs * Kr * trace(P, vector reflect(uI, uShN))) +  // Reflected component
        Cs * (Ka * ambient() +   // Ambient component
        Kd * diffuse(uShN) +    // Diffuse component
        Ks * specular(normalize(faceforward(uShN, uI, Ng)), -uI, roughness));    // Specular component
  Ci *= Os;
  Oi = Os;
}
