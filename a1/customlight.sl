light
customlight 
(
	// Light intensity
    float intensity = 1;

    // The light color 
    color lightcolor = 1;

    // Starting point of the light
    point from = point "shader" (0,0,0); 
)

{
    illuminate (from)
    {
    	/* Default light behavious */
		Cl = intensity * lightcolor / L.L;

		/* For shadows */
		Cl *= transmission(Ps, from);
	}
}