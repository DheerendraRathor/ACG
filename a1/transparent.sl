surface
transparent
(
    /* Surface Properties */
    float Ka=.1, Ks=.1, Kd=.1, Kr=.1, Kt=.9, roughness=.1, eta=0.85;
)

{
  /* 
  * Unit vector along shading normal and incident ray 
  */
  normal uShN = normalize(N);
  vector uI = normalize(I);

  normal uNf = normalize(faceforward(uShN, uI, Ng));

  Ci += Cs * (
              Kr * trace(P, reflect(uI, uShN)) +        // Reflected component
              Kt * trace(P, refract(uI, uNf, eta)) +    // Transmitted component
              Ka * ambient() +                          // Ambient component
              Kd * diffuse(uShN) +                      // Diffuse component
              Ks * specular(uNf, -uI, roughness)        // Specular component
              );
  Ci *= Os;
  Oi = Os;
}
