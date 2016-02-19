surface
c3po
(
    float Ka=1.1,
          Ks=0.5,
          Kd=2.5,
          Kr=0.6,
          Kt=0,
          roughness=0.6,
          eta=1.33;
    color specularcolor=1
)
{
  normal Nn = normalize(N);
  vector In = normalize(I);

  uniform float d = 0;
  rayinfo("depth", d);

  normal v = faceforward(Nn, In);
  v = normalize(v);
  if (d < 5) {
    if (Nn.In < 0) {
      vector reflected_ray = reflect(In,Nn);
      Ci += Cs * Kr * trace(P, reflected_ray);
    }
  }

  color local_illumination = Ka * ambient() + Kd * diffuse(Nn) + Ks * specular(v, -In, roughness);

  Ci += Cs * local_illumination;
  Ci *= Os;
  Oi = Os;
}
